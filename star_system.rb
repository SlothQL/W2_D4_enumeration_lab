class StarSystem
  attr_reader :name, :planets

  def initialize(name, planets)
    @name = name
    @planets = planets
  end

  def planet_names()
    @planets.map { |planet| planet.name}
  end

  def get_planet_by_name(planet_name)
    @planets.find {|planet|planet_name == planet.name}
  end
    
  def get_largest_planet()
    @planets.max_by { |planet| planet.diameter}
  end

  def get_smallest_planet()
    @planets.min_by { |planet| planet.diameter}
  end

  def get_planets_with_no_moons()
    @planets.find_all { |planet| planet.number_of_moons == 0}
  end

  def get_planets_with_more_moons(number)
    planet_with_moons = @planets.find_all {|planet| planet.number_of_moons > number}
    planet_with_moons.map {|planet| planet.name}
  end

  def get_number_of_planets_closer_than(number)
    array_of_planets = @planets.select { |planet| planet.distance_from_sun < number}
    array_of_planets.count
  end

  def get_total_number_of_moons()
    @planets.reduce(0) { |total, planet| total + planet.number_of_moons}
  end

end
