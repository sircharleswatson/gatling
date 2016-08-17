%Gatling.Env{available_port: 4001,
 available_tasks: ["run", "app.start", "app.tree", "archive", "archive.build",
  "archive.install", "archive.uninstall", "clean", "cmd", "compile", "deps",
  "deps.clean", "deps.compile", "deps.get", "deps.tree", "deps.unlock",
  "deps.update", "do", "escript", "escript.build", "escript.install",
  "escript.uninstall", "help", "hex", "hex.build", "hex.config", "hex.docs",
  "hex.info", "hex.key", "hex.outdated", "hex.owner", "hex.public_keys",
  "hex.publish", "hex.registry", "hex.search", "hex.user", "loadconfig",
  "local", "local.hex", "local.phoenix", "local.public_keys", "local.rebar",
  "new", "phoenix.new", "profile.fprof", "run", "test", "xref"],
 build_dir: "/root/home/ubuntu/sample_project",
 built_release_path: "/root/home/ubuntu/sample_project/rel/sample_project/releases/0.0.1470406670/sample_project.tar.gz",
 deploy_callback_module: SampleProject.DeployCallbacks,
 deploy_dir: "/root/home/ubuntu/deployments/sample_project",
 deploy_path: "/root/home/ubuntu/deployments/sample_project/sample_project.tar.gz",
 domains: "www.example.com sample_project.hashrocket.com api.example.com",
 etc_dir: "/root/etc/init.d",
 etc_path: "/root/etc/init.d/sample_project",
 git_hook_path: "/root/home/ubuntu/sample_project/.git/hooks/post-update",
 nginx_available_path: "/root/etc/nginx/sites-available/sample_project",
 nginx_dir: "/root/etc/nginx",
 nginx_enabled_path: "/root/etc/nginx/sites-enabled/sample_project",
 nginx_template: "server {\n  listen 80;\n  server_name www.example.com sample_project.hashrocket.com api.example.com;\n\n  location / {\n    proxy_set_header X-Real-IP $remote_addr;\n    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;\n    proxy_set_header Host $http_host;\n    proxy_redirect off;\n    proxy_pass http://localhost:4001;\n  }\n\n}\n",
 project: "sample_project",
 script_template: "#!/bin/sh\n\n### BEGIN INIT INFO\n# Provides:          sample_project\n# Required-Start:    $local_fs $network $named $time $syslog\n# Required-Stop:     $local_fs $network $named $time $syslog\n# Default-Start:     2 3 4 5\n# Default-Stop:      0 1 6\n# Description:       Plug Application: sample_project\n### END INIT INFO\n\nexport MIX_ENV=prod\nexport PORT=4001\nexport HOME=/Users/micah/deployments/sample_project\n\n/Users/micah/deployments/sample_project/bin/sample_project \"$1\" \"$2\"\n",
 upgrade_callback_module: SampleProject.UpgradeCallbacks,
 upgrade_dir: "/root/home/ubuntu/deployments/sample_project/releases/0.0.1470406670",
 upgrade_path: "/root/home/ubuntu/deployments/sample_project/releases/0.0.1470406670/sample_project.tar.gz",
 version: "0.0.1470406670"}