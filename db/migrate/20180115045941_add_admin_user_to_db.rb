class AddAdminUserToDb < ActiveRecord::Migration[5.1]
  def change
    user = PushType::User.new({
      name:         'Duc Diep',
      email:        'ducdiepco@gmail.com',
      password:     'password1',

      confirmation_sent_at: Time.zone.now,
      confirmed_at:         Time.zone.now,
      confirmation_token:   'Generated account'
    })
    user.save
  end
end
