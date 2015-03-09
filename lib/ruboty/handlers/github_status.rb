module Ruboty
  module Handlers
    class GithubStatus < Base
      on(
        /github status$/,
        name: 'status',
        description: 'Returns the current status with timestamp'
      )

      on(
        /github status last$/,
        name: 'last_message',
        description: 'Returns the last human communication, status, and timestamp'
      )

      def status(message)
        Ruboty::GithubStatus::Actions::GithubStatus.new(message).status
      end

      def last_message(message)
        Ruboty::GithubStatus::Actions::GithubStatus.new(message).last_message
      end
    end
  end
end
