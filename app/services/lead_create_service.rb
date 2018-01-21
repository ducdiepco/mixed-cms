class LeadCreateService
  include AppImport["lead_validate"]
  # include AutoInject["validate_article", "persist_article"]

  # AutoInject makes `validate_article` and `persist_article` available to use
  def call()

    require "pry"; binding.pry
    result = validate_article.call(params)

    if result.success?
      persist_article.call(params)
    end
  end
end
