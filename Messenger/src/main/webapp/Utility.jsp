<%!private String beginTable() {

		return ("" + "<table class=TableBorder border=0 cellpadding=1 cellspacing=0 width=\"100%\" id='maintable'>"
				+ "<tbody>" + "<tr>" + "<td>" + "<table border=0 cellpadding=4 cellspacing=0 width=\"100%\">"
				+ "<tbody>" + "<tr>" + "<td class=white>"
				+ "<table class=ReportTable width=\"100%\" border=\"1\" cellspacing=\"1\" cellpadding=\"2\">" + "<tr>");

	}

	private String endTable() {

		return ("</table>" + "</td>" + "</tr>" + "</table>" + "</td>" + "</tr>" + "</table>");

	}%>