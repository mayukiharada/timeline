class ApplicationController < ActionController::Base
  # def after_sign_in_path_for(resource)
  #   timeline_index_path # ログイン後に遷移するpathを設定
  # end
  #
  # def after_sign_out_path_for(resource)
  #   hello_link_path # ログアウト後に遷移するpathを設定
  # end

#   before_action :configure_permitted_parameters, if: :devise_controller?
# ​
#  protected
# ​
#   def configure_permitted_parameters
#    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
#   end

before_action :set_current_page

before_action :configure_permitted_parameters, if: :devise_controller?


  def set_current_page
    @current_page = Page.find_by(id: session[:page_id])
  end


    protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    end

    # サインイン後のリダイレクト先をマイページへ
    def after_sign_in_path_for(resource)
        flash[:notice] = "ログインに成功しました" #　 <-任意で
        pages_path(current_user.id)  #　指定したいパスに変更
    end

    # サインアウト後のリダイレクト先をトップページへ
    def after_sign_out_path_for(resource)
        flash[:alert] = "ログアウトしました"
        root_path
    end
end
