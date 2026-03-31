return {
    
    -- Header for code files. Specify the comment character.
    s(
        {
            name = "code_header",
            dscr = "source code header",
            trig = "hdr",
        },
        fmta(
            [[
                <> -----------------------------------------------------------------------------
                <> <>
                <> -----------------------------------------------------------------------------
            ]],
            { i(1), rep(1), i(0), rep(1) }
        )
    ),

}
