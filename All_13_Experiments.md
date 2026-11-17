# Web Technologies III – Practical Lab Answers

Source note: The uploaded practical question paper contains 13 questions. The supplied lab manual directly provides related material for image maps (manual Ex. 1), CSS (Ex. 2), form validation (Ex. 3), servlet form invocation and session tracking (Ex. 5), online examination (Ex. 7), and XML/XSL material (Ex. 8). Some question-paper topics are not directly covered in the manual; those are completed here with simple compatible lab programs. Where the manual has older or incomplete code, the examples below are cleaned up so they can be used more reliably.

Environment note: Servlet examples use the older javax.servlet API and are suitable for a Tomcat 9-style setup with the Servlet API available. Tomcat 10+ uses jakarta.servlet imports and requires corresponding changes. JSP examples require a JSP-capable servlet container. Image map coordinates and image filenames must match the actual image used.

## Experiment 1: Student Registration Form using HTML

**Aim:** To create a student registration web page using HTML form controls such as text boxes, radio buttons, checkboxes, drop-down lists and a submit button.

**Procedure:**
1. Create a file named index.html.
2. Add a heading and a form using the <form> tag.
3. Create text boxes for student name, register number and email.
4. Add radio buttons for gender and checkboxes for skills.
5. Add a drop-down list for department.
6. Add a submit button and open the file in a web browser.

**Program:**

_File: `index.html`_

```html
<!DOCTYPE html>
<html>
<head><title>Student Registration</title></head>
<body>
<h2>Student Registration Form</h2>
<form>
  Name: <input type="text" name="name"><br><br>
  Register Number: <input type="text" name="regno"><br><br>
  Email: <input type="email" name="email"><br><br>
  Gender:
  <input type="radio" name="gender" value="Male"> Male
  <input type="radio" name="gender" value="Female"> Female<br><br>
  Skills:
  <input type="checkbox" name="skill" value="HTML"> HTML
  <input type="checkbox" name="skill" value="CSS"> CSS
  <input type="checkbox" name="skill" value="JavaScript"> JavaScript<br><br>
  Department:
  <select name="department">
    <option>AI and Data Science</option>
    <option>Computer Science</option>
    <option>Information Technology</option>
    <option>Electronics</option>
  </select><br><br>
  <input type="submit" value="Register">
  <input type="reset" value="Clear">
</form>
</body>
</html>
```

**Output:** A registration form is displayed with name, register number, email, gender radio buttons, skill checkboxes, department list and Register/Clear buttons.

**Result:** Thus, the student registration form using HTML form controls was created successfully.

---

## Experiment 2: Image Map with Clickable Hotspots

**Aim:** To create a web page with an image map, define hotspots and display related information when a hotspot is clicked.

**Procedure:**
1. Save an image as india.jpg in the same folder as the HTML file.
2. Create index.html and insert the image using the <img> tag.
3. Connect the image to a map using the usemap attribute.
4. Define clickable areas using the <area> tag with shape and coordinates.
5. Open the HTML file and click the hotspots.

**Program:**

_File: `index.html`_

```html
<!DOCTYPE html>
<html>
<head><title>Image Map</title></head>
<body>
<h2>India - Image Map</h2>
<p>Click a hotspot to view information.</p>
<img src="india.jpg" alt="India map" usemap="#indiamap" width="500">
<map name="indiamap">
  <area shape="rect" coords="40,40,150,120" href="javascript:void(0)" onclick="showInfo('Delhi: Capital of India')">
  <area shape="rect" coords="160,150,270,240" href="javascript:void(0)" onclick="showInfo('Mumbai: Major city in Maharashtra')">
  <area shape="rect" coords="100,300,220,390" href="javascript:void(0)" onclick="showInfo('Chennai: Capital of Tamil Nadu')">
</map>
<p id="info">Selected place information appears here.</p>
<script>
function showInfo(message) {
  document.getElementById("info").textContent = message;
}
</script>
</body>
</html>
```

**Output:** The image is displayed. Clicking a defined hotspot displays the corresponding city information below the image. Hotspot coordinates must be adjusted to match the selected image.

**Result:** Thus, an image map with clickable hotspots and related information was created successfully.

---

## Experiment 3: Inline, Internal and External CSS

**Aim:** To create a web page demonstrating Inline, Internal and External Cascading Style Sheets.

**Procedure:**
1. Create a folder and save the HTML file as index.html.
2. Create an external CSS file named style.css.
3. Apply inline CSS using the style attribute of an HTML element.
4. Apply internal CSS inside the <style> tag in the head section.
5. Link the external CSS file using the <link> tag.
6. Open index.html in a browser and observe the styles.

