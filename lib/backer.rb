require "pry"

class Backer
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def back_project(project)
    ProjectBacker.new(project, self)
  end

  def backed_projects
    tmp = ProjectBacker.all.select { |instance| instance.backer == self }.collect { |something| something.project }
  end
end
