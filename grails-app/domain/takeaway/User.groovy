
package takeaway

class User {

    static constraints = {
    }
    static hasMany = [courses:Course,notes:Note]
    String handle

    @Override
    public String toString() {
        return handle
    }
}

