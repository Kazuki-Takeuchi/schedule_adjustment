module ApplicationHelper
  def is_admin?
    current_user && current_user.admin_flg
  end
end
