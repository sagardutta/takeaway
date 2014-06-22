

package takeaway

class Session {

    static constraints = {
    }
    static hasMany = [notes:Note]
    Course course
    Date date

    static mapping = {
        notes sort:'date', order:'asc'
    }

    @Override
    public String toString() {
        return date.format('dd-MMM-yy');
    }
}

