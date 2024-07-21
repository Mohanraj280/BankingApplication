<%@ page import="com.mohan.model.Customer" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Deposit</title>
    
    <!-- Bootstrap CSS link -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    
    <!-- Custom CSS for styling -->
    <style>
        body {
            background: linear-gradient(to right, #667eea, #764ba2);
            color: #fff;
            font-family:sans-serif;
            padding: 20px;
        }
        
        .form-container {
            max-width: 500px;
            margin: auto;
            background: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
        }
        
        .form-control {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<%
  
    Customer customerUser = (Customer) session.getAttribute("user");
    if (customerUser == null) {
        response.sendRedirect("index.jsp"); 
        return; 
    }
%>
    <div class="container">
    
        <div class="form-container">
            <h2 class="text-dark">Deposit</h2>
            <br>
            <h2 class="text-dark">Hello, <%= customerUser.getFullName() %></h2>
            <br>
            <form action="WithDraw" method="post">
                <div class="form-group text-dark">
                    <label for="accountNumber">Account Number:</label>
                    <input type="text" class="form-control" id="accountNumber" name="accNumber" value="<%= ((Customer) session.getAttribute("user")).getAccountNumber() %>" readonly>
                </div>
                <div class="form-group text-dark">
                    <label for="password">Password:</label>
                    <input type="password" class="form-control" id="password" name="password" required>
                </div>
                <div class="form-group text-dark">
                    <label for="amount">Amount to be Deposit.</label>
                    <input type="text" class="form-control" id="amount" name="amountDeposit" required>
                </div>
                
                <h2 class="d-flex justify-content-between align-items-center ">
			<button type="submit" class="btn btn-primary">Deposit</button>
			  <span><a class="nav-link" href="CustomerDashBoard.jsp">Back</a></span>
			  </h2>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies (for optional features) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@1.16.1/dist/umd/popper.min.js" integrity="sha384-tB5QR8GC7k2mN3k3XF9HTG1vZHeaC2q0jG9s2weUJj3MBYbq5YjzjqGxSQCCZsfG" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8sh+pyRlTNUBAsw2P/XQ/sG+1KGvZsWYgqxiD6" crossorigin="anonymous"></script>
</body>
</html>
