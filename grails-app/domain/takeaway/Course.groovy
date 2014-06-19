
package takeaway

class Course {

    static constraints = {
    }

    static hasMany= [sessions:Session]


    String name
    String professor

    @Override
    public String toString() {
        return name
    }
}

