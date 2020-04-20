package dhi.ca.ttpl.dhiCompact.dao;

import dhi.ca.ttpl.dhiCompact.entity.CompanyRegistration;
import dhi.ca.ttpl.helper.BaseDao;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by nzepa on 4/20/2020.
 */
@Repository
public class CompanyRegistrationDao extends BaseDao {

    @Transactional(value = "txManager", rollbackFor = Exception.class)
    public void saveCompanyRegistration(CompanyRegistration companyRegistration) {
        em.persist(companyRegistration);
    }
}
