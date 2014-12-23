/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Session;

import Entity.CustomerDelivery;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Osanda Wedamulla
 */
@Stateless
public class CustomerDeliveryFacade extends AbstractFacade<CustomerDelivery> {
    @PersistenceContext(unitName = "BookshoppePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public CustomerDeliveryFacade() {
        super(CustomerDelivery.class);
    }
    
}
