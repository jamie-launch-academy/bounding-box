class BoundingArea
  attr_reader :area

  def initialize(area)
    @area = area
  end

  def contains_point?(x,y)
    truth = false
    @area.each do |check|
      if check.contains_point?(x,y)
        truth = true
      end
    end
    truth
  end
end
