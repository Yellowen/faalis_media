module Faalis::Media
  class ImagePolicy < ::ApplicationPolicy
    class Scope < Scope
      def resolve
        scope
      end
    end
  end
end
