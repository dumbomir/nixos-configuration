# Common configuration for any laptops

{ configs, pkgs, ...}:

{
	imports = [
		./audio.nix
		./desktop.nix
	];

	environment.systemPackages = with pkgs; [
		acpi
		lm_sensors
		networkmanagerapplet
		powertop
	];

	services.xserver.displayManager.sessionCommands = ''
${pkgs.networkmanagerapplet}/bin/nm-applet &
	'';

	networking.networkmanager.enable = true;
}
