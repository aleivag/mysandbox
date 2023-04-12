import sys
import pystemd.run

pystemd.run(["/bin/echo", "hello from container"], stdout=sys.stdout, stderr=sys.stderr)
