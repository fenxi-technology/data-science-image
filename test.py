import sys
import subprocess

print(sys.version)
print("trying java:")
java = subprocess.call(['java', '-version'])
