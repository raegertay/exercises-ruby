def distribute(nodes, workload)
  jobs_per_node, extra_jobs = workload / nodes, workload % nodes
  work_distribution = []
  workload = (0..workload-1).to_a
  extra_jobs.times { work_distribution << workload.slice!(0..jobs_per_node) }
  (nodes - extra_jobs).times { work_distribution << workload.slice!(0..jobs_per_node-1) }
  work_distribution
end

distribute(2, 5)
