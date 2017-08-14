package utility;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatisUtils {
    public static SqlSession openSession() throws IOException
    {
            String resource = "mybatis-cfg.xml";
            InputStream in = Resources.getResourceAsStream(resource);
            SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(in,"kcat");  //这里要对应mybatis-cfg.xml的environment id
            return sessionFactory.openSession();
    }
}
