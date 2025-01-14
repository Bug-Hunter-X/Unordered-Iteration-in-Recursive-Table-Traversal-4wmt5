# Lua Recursive Table Traversal Bug

This repository demonstrates a subtle bug related to the unordered iteration of tables in Lua when using the `pairs` iterator within a recursive function.  The `pairs` iterator does not guarantee any specific order of iteration; therefore, the order in which nested tables are processed can be inconsistent. This inconsistency can lead to unexpected behavior, especially when relying on a specific order of processing.

## Bug Description
The `bug.lua` file contains a recursive function `foo` that traverses a nested table. Due to the unordered nature of `pairs`, the order of processing the nested tables `b`, `{c = 2, d = {e = 3}}` and `{e = 3}` isn't deterministic, possibly leading to logical errors if order matters.

## Solution
The `bugSolution.lua` file provides a solution that addresses the issue by using a different approach that guarantees the order of traversal.  This solution avoids the unpredictable behavior introduced by `pairs`.