return {
    -- Equation environment (number)
    s(
        {
            name = "equation (numbered)",
            dscr = "math equation (numbered)",
            trig = "eqn"
        },
        fmta(
            [[
                \begin{equation}
                    <>
                    \label{eq:<>}
                \end{equation}
            ]],
            { i(1), i(2) }
        )
    ),
    
    
    -- Equation environment (no number)
    s(
        {
            name = "equation (no number)",
            dscr = "math equation (no number)",
            trig = "eq"
        },
        fmta(
            [[
                \begin{equation*}
                    <>
                \end{equation*}
            ]],
            { i(1) }
        )
    ),


    -- Equation align environment (number)
    s(
        {
            name = "equation aligned (numbered)",
            dscr = "math equation aligned (numbered)",
            trig = "eqan"
        },
        fmta(
            [[
                \begin{align}
                    <>
                    \label{eq:<>}
                \end{align}
            ]],
            { i(1), i(2) }
        )
    ),
    
    
    -- Equation align environment (no number)
    s(
        {
            name = "equation aligned (no number)",
            dscr = "math equation aligned (no number)",
            trig = "eqa"
        },
        fmta(
            [[
                \begin{align*}
                    <>
                \end{align*}
            ]],
            { i(1) }
        )
    ),
    
    
    -- Equation gather environment (number)
    s(
        {
            name = "equation gather (numbered)",
            dscr = "math equation gather (numbered)",
            trig = "gathern"
        },
        fmta(
            [[
                \begin{gather}
                    <>
                    \label{eq:<>}
                \end{gather}
            ]],
            { i(1), i(2) }
        )
    ),
    
    
    -- Equation gather environment
    s(
        {
            name = "equation gather (no number)",
            dscr = "math equation gather (no number)",
            trig = "gather"
        },
        fmta(
            [[
                \begin{gather*}
                    <>
                \end{gather*}
            ]],
            { i(1) }
        )
    ),
    
    
    -- Corollary environment
    s(
        {
            name = "corollary",
            dscr = "math corollary",
            trig = "corollary"
        },
        fmta(
            [[
                \begin{corollary}
                    <>
                    \label{eq:<>}
                \end{corollary}
            ]],
            { i(1), i(2) }
        )
    ),


    -- Definition environment 
    s(
        {
            name = "definition",
            dscr = "math definition",
            trig = "definition"
        },
        fmta(
            [[
                \begin{definition}[<>]
                    <>
                    \label{def:<>}
                \end{definition}
            ]],
            { i(1), i(2), i(3) }
        )
    ),


    -- Example environment 
    s(
        {
            name = "example",
            dscr = "math example",
            trig = "example"
        },
        fmta(
            [[
                \begin{example}
                    <>
                \end{example}
            ]],
            { i(1) }
        )
    ),


    -- Exercise environment 
    s(
        {
            name = "exercise",
            dscr = "math exercise",
            trig = "exercise"
        },
        fmta(
            [[
                \begin{exercise}
                    <>
                \end{exercise}
            ]],
            { i(1) }
        )
    ),


    -- Proof environment 
    s(
        {
            name = "proof",
            dscr = "math proof",
            trig = "proof"
        },
        fmta(
            [[
                \begin{proof}
                    <>
                \end{proof}
            ]],
            { i(1) }
        )
    ),


    -- Result environment 
    s(
        {
            name = "result",
            dscr = "math result",
            trig = "result"
        },
        fmta(
            [[
                \begin{result}
                    <>
                \end{result}
            ]],
            { i(1) }
        )
    ),


    -- Theorem environment
    s(
        {
            name = "theorem",
            dscr = "math theorem",
            trig = "theorem"
        },
        fmta(
            [[
                \begin{theorem}
                    <>
                    \label{eq:<>}
                \end{theorem}
            ]],
            { i(1), i(2) }
        )
    ),


    -- Fraction
    s(
        {
            name = "fraction",
            dscr = "math fraction",
            trig = "frac"
        },
        fmta(
            [[
                \frac{<>}{<>} <>
            ]],
            { i(1), i(2), i(0) }
        )
    ),


    -- Summation
    s(
        {
            name = "summation",
            dscr = "math summation",
            trig = "sum"
        },
        fmta(
            [[
                \sum_{<>}^{<>} <>
            ]],
            { i(1), i(2), i(0) }
        )
    ),


    -- Matrix
    s(
        {
            name = "matrix",
            dscr = "math matrix",
            trig = "matrix"
        },
        fmta(
            [[
                \begin{<>matrix}
                    <>
                \end{<>matrix}
            ]],
            { i(1), i(0), rep(1) }
        )
    ),





}
