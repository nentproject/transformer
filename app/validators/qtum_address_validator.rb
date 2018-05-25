class QtumAddressValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    return if value.nil?
    unless Qtum.valid_address?(value)
      record.errors[attribute] << (options[:message] || I18n.t("activerecord.errors.messages.invalid_qtum_address"))
    end
  end
end
