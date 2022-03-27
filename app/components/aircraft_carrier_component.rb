class AircraftCarrierComponent < ShipComponent
  SIZE = 5

  def initialize(direction:, position: nil, hits: Array.new(5, false), silhouette: false)
    super

    if vertical? && position
      @class_list << 'col-span-1'
      @class_list << "row-span-#{SIZE}"
    end

    if horizontal? && position
      @class_list << 'row-span-1'
      @class_list << "col-span-#{SIZE}"
    end
  end

  def classes
    @class_list.uniq.join(' ')
  end
end
