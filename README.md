# Сборка WSL NixOS
This is my first NixOS flake, working correctly with the root user. Docker Desktop integration will be added later.

## Installing NixOS on WSL:
- Follow the installation instructions at https://github.com/nix-community/NixOS-WSL
- For installation, you can download the latest nixos.wsl release and run: wsl --install --from-file nixos.wsl

## Project Structure:
```
├── flake.nix             # Main flake configuration file
├── configuration.nix     # Main NixOS configuration
├── home-manager/
│   ├── home.nix          # Main Home Manager configuration
│   ├── home-packages.nix # User-specific packages (root user for WSL)
│   └── modules/          # Home Manager modules
│       ├── default.nix   # Import of all modules from the modules folder
│       └── fish.nix      # Fish Shell configuration
```
 
## Included Packages
- vim-full
- neofetch
- zip
- htop
- openssh
- vs code remote (nix-ld)
- wget
- python3
- git
- curl
- go


## Installation
1) Clone the flake: (```git clone https://github.com/kk7453603/NixOS-WSL-Golang-backend-setup.git```) и перенесите его в ```/etc/nixos``` (не обязательно, все зависимости упакованы во flake, но вы можете забыть расположение текущей конфигурации)
2) Перейдите в репозиторий с flake ```cd NixOS-WSL-Golang-backend-setup```
3) Apply the configuration: ```nixos-rebuild switch --flake .#nixos```
4) Set up user environment with Home Manager: ```home-manager switch --flake .#root```

## Updates
- To update the system: ```sudo nixos-rebuild switch --flake .#nixos```
- To update user configuration: ```home-manager switch --flake .#root```

