task :cert do
  certbot = `which certbot`
  sh %W[sudo #{(certbot != '' ? certbot : `which letsencrypt`).strip}
        certonly
        --standalone
        -d raviqqe.com
        -d git.raviqqe.com
        -d www.raviqqe.com
        -d ftp.raviqqe.com
        --email raviqqe@gmail.com
        --non-interactive
        --agree-tos
        --expand].join ' '
end

image_dirs = %w[git_daemon nginx_proxy notes pure_ftpd]

%i[rerun push].each do |name|
  task name do
    image_dirs.each do |dir|
      sh "cd #{dir} && rake #{name}"
    end
  end
end
