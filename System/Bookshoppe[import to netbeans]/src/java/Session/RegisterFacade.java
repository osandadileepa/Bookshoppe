/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Session;

import Entity.Register;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Osanda Wedamulla
 */
@Stateless
public class RegisterFacade extends AbstractFacade<Register> {
    @PersistenceContext(unitName = "BookshoppePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public RegisterFacade() {
        super(Register.class);
    }
    
}
