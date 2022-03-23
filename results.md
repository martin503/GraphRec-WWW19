# Structure
```bash
[<epoch>, <num_of_batches>] loss: <avg_loss_after_num_batches>, rmse/mae: <rmse_in_act_batch> / <mae_in_act_batch>
# After each epoch
rmse: <rmse_over_whole_test_data>, mae: <mae_over_whole_test_data>, best rmse: <best_rmse_in_test_yet>, best mae: <best_mae_in_test_yet>
```

# Results
Toy-original *16m29.381s* on 10 epochs\
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

Toy-updated *16m45.615s* on 10 epochs:\
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

Epinions-updated *TODO* on 10 epochs:\
cmd: `time python run_GraphRec_example.py --epochs=10 --report=3 --data="data/Epinions"`
```
TODO
```
