{pkgs,...}: {
    nixpkgs.config.allowUnfree = true;
    home.packages = with pkgs; [
        vim-full
        neofetch
        zip
        htop
    ];
}