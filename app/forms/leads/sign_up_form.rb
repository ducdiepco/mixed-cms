Leads::SignUpForm = Dry::Validation.Form do
  configure do

    def email?(value)
      !Devise.email_regexp.match(value).nil?
    end

  end

  required(:first_name).filled(:str?)
  required(:last_name).filled(:str?)
  required(:phone).filled(:str?)
  optional(:email).filled(:str?, :email?)
  optional(:message).filled(:str?)
  optional(:url).filled(:str?)
  optional(:ip_address).filled(:str?)
  optional(:soure).filled(:str?)
  optional(:medium).filled(:str?)
  optional(:term).filled(:str?)
end
