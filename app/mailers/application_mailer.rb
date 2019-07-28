class ApplicationMailer < ActionMailer::Base
  default from: "'XYZ'<from@example.com>"
  layout 'mailer'
end
