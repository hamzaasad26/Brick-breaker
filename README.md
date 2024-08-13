# Brick Breaker

This repository contains the source code for a simulation of Brick Breaker (1999) implemented entirely in Assembly Language (x86) using Microsoft Macro Assembler (MASM). This project was completed as part of the final assignment for the Computer Organisation & Assembly Language (EE2003) course.

## Introduction

Brick Breaker is a classic arcade platformer where players control a paddle to deflect a bouncing ball and break through a wall of bricks. The goal is to clear all the bricks to advance to the next level. The game features increasing difficulty and hidden elements in the final stage.

### Gameplay

- **Objective**: Destroy all bricks to advance to the next level. The game ends if all lives are lost.
- **Lives**: Start with three lives. A life is lost if the ball falls below the bottom of the screen.
- **Levels**: 
  - **Level 1 & 2**: Feature visible bricks arranged in various patterns.
  - **Level 3**: Includes invisible bricks that deflect the ball unpredictably.

## Features

- **Paddle Control**: Move the paddle horizontally using keyboard controls.
- **Ball Mechanics**: The ball bounces off the paddle and bricks, with its trajectory affected by collisions.
- **Level Progression**: Advance through levels by clearing all bricks. Each level presents a new challenge.
- **Scoring and Lives**: Track your score and remaining lives during gameplay.

## Build Instructions

1. **Setup MASM**: Ensure Microsoft Macro Assembler (MASM) is installed on your system.
2. **Assemble and Link**: Use MASM to assemble and link the source code files.
3. **Run the Game**: Execute the resulting binary file to start playing.

## Usage

- **Control the Paddle**: Use the specified keys to move the paddle left and right.
- **Deflect the Ball**: Bounce the ball off the paddle to hit and destroy the bricks.
- **Advance Levels**: Clear all bricks to proceed to the next level.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
