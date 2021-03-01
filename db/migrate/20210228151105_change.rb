class Change < ActiveRecord::Migration[6.1]
  def change
  	 rename_table :siswas, :siswa
  end
end
