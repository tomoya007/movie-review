ActiveAdmin.register Movie do
  permit_params :title, :image, :released_year, :country,   :screening_time, :review, :synposis, :genre_id

  form do |f|
    f.inputs do
      f.input :title
      f.input :image
      f.input :released_year
      f.input :country, :as => :string
      f.input :screening_time
      f.input :synposis
      f.input :genre_id
    end
    f.actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :image, :released_year, :country, :screening_time, :review, :synposis, :genre_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :image, :released_year, :country, :screening_time, :review, :synposis, :genre_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end

