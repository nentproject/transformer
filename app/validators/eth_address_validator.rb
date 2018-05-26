class EthAddressValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless EthFormatter.valid_address?(value)
      record.errors[attribute] << (options[:message] || I18n.t("activerecord.errors.messages.invalid_eth_address"))
    end
  end
end
