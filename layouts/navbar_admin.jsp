<nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="index.jsp">SKYDRINK</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item">
              <a class="nav-link" href="index.jsp">Drinks</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="cart.jsp">Shopping Cart</a>
            </li>
            <li class="nav-item">
            <a class="nav-link" href="recomendation.jsp">Recomendation</a>
            </li>
            <li class="nav-item">
            <a class="nav-link" href="search.jsp">Search Drink</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <%= session.getAttribute("user_name") %>
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="logout.jsp">Logout</a>
              </div>
            </li>
          </ul>
        </div>
    </nav>