**Program:**

_File: `index.html`_

```html
<!DOCTYPE html>
<html>
<head>
  <title>Types of CSS</title>
  <style>
    h2 { color: blue; text-align: center; }
    p { font-size: 18px; }
  </style>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <h1 style="color:red;">Inline CSS Example</h1>
  <h2>Internal CSS Example</h2>
  <p>This paragraph is styled using internal CSS.</p>
  <h3>External CSS Example</h3>
</body>
</html>
```

_File: `style.css`_

```css
body {
  background-color: #f2f2f2;
  font-family: Arial, sans-serif;
}
h3 {
  color: green;
  text-align: center;
}
```

**Output:** The first heading appears red using inline CSS, the second heading appears blue using internal CSS, and the third heading appears green using external CSS.

**Result:** Thus, a web page demonstrating inline, internal and external CSS was created successfully.

---

## Experiment 4: Arithmetic Operations using JavaScript

**Aim:** To develop a JavaScript program to perform addition, subtraction, multiplication and division.

**Procedure:**
1. Create a file named arithmetic.html.
2. Create two input fields to enter numbers.
3. Create buttons for the four arithmetic operations.
4. Write a JavaScript function to read the values and perform the selected operation.
5. Display the answer on the web page.
6. Open the file in a browser and test the operations.

**Program:**

_File: `arithmetic.html`_

```html
<!DOCTYPE html>
<html>
<head><title>Arithmetic Operations</title></head>
<body>
<h2>Arithmetic Operations</h2>
<input type="number" id="a" placeholder="First number">
<input type="number" id="b" placeholder="Second number"><br><br>
<button onclick="calculate('+')">Addition</button>
<button onclick="calculate('-')">Subtraction</button>
<button onclick="calculate('*')">Multiplication</button>
<button onclick="calculate('/')">Division</button>
<p id="result">Result:</p>
<script>
function calculate(op) {
  const a = Number(document.getElementById("a").value);
  const b = Number(document.getElementById("b").value);
  let answer;
  if (op === '+') answer = a + b;
  else if (op === '-') answer = a - b;
  else if (op === '*') answer = a * b;
  else if (op === '/') {
    if (b === 0) {
      document.getElementById("result").textContent = "Cannot divide by zero";
      return;
    }
    answer = a / b;
  }
  document.getElementById("result").textContent = "Result: " + answer;
}
</script>
</body>
</html>
```

**Output:** For inputs 20 and 5: Addition = 25, Subtraction = 15, Multiplication = 100 and Division = 4.

**Result:** Thus, the JavaScript program to perform the four arithmetic operations was executed successfully.

---

## Experiment 5: Invoke a Java Servlet from an HTML Form and Display Student Name

**Aim:** To write a Java Servlet program that receives a student name from an HTML form and displays it.

**Procedure:**
1. Create a Dynamic Web Project in an IDE.
2. Add the HTML form file index.html to the web application.
3. Create a servlet named StudentServlet.
4. Read the submitted name using request.getParameter().
5. Display the name using PrintWriter.
6. Deploy the project on Apache Tomcat and open the form in a browser.

**Program:**

_File: `index.html`_

```html
<!DOCTYPE html>
<html>
<head><title>Student Form</title></head>
<body>
<h2>Student Information</h2>
<form action="StudentServlet" method="post">
  Student Name: <input type="text" name="studentName" required>
  <input type="submit" value="Submit">
</form>
</body>
</html>
```

_File: `StudentServlet.java`_

```java
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/StudentServlet")
public class StudentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
                          throws ServletException, IOException {
        response.setContentType("text/html");
        String name = request.getParameter("studentName");
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h2>Student Name: " + name + "</h2>");
        out.println("</body></html>");
    }
}
```

**Output:** After entering the name Arun and clicking Submit, the servlet displays: Student Name: Arun.

**Result:** Thus, the servlet was invoked from an HTML form and the submitted student name was displayed successfully.

---

## Experiment 6: Online Examination using JSP

**Aim:** To develop a JSP application for conducting an online examination and displaying the student's result.

**Procedure:**
1. Create a JSP web project and add exam.jsp.
2. Display multiple-choice questions using radio buttons.
3. Submit the answers to result.jsp using the POST method.
4. Read the submitted answers using request.getParameter().
5. Calculate the score and display the result.
6. Run the application on a JSP-supported server such as Apache Tomcat.

