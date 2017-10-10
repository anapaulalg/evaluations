Student.destroy_all
Batch.destroy_all

batch1 = Batch.create!( { name: "Batch #1", start: "2017/01/01", end: "2017/02/28" } )
batch2 = Batch.create!( { name: "Batch #2", start: "2017/03/01", end: "2017/04/30" } )
batch3 = Batch.create!( { name: "Batch #3", start: "2017/05/01", end: "2017/06/30" } )
batch4 = Batch.create!( { name: "Batch #4", start: "2017/07/01", end: "2017/08/30" } )
batch5 = Batch.create!( { name: "Batch #5", start: "2017/09/01", end: "2017/10/30" } )

student1 = Student.create!( { name: "Lindinha", image: "http://res.cloudinary.com/djxmmaqyo/image/upload/v1507631018/lindinha_bzgbfl.jpg", batch: batch1 } )
student2 = Student.create!( { name: "Florzinha", image: "http://res.cloudinary.com/djxmmaqyo/image/upload/v1507631018/florzinha_o3e06x.png", batch: batch1 } )
student3 = Student.create!( { name: "Docinho", image: "http://res.cloudinary.com/djxmmaqyo/image/upload/v1507631018/docinho_z9r7tc.jpg", batch: batch1 } )
student4 = Student.create!( { name: "Monica", image: "http://res.cloudinary.com/djxmmaqyo/image/upload/c_scale,h_300/v1507631020/monica-02_hynmth.png", batch: batch2 } )
student5 = Student.create!( { name: "Magali", image: "http://res.cloudinary.com/djxmmaqyo/image/upload/c_scale,h_300/v1507631019/turma-da-monica-magali-04_iy0agn.png", batch: batch2 } )
student6 = Student.create!( { name: "Cebolinha", image: "http://res.cloudinary.com/djxmmaqyo/image/upload/c_scale,h_300/v1507631018/Cebolinha_san_kc64gl.png", batch: batch2 } )
student7 = Student.create!( { name: "Cascao", image: "http://res.cloudinary.com/djxmmaqyo/image/upload/v1507631018/Cascao_cogsnz.png", batch: batch2 } )
student8 = Student.create!( { name: "Snoopy", image: "http://res.cloudinary.com/djxmmaqyo/image/upload/v1507631019/snoopy_dl198k.png", batch: batch3 } )
student9 = Student.create!( { name: "Scooby-Doo", image: "http://res.cloudinary.com/djxmmaqyo/image/upload/c_scale,h_300/v1507631019/Scoobydoo-1_nr7buz.jpg", batch: batch3 } )
student10 = Student.create!( { name: "Pluto", image: "http://res.cloudinary.com/djxmmaqyo/image/upload/c_scale,h_300/v1507631018/Disney_characters_pluto_iubuiy.jpg", batch: batch3 } )
student11 = Student.create!( { name: "Minie", image: "http://res.cloudinary.com/djxmmaqyo/image/upload/c_scale,h_300/v1507631019/Minnie_Mouse_pcaok8.png", batch: batch1 } )
student12 = Student.create!( { name: "Mickey", image: "http://res.cloudinary.com/djxmmaqyo/image/upload/c_scale,h_300/v1507631018/mickey_ma0x2a.jpg", batch: batch1 } )
