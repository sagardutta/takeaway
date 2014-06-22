import takeaway.Course
import takeaway.Note
import takeaway.Session
import takeaway.User

class BootStrap {

    def init = { servletContext ->

        environments {

            development {

                Course marketing = new Course(name:"marketing",professor:"X").save() ;
                Course finance =     new Course(name:"finance",professor:"Y").save()  ;
                Session session1 = new Session(date: new Date().plus(1),course:marketing ).save() ;
                Session session2 = new Session(date: new Date().plus(2), course:marketing).save();
                Session session3 = new Session(date: new Date().plus(3), course:finance).save();

                User user1 = new User(handle:"user1",courses:[marketing, finance]).save();
                User user2 = new User(handle:"user2",courses:[marketing, finance]).save();
                User user3 = new User(handle:"user3",courses:[marketing, finance]).save();

                Note note1 = new Note(text:"Cras justo odio",course:marketing, session: session1, user:user1, date: new Date()).save();
                Note note2 = new Note(text:"Dapibus ac facilisis in",course:marketing, session: session1, user:user2,date: new Date()).save();
                Note note3 = new Note(text:"Porta ac consectetur ac",course:marketing, session: session1, user:user3,date: new Date()).save();
                Note note4 = new Note(text:"note4",course:finance, session: session3, user:user1).save();
                Note note5 = new Note(text:"note5",course:finance, session: session3, user:user2).save();
                Note note6 = new Note(text:"note6",course:finance, session: session3, user:user3).save();
//             //   Note note7 = new Note(text:"note7",course:finance, session: session1, user:user1);

//                fixtureLoader.load {
//                      load_course1(Course){
//                        name = "Marketing"
//                          professor = "X"
//                      }
//
//                    load_course2(Course){
//                        name = "Finance"
//                        professor = "X"
//                    }
//
//                    load_course3(Course){
//                        name = "Strategy"
//                        professor = "X"
//                    }
//
//                    load_course4(Course){
//                        name = "Accounting"
//                        professor = "X"
//                    }



                }
            }
                }
    def destroy = {
    }
}
