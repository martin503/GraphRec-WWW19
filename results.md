# Structure
```bash
[<epoch>, <num_of_batches>] loss: <avg_loss_after_num_batches>, rmse/mae: <rmse_in_act_batch> / <mae_in_act_batch>
# After each epoch
rmse: <rmse_over_whole_test_data>, mae: <mae_over_whole_test_data>, best rmse: <best_rmse_in_test_yet>, best mae: <best_mae_in_test_yet>
```

# Results
Toy-original *0h16m29s* on 10 epochs\
cmd: `time python run_GraphRec_example.py`\
(keep in mind that original version had bugs in reporting, to compare versions look at `rmse/mae` results in test section)
```
[1,     0] loss: 0.139, The best rmse/mae: 9999.000000 / 9999.000000
[1,   100] loss: 9.356, The best rmse/mae: 9999.000000 / 9999.000000
rmse: 2.7171, mae:2.5305
[2,     0] loss: 0.061, The best rmse/mae: 2.717121 / 2.530480
[2,   100] loss: 5.052, The best rmse/mae: 2.717121 / 2.530480
rmse: 1.7427, mae:1.5818
[3,     0] loss: 0.029, The best rmse/mae: 1.742709 / 1.581755
[3,   100] loss: 2.420, The best rmse/mae: 1.742709 / 1.581755
rmse: 1.2840, mae:1.0798
[4,     0] loss: 0.015, The best rmse/mae: 1.283979 / 1.079826
[4,   100] loss: 1.544, The best rmse/mae: 1.283979 / 1.079826
rmse: 1.0055, mae:0.7692
[5,     0] loss: 0.014, The best rmse/mae: 1.005522 / 0.769227
[5,   100] loss: 1.263, The best rmse/mae: 1.005522 / 0.769227
rmse: 0.8417, mae:0.6669
[6,     0] loss: 0.013, The best rmse/mae: 0.841698 / 0.666947
[6,   100] loss: 1.129, The best rmse/mae: 0.841698 / 0.666947
rmse: 0.8728, mae:0.6631
[7,     0] loss: 0.008, The best rmse/mae: 0.841698 / 0.666947
[7,   100] loss: 1.047, The best rmse/mae: 0.841698 / 0.666947
rmse: 0.9570, mae:0.7135
[8,     0] loss: 0.009, The best rmse/mae: 0.841698 / 0.666947
[8,   100] loss: 0.996, The best rmse/mae: 0.841698 / 0.666947
rmse: 0.8221, mae:0.6306
[9,     0] loss: 0.010, The best rmse/mae: 0.822118 / 0.630605
[9,   100] loss: 0.940, The best rmse/mae: 0.822118 / 0.630605
rmse: 0.8675, mae:0.6487
[10,     0] loss: 0.008, The best rmse/mae: 0.822118 / 0.630605
[10,   100] loss: 0.896, The best rmse/mae: 0.822118 / 0.630605
rmse: 0.8141, mae:0.6350

real    16m29.381s
user    16m27.893s
sys     0m1.535s
```

