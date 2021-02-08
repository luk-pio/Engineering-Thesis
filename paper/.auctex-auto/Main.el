(TeX-add-style-hook
 "Main"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("ulem" "normalem")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
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
    "sec:org1511426"
    "sec:org6e5ed69"
    "sec:org315f66e"
    "sec:org0514ea2"
    "sec:orgc9e3102"
    "sec:org04050ea"
    "sec:orge163353"
    "sec:orgb5ef080"
    "sec:org6652ef8"
    "sec:orgc32d02f"
    "sec:orgacfc29a"
    "sec:org98d0291"
    "sec:orgbdd5d48"
    "sec:org2514d5d"
    "sec:org37b796f"
    "sec:org363dccb"
    "sec:orgb375cef"
    "sec:orgf918c4f"
    "sec:org558512b"
    "sec:org8cba016"
    "sec:org1e6d126"
    "sec:org870cdb1"
    "sec:orgbc56672"
    "sec:orga5b61e6"
    "sec:org61d322d"
    "sec:orgb19b6b8"
    "sec:org66d7ae7"
    "sec:org1dfc935"
    "sec:org1a42de1"
    "sec:orged7ef64"
    "sec:org0805fca"
    "sec:org3da17e9"
    "sec:org91d2abe"
    "sec:org0987a6b"
    "sec:orgaf848bf"
    "sec:orga46aa6d"
    "sec:org60e8408"
    "sec:org6dac68a"
    "sec:orgc80f6f4"
    "sec:org48884fc"
    "sec:orgb842c72"
    "sec:org48d39d9"
    "sec:org8167530"
    "sec:orgcdd670a"
    "sec:orgc209c9e"
    "sec:org8cae6ed"
    "sec:org8ae6931"
    "sec:orgf929bf6"
    "sec:org27ef056"
    "sec:org883b726"
    "sec:org9d1573d"
    "sec:org9a22d80"
    "sec:orge6a4dd1"
    "sec:org0b64a06")
   (LaTeX-add-bibliographies
    "Bibliography"))
 :latex)

