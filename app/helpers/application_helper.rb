module ApplicationHelper
  def format_quantity(quantity)
    if quantity.to_s.ends_with?('.0')
      quantity.to_i.to_s
    else
      quantity.to_s
    end
  end
end
