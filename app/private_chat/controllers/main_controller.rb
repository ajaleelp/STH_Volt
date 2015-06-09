module PrivateChat
  class MainController < Volt::ModelController

    model :store

    def index
      # Add code for when the index view is loaded
    end

    def about
      # Add code for when the about view is loaded
    end

    def send_private_message
      unless page._new_private_message.strip.empty?
      _private_chat_messages << { sender_id: Volt.user._id, text: page._new_private_message, team: Volt.user._team }
      page._new_private_message = ''
      end
    end

    private

    # the main template contains a #template binding that shows another
    # template.  This is the path to that template.  It may change based
    # on the params._controller and params._action values.
    def main_path
      "#{params._component || 'main'}/#{params._controller || 'main'}/#{params._action || 'index'}"
    end
  end
end
