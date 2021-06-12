(TeX-add-style-hook
 "Main.tex"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("ulem" "normalem")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art11"
    "inputenc"
    "fontenc"
    "graphicx"
    "grffile"
    "longtable"
    "wrapfig"
    "rotating"
    "ulem"
    "amsmath"
    "textcomp"
    "amssymb"
    "capt-of"
    "hyperref")
   (LaTeX-add-labels
    "sec:orgf9add3a"
    "sec:org24638f2"
    "sec:org38c3a18"
    "sec:org8a5c820"
    "sec:org7472a2f"
    "sec:org76a8d6d"
    "sec:org0142737"
    "sec:org2b33907"
    "sec:orgade62a0"
    "sec:org6e6889c"
    "sec:orgbe98c1c"
    "sec:orga0d1a98"
    "sec:org219a279"
    "sec:org25fedfb"
    "sec:orge9b37c0"
    "sec:orgbb0062b"
    "sec:org8e103eb"
    "sec:org116ef8f"
    "sec:org8443ade"
    "sec:orgf251a2d"
    "sec:org747e36f"
    "sec:org4966343"
    "sec:org338738f"
    "sec:org3462712"
    "sec:org9ca86e5"
    "sec:org410cc5e"
    "sec:org18df515"
    "sec:org2f94746"
    "sec:org9645fcc"
    "sec:orgda35c97"
    "sec:org8c63b9e"
    "sec:org965eafe"
    "sec:org927a999"
    "sec:org6e39a80"
    "sec:org7edcd01"
    "sec:orgdab0119"
    "sec:org9be4939"
    "sec:org2271fd7"
    "sec:org4f10c5d"
    "sec:orgdfe35bf"
    "sec:org262df27"
    "sec:org8bf868d"
    "fig:og_samp"
    "sec:org0a740ed"
    "sec:org91dca8c"
    "sec:orga56a094"
    "sec:org822d0ad"
    "sec:org3412c68"
    "sec:orgbcbaeba"
    "sec:orgc1b7158"
    "sec:org9c13481"
    "sec:org60957fa"
    "sec:org835d72b"
    "sec:orgcaff9ef"
    "sec:orgafb630b")
   (LaTeX-add-bibliographies
    "Bibliography"))
 :latex)

