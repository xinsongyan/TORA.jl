module TORA

# Workaround for: https://github.com/JuliaRobotics/RigidBodyDynamics.jl/issues/500
using LinearAlgebra; BLAS.set_num_threads(1)

using Colors
using ForwardDiff
using GeometryTypes
using Ipopt
using KNITRO
using MeshCat
using MeshCatMechanisms
using NPZ
using Plots
using Random: rand!
using RigidBodyDynamics
using SparseArrays
using SparseDiffTools

using Plots.PlotMeasures: px

import Base: length

greet() = print("Hello World!")

# `Struct`-defining files
include("./jacobian_data.jl")
include("./robot.jl")
include("./problem.jl")
include("./solver_log.jl")

# Regular source code
include("./constraints/dynamics.jl")
include("./constraints/end_effector.jl")
include("./transcription/ipopt.jl")
include("./transcription/knitro.jl")
include("./plots.jl")

end # module