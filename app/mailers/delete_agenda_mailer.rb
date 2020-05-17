class DeleteAgendaMailer < ApplicationMailer
  default from: 'from@example.com'

  def delete_agenda_mail(agenda)
    @agenda = agenda
    @team_member_email = Team.find_by(id: @agenda.team_id).users.pluck(:email)
    mail to: @team_member_email, subject: I18n.t('views.messages.delete_agenda')
  end
end
