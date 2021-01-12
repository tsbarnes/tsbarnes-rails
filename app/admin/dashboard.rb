ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Recent Projects" do
          ul do
            Project.latest.map do |project|
              li link_to(project.name, admin_project_path(project))
            end
          end
        end
      end

      column do
        panel "Recent Services" do
          ul do
            Service.latest.map do |service|
              li link_to(service.name, admin_service_path(service))
            end
          end
        end
      end

      column do
        panel "Recent Articles" do
          ul do
            Article.latest.map do |article|
              li link_to(article.title, admin_article_path(article))
            end
          end
        end
      end

      column do
        panel "Info" do
          para "Welcome to ActiveAdmin."
        end
      end
    end
  end # content
end
