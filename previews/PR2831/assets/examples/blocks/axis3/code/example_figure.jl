# This file was generated, do not modify it. # hide
__result = begin # hide
    using GLMakie
GLMakie.activate!() # hide


f = Figure()

xs = LinRange(0, 10, 100)
ys = LinRange(0, 10, 100)
zs = [cos(x) * sin(y) for x in xs, y in ys]

for (i, perspectiveness) in enumerate(LinRange(0, 1, 6))
    ax = Axis3(f[fldmod1(i, 3)...], perspectiveness = perspectiveness,
        title = "perspectiveness = $perspectiveness", protrusions = (0, 0, 0, 20))
    hidedecorations!(ax)

    surface!(xs, ys, zs)
end

f
end # hide
save(joinpath(@OUTPUT, "example_14361256514716195032.png"), __result; ) # hide

nothing # hide