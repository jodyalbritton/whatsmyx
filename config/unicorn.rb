working_directory "/var/src/whatsmyx"
pid "/tmp/pids/unicorn.pid"
stderr_path "/var/src/log/unicorn.log"
stdout_path "/var/src/whatsmyx/log/unicorn.log"

listen "/tmp/unicorn.todo.sock"
worker_processes 2
timeout 30