**Program:**

_File: `exam.jsp`_

```html
<%@ page contentType="text/html;charset=UTF-8" %>
<html><head><title>Online Examination</title></head><body>
<h2>Online Examination</h2>
<form action="result.jsp" method="post">
  Student Name: <input type="text" name="student" required><br><br>
  1. HTML stands for?<br>
  <input type="radio" name="q1" value="1" required> Hyper Text Markup Language<br>
  <input type="radio" name="q1" value="0"> High Text Machine Language<br><br>
  2. Which tag creates a hyperlink?<br>
  <input type="radio" name="q2" value="1" required> &lt;a&gt;<br>
  <input type="radio" name="q2" value="0"> &lt;p&gt;<br><br>
  3. Which language styles a web page?<br>
  <input type="radio" name="q3" value="1" required> CSS<br>
  <input type="radio" name="q3" value="0"> SQL<br><br>
  <input type="submit" value="Submit Exam">
</form>
</body></html>
```

_File: `result.jsp`_

```html
<%@ page contentType="text/html;charset=UTF-8" %>
<%
String student = request.getParameter("student");
int score = 0;
for (int i = 1; i <= 3; i++) {
    String answer = request.getParameter("q" + i);
    if ("1".equals(answer)) score++;
}
%>
<html><head><title>Exam Result</title></head><body>
<h2>Examination Result</h2>
<p>Student Name: <%= student %></p>
<p>Correct Answers: <%= score %> out of 3</p>
<p><%= score >= 2 ? "PASS" : "FAIL" %></p>
</body></html>
```

**Output:** The exam page displays three multiple-choice questions. After submission, the result page displays the student name, number of correct answers and PASS/FAIL status.

**Result:** Thus, the JSP online examination application was developed to evaluate answers and display the result successfully.

---

## Experiment 7: XML Student Details Validation using DTD

**Aim:** To create an XML document to store student details and validate the document using a DTD.

**Procedure:**
1. Create a file named student.dtd and define the allowed XML elements.
2. Create student.xml and include the DTD declaration.
3. Enter student details inside the student element.
4. Save both files in the same folder.
5. Validate student.xml using an XML validator or an XML editor that supports DTD validation.

**Program:**

_File: `student.xml`_

```xml
<?xml version="1.0"?>
<!DOCTYPE student SYSTEM "student.dtd">
<student>
  <rollno>101</rollno>
  <name>Arun</name>
  <department>AI and Data Science</department>
  <year>Third Year</year>
</student>
```

_File: `student.dtd`_

```xml
<!ELEMENT student (rollno, name, department, year)>
<!ELEMENT rollno (#PCDATA)>
<!ELEMENT name (#PCDATA)>
<!ELEMENT department (#PCDATA)>
<!ELEMENT year (#PCDATA)>
```

**Output:** The XML document contains roll number 101, name Arun, department AI and Data Science, and year Third Year. A valid document passes DTD validation.

**Result:** Thus, student details were stored in an XML document and validated successfully using DTD.

---

## Experiment 8: Transform XML Data into HTML using XSLT

**Aim:** To write an XML program and transform its data into an HTML table using XSLT.

**Procedure:**
1. Create student.xml containing student information.
2. Add an xml-stylesheet processing instruction referring to student.xsl.
3. Create student.xsl with an XSLT template.
4. Use xsl:for-each to read each student record.
5. Create HTML table rows using xsl:value-of.
6. Open the XML file in an XSLT-capable browser or transform it using an XSLT processor.

**Program:**

_File: `student.xml`_

```xml
<?xml version="1.0"?>
<?xml-stylesheet type="text/xsl" href="student.xsl"?>
<students>
  <student><rollno>101</rollno><name>Arun</name><department>AI and DS</department></student>
  <student><rollno>102</rollno><name>Priya</name><department>CSE</department></student>
</students>
```

_File: `student.xsl`_

```xml
<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html><head><title>Student Details</title></head><body>
<h2>Student Details</h2>
<table border="1">
<tr><th>Roll Number</th><th>Name</th><th>Department</th></tr>
<xsl:for-each select="students/student">
<tr>
<td><xsl:value-of select="rollno"/></td>
<td><xsl:value-of select="name"/></td>
<td><xsl:value-of select="department"/></td>
</tr>
</xsl:for-each>
</table>
</body></html>
</xsl:template>
</xsl:stylesheet>
```

**Output:** An HTML table is generated with columns Roll Number, Name and Department, containing the two student records.

