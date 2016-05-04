package com.ever.offer.in.service;

import java.util.List;

import com.ever.offer.in.model.Login;

public interface LoginService {

    public Login merchantLogin(Login login);

    public List customerLogin(Login login);

    public Login getById(Integer id);

    public Login getPassword(Login login);

}
