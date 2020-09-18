require 'pry'

class Project
    attr_reader :title
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        arr = ProjectBacker.all.select {|pb_instance| pb_instance.project == self}
        arr.map {|pb| pb.backer }
    end
    
end