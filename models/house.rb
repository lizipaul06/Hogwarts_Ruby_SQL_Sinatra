require_relative('../db/sql_runner')

class House

  attr_reader :id
  attr_accessor  :name, :logo, :score, :motto

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @logo = options['logo']
    @score = options['score']
    @motto = options['motto']

  end


    def save()
      sql = "INSERT INTO houses(name, logo, score, motto)
      VALUES($1,$2,$3, $4) RETURNING id"
      values = [@name, @logo, @score, @motto]
      @id = SqlRunner.run(sql, values)[0]['id'].to_i
    end

    def self.all()
      sql = "SELECT * FROM houses"
      houses = SqlRunner.run(sql)
      return houses.map { |house| House.new(house) }
    end

    def self.find_by_id(id)
      sql = "SELECT * FROM houses WHERE id = $1"
      values = [id]
      house = SqlRunner.run(sql, values)[0]
      return House.new(house)
    end

    # def .rand_house()
    #   sql = "SELECT * FROM houses
    #   ORDER BY RANDOM()
    #    LIMIT 1"
    #   values = [id]
    #   house = SqlRunner.run(sql, values)[0]
    #   return House.new(house)
    # end

    def self.delete_all()
      sql = "DELETE FROM houses"
      SqlRunner.run(sql)
    end
  end
