return {
    -- Inkscape SVG image with LaTeX text
    s(
        {
            name = "inkscape",
            dscr = "inkscape SVG image",
            trig = "inkscape"
        },
        fmta(
            [[
                \begin{figure}[htpb]
                    \centering
                    \def\svgwidth{1.0\linewidth}
                    \import{./figures/}{<>.pdf_tex}
                    \caption{<>}
                    \label{fig:<>}
                \end{figure}
            ]],
            { i(1), i(2), rep(1) }
        )
    ),


    -- JPG image
    s(
        {
            name = "image",
            dscr = "JPG image",
            trig = "jpg"
        },
        fmta(
            [[
                \begin{figure}[htpb]
                    \centering
                    \includegraphics[scale=1.0, angle=0.0]{./figures/<>}
                    \caption{<>}
                    \label{fig:<>}
                \end{figure}
            ]],
            { i(1), i(2), rep(1) }
        )
    ),


    -- PNG image
    s(
        {
            name = "image",
            dscr = "PNG image",
            trig = "png"
        },
        fmta(
            [[
                \begin{figure}[htpb]
                    \centering
                    \includegraphics[scale=1.0, angle=0.0]{./figures/<>}
                    \caption{<>}
                    \label{fig:<>}
                \end{figure}
            ]],
            { i(1), i(2), rep(1) }
        )
    ),


    -- Matplotlib PGF
    s(
        {
            name = "pgf",
            dscr = "matplotlib PGF image",
            trig = "pgf"
        },
        fmta(
            [[
                \begin{figure}[htpb]
                    \centering
                    \scalebox{1}{
                        \import{./figures/}{<>}
                    }
                    \caption{<>}
                    \label{fig:<>}
                \end{figure}
            ]],
            { i(1), i(2), rep(1) }
        )
    ),


    -- PDF image
    s(
        {
            name = "pdf",
            dscr = "PDF image",
            trig = "pdf"
        },
        fmta(
            [[
                \begin{figure}[htpb]
                    \centering
                    \includegraphics[width=\textwidth]{./figures/<>}
                    \caption{<>}
                    \label{fig:<>}
                \end{figure}
            ]],
            { i(1), i(2), rep(1) }
        )
    ),





}
