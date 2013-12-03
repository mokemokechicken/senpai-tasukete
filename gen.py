import sys
import random

N = int(sys.argv[1])
D = int(sys.argv[2])

print "%d %d" % (N, D)
for _ in range(N+D):
    print random.randint(10, 1000000)


