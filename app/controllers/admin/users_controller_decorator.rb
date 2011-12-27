Admin::UsersController.class_eval do
  private
  def load_roles
    @roles = Role.order('position')
  end
end