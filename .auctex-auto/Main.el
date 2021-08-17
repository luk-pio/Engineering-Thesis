(TeX-add-style-hook
 "Main"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("report" "a4paper" "12pt" "twoside")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("ulem" "normalem") ("algorithm2e" "ruled" "vlined") ("tocbibind" "nottoc")))
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
    "report"
    "rep12"
    "inputenc"
    "fontenc"
    "graphicx"
    "grffile"
    "longtable"
    "wrapfig"
    "rotating"
    "float"
    "ulem"
    "amsmath"
    "textcomp"
    "amssymb"
    "capt-of"
    "hyperref"
    "appendix"
    "fancyhdr"
    "etoolbox"
    "titlesec"
    "lmodern"
    "algorithm2e"
    "tocbibind")
   (TeX-add-symbols
    "Cov"
    "Var"
    "E")
   (LaTeX-add-labels
    "sec:org6dce8a9"
    "sec:org42eee01"
    "sec:org4401227"
    "sec:org02aa748"
    "sec:org4d1b31d"
    "sec:orge32af72"
    "sec:org5ad94c1"
    "eq:2"
    "sec:org657745a"
    "fig:mel_flow"
    "fig:mel_filterbank"
    "mir"
    "sec:org59595af"
    "sec:org722ed3e"
    "sec:org8ba1512"
    "sec:org9dcacf6"
    "sec:org25d762a"
    "sec:org8d3ce71"
    "sec:org06c8a6d"
    "sec:orgb1f5108"
    "sec:org7b27629"
    "sec:orgb502774"
    "sec:org93f3c9b"
    "eq:1"
    "sec:orgadaa38f"
    "sec:org6a758a8"
    "alg:localFuzzySimplicialSet"
    "alg:smoothKNNDist"
    "alg:spectralEmbedding"
    "alg:optimizeEmbedding"
    "sec:org078e27c"
    "sec:org8d91088"
    "sec:org7b61201"
    "sec:org274a5d2"
    "sec:org533d625"
    "sec:orga220b5b"
    "sec:orgac308b8"
    "table:distr_of_sounds"
    "fig:8-plots"
    "sec:org82c3cb3"
    "sec:org1f10704"
    "fig:example-fig"
    "sec:org8d85bd5"
    "sec:org0c9e9c5"
    "sec:org70aa9fd"
    "fig:mfcc"
    "sec:orgb3249b0"
    "sec:org694b75f"
    "table:all_features"
    "sec:orgfde1e30"
    "sec:org007743d"
    "sec:org8d9a4f0"
    "sec:org5ce221c"
    "fig:best_overall_stft"
    "fig:best_overall_mfcc"
    "fig:best_overall_combined"
    "fig:3d_pca"
    "fig:umap_3d_pca_grid_search"
    "fig:top_overall"
    "fig:top_ripley"
    "fig:top9_no_pca3"
    "sec:org1054556"
    "sec:orgf2b4e9e")
   (LaTeX-add-bibliographies
    "Bibliography"))
 :latex)

