class SiswaController < ApplicationController
	def index
	end

	def show
	end

	def add
		@siswa = Siswa.new
	end

   # untuk mengirim data dari action tambah
   def kirim
   	@siswa = Siswa.new(siswa_params)
   	@siswa.kode_data = ((0...8).map { (65 + rand(26)).chr }.join)+'1'
   	@siswa.kode_siswa = @siswa.kode_data[0..4] 
   	@siswa.created_at = DateTime.now

   	#view data
   	#render json: JSON.pretty_generate(JSON.parse(@siswa.to_json))

   	if @siswa.save

   		redirect_to siswa_index_path, notice: 'Task berhasil ditambahkan'
   	else

   		render :tambah
   	end
   end

   def edit
   end

   private
   def siswa_params
   	params.require(:siswa).permit(:kode_data,:kode_siswa,:nama_siswa)
   end
end
