return {

    -- Chapter
    s(
        {
            name = "chapter",
            dscr = "begin a new chapter",
            trig = "chapter",
        },
        fmta(
            [[
                % -----------------------------------------------------------------------------
                \chapter{<>}
                \label{ch:<>}
                % -----------------------------------------------------------------------------
            ]],
            { i(1), rep(1), }
        )
    ),


    -- Section
    s(
        {
            name = "section",
            dscr = "begin a new section",
            trig = "section",
        },
        fmta(
            [[
                % -----------------------------------------------------------------------------
                \section{<>}
                \label{sec:<>}
                % -----------------------------------------------------------------------------
            ]],
            { i(1), rep(1), }
        )
    ),


    -- Subsection
    s(
        {
            name = "subsection",
            dscr = "begin a new subsection",
            trig = "subsection",
        },
        fmta(
            [[
                % -----------------------------------------------------------------------------
                \subsection{<>}
                \label{subsec:<>}
                % -----------------------------------------------------------------------------
            ]],
            { i(1), rep(1), }
        )
    ),


    -- SubSubsection
    s(
        {
            name = "subsubsection",
            dscr = "begin a new subsubsection",
            trig = "subsubsection",
        },
        fmta(
            [[
                % -----------------------------------------------------------------------------
                \subsubsection{<>}
                \label{subsec:<>}
                % -----------------------------------------------------------------------------
            ]],
            { i(1), rep(1), }
        )
    ),


    -- Emphasis
    s(
        {
            name = "emphasis",
            dscr = "emphasis",
            trig = "em",
        },
        fmta(
            [[
                {\em <>} <>
            ]],
            { i(1), i(0) }
        )
    ),

}
