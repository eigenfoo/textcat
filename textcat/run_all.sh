echo CORPUS 1
echo TRAINING
python train.py ../data/corpus1_train.labels model.pkl
echo TESTING
python test.py ../data/corpus1_test.list model.pkl foo1.txt
perl ../data/analyze.pl foo1.txt ../data/corpus1_test.labels > bar1.txt
echo

echo CORPUS 2
echo TRAINING
python train.py ../data/segmented_corpus2_train.labels model.pkl
echo TESTING
python test.py ../data/segmented_corpus2_test.list model.pkl foo2.txt
perl ../data/analyze.pl foo2.txt ../data/segmented_corpus2_test.labels > bar2.txt
echo

echo CORPUS 3
echo TRAINING
python train.py ../data/segmented_corpus3_train.labels model.pkl
echo TESTING
python test.py ../data/segmented_corpus3_test.list model.pkl foo3.txt
perl ../data/analyze.pl foo3.txt ../data/segmented_corpus3_test.labels > bar3.txt
echo

cat bar1.txt bar2.txt bar3.txt > bar.txt
rm foo1.txt foo2.txt foo3.txt bar1.txt bar2.txt bar3.txt model.pkl
