{
    programs.nixvim = {
        enable = true;
	colorschemes.gruvbox.enable = true;

	opts = {
	    number = true;
	    relativenumber = true;

	    expandtab = true;
	    smarttab = true;
	    shiftwidth = 2;
	};
    };
}
