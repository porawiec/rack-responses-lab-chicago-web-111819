class Application

    def call(env)
        resp = Rack::Response.new

        # Time.now.hour < 12 ? resp.write "Good Morning" : "Good Afternoon"
        if Time.now.hour < 12
            resp.write "Good Morning"
        else
            resp.write "Good Afternoon"
        end

        resp.finish
    end
end