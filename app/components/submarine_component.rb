class SubmarineComponent < ShipComponent
  SIZE = 3

  def initialize(direction:, position:, hits: [false, false, false], silhouette: false)
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
