$(document).ready(function(){
    var tabelMakanan = $('#tabel_makanan');
    var btnTambahMakan = $('#btn_tambah_makanan');
    var btnUbahMakan = $('#btn_ubah_makanan');
    var btnHapusMakan = $('#btn_hapus_makanan');
    var txtNamaMakan = $('#txt_nama_makanan');
    var txtBreakfast = $('#txt_breakfast');
    var txtLunch = $('#txt_lunch');
    var txtDinner = $('#txt_dinner');
    var listMakanan = [];

    loadData(); // Memanggil function loadData

    btnTambahMakan.on("click", function(){ // ketika btn tmabah makan di klik
        var listNamaMakanan = listMakanan.map((item) => item.nama_makanan);



        if(!txtNamaMakan.val()){
            alert("Nama Makanan Tidak Boleh Kosong")
        } else if(listNamaMakanan.includes(txtNamaMakan.val())){
            alert("Nama Makanan Sudah Ada")
        } else {    
            var newLine = $(`
                <tr>
                    <td id="id_makanan">`+(listMakanan.length + 1)+`</td>
                    <td id="nama_makanan">`+txtNamaMakan.val()+`</td>
                    <td>
                        <button id="btn_ubah_makanan">Ubah</button>
                    </td>
                    <td>
                        <button id="btn_hapus_makanan">Hapus</button>
                    </td>
                </tr>
            
            `).data({
                id: listMakanan.length + 1,
                nama_makanan: txtNamaMakan.val()
            }); // Menyimpan data makanan pada element tr

            tabelMakanan.find("tbody").append(newLine); //Menambah baris data baru

            listMakanan.push({
                id: listMakanan.length + 1,
                nama_makanan: txtNamaMakan.val()
            }); // Menambah data makanan ke dalam variabel listmakanan

            txtNamaMakan.val("") // Menghapus isi input text txt_nama_makanan

            alert("Berhasil Menambah Data Makanan")
        }
        
    });

    tabelMakanan.on("click", "#btn_ubah_makanan", function(){   // ketika btn ubah makan di klik
        var tr = $(this).parents("tr"); // Memanggil elemen induk dari btn_ubah_makan yaitu element tr
        var data = tr.data(); // Mengambil data dari element tr
        var currentID = listMakanan.findIndex(o => o.id === data.id) // Mencari indek array dari listMakanan yang memiliki id sama dengan id dari data element tr
        var namaMakanan = prompt("Masukan Nama Makanan", data.nama_makanan) // Menampilkan promt dan menyimpan hasil inputan di variabel namaMakanan
        
        var listMakananExceptCurrent = listMakanan.filter(o => o.id !== data.id)// Data Makanan Kecuali data makanan yang akan di ubah
        var listNamaMakananExceptCurrent = listMakananExceptCurrent.map(item => item.nama_makanan) // Data Nama Makanan Kecuali data makanan yang akan di ubah
        if(!namaMakanan){ // Jika vaiabel nama makanan tidak kosong
            alert("Nama Makanan Tidak Boleh Kosong")
        } else if(listNamaMakananExceptCurrent.includes(namaMakanan)){
            alert("Nama Makanan Sudah Ada")
        } else {
            tr.find("#nama_makanan").html(namaMakanan); // mencari dan Mengubah isi element td yang memiliki id nama_makanan
            listMakanan[currentID] = {
                id: data.id,
                nama_makanan: namaMakanan
            } // Mengubah nama_makanan dari array listMakanan

            alert("Berhasil Mengubah Data Makanan")
        }
    }); // ketika tombol Ubah pada baris tabel di klik


    tabelMakanan.on("click", "#btn_hapus_makanan", function(){   // ketika btn hapus makan di klik

        var tr = $(this).parents("tr"); // Memanggil elemen induk dari btn_ubah_makan yaitu element tr
        var data = tr.data(); // Mengambil data dari element tr
        var currentID = listMakanan.findIndex(o => o.id === data.id) // Mencari indek array dari listMakanan yang memiliki id sama dengan id dari data element tr
        var r = confirm("Apakah Anda Yakin Menghapus Data Tersebut"); //Menampilkan confirm dan menyimpan hasil nya ke dalam variabel r jika user mengklik tombol OK maka hasil true jika user mengklik tombol Cancel maka hasil nya false
        if (r == true) { // jika user mengklik tombol Ok
            tr.remove() // Menghapus baris tabel
            listMakanan.splice(currentID, 1) // Menghapus data makanan dari list Makanan
            alert("Berhasil Menghapus Data Makanan")
        }
    });

    $('#btn_random_makanan').on("click", function(){
        if (listMakanan.length === 0) {
            alert("Tabel Makanan Kosong")
        } else {
            var listRandomNamaMakanan = randomNamaMakanan();
            txtBreakfast.html("Sarapan : "+ ifUndefined(listRandomNamaMakanan, 0, "")); //
            txtLunch.html("Makan Siang : "+ ifUndefined(listRandomNamaMakanan, 1, ""));
            txtDinner.html("Makan Malam : " + ifUndefined(listRandomNamaMakanan, 2, ""));
        }
        
    });

    function randomNamaMakanan(){
         //Math.random berfungsi untuk mengambil angka acak antara 0 hingga 1, dan hasil nya selalu di bawah satu dan berntuk desimal
        // Math.floor berfungsi untuk membulatkan angka kebawah, karena math.randwom menhasilkan decimal, dan indedex array harus integer, maka di butuh kan mth.floor untuk membulat kan nya
        // listMkanan.length berfungsi untuk menambil jumlah item pada array list makanan

        // listMaknan.length di bawah berguna sebgaiai index masimal pada array listMakanan
        
        var result = []
        var alreadyDone = [...listMakanan];
        // console.log(listMakanan)

        var lengthItem = listMakanan.length > 3 ? 3 : listMakanan.length

        for (var i = 0; i < lengthItem; i++) {
            console.log(alreadyDone)
            if(alreadyDone.length > 1){
                var randomIndex = Math.floor(Math.random() * alreadyDone.length)

                result[i] = alreadyDone[randomIndex].nama_makanan

                alreadyDone.splice(randomIndex, 1)

                // console.log(alreadyDone)
            } else {
                result[i] = alreadyDone[0].nama_makanan
            }
        }

        // console.log(result)

        return result // mengembalikan array nama_makanan dari hasil random index
       

    }

    function loadData(){
        $.ajax({ // untuk mengambil isi file json 
            type:  "GET",
            url:   "data.json", // url file json
            contentType : "application/json",
            dataType      : "json",
            success: function(responseData){ // Ketika berhasil mengambil data json

                var listMakananFromJson = responseData.list_makanan // menangambil data index list_makanan dari file json
                listMakananFromJson.forEach((item) => {
                    var newLine = $(`
                        <tr>
                            <td id="id_makanan">`+ item.id +`</td>
                            <td id="nama_makanan">`+ item.nama_makanan +`</td>
                            <td>
                                <button id="btn_ubah_makanan">Ubah</button>
                            </td>
                            <td>
                                <button id="btn_hapus_makanan">Hapus</button>
                            </td>
                        </tr>
                    
                    `).data({
                        id: item.id,
                        nama_makanan: item.nama_makanan
                    }); // Menyimpan data makanan pada element tr

                    tabelMakanan.find("tbody").append(newLine); //Menambah baris data baru

                    listMakanan.push({
                        id: item.id,
                        nama_makanan: item.nama_makanan
                    }); // Menambah data makanan ke dalam variabel listmakanan
                })
            },
            error:function(jqXHR,textStatus,errorThrown){ 
                alert("Tidak Dapat Memuat JSON") // ketika gagal mengambil data dari file json
            }
        })
    }

    function ifUndefined(array = [], index = 0, valueUndefined = ""){  //function ketika memanggil sebuah ietm array dan hasil nya undefined
        return (array[index] ? array[index] : valueUndefined)
    }
});