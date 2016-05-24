package ru.javarush.task.dao;

/**
 * Created by romec87 on 24.05.2016.
 */
import ru.javarush.task.model.User;

import java.util.List;


public interface UserDAO {
    public List<User> list();

    public User get(int id);

    public void saveOrUpdate(User user);

    public void delete(int id);
}