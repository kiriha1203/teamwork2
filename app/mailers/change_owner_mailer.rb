class ChangeOwnerMailer < ApplicationMailer
  def change_owner_mail(new_owner,team)
    @new_owner = new_owner
    @team = team
    mail to: @new_owner.email, subject: I18n.t('views.messages.change_owner')
  end
end