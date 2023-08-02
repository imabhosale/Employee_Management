
package pack1;

public class records {
     private int id;
     private String title ,name,dob,doj,city,pincode,mobile,state,email,pan,department;

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    @Override
    public String toString() {
        return "records{" + "id=" + id + ", title=" + title + ", name=" + name + ", dob=" + dob + ", doj=" + doj + ", city=" + city + ", pincode=" + pincode + ", mobile=" + mobile + ", state=" + state + ", email=" + email + ", pan=" + pan + ", department=" + department + '}';
    }

   

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getDoj() {
        return doj;
    }

    public void setDoj(String doj) {
        this.doj = doj;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getPincode() {
        return pincode;
    }

    public void setPincode(String pincode) {
        this.pincode = pincode;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPan() {
        return pan;
    }

    public void setPan(String pan) {
        this.pan = pan;
    }

    public records(int id, String title, String name, String dob, String doj, String city, String pincode, String mobile, String state, String email, String pan, String department) {
        this.id = id;
        this.title = title;
        this.name = name;
        this.dob = dob;
        this.doj = doj;
        this.city = city;
        this.pincode = pincode;
        this.mobile = mobile;
        this.state = state;
        this.email = email;
        this.pan = pan;
        this.department = department;
    }
     
}
