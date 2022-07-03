BEGIN { print("return {\n\tcolorscheme = function() \n") }
{
  if ($1 == "hi") {
    if ($2 == "clear"){
       print "\t\tvim.cmd(\"hi clear\")";
    }
    else if ($2 == "link"){
      printf ("\t\tvim.api.nvim_set_hl(0, \"%s\", {link= \"%s\"})\n", $3,$4);
    }
    else{
      split($3,fg,"=");
      split($4,cfg,"=");
      split($5,bg,"=");
      split($6,cbg,"=");
      split($7,gui,"=");
      split($8,term,"=");
      split($9,guisp,"=");

      options[fg[1]] = fg[2];
      options[cfg[1]] = cfg[2];
      options[bg[1]] = bg[2];
      options[cbg[1]] = cbg[2];
      options[gui[1]] = gui[2];
      options[term[1]] = term[2];
      options[guisp[1]] = guisp[2];
      guiv = options["gui"]
      gui_args = ""
      if (guiv != "NONE") {
        split(guiv, guiarg,",");
        for (i in guiarg) {
          # print(i guiarg[i] "\n")
          if (gui_args == ""){
            if (tolower(guiarg[i]) == "bold"){
              gui_args = tolower(guiarg[i]) " = vim.fn.exists(\"vim.g.aurora_bold\") == 1 "
            }else if (tolower(guiarg[i]) == "italic"){
              gui_args = tolower(guiarg[i]) " = vim.fn.exists(\"vim.g.aurora_italic\") == 1"
            }else{
              gui_args = tolower(guiarg[i]) " = true"
            }
          }else{
            gui_args = gui_args ", " tolower(guiarg[i]) "= true "
          }
          # print $2 " " gui_args "\n"
        }
      }
      cfg2 = options["ctermfg"]
      if (cfg[2] == "NONE") {
        cfg2 = "\"NONE\""
      }


      ctermbg = "\"NONE\""
      if ("ctermbg" in options) {
        ctermbg = options["ctermbg"]
        if (ctermbg == "NONE") {
          ctermbg = "\"NONE\""
        }
      }
      ctermfg = "\"NONE\""
      if ("ctermfg" in options) {
        ctermfg = options["ctermfg"]
        if (ctermfg == "NONE") {
          ctermfg = "\"NONE\""
        }
      }

      if (!("guibg" in options)) {
        options["guibg"] = "NONE"
      }
      if (!("guifg" in options)) {
        options["guifg"] = "NONE"
      }
      if ("guisp" in options) {
        printf ("\t\tvim.api.nvim_set_hl(0, \"%s\", {fg= \"%s\", bg = \"%s\", ctermfg = %s, ctermbg = %s, sp = \"%s\", %s})\n", $2, options["guifg"], options["guibg"], ctermfg, ctermbg, options["guisp"], gui_args);
      }else{
        printf ("\t\tvim.api.nvim_set_hl(0, \"%s\", {fg= \"%s\", bg = \"%s\", ctermfg = %s, ctermbg = %s,  %s})\n", $2,  options["guifg"], options["guibg"], ctermfg, ctermbg, gui_args);
      }
    }
  }
}
END { print("\tend\n}") }
