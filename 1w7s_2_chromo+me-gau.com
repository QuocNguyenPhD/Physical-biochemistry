%Chk=Your-chkfile.chk
%Mem=32GB
%NProc=16

#P hf/6-31G* Opt=(Tight,CalcFC) Freq SCF(Conver=8) Test

Gaussian optimization output to be used by R.E.D.

 0 1
 N       19.105  -0.335 106.432
 H       18.551  -0.311 107.264
 O       18.847   1.577 103.399
 H       19.225   1.486 102.521
 C       19.054   0.351 104.143
 H       20.099   0.123 104.139
 H       18.346  -0.376 103.804
 C       18.672   0.781 105.505
 H       19.155   1.723 105.662
 C       17.279   1.091 105.756
 N       16.292   0.652 105.057
 N       16.860   1.725 106.906
 C       15.478   1.663 106.900
 O       14.671   2.111 107.758
 C       15.072   0.969 105.713
 C       17.393   2.020 108.109
 H       18.139   1.291 108.349
 H       16.622   1.989 108.850
 C       13.775   0.696 105.335
 H       13.360   1.674 105.211
 C       13.311   0.021 104.188
 C       14.115  -0.543 103.135
 H       15.180  -0.460 103.197
 C       11.922  -0.138 104.022
 H       11.279   0.263 104.777
 C       13.541  -1.208 102.014
 H       14.153  -1.623 101.240
 C       11.338  -0.776 102.950
 H       10.273  -0.859 102.896
 C       12.106  -1.300 101.963
 O       11.564  -1.942 100.880
 H       10.607  -1.950 100.959
 C       17.997   3.331 108.112
 O       18.243   4.002 109.351
 C       18.376   4.007 106.781
 H       18.979   3.340 106.201
 H       17.487   4.249 106.238
 H       18.927   4.903 106.981
 C       18.923  -1.629 105.759
 H       19.858  -2.149 105.726
 H       18.209  -2.215 106.299
 H       18.570  -1.466 104.762