**Result:** Thus, XML data was transformed into an HTML table successfully using XSLT.

---

## Experiment 9: Servlet Invocation from HTML Form and Session Tracking

**Aim:** To write Java servlet programs to invoke a servlet from an HTML form and demonstrate session tracking.

**Procedure:**
1. Create a web project and add index.html with a form.
2. Create FormServlet to receive the submitted name.
3. Create SessionServlet to create or retrieve an HttpSession.
4. Store a visit counter in the session using setAttribute().
5. Display the session ID and visit count.
6. Configure servlet URL mappings using annotations or web.xml and run on Tomcat.

**Program:**

_File: `index.html`_

```html
<!DOCTYPE html>
<html><body>
<h2>Servlet Form</h2>
<form action="FormServlet" method="get">
  Enter your name: <input type="text" name="firstname" required>
  <input type="submit" value="Submit">
</form>
<p><a href="SessionServlet">Open Session Tracking</a></p>
</body></html>
```

_File: `FormServlet.java`_

```java
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/FormServlet")
public class FormServlet extends HttpServlet {
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    response.setContentType("text/html");
    String name = request.getParameter("firstname");
    PrintWriter out = response.getWriter();
    out.println("<h2>Hello " + name + ", Welcome to Servlets!</h2>");
  }
}
```

_File: `SessionServlet.java`_

```java
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/SessionServlet")
public class SessionServlet extends HttpServlet {
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    HttpSession session = request.getSession(true);
    Integer visits = (Integer) session.getAttribute("visits");
    if (visits == null) visits = 0;
    visits++;
    session.setAttribute("visits", visits);

    response.setContentType("text/html");
    PrintWriter out = response.getWriter();
    out.println("<h2>Session Tracking</h2>");
    out.println("<p>Session ID: " + session.getId() + "</p>");
    out.println("<p>Number of visits: " + visits + "</p>");
  }
}
```

**Output:** The form servlet displays a greeting with the submitted name. Opening SessionServlet repeatedly in the same browser session increases the visit count and displays the session ID.

**Result:** Thus, servlet invocation from an HTML form and session tracking using HttpSession were implemented successfully.

---

## Experiment 10: Online Shopping Web Page using HTML and CSS

**Aim:** To create an online shopping web page displaying product names, images, prices and purchase options using HTML and CSS.

**Procedure:**
1. Create index.html and style.css in one folder.
2. Add a page heading and product section.
3. For each product, display an image, name and price.
4. Add a Buy Now button for each product.
5. Apply CSS to arrange products in cards.
6. Open index.html in a browser.

**Program:**

_File: `index.html`_

```html
<!DOCTYPE html>
<html>
<head><title>Online Shopping</title><link rel="stylesheet" href="style.css"></head>
<body>
<h1>Online Shopping Store</h1>
<div class="products">
  <div class="card">
    <img src="phone.jpg" alt="Mobile phone">
    <h3>Smartphone</h3><p>Price: Rs. 15,000</p>
    <button>Buy Now</button>
  </div>
  <div class="card">
    <img src="headphones.jpg" alt="Headphones">
    <h3>Headphones</h3><p>Price: Rs. 2,000</p>
    <button>Buy Now</button>
  </div>
  <div class="card">
    <img src="watch.jpg" alt="Watch">
    <h3>Smart Watch</h3><p>Price: Rs. 3,000</p>
    <button>Buy Now</button>
  </div>
</div>
</body></html>
```

_File: `style.css`_

```css
body { font-family: Arial; background: #f2f2f2; text-align: center; }
.products { display: flex; justify-content: center; gap: 20px; flex-wrap: wrap; }
.card { background: white; padding: 15px; width: 200px; border: 1px solid #ccc; }
.card img { width: 160px; height: 130px; object-fit: contain; }
button { background: green; color: white; padding: 10px; border: 0; }
```

**Output:** A shopping page displays three product cards with product images, names, prices and Buy Now buttons. Place phone.jpg, headphones.jpg and watch.jpg in the same folder.

**Result:** Thus, an online shopping web page using HTML and CSS was created successfully.

---

## Experiment 11: Login Authentication using Java Servlet

**Aim:** To write a Java Servlet program to implement a login authentication system using username and password.

**Procedure:**
1. Create a web project and add login.html.
2. Create LoginServlet and map it to the URL /LoginServlet.
3. Read the username and password submitted by the form.
4. Compare them with the demonstration credentials in the program.
5. Display a success or failure message.
6. Deploy and test the application on Tomcat. This simple example is for lab demonstration only.

