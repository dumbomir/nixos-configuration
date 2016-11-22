{ config, pkgs, ... }:

{
	imports =
		[ # Include the results of the hardware scan.
			../hardware-configuration.nix
			../configuration/custom-packages.nix
			../configuration/common.nix
			../hardware/thinkpad-x220.nix
		];

	networking.hostName = "hokkaido";

}
