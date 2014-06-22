
package takeaway

class Course {

    static constraints = {
    }

    static hasMany= [sessions:Session]

    static mapping = {
        sessions sort:'date', order:'asc'
    }
    String name
    String professor

    @Override
    public String toString() {
        return name
    }
}

