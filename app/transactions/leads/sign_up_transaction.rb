class Leads::SignUpTransaction < BaseTransaction
  step :validate
  step :persist

  def validate(params)
    form = Leads::SignUpForm.call(params)

    if form.success?
      Right(form.to_h)
    else
      Left(form.errors)
    end
  end

  def persist(attributes)
    lead = LeadRepository.new(data_source: Lead).new_entity(attributes)

    if lead.save
      Right(lead)
    else
      Left(user.errors.messages)
    end
  end
end
