class AddTemplatesToCertificates < ActiveRecord::Migration[5.0]
  def change
    add_column :certificates, :template_name, :string
    add_column :certificates, :template_border_color, :string
    add_column :certificates, :template_text_color, :string
  end
end
