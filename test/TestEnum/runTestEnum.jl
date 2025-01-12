using Test
using TestEnum
using CxxWrap

@testset "Enums" begin
    @test typeof(TestEnum.A) == DataType
    @test TestEnum.A!C == 1
    @test TestEnum.A!D == 2

    @test typeof(TestEnum.B) == DataType
    @test TestEnum.B!C == 3
    @test TestEnum.B!D == 4

    @test typeof(TestEnum.E) == DataType
    @test TestEnum.E1 == 5
    @test TestEnum.E2 == 6

    @test_throws UndefVarError TestEnum.C
    @test_throws UndefVarError TestEnum.D
    @test_throws UndefVarError TestEnum.E!E1
    @test_throws UndefVarError TestEnum.E!E2
end
