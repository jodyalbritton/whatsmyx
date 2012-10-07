working_directory "/var/src/whatsmyx"
pid "/var/src/whatsmyx/tmp/pids/unicorn.pid"
stderr_path "/var/src/log/unicorn.log"
stdout_path "/var/src/whatsmyx/log/unicorn.log"

listen "var/src/whatsmyx/tmp/sockets/unicorn.todo.sock"
worker_processes 2
timeout 30