
package takeaway

class Note {

    static constraints = {
    }

    String text
    Course course
    Session session
    User user
    Date date = new Date();

    @Override
    public String toString() {
        return text;
    }
}

