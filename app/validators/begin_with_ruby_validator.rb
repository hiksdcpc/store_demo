class BeginWithRubyValidator < ActiveModel::EachValidator
  def validate_each(record, attr, value)
    unless value.starts_with?("ruby")
      record.errors[:attr] << "must begin with ruby"
    end
  end
end
