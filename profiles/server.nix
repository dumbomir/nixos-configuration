# Common configuration for any server

{ configs, pkgs, ...}:

{
	imports = [
		./ssh.nix
	];
	boot.loader.systemd-boot.enable = true;
	boot.loader.efi.canTouchEfiVariables = true;
	boot.kernelPackages = pkgs.linuxPackages_4_12;
}
