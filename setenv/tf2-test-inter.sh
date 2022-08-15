srun --pty --job-name "tf2inter-test" --cpus-per-task 4 --mem-per-cpu 4G --time 1:00:00 --gres "gpu:1" --ntasks 1 --nodelist "node008" --partition "gpuq" bash