Toy-updated *0h16m45s* on 10 epochs:\
cmd: `time python run_GraphRec_example.py --epochs=10`
```
[1,    55] loss: 6.621, rmse/mae: 2.258805 / 2.060945
[1,   110] loss: 5.639, rmse/mae: 2.016186 / 1.781977
rmse: 2.1120, mae: 1.9450, best rmse: 2.1120, best mae: 1.9450
[2,    55] loss: 3.118, rmse/mae: 1.542826 / 1.293937
[2,   110] loss: 2.728, rmse/mae: 1.258992 / 1.045441
rmse: 1.2372, mae: 1.0714, best rmse: 1.2372, best mae: 1.0714
[3,    55] loss: 1.870, rmse/mae: 1.169669 / 0.949550
[3,   110] loss: 1.741, rmse/mae: 1.140181 / 0.937318
rmse: 0.8817, mae: 0.6778, best rmse: 0.8817, best mae: 0.6778
[4,    55] loss: 1.328, rmse/mae: 1.067559 / 0.870689
[4,   110] loss: 1.291, rmse/mae: 1.037697 / 0.844134
rmse: 0.8603, mae: 0.6704, best rmse: 0.8603, best mae: 0.6704
[5,    55] loss: 1.169, rmse/mae: 1.044917 / 0.863927
[5,   110] loss: 1.124, rmse/mae: 0.975533 / 0.757639
rmse: 0.8450, mae: 0.6538, best rmse: 0.8450, best mae: 0.6538
[6,    55] loss: 1.055, rmse/mae: 0.951610 / 0.762348
[6,   110] loss: 1.035, rmse/mae: 1.058755 / 0.844781
rmse: 0.9226, mae: 0.7273, best rmse: 0.8450, best mae: 0.6538
[7,    55] loss: 1.012, rmse/mae: 0.966388 / 0.754611
[7,   110] loss: 0.985, rmse/mae: 1.015126 / 0.802501
rmse: 0.8379, mae: 0.6398, best rmse: 0.8379, best mae: 0.6398
[8,    55] loss: 0.967, rmse/mae: 0.981647 / 0.797789
[8,   110] loss: 0.944, rmse/mae: 0.910692 / 0.715390
rmse: 1.0150, mae: 0.7720, best rmse: 0.8379, best mae: 0.6398
[9,    55] loss: 0.918, rmse/mae: 0.873280 / 0.696298
[9,   110] loss: 0.918, rmse/mae: 0.980369 / 0.788844
rmse: 0.8537, mae: 0.6420, best rmse: 0.8379, best mae: 0.6398
[10,    55] loss: 0.891, rmse/mae: 0.901599 / 0.666027
[10,   110] loss: 0.885, rmse/mae: 0.991083 / 0.747884
rmse: 0.8238, mae: 0.6339, best rmse: 0.8238, best mae: 0.6339

real    16m45.615s
user    16m44.190s
sys     0m1.463s
```

