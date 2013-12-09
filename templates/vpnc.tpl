<!--
You are free to copy and use this sample in accordance with the terms of the
Apache license (http://www.apache.org/licenses/LICENSE-2.0.html)
-->

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<title>OpenWRT VPNC Control</title>
		<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.1.1/css/bootstrap-combined.min.css" rel="stylesheet">
	</head>
  	<body>
		<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.1.1/js/bootstrap.min.js"></script>
		<div class="navbar">
			<div class="navbar-inner">
				<ul class="nav">
					<li><a href="/vpnc">Control VPNC</a></li>
				</ul>
			</div>
		</div>
		<div class="hero-unit" style="margin-right:40px;margin-left:40px">
		<div class="container">
	    		<form action="/vpnc" method="get">
				<div class="row-fluid">
				<div class="span8 offset2">
				<table class="table" width="100%">
					<thead>
						<tr>
						<th width="80%">Service Name</th>
						<th width="20%">Status</th>
						</tr>
					</thead>
					<tbody>
					<td>VPNC</td>
					<td><span class="label {{label}}">{{result}}</span></td>
					</tbody>
				</table>
				</div>
				</div>
				<div class="row-fluid">
					<div class="span6" style="text-align:center">
						<button name="connect" type="submit" class="btn btn-large btn-primary" value="true">Connect</button>
					</div>
					<div class="span6" style="text-align:center">
						<button name="disconnect" type="submit" class="btn btn-large btn-danger" value="true">Disconnect</button>
					</div>
				</div>
				<br/>
			</form>
		</div>
		</div>
	</body>
	<footer>
		<div class="navbar" style="position: fixed; bottom:0; left:0; right:0">
			<div class="navbar-inner">
				<ul class="nav">
					VPNC Control WebUI written by Bottlepy.
				</ul>
			</div>
		</div>
	</footer>
</html>
