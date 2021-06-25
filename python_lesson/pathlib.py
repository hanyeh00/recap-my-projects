from pathlib import Path
from time import ctime
path=Path('path_masahat.py')
path.exists()
#path.rename("path_masahat.py") 
print(ctime(path.stat().st_ctime))
print(path.read_text())