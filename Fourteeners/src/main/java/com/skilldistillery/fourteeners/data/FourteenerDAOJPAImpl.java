package com.skilldistillery.fourteeners.data;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.fourteeners.entities.Fourteener;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;
@Service
@Transactional
public class FourteenerDAOJPAImpl implements FourteenerDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Fourteener findById(int mtId) {
		return em.find(Fourteener.class, mtId);
	}

	@Override
	public List<Fourteener> getList() {
		String jpql = "SELECT f from Fourteener f";
		return em.createQuery(jpql, Fourteener.class).getResultList();
	}

}
