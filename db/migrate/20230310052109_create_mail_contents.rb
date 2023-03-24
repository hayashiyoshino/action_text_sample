class CreateMailContents < ActiveRecord::Migration[6.0]
  def change
    create_table :mail_contents do |t|
      t.string :subject
      t.text :content

      t.timestamps
    end
  end
end
