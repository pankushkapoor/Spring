<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-1.12.3.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/0.9.0rc1/jspdf.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.2/jspdf.min.js"></script>
</head>
<body>
Your Bill amount is ${bill.totalBillAmount}

<style>
table.GeneratedTable {
  width: 100%;
  background-color: #ffffff;
  border-collapse: collapse;
  border-width: 2px;
  border-color: #1a1400;
  border-style: solid;
  color: #000000;
}

table.GeneratedTable td, table.GeneratedTable th {
  border-width: 2px;
  border-color: #1a1400;
  border-style: solid;
  padding: 3px;
}

table.GeneratedTable thead {
  background-color: #c1eaff;
}
</style>
<div id="customers">
    <table class="GeneratedTable">
  <thead>
    <tr>
      <th></th>
      <th>Free Units</th>
      <th>Units used</th>
      <th>Charges</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Local Calls</td>
      <td>${bill.postpaidAccount.plan.freeLocalCalls}</td>
      <td>${bill.noOfLocalCalls}</td>
      <td>${bill.localCallAmount}</td>
    </tr>
    <tr>
      <td>STD Calls</td>
      <td>${bill.postpaidAccount.plan.freeStdCalls}</td>
      <td>${bill.noOfStdCalls}</td>
      <td>${bill.stdCallAmount}</td>
    </tr>
    <tr>
      <td>Local SMS</td>
      <td>${bill.postpaidAccount.plan.freeLocalSMS}</td>
      <td>${bill.noOfLocalSMS}</td>
      <td>${bill.localSMSAmount}</td>
    </tr>
    <tr>
      <td>STD SMS</td>
      <td>${bill.postpaidAccount.plan.freeStdSMS}</td>
      <td>${bill.noOfStdSMS}</td>
      <td>${bill.stdSMSAmount}</td>
    </tr>
    <tr>
      <td>Internet Data</td>
      <td>${bill.postpaidAccount.plan.freeInternetDataUsageUnits}</td>
      <td>${bill.internetDataUsageUnits}</td>
      <td>${bill.internetDataUsageAmount}</td>
    </tr>
    <tr>
      <td>Total Bill for ${bill.billMonth} is</td>
      <td></td><td></td>
      <td> ${bill.totalBillAmount}</td>
    </tr>
  </tbody>
</table>
</div>
<button onclick="javascript:demoFromHTML();">Download as PDF</button>
<script>
function demoFromHTML() {
    var pdf = new jsPDF('p', 'pt', 'letter');
    // source can be HTML-formatted string, or a reference
    // to an actual DOM element from which the text will be scraped.
    source = $('#customers')[0];

    // we support special element handlers. Register them with jQuery-style 
    // ID selector for either ID or node name. ("#iAmID", "div", "span" etc.)
    // There is no support for any other type of selectors 
    // (class, of compound) at this time.
    specialElementHandlers = {
        // element with id of "bypass" - jQuery style selector
        '#bypassme': function (element, renderer) {
            // true = "handled elsewhere, bypass text extraction"
            return true
        }
    };
    margins = {
        top: 80,
        bottom: 60,
        left: 40,
        width: 522
    };
    // all coords and widths are in jsPDF instance's declared units
    // 'inches' in this case
    pdf.fromHTML(
    source, // HTML string or DOM elem ref.
    margins.left, // x coord
    margins.top, { // y coord
        'width': margins.width, // max width of content on PDF
        'elementHandlers': specialElementHandlers
    },

    function (dispose) {
        // dispose: object with X, Y of the last line add to the PDF 
        //          this allow the insertion of new lines after html
        pdf.save('Test.pdf');
    }, margins);
}
</script>


</body>
</html>