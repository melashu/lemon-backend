class UserMailer < ApplicationMailer
     default from: 'notifications@lemon.com'

    def notify_user
        mail(to: User.pluck(:email), subject: 'Notifying about new update')
    end
end
