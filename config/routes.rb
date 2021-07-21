Rails.application.routes.draw do
  devise_for :companies, controllers: { registrations: 'companies/registrations',
                                        sessions: 'companies/sessions',
                                        passwords: 'companies/passwords'}
  devise_for :members, controllers: { registrations: 'members/registrations',
                                      sessions: 'members/sessions',
                                      passwords: 'members/passwords'}
end
