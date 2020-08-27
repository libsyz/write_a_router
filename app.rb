

require_relative 'router'
require_relative 'controller'
require_relative 'sessions'

class App
  def initialize(router)
    @router = router
  end

  def run
    @router.run
  end
end

sessions = Sessions.new
controller = Controller.new
router = Router.new(controller, sessions)
app = App.new(router)
app.run
