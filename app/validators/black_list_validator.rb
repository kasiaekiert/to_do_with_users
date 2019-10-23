class BlackListValidator < ActiveModel::EachValidator
  
  def validate_each(record, attribute, value)
    record.errors.add(attribute, :on_black_list) if black_list.any? { |item| value.include?(item)  }
  end

  private
  def black_list
    ["hello world", "city"] 
  end

end