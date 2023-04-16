ActiveAdmin.register Movie do
  permit_params :title, :image, :released_year, :screening_time, :review, :synposis, :genre, :feeling, :word

  form do |f|
    f.inputs do
      f.input :title
      f.input :image, :as => :file
      f.input :released_year
      f.input :screening_time
      f.input :synposis
      f.input :feeling
      f.input :word
    end
    f.actions
  end

  show do |item_image|
    attributes_table do
      row :title
      row :released_year
      row :screening_time
      row :synposis
      row :feeling
      row :word
      # show画面で画像を表示するためのタグを追加
      row :image do
        image_tag(movie.image.url)
      end
    end
  end    
  
end

