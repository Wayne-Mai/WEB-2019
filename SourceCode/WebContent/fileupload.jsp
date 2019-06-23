<%--
  Created by IntelliJ IDEA.
  User: wayne
  Date: 2019-06-23
  Time: 07:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.*,org.apache.commons.io.*,javax.servlet.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>文件传输例子</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8");


    boolean isMultipart = ServletFileUpload.isMultipartContent(request);

    String data[] = new String[7];
    int j = 0;
    String relativePath = "";
    if (isMultipart) {
        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        List items = upload.parseRequest(request);


        for (int i = 0; i < items.size(); i++) {
            FileItem fi = (FileItem) items.get(i);
            if (fi.isFormField()) {
                //out.print(fi.getFieldName()+":"+fi.getString("utf-8"));
                data[j] = fi.getString("utf-8");
                j++;
            } else {
                DiskFileItem dfi = (DiskFileItem) fi;
                if (!dfi.getName().trim().equals("")) {
                    String originName = FilenameUtils.getName(dfi.getName());
                    out.print("文件被上传到服务上的实际位置：");



                    File directory = new File(application.getRealPath("/")
                            + System.getProperty("file.separator") + "files");
                    if (! directory.exists()){
                        directory.mkdir();
                        // If you require it to make the entire directory path including parents,
                        // use directory.mkdirs(); here instead.
                    }


                    String fileName=application.getRealPath("/")
                            + System.getProperty("file.separator") + "files/"+originName;

                    out.print(new File(fileName).getAbsolutePath());
                    dfi.write(new File(fileName));
                    relativePath = "/WorkSystem/files/" + originName;


%>
<br>
<a href=<%=relativePath %>><%=String.format("%s", originName) %>
</a>

<%
                }
            }
        }

        //************************
        String connectString = "jdbc:mysql://172.18.187.10:3306/boke16337157"
                + "?autoReconnect=true&useUnicode=true&characterEncoding=UTF-8";
        String user = "user";
        String pwd = "123";


        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection(connectString, user, pwd);
        Statement stmt = con.createStatement();

        String fmt = "insert into worker(wname,password,wno,pwno,wdepartno,id,profile_photo) values('%s', '%s', '%d', '%d', '%d','%d','%s')";
        String sql = String.format(fmt, data[0], data[1], Integer.parseInt(data[2]), Integer.parseInt(data[3]), Integer.parseInt(data[4]), Integer.parseInt(data[5]), relativePath);
        int cnt = stmt.executeUpdate(sql);


        stmt.close();
        con.close();

        //******************************************************************************

    }


%>
</body>
</html>