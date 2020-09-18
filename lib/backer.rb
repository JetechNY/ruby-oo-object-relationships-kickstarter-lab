require 'pry'

class Backer
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        arr = ProjectBacker.all.select {|pb_instance| pb_instance.backer == self}
        arr.map {|pb| pb.project }
    end

end