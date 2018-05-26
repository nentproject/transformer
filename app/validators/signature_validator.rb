class SignatureValidator < ActiveModel::Validator
  def validate(record)

    unless Qtum.verify_message(record[:qtum_address], record[:signature], record[:message])
      record.errors[:signature] << I18n.t("activerecord.errors.message:invalid_signature")
    end
  end
end
