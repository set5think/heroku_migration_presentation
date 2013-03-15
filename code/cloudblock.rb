module Kaboom
  class Cloudblock
    def initialize(app)
      @app = app 
    end 
    def call(env)
      if is_from_cloudfront?(env) && !env['PATH_INFO'].match(/^\/assets/)
        [404, {}, ['Not found']]
      else
        @app.call(env)
      end 
    end 
    def is_from_cloudfront?(env)
      env['HTTP_USER_AGENT'] == 'Amazon CloudFront'
    end
  end 
end
