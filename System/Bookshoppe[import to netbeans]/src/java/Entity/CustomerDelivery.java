/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
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
@Table(name = "customer_delivery")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CustomerDelivery.findAll", query = "SELECT c FROM CustomerDelivery c"),
    @NamedQuery(name = "CustomerDelivery.findByEmail", query = "SELECT c FROM CustomerDelivery c WHERE c.email = :email"),
    @NamedQuery(name = "CustomerDelivery.findByFirstName", query = "SELECT c FROM CustomerDelivery c WHERE c.firstName = :firstName"),
    @NamedQuery(name = "CustomerDelivery.findByAddress", query = "SELECT c FROM CustomerDelivery c WHERE c.address = :address"),
    @NamedQuery(name = "CustomerDelivery.findByCity", query = "SELECT c FROM CustomerDelivery c WHERE c.city = :city"),
    @NamedQuery(name = "CustomerDelivery.findByTelephone", query = "SELECT c FROM CustomerDelivery c WHERE c.telephone = :telephone"),
    @NamedQuery(name = "CustomerDelivery.findByUsername", query = "SELECT c FROM CustomerDelivery c WHERE c.username = :username")})
public class CustomerDelivery implements Serializable {
    private static final long serialVersionUID = 1L;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "Email")
    private String email;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 200)
    @Column(name = "First_Name")
    private String firstName;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 500)
    @Column(name = "Address")
    private String address;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "City")
    private String city;
    @Basic(optional = false)
    @NotNull
    @Column(name = "Telephone")
    private int telephone;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "Username")
    private String username;
    @JoinColumn(name = "Email", referencedColumnName = "Email", insertable = false, updatable = false)
    @OneToOne(optional = false)
    private Register register;

    public CustomerDelivery() {
    }

    public CustomerDelivery(String email) {
        this.email = email;
    }

    public CustomerDelivery(String email, String firstName, String address, String city, int telephone, String username) {
        this.email = email;
        this.firstName = firstName;
        this.address = address;
        this.city = city;
        this.telephone = telephone;
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public int getTelephone() {
        return telephone;
    }

    public void setTelephone(int telephone) {
        this.telephone = telephone;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Register getRegister() {
        return register;
    }

    public void setRegister(Register register) {
        this.register = register;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (email != null ? email.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CustomerDelivery)) {
            return false;
        }
        CustomerDelivery other = (CustomerDelivery) object;
        if ((this.email == null && other.email != null) || (this.email != null && !this.email.equals(other.email))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entity.CustomerDelivery[ email=" + email + " ]";
    }
    
}
