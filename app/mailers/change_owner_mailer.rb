class ChangeOwnerMailer < ApplicationMailer
  default from: 'from@example.com'

  def change_owner_mail(new_owner, team)
    @new_owner = new_owner
    @team = team
    mail to: @new_owner.user.email, subject: I18n.t('views.messages.change_owner')
  end
end