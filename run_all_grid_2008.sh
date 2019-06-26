#!/bin/sh

need sgegrid

NUM_RUNS=50

# For each dataset
for i in {1..8}; do
  # Create an array of NUM_RUMS jobs, where each job is defined by the script graph_ops.sh. Here we pass the
  # arguments required by the other script (the dataset, the name of the output folder, and a parameters file).
  # This is an old script, and since then the grid admin has asked us to not submit arrays of jobs (i.e.
  # -t 1-$NUM_RUNS:1). Instead, you want to create a loop that simply calls "qsub graph_ops.sh ..."
  # NUM_RUNS times.
  qsub -t 1-$NUM_RUNS:1 graph_ops.sh ~/workspace/wsc2008/Set0${i}MetaData 2008-graph-dataset${i} graph-evol.params;
done
