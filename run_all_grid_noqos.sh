#!/bin/sh

NUM_RUNS=50

for i in {1..5}
do
  #qsub -t 1-$NUM_RUNS:1 graph_ops_noqos.sh ~/workspace/GreedyGPNoQoS/owls owls-graph-noqos${i} graph-evol-noqos.params true false owlsTCTask${i}.xml owlsTCTaxonomy.xml owlsTCServices.xml;
done

for i in 1 2 5
do
  qsub -t 1-$NUM_RUNS:1 graph_ops_noqos.sh ~/workspace/wsc2008/Set0${i}MetaData 2008-graph-noqos${i} graph-evol-noqos.params true true problem.xml taxonomy.xml services-output.xml;
done
