using ODERNNDynamics
using Documenter

DocMeta.setdocmeta!(ODERNNDynamics, :DocTestSetup, :(using ODERNNDynamics); recursive=true)

makedocs(;
    modules=[ODERNNDynamics],
    authors="Sven Duve <svenduve@gmail.com> and contributors",
    repo="https://github.com/SvenDuve/ODERNNDynamics.jl/blob/{commit}{path}#{line}",
    sitename="ODERNNDynamics.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://SvenDuve.github.io/ODERNNDynamics.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/SvenDuve/ODERNNDynamics.jl",
    devbranch="main",
)
