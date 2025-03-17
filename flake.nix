{
  description = "Home Manager configuration of lvcky";

  inputs = {
    # Specify the source of Home Manager and Nixpkgs.
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      homeConfigurations."lvcky" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;

        # Specify your home configuration modules here, for example,
        # the path to your home.nix.
        modules = [ 
          ./home.nix
          ./hypr/hyprland.nix 
          ./hypr/binds.nix
          ./hypr/decorations.nix
          ./hypr/border.nix
          ./hypr/animations.nix
          ./waybar/waybar.nix
          ./waybar/style.nix
          ./waybar/settings.nix
           ./terminal/kitty.nix
           # ./editors/nvim.nix
        ];


        # Optionally use extraSpecialArgs
        # to pass through arguments to home.nix
      };
    };
}
