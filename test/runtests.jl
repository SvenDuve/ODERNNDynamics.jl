using ODERNNDynamics
using Flux
using Test

@testset "ODERNNDynamics.jl" begin
    orn = ODE_RNN(1, 4)
    # Write your tests here.
    @test orn isa ODE_RNN
    @test orn([1.f0], [0.f0], zeros32((4,2))) isa Array{Float32,2}
end
