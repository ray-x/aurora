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
      # print(options["guibg"])
      guiv = options["gui"]
      gui_args = ""
      if (guiv != "NONE") {
        split(guiv, guiarg,",");
        for (i in guiarg) {
          # print(i guiarg[i] "\n")
          if (gui_args == ""){
            if (tolower(guiarg[i]) == "bold"){
              gui_args = tolower(guiarg[i]) " = (vim.g.aurora_bold==1)"
            }else if (tolower(guiarg[i]) == "italic"){
              gui_args = tolower(guiarg[i]) " = (vim.g.aurora_italic==1)"
            }else{
              gui_args = tolower(guiarg[i]) " = true"
            }
          }else{
            gui_args = gui_args ", " tolower(guiarg[i]) "= true "
          }
        }
      }
      fgsetups = ""
      if ("guifg" in options) {
        fgsetups = "fg=" "\"" options["guifg"] "\","
      }

      bgsetups = ""
      if ("guibg" in options) {
        if (substr(options["guibg"], 1, 2) != "bg") {
          bgsetups = "bg=" "\"" options["guibg"] "\","
        }else{
          bgsetups = "bg=" options["guibg"] ","
        }
      }

      spsetups = ""
      if ("guisp" in options) {
        spsetups = "sp=" "\"" options["guisp"] "\","
      }


      cfgsetup = ""
      if ("ctermfg" in options) {
        ctermfg = options["ctermfg"]
        if (ctermfg == "NONE") {
          ctermfg = "\"NONE\""
        }
        cfgsetup = "ctermfg=" ctermfg ","
      }

      cbgsetup = ""
      if ("ctermbg" in options) {
        ctermbg = options["ctermbg"]
        if (ctermbg == "NONE") {
          ctermbg = "\"NONE\""
        }
        cbgsetup = "ctermbg=" ctermbg ","
      }


      printf ("\t\tvim.api.nvim_set_hl(0, \"%s\", {%s %s %s %s %s %s})\n", $2, fgsetups, bgsetups, cfgsetup, cbgsetup, spsetups, gui_args);

      delete options
      delete fg
      delete cfg
      delete bg
      delete cbg
      delete gui
      delete term
      delete guisp
    }
  }
}
END { print("\tend\n}") }
