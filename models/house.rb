require_relative('../db/sql_runner')

class House

    attr_accessor :name, :logo
    attr_reader :id

    def initialize(options)
        @id = options['id'].to_i if options['id']
        @name = options['name']
        @logo = options['logo']
    end

    def save()
        sql = "INSERT INTO houses (name, logo)
        VALUES ($1, $2) RETURNING id"
        values = [@name, @logo]
        result = SqlRunner.run(sql, values)
        @id = result[0]['id'].to_i
    end

end