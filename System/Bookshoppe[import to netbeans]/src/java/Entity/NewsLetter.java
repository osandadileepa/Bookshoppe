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
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Osanda Wedamulla
 */
@Entity
@Table(name = "news_letter")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "NewsLetter.findAll", query = "SELECT n FROM NewsLetter n"),
    @NamedQuery(name = "NewsLetter.findByMailId", query = "SELECT n FROM NewsLetter n WHERE n.mailId = :mailId"),
    @NamedQuery(name = "NewsLetter.findByEmail", query = "SELECT n FROM NewsLetter n WHERE n.email = :email")})
public class NewsLetter implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "Mail_Id")
    private Integer mailId;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "Email")
    private String email;

    public NewsLetter() {
    }

    public NewsLetter(Integer mailId) {
        this.mailId = mailId;
    }

    public NewsLetter(Integer mailId, String email) {
        this.mailId = mailId;
        this.email = email;
    }

    public Integer getMailId() {
        return mailId;
    }

    public void setMailId(Integer mailId) {
        this.mailId = mailId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (mailId != null ? mailId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof NewsLetter)) {
            return false;
        }
        NewsLetter other = (NewsLetter) object;
        if ((this.mailId == null && other.mailId != null) || (this.mailId != null && !this.mailId.equals(other.mailId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entity.NewsLetter[ mailId=" + mailId + " ]";
    }
    
}
