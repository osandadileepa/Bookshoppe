/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Session;

import Entity.AdminBooksell;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Osanda Wedamulla
 */
@Stateless
public class AdminBooksellFacade extends AbstractFacade<AdminBooksell> {
    @PersistenceContext(unitName = "BookshoppePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public AdminBooksellFacade() {
        super(AdminBooksell.class);
    }
    
}
