
package takeaway

class Note {

    static constraints = {
    }

    String text
    Course course
    Session session
    User user

    @Override
    public String toString() {
        return text;
    }
}

