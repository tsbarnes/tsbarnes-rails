ActiveAdmin.register ArticleCategory do
  permit_params :article_id, :category_id

  form do |f|
    f.inputs "Article Category" do
      f.input :article, collection: Article.all
      f.input :category, collection: Category.all
    end
    f.actions
  end
end
