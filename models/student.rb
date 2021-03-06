require_relative('../db/sql_runner')

class Student

    attr_accessor :first_name, :last_name, :house, :age
    attr_reader :id

    def initialize(options)
        @id = options['id'].to_i if options['id']
        @first_name = options['first_name']
        @last_name = options['last_name']
        @house = options['house']
        @age = options['age'].to_i
    end

    def save()
        sql = "INSERT INTO students (first_name, last_name, house, age) 
        VALUES ($1, $2, $3, $4) RETURNING id"
        values = [@first_name, @last_name, @house, @age]
        result = SqlRunner.run(sql, values)
        @id = result[0]['id'].to_i
    end

    def self.map_items(data)
        return data.map { |student| Student.new(student) }
    end

    def self.find_all()
        sql = "SELECT * FROM students"
        result = SqlRunner.run(sql)
        return self.map_items(result)
    end

    def self.find_by_id(id)
        sql = "SELECT * FROM students WHERE id = $1"
        values = [id]
        result = SqlRunner.run(sql, values)
        return self.map_items(result)
    end

    def self.delete_all()
        sql = "DELETE FROM students"
        SqlRunner.run(sql)
    end

    def house()
        sql = "SELECT * FROM houses WHERE id = $1"
        values = [@house]
        result = SqlRunner.run(sql,values)
        return result.first
    end



    
end