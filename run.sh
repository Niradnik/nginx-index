docker run -v /etc/passwd:/etc/passwd -v /etc/passwd-:/etc/passwd- -v /etc/group:/etc/group -v /etc/group-:/etc/group- -v /etc/shadow:/etc/shadow -v /etc/shadow-:/etc/shadow- -p 127.0.0.1:7001:8080 -i -v /app/runner/h5ai/h5ai_volume:/http --name h5ai h5ai