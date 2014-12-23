/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Osanda Wedamulla
 */
@Entity
@Table(name = "customer_payment")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CustomerPayment.findAll", query = "SELECT c FROM CustomerPayment c"),
    @NamedQuery(name = "CustomerPayment.findByUsername", query = "SELECT c FROM CustomerPayment c WHERE c.username = :username"),
    @NamedQuery(name = "CustomerPayment.findByFullname", query = "SELECT c FROM CustomerPayment c WHERE c.fullname = :fullname"),
    @NamedQuery(name = "CustomerPayment.findByCardname", query = "SELECT c FROM CustomerPayment c WHERE c.cardname = :cardname"),
    @NamedQuery(name = "CustomerPayment.findByCardnumber", query = "SELECT c FROM CustomerPayment c WHERE c.cardnumber = :cardnumber"),
    @NamedQuery(name = "CustomerPayment.findByDate", query = "SELECT c FROM CustomerPayment c WHERE c.date = :date"),
    @NamedQuery(name = "CustomerPayment.findByVerifynumber", query = "SELECT c FROM CustomerPayment c WHERE c.verifynumber = :verifynumber"),
    @NamedQuery(name = "CustomerPayment.findByTotal", query = "SELECT c FROM CustomerPayment c WHERE c.total = :total")})
public class CustomerPayment implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "Username")
    private String username;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 200)
    @Column(name = "Fullname")
    private String fullname;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 200)
    @Column(name = "Cardname")
    private String cardname;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "Cardnumber")
    private String cardnumber;
    @Basic(optional = false)
    @NotNull
    @Column(name = "Date")
    @Temporal(TemporalType.DATE)
    private Date date;
    @Basic(optional = false)
    @NotNull
    @Column(name = "Verifynumber")
    private int verifynumber;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Column(name = "Total")
    private BigDecimal total;
    @JoinColumn(name = "Username", referencedColumnName = "Username", insertable = false, updatable = false)
    @OneToOne(optional = false)
    private Register register;

    public CustomerPayment() {
    }

    public CustomerPayment(String username) {
        this.username = username;
    }

    public CustomerPayment(String username, String fullname, String cardname, String cardnumber, Date date, int verifynumber, BigDecimal total) {
        this.username = username;
        this.fullname = fullname;
        this.cardname = cardname;
        this.cardnumber = cardnumber;
        this.date = date;
        this.verifynumber = verifynumber;
        this.total = total;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getCardname() {
        return cardname;
    }

    public void setCardname(String cardname) {
        this.cardname = cardname;
    }

    public String getCardnumber() {
        return cardnumber;
    }

    public void setCardnumber(String cardnumber) {
        this.cardnumber = cardnumber;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getVerifynumber() {
        return verifynumber;
    }

    public void setVerifynumber(int verifynumber) {
        this.verifynumber = verifynumber;
    }

    public BigDecimal getTotal() {
        return total;
    }

    public void setTotal(BigDecimal total) {
        this.total = total;
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
        hash += (username != null ? username.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CustomerPayment)) {
            return false;
        }
        CustomerPayment other = (CustomerPayment) object;
        if ((this.username == null && other.username != null) || (this.username != null && !this.username.equals(other.username))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entity.CustomerPayment[ username=" + username + " ]";
    }
    
}
