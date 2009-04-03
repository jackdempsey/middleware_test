class Stripper
  CONTENT_TYPE = 'CONTENT_TYPE'.freeze                                                                                                                                          
  POST_BODY = 'rack.input'.freeze                                                                                                                                               
  FORM_INPUT = 'rack.request.form_input'.freeze                                                                                                                                 
  FORM_HASH = 'rack.request.form_hash'.freeze                                                                                                                                   
  FORM_VARS = 'rack.request.form_vars'.freeze

  def initialize(app)
    @app = app
  end

  def call(env)
    env.update(FORM_VARS => 'these do not', FORM_HASH => 'appear in ', FORM_INPUT => 'rails params')
    p env.find_all{|k,v| k =~ /rack/}.flatten
    env.update('action_controller.request.request_parameters' => {'this does'=>'show up'})
    @app.call(env)
  end
end
