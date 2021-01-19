module UserActions
  class Update
    include Interactor

    def call
      params = context.params
      user   = context.user
      update_user!(user, params)
    end

    private

    def update_user!(user, attributes)
      user.update!(attributes)
    end
  end
end
