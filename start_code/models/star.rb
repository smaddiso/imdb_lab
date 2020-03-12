require_relative("../db/sql_runner")

class Star

  attr_reader :id
  attr_accessor :first_name, :last_name

  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @first_name = options["first_name"]
    @last_name = options["last_name"]
  end

  def save()
    sql = "INSERT INTO stars
    (
      first_name,
      last_name
    )
    VALUES
    (
      $1, $2
    )
    RETURNING id"
    values = [@first_name, @last_name]
    star = SqlRunner.run(sql, values).first
    @id = star["id"].to_i
  end

  def star()
    sql = "SELECT * FROM stars
    WHERE id = $1"
    values = [@star_id]
    star_data = SqlRunner.run(sql, values)[0]
    return Star.new(star_data)
  end

  def self.all()
    sql "SELECT * FROM stars"
    stars = SqlRunner.run(sql)
    result = Star.map_items(star)
    return result
  end

  def self.map_items(star_data)
    return star_data.map {|star| Star.new(star)}
  end

end
