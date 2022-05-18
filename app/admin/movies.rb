ActiveAdmin.register Movie do
  permit_params :title, :image, :released_year, :released_month,:released_day,:country, :screening_time, :review, :synposis, :genre

  form do |f|
    f.inputs do
      f.input :title
      f.input :image, :as => :file
      f.input :released_year
      f.input :released_month
      f.input :released_day
      f.input :country, :as => :string
      f.input :screening_time
      f.input :synposis
      f.input :genre
    end
    f.actions
  end

  show do |item_image|
    attributes_table do
      row :title
      row :released_year
      row :released_month
      row :released_day
      row :country, :as => :string
      row :screening_time
      row :synposis
      row :genre
      # show画面で画像を表示するためのタグを追加
      row :image do
        image_tag(movie.image.url)
      end
    end
  end    
  
end

