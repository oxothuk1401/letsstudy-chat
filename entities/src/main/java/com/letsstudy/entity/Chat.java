package com.letsstudy.entity;


import javax.persistence.*;

@Entity
@Table(name = "chat")
public class Chat {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id_mssg")
    private long idMssg;

    @Column(name = "id_student", nullable = false)
    private long idStudent;

    @Column(name = "id_teacher" , nullable = false)
    private long idTeacher;

    @Column(name = "message")
    private String message;

    @Column(name = "date")
    private String date;

    @Column(name = "username")
    private String username;

    @Column(name = "img")
    private String img;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Chat chat = (Chat) o;

        if (idMssg != chat.idMssg) return false;
        if (idStudent != chat.idStudent) return false;
        if (idTeacher != chat.idTeacher) return false;
        if (message != null ? !message.equals(chat.message) : chat.message != null) return false;
        if (date != null ? !date.equals(chat.date) : chat.date != null) return false;
        if (username != null ? !username.equals(chat.username) : chat.username != null) return false;
        return img != null ? img.equals(chat.img) : chat.img == null;

    }

    @Override
    public int hashCode() {
        int result = (int) (idMssg ^ (idMssg >>> 32));
        result = 31 * result + (int) (idStudent ^ (idStudent >>> 32));
        result = 31 * result + (int) (idTeacher ^ (idTeacher >>> 32));
        result = 31 * result + (message != null ? message.hashCode() : 0);
        result = 31 * result + (date != null ? date.hashCode() : 0);
        result = 31 * result + (username != null ? username.hashCode() : 0);
        result = 31 * result + (img != null ? img.hashCode() : 0);
        return result;
    }

    public long getIdMssg() {
        return idMssg;
    }

    public void setIdMssg(long idMssg) {
        this.idMssg = idMssg;
    }

    public long getIdStudent() {
        return idStudent;
    }

    public void setIdStudent(long idStudent) {
        this.idStudent = idStudent;
    }

    public long getIdTeacher() {
        return idTeacher;
    }

    public void setIdTeacher(long idTeacher) {
        this.idTeacher = idTeacher;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    @Override
    public String toString() {
        return "Chat{" +
                "idMssg=" + idMssg +
                ", idStudent=" + idStudent +
                ", idTeacher=" + idTeacher +
                ", message='" + message + '\'' +
                ", date='" + date + '\'' +
                ", username='" + username + '\'' +
                ", img='" + img + '\'' +
                '}';
    }
}
