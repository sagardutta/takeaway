

package takeaway

class Session {

    static constraints = {
    }
    static hasMany = [notes:Note]
    Course course
    Date date

    @Override
    public String toString() {
        return date;
    }
}

