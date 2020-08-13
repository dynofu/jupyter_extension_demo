#!/usr/bin/env python3
# +
# https://blog.jupyter.org/a-visual-debugger-for-jupyter-914e61716559, A visual debugger for Jupyter
# +
def counterintuitive_add(a: int, b: int) -> int:
    a += 1
    r = a + b

    return r


add = counterintuitive_add
# -

add(100, 100)



