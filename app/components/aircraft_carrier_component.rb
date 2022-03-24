class AircraftCarrierComponent < ShipComponent
  SIZE = 5

  def initialize(direction:, position:, hits: [false, false, false, false, false])
    super

    if vertical?
      @class_list << 'col-span-1'
      @class_list << "row-span-#{SIZE}"
    end

    if horizontal?
      @class_list << 'row-span-1'
      @class_list << "col-span-#{SIZE}"
    end
  end

  def classes
    @class_list.uniq.join(' ')
  end
end
