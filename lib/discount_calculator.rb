class DiscountCalculator
  DISCOUNTS_BY_GROUP_SIZE = {
    0 => 0.0,
    1 => 0.0,
    2 => 0.05,
    3 => 0.10,
    4 => 0.20,
    5 => 0.25
  }

  MEDICINE_VALUE = 8.0

  def self.calculate!(cart_items)
    new(cart_items).calculate!
  end

  def initialize(cart_items)
    @cart_items = cart_items
  end

  def calculate!
    if total_main_groups < total_alternative_groups
      total_main_groups
    else
      total_alternative_groups
    end
  end

  private

  attr_reader :cart_items

  def total_main_groups
    main_groups.inject(0) do |memo, (key, items)|
      memo += items.size * (MEDICINE_VALUE - get_discount(items))
    end
  end

  def total_alternative_groups
    alternative_groups.inject(0) do |memo, (key, items)|
      memo += items.size * (MEDICINE_VALUE - get_discount(items))
    end
  end

  def main_groups
    cart_items.map do |item|
      new_items = []

      1.upto(item[:quantity]) do |quantity|
        new_items << {name: item[:name], group: quantity}
      end

      new_items
    end.flatten.group_by { |item| item[:group] }
  end

  def alternative_groups
    uniq_items = cart_items.select { |item| item[:quantity] == 1 }
    duplicated_items = cart_items.select { |item| item[:quantity] > 1 }

    uniq_items = uniq_items.each_with_index.map do |item, index|
      {name: item[:name], group: index + 1}
    end

    duplicated_items = duplicated_items.map do |item|
      new_items = []

      1.upto(item[:quantity]) do |quantity|
        new_items << {name: item[:name], group: quantity}
      end

      new_items
    end

    (uniq_items + duplicated_items).flatten.group_by { |item| item[:group] }
  end

  def get_discount(items)
    if items.count > 5 
      DISCOUNTS_BY_GROUP_SIZE[5] * MEDICINE_VALUE
    else
      DISCOUNTS_BY_GROUP_SIZE[items.count] * MEDICINE_VALUE
    end
  end
end