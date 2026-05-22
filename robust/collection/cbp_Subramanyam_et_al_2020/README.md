This set of instances is taken from the paper by [Subramanyam et al. (2020)](https://doi.org/10.1007/s12532-019-00174-2) on
K-adaptability for two-stage robust mixed-integer problems.

It corresponds to the capital budgeting problem (without loan).


## Models

### Uncertain Technology Matrix

The problem can be modeled as

$$
    \min_{x\in\{0,1\}^n} \ 
    \max_{u\in [-1,1]^4} \
    \min_{y\in Y(x,u) } - \sum_{i=1}^n c_i(u)(x + \kappa y).
$$

Here, $Y(x,u)$ denotes the second-stage feasible space given by

```math
\begin{align}
    & \sum_{i=1}^n r_i(u)(x + y) \le B, \\
    & x_i + y_i \le 1, \quad\text{for all }i=1,...,n.
\end{align}
```

with 

```math
\begin{align}
    & c_i(u) = (1 + \Phi_i^\top u)c^0_i, \quad\text{for all }i=1,...,n, \\
    & r_i(u) = (1 + \Psi_i^\top u)r^0_i, \quad\text{for all }i=1,...,n.
\end{align}
```
