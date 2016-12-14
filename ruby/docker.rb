require 'block-is-array'
require 'dockerfile-dsl'
require 'rake/clean'

require_relative '../lib/docker-rake-tasks/docker'
require_relative '../config'



def docker_tasks image, run_options='', &block
  DockerTasks.new(DOCKER_USER, MAINTAINER, DEFAULT_BASE_IMAGE).create image, run_options, &block
end
