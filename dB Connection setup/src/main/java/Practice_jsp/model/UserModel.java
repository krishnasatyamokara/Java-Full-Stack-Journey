package Practice_jsp.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Practice_jsp.Config.DatabaseConfig;
import Practice_jsp.Entity.User;

public class UserModel {

    public List<User> listuser() {

        List<User> listusers = new ArrayList<>();

        String query = "SELECT * FROM users";

        try (Connection connect = DatabaseConfig.getConnection();
             Statement stmt = connect.createStatement();
             ResultSet rs = stmt.executeQuery(query)) {

            while (rs.next()) {
                User user = new User(
                    rs.getInt("user_id"),
                    rs.getString("username"),
                    rs.getString("email")
                );

                listusers.add(user);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return listusers;
    }
}