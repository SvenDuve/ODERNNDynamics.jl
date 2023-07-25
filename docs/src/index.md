```@meta
CurrentModule = ODERNNDynamics
```

# ODERNNDynamics

Documentation for [ODERNNDynamics](https://github.com/SvenDuve/ODERNNDynamics.jl).

NNDynamics.jl learns a model of the environment. It works with the following environments:

- [Pendulum](https://gymnasium.farama.org/environments/classic_control/pendulum/)
- [Acrobot](https://gymnasium.farama.org/environments/classic_control/acrobot/)
- [Lunar Lander](https://gymnasium.farama.org/environments/box2d/lunar_lander/)


## Installation

In the julia REPL, run

```julia
using Pkg
Pkg.add(url="https://github.com/SvenDuve/ODERNNDynamics.jl")
```

This package is not for general use. To be fully functional, it requires the following packages:

- [RLTypes](https://github.com/SvenDuve/RLTypes.jl)
- [Conda](https://github.com/JuliaPy/Conda.jl)
- [PyCall](https://github.com/JuliaPy/PyCall.jl)
- [Gymnasium](https://github.com/SvenDuve/Gymnasium), this is a slightly adapted version. The original package can be found [here](https://github.com/Farama-Foundation/Gymnasium)


Run the following:

```julia
using Pkg
Pkg.add(url="https://github.com/SvenDuve/RLTypes.jl")
Pkg.add("Conda")
Pkg.add("PyCall")
```

Then again within julia,

```julia
using Conda
using PyCall
Conda.pip("install", "git+https://github.com/SvenDuve/Gymnasium")
```


Bring package into scope with

```julia
using ODERNNDynamics
```

## Example usage


Once the above is installed, the following code can be used to train an agent on data collected form 100 episodes of the Pendulum environment:

```julia
using ODERNNDynamics
using RLTypes
model(Acrobot(), ModelParameter(collect_train=100, collect_test=10))
```

For further parameters, see the code.

This function returns a data structure containing a trained model. 


```@index
```

```@autodocs
Modules = [ODERNNDynamics]
```