Epinions-updated *11h56m50s* on 10 epochs:\
cmd: `time python run_GraphRec_example.py --epochs=10 --report=3 --data="data/Epinions"`
```
[1,  1212] loss: 3.652, rmse/mae: 1.147614 / 0.920007
[1,  2424] loss: 2.460, rmse/mae: 1.128691 / 0.902961
[1,  3636] loss: 1.984, rmse/mae: 1.075248 / 0.805728
rmse: 1.1803, mae: 0.9580, best rmse: 1.1803, best mae: 0.9580
[2,  1212] loss: 0.937, rmse/mae: 1.016861 / 0.751861
[2,  2424] loss: 0.933, rmse/mae: 1.059941 / 0.764065
[2,  3636] loss: 0.927, rmse/mae: 0.923204 / 0.672035
rmse: 1.1134, mae: 0.8743, best rmse: 1.1134, best mae: 0.8743
[3,  1212] loss: 0.911, rmse/mae: 0.910941 / 0.703539
[3,  2424] loss: 0.913, rmse/mae: 0.877984 / 0.698121
[3,  3636] loss: 0.911, rmse/mae: 0.984299 / 0.776182
rmse: 1.1068, mae: 0.8677, best rmse: 1.1068, best mae: 0.8677
[4,  1212] loss: 0.903, rmse/mae: 0.925083 / 0.724766
[4,  2424] loss: 0.903, rmse/mae: 0.830770 / 0.630295
[4,  3636] loss: 0.904, rmse/mae: 0.939953 / 0.723346
rmse: 1.1048, mae: 0.8667, best rmse: 1.1048, best mae: 0.8667
[5,  1212] loss: 0.894, rmse/mae: 0.843049 / 0.646970
[5,  2424] loss: 0.897, rmse/mae: 0.869283 / 0.663406
[5,  3636] loss: 0.898, rmse/mae: 1.050970 / 0.776975
rmse: 1.1286, mae: 0.8944, best rmse: 1.1048, best mae: 0.8667
[6,  1212] loss: 0.899, rmse/mae: 1.136334 / 0.866011
[6,  2424] loss: 0.895, rmse/mae: 0.943338 / 0.729685
[6,  3636] loss: 0.894, rmse/mae: 0.799113 / 0.621950
rmse: 1.1162, mae: 0.8753, best rmse: 1.1048, best mae: 0.8667
[7,  1212] loss: 0.890, rmse/mae: 0.858814 / 0.672141
[7,  2424] loss: 0.888, rmse/mae: 0.970410 / 0.748656
[7,  3636] loss: 0.890, rmse/mae: 0.846993 / 0.654746
rmse: 1.1157, mae: 0.8657, best rmse: 1.1048, best mae: 0.8657
[8,  1212] loss: 0.889, rmse/mae: 0.923306 / 0.697750
[8,  2424] loss: 0.889, rmse/mae: 1.039513 / 0.787957
[8,  3636] loss: 0.885, rmse/mae: 0.990926 / 0.767294
rmse: 1.0946, mae: 0.8497, best rmse: 1.0946, best mae: 0.8497
[9,  1212] loss: 0.876, rmse/mae: 0.877977 / 0.717350
[9,  2424] loss: 0.882, rmse/mae: 0.838019 / 0.658144
[9,  3636] loss: 0.883, rmse/mae: 1.107228 / 0.835399
rmse: 1.1045, mae: 0.8320, best rmse: 1.0946, best mae: 0.8320
[10,  1212] loss: 0.885, rmse/mae: 0.933456 / 0.684324
[10,  2424] loss: 0.881, rmse/mae: 1.028408 / 0.749405
[10,  3636] loss: 0.880, rmse/mae: 1.036710 / 0.800852
rmse: 1.0937, mae: 0.8489, best rmse: 1.0937, best mae: 0.8320

real	716m50.536s
user	718m2.100s
sys	0m17.966s
```

