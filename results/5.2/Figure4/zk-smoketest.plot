set title "ZooKeeper ensemble of 6 nodes"
set terminal pdf enhanced
set output '6node.pdf'
set ylabel 'Latency in ms'

set style data histogram
set style histogram cluster gap 4
set style fill solid border -1
set boxwidth 0.9

set auto x
set yrange [0:*]
plot '6nodedata' using 2:xtic(1) title col, \
        '' using 3:xtic(1) title col, \
        '' using 4:xtic(1) title col, \
        '' using 5:xtic(1) title col, \
