def spiral_matrix(size):
    l = [[0] * size for _ in range(size)]
    dirs = [(0, 1), (1, 0), (0, -1), (-1, 0)]
    i = 0
    j = 0
    d_idx = 0
    for x in range(1, size * size + 1):
        l[i][j] = x
        next_i, next_j = i + dirs[d_idx][0], j + dirs[d_idx][1]
        if next_i <0 or next_i >= size or next_j <0 or next_j >= size or l[next_i][next_j] != 0:
            d_idx = (d_idx + 1) % 4
            next_i, next_j = i + dirs[d_idx][0], j + dirs[d_idx][1]
        i, j = next_i, next_j

    return l
