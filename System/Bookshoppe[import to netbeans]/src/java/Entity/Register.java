/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Osanda Wedamulla
 */
@Entity
@Table(name = "register")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Register.findAll", query = "SELECT r FROM Register r"),
    @NamedQuery(name = "Register.findByFirstName", query = "SELECT r FROM Register r WHERE r.firstName = :firstName"),
    @NamedQuery(name = "Register.findByLastName", query = "SELECT r FROM Register r WHERE r.lastName = :lastName"),
    @NamedQuery(name = "Register.findByUsername", query = "SELECT r FROM Register r WHERE r.username = :username"),
    @NamedQuery(name = "Register.findByEmail", query = "SELECT r FROM Register r WHERE r.email = :email"),
    @NamedQuery(name = "Register.findByAddress", query = "SELECT r FROM Register r WHERE r.address = :address"),
    @NamedQuery(name = "Register.findByPassword", query = "SELECT r FROM Register r WHERE r.password = :password"),
    @NamedQuery(name = "Register.findByConfirmPassword", query = "SELECT r FROM Register r WHERE r.confirmPassword = :confirmPassword"),
    @NamedQuery(name = "Register.findByCity", query = "SELECT r FROM Register r WHERE r.city = :city"),
    @NamedQuery(name = "Register.findByCountry", query = "SELECT r FROM Register r WHERE r.country = :country"),
    @NamedQuery(name = "Register.findByPostalCode", query = "SELECT r FROM Register r WHERE r.postalCode = :postalCode"),
    @NamedQuery(name = "Register.findByTelephoneNumber", query = "SELECT r FROM Register r WHERE r.telephoneNumber = :telephoneNumber")})
public class Register implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "First_Name")
    private String firstName;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 80)
    @Column(name = "Last_Name")
    private String lastName;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "Username")
    private String username;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "Email")
    private String email;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "Address")
    private String address;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "Password")
    private String password;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "Confirm_Password")
    private String confirmPassword;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "City")
    private String city;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "Country")
    private String country;
    @Basic(optional = false)
    @NotNull
    @Column(name = "Postal_Code")
    private int postalCode;
    @Basic(optional = false)
    @NotNull
    @Column(name = "Telephone_Number")
    private int telephoneNumber;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "register")
    private CustomerDelivery customerDelivery;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "register")
    private Contact contact;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "register")
    private CustomerPayment customerPayment;

    public Register() {
    }

    public Register(String firstName) {
        this.firstName = firstName;
    }

    public Register(String firstName, String lastName, String username, String email, String address, String password, String confirmPassword, String city, String country, int postalCode, int telephoneNumber) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.username = username;
        this.email = email;
        this.address = address;
        this.password = password;
        this.confirmPassword = confirmPassword;
        this.city = city;
        this.country = country;
        this.postalCode = postalCode;
        this.telephoneNumber = telephoneNumber;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public int getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(int postalCode) {
        this.postalCode = postalCode;
    }

    public int getTelephoneNumber() {
        return telephoneNumber;
    }

    public void setTelephoneNumber(int telephoneNumber) {
        this.telephoneNumber = telephoneNumber;
    }

    public CustomerDelivery getCustomerDelivery() {
        return customerDelivery;
    }

    public void setCustomerDelivery(CustomerDelivery customerDelivery) {
        this.customerDelivery = customerDelivery;
    }

    public Contact getContact() {
        return contact;
    }

    public void setContact(Contact contact) {
        this.contact = contact;
    }

    public CustomerPayment getCustomerPayment() {
        return customerPayment;
    }

    public void setCustomerPayment(CustomerPayment customerPayment) {
        this.customerPayment = customerPayment;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (firstName != null ? firstName.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Register)) {
            return false;
        }
        Register other = (Register) object;
        if ((this.firstName == null && other.firstName != null) || (this.firstName != null && !this.firstName.equals(other.firstName))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entity.Register[ firstName=" + firstName + " ]";
    }
    
}
