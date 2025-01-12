#!/usr/bin/env julia
using Test
tests = [ "TestSizet", "TestCtorDefVal", "TestAccessAndDelete", "TestNoFinalizer", "TestInheritance",
          "TestPropagation",  "TestTemplate1",  "TestTemplate2", "TestVarField", "TestStdString", "TestStringView",
	  "TestStdVector", "TestOperators", "TestEnum", "TestPointers", "TestEmptyClass", "TestUsingType", "TestNamespace",
          "TestOrder"
        ]

@testset verbose=true "Tests" begin
    for t in tests
        @testset "$t" begin
            @test begin
                try
	            run(`make -C $t clean test`)
                    true
                catch
                    false
                end
            end
        end
    end
    include("test_examples.jl")
end
