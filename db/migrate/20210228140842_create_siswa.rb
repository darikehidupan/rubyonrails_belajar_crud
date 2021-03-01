class CreateSiswa < ActiveRecord::Migration[6.1]
  def change
    create_table :siswa do |t|
      t.timestamps
    end
  end
end
