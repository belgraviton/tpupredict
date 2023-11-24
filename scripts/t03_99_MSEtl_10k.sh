DATA="./data/tpugraphs/npz/tile/xla/"


OUT="./results/t03_99_cfg256_bs16LR3e10kES200_tl"
mkdir $OUT
echo $OUT
python tiles_train.py --model=EarlyJoinSAGE --data_root $DATA --out_dir $OUT --batch 16 --lr 0.001 --configs 256 --epochs 10000 --early_stop 200 --losses='ListMLELoss:1,MSE:0.02' > $OUT"/log.txt"


OUT="./results/t03_99_cfg512_bs16LR3e10kES200_tl"
mkdir $OUT
echo $OUT
python tiles_train.py --model=EarlyJoinSAGE --data_root $DATA --out_dir $OUT --batch 16 --lr 0.001 --configs 512 --epochs 10000 --early_stop 200 --losses='ListMLELoss:1,MSE:0.02' > $OUT"/log.txt"
