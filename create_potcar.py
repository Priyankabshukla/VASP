import os
import sys
from ase.io import read, write
poscar = sys.argv[1]
qm_method = sys.argv[2]
potpath=lambda q,x:f'/ihome/crc/install/intel-2017.1.132/intel-mpi-2017.1.132/vasp/potcars/{q}/{x}/POTCAR'
pos=read(poscar)
sym=pos.get_chemical_symbols()
sym_un=list(dict.fromkeys(sym))
for s in sym_un:
	os.system(f'cat {potpath(qm_method,s)} >> POTCAR2')
