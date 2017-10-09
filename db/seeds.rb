Batch.destroy_all
Student.destroy_all

batch1 = Batch.create!( { name: "Batch #1", start: "2017/01/01", end: "2017/02/28" } )
batch2 = Batch.create!( { name: "Batch #2", start: "2017/03/01", end: "2017/04/30" } )
batch3 = Batch.create!( { name: "Batch #3", start: "2017/05/01", end: "2017/06/30" } )
batch4 = Batch.create!( { name: "Batch #4", start: "2017/07/01", end: "2017/08/30" } )
batch5 = Batch.create!( { name: "Batch #5", start: "2017/09/01", end: "2017/10/30" } )

student1 = Student.create!( { name: "Lindinha", image: "https://goo.gl/wB6q9q" } )
student2 = Student.create!( { name: "Florzinha", image: "https://goo.gl/aoZsYt" } )
student3 = Student.create!( { name: "Docinho", image: "https://goo.gl/EqRlgP" } )
student4 = Student.create!( { name: "Monica", image: "https://goo.gl/wB6q9q" } )
student5 = Student.create!( { name: "Magali", image: "https://goo.gl/aoZsYt" } )
student6 = Student.create!( { name: "Cebolinha", image: "https://goo.gl/EqRlgP" } )
student7 = Student.create!( { name: "Cascao", image: "https://goo.gl/EqRlgP" } )
student8 = Student.create!( { name: "Snoopy", image: "https://goo.gl/EqRlgP" } )
student9 = Student.create!( { name: "Scooby-Doo", image: "https://goo.gl/EqRlgP" } )
student10 = Student.create!( { name: "Meepo", image: "https://goo.gl/EqRlgP" } )
