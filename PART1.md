## PART 1: Simulating projectile motion

![](https://www.tutoroot.com/blog/wp-content/uploads/2022/10/projectile_main.jpg)

Projectile motion refers to the motion of an object thrown or projected into the air, subject to only the acceleration of gravity. The object is called a projectile, and its path is called its trajectory.

### Key Concepts

1. Initial Velocity $u$: The speed at which the projectile is launched.
2. Angle of Projection $\theta$: The angle at which the projectile is launched with respect to the horizontal axis.
3. Initial Height $h$: The vertical distance above the ground from which the projectile is launched.
4. The projectile is launched from an $(x,y)$ coordinate system where the origin is at the point of launch.

### Equations of Motion

The motion of the projectile can be analyzed by decomposing it into two components: horizontal and vertical.

- **Horizontal Motion**:
  - The horizontal velocity $v_x$ remains constant as there is no acceleration in the horizontal direction (assuming no air resistance).
  - Equation: $v_x = v \cos(\theta)$
  - Position at time $t$: $x(t) = v_x  t$

- **Vertical Motion**:
  - The vertical motion is influenced by gravity, which acts downward.
  - Initial vertical velocity: $v_y = v \sin(\theta)$
  - Vertical position at time $t$: $y(t) = h + v_y t - \frac{1}{2} g t^2$
  - Where `g` is the acceleration due to gravity (approximately 9.81 m/s²).

### Time of Flight

To determine how long the projectile will be in the air, we need to consider the time it takes for the projectile to reach its peak height and then return to the ground ($y=0$):

- **Time to Reach Maximum Height**
  - When the projectile reaches its maximum height, its vertical velocity will be zero. The time to reach this point can be calculated by:
$$t^* = \frac{v_y}{g}$$

- **Total Time of Flight**: 
  - Assuming the projectile returns to the original height from which it was launched, the total time of flight is **twice the time to reach maximum height** if the projectile is launched from the ground. 
  - If launched from a height $h$, we solve $$h + v_y t - \frac{1}{2} g t^2 = 0$$ This is a quadratic equation in $t$, and the relevant root of this equation will give the total time of flight.

### Objective

Write a function named `sim_proj` in R that calculates the trajectory of a projectile based on its initial velocity, angle of projection, and initial height above the ground. 

#### Requirements

- **Inputs:**
  - `u`: Initial velocity of the projectile in meters per second (m/s). Must be a positive numeric value.
  - `theta`: Angle of projection in degrees. Must be within the range 0 to 360.
  - `h`: Initial height in meters (m) from which the projectile is launched. Default should be 0. Must be a numeric value.
  - `n`: The number of points in the output table, including the start and end of the trajectory. Must be an integer greater than 1. Default must be 100.

- **Output:** 
  - A dataframe with the following 5 columns:
    - `time` [the time in seconds];
    - `x`, `y`  [the horizontal and vertical positions of the projectile at time `t`]
    - `vx`, `vy` [the horizontal and vertical velocities of the projectile at time `t`]

#### Function Specifications

1. Use `g=9.81` as the acceleration due to gravity.
2. Convert the projection angle from degrees to radians.
3. Calculate the horizontal (`vx`) and vertical (`vy`) components of the initial velocity.
4. Determine the total time of flight until the projectile returns to the ground level or below the initial height.
5. Generate a sequence of times from 0 to the total time of flight, divided into `n` intervals.
6. Calculate the `x` and `y` positions at each of these time points.
7. Return a `data.frame` as required.

#### Additional Instructions

- Include error handling to manage invalid input values, such as negative velocities, angles outside the allowed range, or non-integer or small/negative values for `n`.
- Ensure your function is well-commented to explain your logic and approach.
- Use the exact names of the variables listed here to pass autograding.