**Program:**

_File: `login.html`_

```html
<!DOCTYPE html>
<html><head><title>Login</title></head><body>
<h2>Login Form</h2>
<form action="LoginServlet" method="post">
  Username: <input type="text" name="username" required><br><br>
  Password: <input type="password" name="password" required><br><br>
  <input type="submit" value="Login">
</form>
</body></html>
```

_File: `LoginServlet.java`_

```java
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    String user = request.getParameter("username");
    String pass = request.getParameter("password");
    response.setContentType("text/html");
    PrintWriter out = response.getWriter();

    if ("admin".equals(user) && "1234".equals(pass)) {
      out.println("<h2>Login Successful</h2>");
    } else {
      out.println("<h2>Invalid Username or Password</h2>");
    }
  }
}
```

**Output:** Entering username admin and password 1234 displays Login Successful. Any other combination displays Invalid Username or Password.

**Result:** Thus, a basic login authentication system using Java Servlet was implemented successfully.

---

## Experiment 12: Library Management using JSP

**Aim:** To develop a JSP application to maintain book details, issue dates and return dates.

**Procedure:**
1. Create a JSP web project.
2. Create library.jsp with a form for book ID, book name, student name, issue date and return date.
3. Submit the form to display.jsp using POST.
4. Read the form values using request.getParameter().
5. Display the submitted library record in a table.
6. Run the JSP application on Apache Tomcat. This simple version displays submitted data and does not permanently store it in a database.

**Program:**

_File: `library.jsp`_

```html
<%@ page contentType="text/html;charset=UTF-8" %>
<html><head><title>Library Management</title></head><body>
<h2>Library Book Details</h2>
<form action="display.jsp" method="post">
  Book ID: <input name="bookid" required><br><br>
  Book Name: <input name="bookname" required><br><br>
  Student Name: <input name="student" required><br><br>
  Issue Date: <input type="date" name="issuedate" required><br><br>
  Return Date: <input type="date" name="returndate" required><br><br>
  <input type="submit" value="Save Details">
</form>
</body></html>
```

_File: `display.jsp`_

```html
<%@ page contentType="text/html;charset=UTF-8" %>
<%
String id = request.getParameter("bookid");
String book = request.getParameter("bookname");
String student = request.getParameter("student");
String issue = request.getParameter("issuedate");
String ret = request.getParameter("returndate");
%>
<html><head><title>Book Record</title></head><body>
<h2>Library Record</h2>
<table border="1" cellpadding="8">
<tr><th>Book ID</th><td><%= id %></td></tr>
<tr><th>Book Name</th><td><%= book %></td></tr>
<tr><th>Student</th><td><%= student %></td></tr>
<tr><th>Issue Date</th><td><%= issue %></td></tr>
<tr><th>Return Date</th><td><%= ret %></td></tr>
</table>
</body></html>
```

**Output:** The form accepts book ID, book name, student name, issue date and return date. After submission, display.jsp shows the entered details in a table.

**Result:** Thus, the JSP library management application was developed to accept and display book issue and return details successfully.

---

## Experiment 13: Employee Details in XML with DTD Validation

**Aim:** To create an XML document to store employee ID, name, department, designation and salary, and validate it using DTD.

**Procedure:**
1. Create employee.dtd and define the employee elements.
2. Create employee.xml and refer to employee.dtd using a DOCTYPE declaration.
3. Enter employee details in the required element order.
4. Save both files in the same folder.
5. Validate employee.xml using an XML validator or XML editor that supports DTD.

**Program:**

_File: `employee.xml`_

```xml
<?xml version="1.0"?>
<!DOCTYPE employees SYSTEM "employee.dtd">
<employees>
  <employee>
    <empid>1001</empid>
    <name>Arun</name>
    <department>Development</department>
    <designation>Programmer</designation>
    <salary>30000</salary>
  </employee>
</employees>
```

_File: `employee.dtd`_

```xml
<!ELEMENT employees (employee+)>
<!ELEMENT employee (empid, name, department, designation, salary)>
<!ELEMENT empid (#PCDATA)>
<!ELEMENT name (#PCDATA)>
<!ELEMENT department (#PCDATA)>
<!ELEMENT designation (#PCDATA)>
<!ELEMENT salary (#PCDATA)>
```

**Output:** The XML document stores employee ID 1001, name Arun, department Development, designation Programmer and salary 30000. The document passes validation when its structure matches the DTD.

**Result:** Thus, employee details were stored in XML and validated successfully using DTD.

---

