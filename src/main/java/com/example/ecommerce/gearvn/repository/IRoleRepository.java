package com.example.ecommerce.gearvn.repository;

import com.example.ecommerce.gearvn.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface IRoleRepository extends JpaRepository<Role, Long>{
    Role findRoleById(Long id);
    Optional<Role> findByName(String name);
}
