DOCKER_USER = 'raviqqe'
MAINTAINER = 'Yota Toyama <raviqqe@gmail.com>'
DEFAULT_BASE_IMAGE = 'raviqqe/ubuntu'

WEB_PORT = 9000
GIT_PORT = 9001
SQL_PORT = 5423

DOMAIN_NAME = 'raviqqe.com'
WEB_HOST = 'www.' + DOMAIN_NAME
GIT_HOST = 'git.' + DOMAIN_NAME

cert_dir = File.join '/etc/letsencrypt/live', DOMAIN_NAME
CERT_PATH = File.join cert_dir, 'fullchain.pem'
KEY_PATH = File.join cert_dir, 'privkey.pem'

GIT_REPO_VOLUME = 'git_repos'

POST_MAX_SIZE = '256M'