Epinions-updated *27h48m50s* on 20 epochs:\
cmd: `time python /code/run_GraphRec_example.py --data=/code/data/Epinions --epochs=20 --lr=0.001 --batch_size=4096 --embed_dim=64`
```
[1,    57] loss: 11.959, rmse/mae: 3.112 / 2.913
[1,   114] loss: 9.866, rmse/mae: 2.493 / 2.234
rmse: 2.5874, mae: 2.3717, best rmse: 2.5874, best mae: 2.3717
[2,    57] loss: 4.873, rmse/mae: 1.960 / 1.646
[2,   114] loss: 4.005, rmse/mae: 1.631 / 1.311
rmse: 1.4084, mae: 1.1946, best rmse: 1.4084, best mae: 1.1946
[3,    57] loss: 2.428, rmse/mae: 1.495 / 1.208
[3,   114] loss: 2.256, rmse/mae: 1.407 / 1.149
rmse: 1.3201, mae: 1.0695, best rmse: 1.3201, best mae: 1.0695
[4,    57] loss: 1.873, rmse/mae: 1.353 / 1.084
[4,   114] loss: 1.809, rmse/mae: 1.301 / 1.041
rmse: 1.3023, mae: 1.0632, best rmse: 1.3023, best mae: 1.0632
[5,    57] loss: 1.658, rmse/mae: 1.271 / 1.010
[5,   114] loss: 1.636, rmse/mae: 1.249 / 0.989
rmse: 1.3021, mae: 1.0562, best rmse: 1.3021, best mae: 1.0562
[6,    57] loss: 1.560, rmse/mae: 1.242 / 0.985
[6,   114] loss: 1.542, rmse/mae: 1.245 / 0.987
rmse: 1.2791, mae: 1.0078, best rmse: 1.2791, best mae: 1.0078
[7,    57] loss: 1.489, rmse/mae: 1.191 / 0.952
[7,   114] loss: 1.480, rmse/mae: 1.182 / 0.942
rmse: 1.3386, mae: 1.0908, best rmse: 1.2791, best mae: 1.0078
[8,    57] loss: 1.430, rmse/mae: 1.196 / 0.952
[8,   114] loss: 1.417, rmse/mae: 1.183 / 0.936
rmse: 1.2461, mae: 0.9944, best rmse: 1.2461, best mae: 0.9944
[9,    57] loss: 1.372, rmse/mae: 1.176 / 0.935
[9,   114] loss: 1.358, rmse/mae: 1.171 / 0.928
rmse: 1.2532, mae: 0.9967, best rmse: 1.2461, best mae: 0.9944
[10,    57] loss: 1.324, rmse/mae: 1.150 / 0.913
[10,   114] loss: 1.313, rmse/mae: 1.128 / 0.898
rmse: 1.2426, mae: 0.9833, best rmse: 1.2426, best mae: 0.9833
[11,    57] loss: 1.273, rmse/mae: 1.138 / 0.900
[11,   114] loss: 1.265, rmse/mae: 1.154 / 0.906
rmse: 1.1953, mae: 0.9338, best rmse: 1.1953, best mae: 0.9338
[12,    57] loss: 1.234, rmse/mae: 1.109 / 0.878
[12,   114] loss: 1.220, rmse/mae: 1.100 / 0.875
rmse: 1.2457, mae: 0.9965, best rmse: 1.1953, best mae: 0.9338
[13,    57] loss: 1.188, rmse/mae: 1.069 / 0.841
[13,   114] loss: 1.176, rmse/mae: 1.109 / 0.876
rmse: 1.2445, mae: 0.9871, best rmse: 1.1953, best mae: 0.9338
[14,    57] loss: 1.143, rmse/mae: 1.069 / 0.848
[14,   114] loss: 1.135, rmse/mae: 1.072 / 0.846
rmse: 1.2520, mae: 1.0079, best rmse: 1.1953, best mae: 0.9338
[15,    57] loss: 1.103, rmse/mae: 1.056 / 0.831
[15,   114] loss: 1.096, rmse/mae: 1.052 / 0.826
rmse: 1.2060, mae: 0.9377, best rmse: 1.1953, best mae: 0.9338
[16,    57] loss: 1.072, rmse/mae: 1.006 / 0.789
[16,   114] loss: 1.064, rmse/mae: 1.015 / 0.791
rmse: 1.2397, mae: 0.9683, best rmse: 1.1953, best mae: 0.9338
[17,    57] loss: 1.034, rmse/mae: 1.019 / 0.804
[17,   114] loss: 1.029, rmse/mae: 1.024 / 0.805
rmse: 1.1956, mae: 0.9366, best rmse: 1.1953, best mae: 0.9338
[18,    57] loss: 1.005, rmse/mae: 0.998 / 0.781
[18,   114] loss: 0.999, rmse/mae: 0.984 / 0.780
rmse: 1.2642, mae: 1.0040, best rmse: 1.1953, best mae: 0.9338
[19,    57] loss: 0.982, rmse/mae: 0.976 / 0.761
[19,   114] loss: 0.972, rmse/mae: 0.992 / 0.770
rmse: 1.1861, mae: 0.9302, best rmse: 1.1861, best mae: 0.9302
[20,    57] loss: 0.951, rmse/mae: 0.956 / 0.745
[20,   114] loss: 0.948, rmse/mae: 0.984 / 0.762
rmse: 1.2050, mae: 0.9416, best rmse: 1.1861, best mae: 0.9302

real	1668m50.732s
user	1668m26.396s
sys	0m49.065s
Sat May 14 15:08:57 UTC 2022

Tests finished!
```