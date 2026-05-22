This set of instances is taken from the paper by [Cheng et al. (2021)](https://doi.org/10.1287/ijoo.2021.0054) on
two-stage robust facility location problems with disruptions.

An online version of the paper is [available here](https://hanalog.ca/wp-content/uploads/2021/02/Manuscript-1.pdf).

## Models

The problem can be modeled as

$$
\min_{x\in\{0,1\}^n} \ \sum_{i=1}^n f_ix_i + \max_{u\in U} \ \min_{(y,z)\in Y(x,u)} \
\sum_{i=1}^n\sum_{j=1}^m d_jt_{ij}y_{ij} + \sum_{j=1}^m p_jz_j
$$

in which $Y(x,u)$ denotes the second-stage feasible region.
The latter can be defined in two ways detailed below. 

### Uncertain RHS

In this version, the uncertain parameters only appear in the right-hand side of the second-stage problem.

The set $Y(x,u)$ is therefore given by
$$
\begin{aligned}
    & \sum_{j=1}^m y_{ij} + u_j \ge 1, \quad\text{for all } i=1,...,n, \\
    & y_{ij} \le x_i, \quad\text{for all } i=1,...,n, j=1,...,m, \\
    & y_{ij} \le 1 - u_j, \quad\text{for all } i=1,...,n, j=1,...,m, \\
    & y_{ij} \ge 0, \quad\text{for all } i=1,...,n, j=1,...,m.
\end{aligned}
$$

### Uncertain Technology Matrix

In this version, the uncertain parameters only appear in the technology matrix of the second-stage problem, i.e.,
there are products between the first-stage decisions and the uncertain parameters.

The set $Y(x,u)$ is therefore given by
$$
\begin{aligned}
    & \sum_{j=1}^m y_{ij} + u_j \ge 1, \quad\text{for all } i=1,...,n, \\
    & y_{ij} \le x_i(1 - u_j), \quad\text{for all } i=1,...,n, j=1,...,m, \\
    & y_{ij} \ge 0, \quad\text{for all } i=1,...,n, j=1,...,m.
\end{aligned}
$$

## Other Resources

We note that the original instances as well as the results from the paper by Cheng and others
are available on [Pr. Chen Chung's website](https://sites.google.com/site/chun123cheng/home).