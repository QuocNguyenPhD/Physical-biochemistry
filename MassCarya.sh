#!/bin/bash

# #1

cd /project/joshi/Hoang/Sigmoidal/3D/RN10/C3D4/WithoutDamage
sbatch CaryaBR.sh

# #2
cd /project/joshi/Hoang/Sigmoidal/3D/RN10/C3D4/WithDamage
sbatch CaryaBR.sh

# #3
cd /project/joshi/Hoang/Sigmoidal/3D/RN10/C3D8/WithoutDamage
sbatch CaryaBR.sh

# #4
cd /project/joshi/Hoang/Sigmoidal/3D/RN10/C3D8/WithDamage
sbatch CaryaBR.sh


