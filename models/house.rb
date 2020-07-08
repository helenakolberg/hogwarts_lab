require_relative('../db/sql_runner')

class House

    attr_accessor :name, :logo
    attr_reader :id

    def initialize(options)
        @id = options['id'].to_i if options['id']
        @name = options['name']
        @logo = options['logo']
    end

end