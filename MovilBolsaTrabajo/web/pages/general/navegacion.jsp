<%
   
    String user =null;
    if( session.getAttribute("userlogin")!=null){
        user=(String)session.getAttribute("userlogin");
    }
%>        

<div class="mainmenu-wrapper">
	        <div class="container">
	        	<div class="menuextras">
					<div class="extras">
						<ul>
							<li>
                                                            
                                                            
                                                            <div> <%=user==null?"":user%>  </div>
								<div class="dropdown choose-country">
									<a class="#" data-toggle="dropdown" href="#"><img src="Scripts/img/flags/pe.png" alt="Perú"> PE</a>
									<ul class="dropdown-menu" role="menu">
										<li role="menuitem"><a href="#"><img src="Scripts/img/flags/us.png" alt="United States"> US</a></li>
										<li role="menuitem"><a href="#"><img src="Scripts/img/flags/es.png" alt="Spain"> ES</a></li>
                                                                                <li role="menuitem"><a href="#"><img src="Scripts/img/flags/de.png" alt="Germany"> DE</a></li>
									</ul>
								</div>
							</li>
			        		<li><a href="login.jsp">Login</a></li>
                                                <li><a href="logout.jsp">Cerrar sesión</a></li>
			        	</ul>
					</div>
		        </div>
		        <nav id="mainmenu" class="mainmenu">
					<ul>
						<li class="logo-wrapper"><a href="Index"><img src="Scripts/img/mPurpose-logo.png" alt="Multipurpose Twitter Bootstrap Template"></a></li>
						<li class="active">
                                                    <a href="index.jsp">Inicio</a>
						</li>
					<li class="has-submenu">
							<a href="#">Registrate +</a>
							<div class="mainmenu-submenu">
								<div class="mainmenu-submenu-inner"> 
									<div>
										<h4>Ofertas</h4>
										<ul>
											<li><a href="listarOfertas.jsp">Buscar Ofertas</a></li>
										</ul>
									</div>
									<div>
										<h4>Postulantes</h4>
										<ul>
											<li><a href="RegistrarPostulante.jsp">Registrase</a></li>
                                                                                        <li><a href="login.jsp">Ingresar</a></li>
										</ul>
									</div>
					
								</div>
							</div>
						</li>
					</ul>
				</nav>
			</div>
		</div> 