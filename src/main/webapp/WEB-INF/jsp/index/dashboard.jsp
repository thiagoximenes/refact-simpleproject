<%@ include file="../../header.jsp"%>

<div class="container-fluid">
	<div class="header">
		<div class="row align-items-end mb-3">
			<div class="col">
				<h6>
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a
								href="${linkTo[IndexController].index() }">Simple Project</a></li>
							<li class="breadcrumb-item active" aria-current="page">Dashboard</li>
						</ol>
					</nav>
				</h6>
				<h4>Welcome to dashboard!</h4>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="content">
		<div class="row align-items-end">
			<div class="col">
				<p>This .JSP are visible only for <b>logged users</b>.</p>
				<header>
					<h2>Header</h2>
					<p>Lorem ipsum is placeholder text commonly used in the graphic,
						print, and publishing industries for previewing layouts and visual
						mockups. Lorem ipsum is placeholder text commonly used in the
						graphic, print, and publishing industries for previewing layouts
						and visual mockups. Lorem ipsum is placeholder text commonly used
						in the graphic, print, and publishing industries for previewing
						layouts and visual mockups.</p>
				</header>
				<main>
					<h2>Main</h2>
					<p>Lorem ipsum is placeholder text commonly used in the graphic,
						print, and publishing industries for previewing layouts and visual
						mockups. Lorem ipsum is placeholder text commonly used in the
						graphic, print, and publishing industries for previewing layouts
						and visual mockups. Lorem ipsum is placeholder text commonly used
						in the graphic, print, and publishing industries for previewing
						layouts and visual mockups.</p>
				</main>
				<footer>
					<h2>Footer</h2>
					<p>Lorem ipsum is placeholder text commonly used in the graphic,
						print, and publishing industries for previewing layouts and visual
						mockups. Lorem ipsum is placeholder text commonly used in the
						graphic, print, and publishing industries for previewing layouts
						and visual mockups. Lorem ipsum is placeholder text commonly used
						in the graphic, print, and publishing industries for previewing
						layouts and visual mockups.</p>
				</footer>
			</div>
		</div>
	</div>
</div>

<%@ include file="../../footer.jsp"%>

