<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.util.Arrays"%>
<%@ page import="java.util.concurrent.ThreadLocalRandom"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>한글쑥쑥</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	var a = false;
	var b = false;
	var _c = false;
	var d = false;
	var e = false;
	var f = false;
	var g = false;
	var h = false;
	var i = false;
	$(document).ready(function() {
		var c = document.getElementById("myCanvas");
		var ctx = c.getContext("2d");
		ctx.strokeStyle = 'green';
		ctx.lineWidth = 5;
		ctx.lineCap = 'round';

		//첫 번째 선긋기 게임

		var lineStateA1 = 0;
		var lineStateB1 = 0;
		var lineStateC1 = 0;
		var lineStateA2 = 0;
		var lineStateB2 = 0;
		var lineStateC2 = 0;
		var lineStateA3 = 0;
		var lineStateB3 = 0;
		var lineStateC3 = 0;

		var drawA1 = function() {
			ctx.beginPath();
			ctx.moveTo(0, 30);
			ctx.lineTo(1000, 30);
			ctx.stroke();

			a = true;
			if (lineStateA2 == 1) {
				b = false;
			}
			if (lineStateA3 == 1) {
				_c = false;
			}

			lineStateA1 = 1;
		}

		var drawA2 = function() {
			ctx.beginPath();
			ctx.moveTo(0, 30);
			ctx.lineTo(1000, 500);
			ctx.stroke();

			b = true;
			if (lineStateA1 == 1) {
				a = false;
			}
			if (lineStateA3 == 1) {
				_c = false;
			}
			lineStateA2 = 1;
		}

		var drawA3 = function() {
			ctx.beginPath();
			ctx.moveTo(0, 30);
			ctx.lineTo(1200, 1070);
			ctx.stroke();

			_c = true;
			if (lineStateA1 == 1) {
				a = false;
			}
			if (lineStateA2 == 1) {
				b = false;
			}
			lineStateA3 = 1;
		}

		var drawB1 = function() {
			ctx.beginPath();
			ctx.moveTo(0, 240);
			ctx.lineTo(600, 10);
			ctx.stroke();

			a = true;
			if (lineStateB2 == 1) {
				b = false;
			}
			if (lineStateB3 == 1) {
				_c = false;
			}
			lineStateB1 = 1;
		}

		var drawB2 = function() {
			ctx.beginPath();
			ctx.moveTo(0, 240);
			ctx.lineTo(1300, 240);
			ctx.stroke();

			if (lineStateB1 == 1) {
				a = false;
			}
			if (lineStateB3 == 1) {
				_c = false;
			}

			b = true;
			lineStateB2 = 1;
		}

		var drawB3 = function() {
			ctx.beginPath();
			ctx.moveTo(0, 240);
			ctx.lineTo(1300, 800);
			ctx.stroke();

			_c = true;
			if (lineStateB1 == 1) {
				a = false;
			}
			if (lineStateB2 == 1) {
				b = false;
			}
			lineStateB3 = 1;
		}

		var drawC1 = function() {
			ctx.beginPath();
			ctx.moveTo(0, 440);
			ctx.lineTo(500, 30);
			ctx.stroke();

			a = true;
			if (lineStateC2 == 1) {
				b = false;
			}
			if (lineStateC3 == 1) {
				_c = false;
			}
			lineStateC1 = 1;
		}

		var drawC2 = function() {
			ctx.beginPath();
			ctx.moveTo(0, 440);
			ctx.lineTo(950, 100);
			ctx.stroke();

			b = true;
			if (lineStateC1 == 1) {
				a = false;
			}
			if (lineStateC3 == 1) {
				_c = false;
			}
			lineStateC2 = 1;
		}

		var drawC3 = function() {
			ctx.beginPath();
			ctx.moveTo(0, 440);
			ctx.lineTo(911, 440);
			ctx.stroke();

			_c = true;
			if (lineStateC1 == 1) {
				a = false;
			}
			if (lineStateC2 == 1) {
				b = false;
			}
			lineStateC3 = 1;
		}

		//두 번째

		var c2 = document.getElementById("myCanvas2");
		var ctx2 = c2.getContext("2d");
		ctx2.strokeStyle = 'green';
		ctx2.lineWidth = 5;
		ctx2.lineCap = 'round';

		var lineStateD1 = 0;
		var lineStateE1 = 0;
		var lineStateF1 = 0;
		var lineStateD2 = 0;
		var lineStateE2 = 0;
		var lineStateF2 = 0;
		var lineStateD3 = 0;
		var lineStateE3 = 0;
		var lineStateF3 = 0;

		var drawD1 = function() {
			ctx2.beginPath();
			ctx2.moveTo(0, 30);
			ctx2.lineTo(1000, 30);
			ctx2.stroke();

			d = true;
			if (lineStateD2 == 1) {
				e = false;
			}
			if (lineStateD3 == 1) {
				f = false;
			}
			lineStateD1 = 1;
		}

		var drawD2 = function() {
			ctx2.beginPath();
			ctx2.moveTo(0, 30);
			ctx2.lineTo(1000, 500);
			ctx2.stroke();

			e = true;
			if (lineStateD1 == 1) {
				d = false;
			}
			if (lineStateD3 == 1) {
				f = false;
			}

			lineStateD2 = 1;
		}

		var drawD3 = function() {
			ctx2.beginPath();
			ctx2.moveTo(0, 30);
			ctx2.lineTo(1200, 1070);
			ctx2.stroke();

			f = true;
			if (lineStateD2 == 1) {
				e = false;
			}
			if (lineStateD1 == 1) {
				d = false;
			}
			lineStateD3 = 1;
		}

		var drawE1 = function() {
			ctx2.beginPath();
			ctx2.moveTo(0, 240);
			ctx2.lineTo(600, 10);
			ctx2.stroke();

			d = true;
			if (lineStateE2 == 1) {
				e = false;
			}
			if (lineStateE3 == 1) {
				f = false;
			}
			lineStateE1 = 1;
		}

		var drawE2 = function() {
			ctx2.beginPath();
			ctx2.moveTo(0, 240);
			ctx2.lineTo(1300, 240);
			ctx2.stroke();

			e = true;
			if (lineStateE1 == 1) {
				d = false;
			}
			if (lineStateE3 == 1) {
				f = false;
			}
			lineStateE2 = 1;
		}

		var drawE3 = function() {
			ctx2.beginPath();
			ctx2.moveTo(0, 240);
			ctx2.lineTo(1300, 800);
			ctx2.stroke();

			f = true;
			if (lineStateE1 == 1) {
				d = false;
			}
			if (lineStateE2 == 1) {
				e = false;
			}
			lineStateE3 = 1;
		}

		var drawF1 = function() {
			ctx2.beginPath();
			ctx2.moveTo(0, 440);
			ctx2.lineTo(500, 30);
			ctx2.stroke();

			d = true;
			if (lineStateF2 == 1) {
				e = false;
			}
			if (lineStateF3 == 1) {
				f = false;
			}
			lineStateF1 = 1;
		}

		var drawF2 = function() {
			ctx2.beginPath();
			ctx2.moveTo(0, 440);
			ctx2.lineTo(950, 100);
			ctx2.stroke();

			e = true;
			if (lineStateF1 == 1) {
				d = false;
			}
			if (lineStateF3 == 1) {
				f = false;
			}
			lineStateF2 = 1;
		}

		var drawF3 = function() {
			ctx2.beginPath();
			ctx2.moveTo(0, 440);
			ctx2.lineTo(911, 440);
			ctx2.stroke();

			f = true;
			if (lineStateF2 == 1) {
				e = false;
			}
			if (lineStateF1 == 1) {
				d = false;
			}
			lineStateF3 = 1;
		}

		//세 번째
		var c3 = document.getElementById("myCanvas3");
		var ctx3 = c3.getContext("2d");
		ctx3.strokeStyle = 'green';
		ctx3.lineWidth = 5;
		ctx3.lineCap = 'round';

		var lineStateG1 = 0;
		var lineStateH1 = 0;
		var lineStateI1 = 0;
		var lineStateG2 = 0;
		var lineStateH2 = 0;
		var lineStateI2 = 0;
		var lineStateG3 = 0;
		var lineStateH3 = 0;
		var lineStateI3 = 0;

		var drawG1 = function() {
			ctx3.beginPath();
			ctx3.moveTo(0, 30);
			ctx3.lineTo(1000, 30);
			ctx3.stroke();

			g = true;
			if (lineStateG2 == 1) {
				h = false;
			}
			if (lineStateG3 == 1) {
				i = false;
			}
			lineStateG1 = 1;
		}

		var drawG2 = function() {
			ctx3.beginPath();
			ctx3.moveTo(0, 30);
			ctx3.lineTo(1000, 500);
			ctx3.stroke();

			h = true;
			if (lineStateG1 == 1) {
				g = false;
			}
			if (lineStateG3 == 1) {
				i = false;
			}
			lineStateG2 = 1;
		}

		var drawG3 = function() {
			ctx3.beginPath();
			ctx3.moveTo(0, 30);
			ctx3.lineTo(1200, 1070);
			ctx3.stroke();

			i = true;
			if (lineStateG2 == 1) {
				h = false;
			}
			if (lineStateG1 == 1) {
				g = false;
			}
			lineStateG3 = 1;
		}

		var drawH1 = function() {
			ctx3.beginPath();
			ctx3.moveTo(0, 240);
			ctx3.lineTo(600, 10);
			ctx3.stroke();

			g = true;
			if (lineStateH2 == 1) {
				h = false;
			}
			if (lineStateH3 == 1) {
				i = false;
			}
			lineStateH1 = 1;
		}

		var drawH2 = function() {
			ctx3.beginPath();
			ctx3.moveTo(0, 240);
			ctx3.lineTo(1300, 240);
			ctx3.stroke();

			h = true;
			if (lineStateH1 == 1) {
				g = false;
			}
			if (lineStateH3 == 1) {
				i = false;
			}
			lineStateH2 = 1;
		}

		var drawH3 = function() {
			ctx3.beginPath();
			ctx3.moveTo(0, 240);
			ctx3.lineTo(1300, 800);
			ctx3.stroke();

			i = true;
			if (lineStateH2 == 1) {
				h = false;
			}
			if (lineStateH1 == 1) {
				g = false;
			}
			lineStateH3 = 1;
		}

		var drawI1 = function() {
			ctx3.beginPath();
			ctx3.moveTo(0, 440);
			ctx3.lineTo(500, 30);
			ctx3.stroke();

			g = true;
			if (lineStateI2 == 1) {
				h = false;
			}
			if (lineStateI3 == 1) {
				i = false;
			}
			lineStateI1 = 1;
		}

		var drawI2 = function() {
			ctx3.beginPath();
			ctx3.moveTo(0, 440);
			ctx3.lineTo(950, 100);
			ctx3.stroke();

			h = true;
			if (lineStateI1 == 1) {
				g = false;
			}
			if (lineStateI3 == 1) {
				i = false;
			}
			lineStateI2 = 1;
		}

		var drawI3 = function() {
			ctx3.beginPath();
			ctx3.moveTo(0, 440);
			ctx3.lineTo(911, 440);
			ctx3.stroke();

			i = true;
			if (lineStateI2 == 1) {
				h = false;
			}
			if (lineStateI1 == 1) {
				g = false;
			}
			lineStateI3 = 1;
		}

		// 첫 번째

		$('#a1').click(function() {
			$('#a1').val('checked');
			$('#a2').val('unChecked');
			$('#a3').val('unChecked');
		});

		$('#a2').click(function() {
			$('#a2').val('checked');
			$('#a1').val('unChecked');
			$('#a3').val('unChecked');
		});

		$('#a3').click(function() {
			$('#a3').val('checked');
			$('#a1').val('unChecked');
			$('#a2').val('unChecked');
		});

		// 두 번째

		$('#c1').click(function() {
			$('#c1').val('checked');
			$('#c2').val('unChecked');
			$('#c3').val('unChecked');
		});

		$('#c2').click(function() {
			$('#c2').val('checked');
			$('#c1').val('unChecked');
			$('#c3').val('unChecked');
		});

		$('#c3').click(function() {
			$('#c3').val('checked');
			$('#c1').val('unChecked');
			$('#c2').val('unChecked');
		});

		//세 번째
		$('#e1').click(function() {
			$('#e1').val('checked');
			$('#e2').val('unChecked');
			$('#e3').val('unChecked');
		});

		$('#e2').click(function() {
			$('#e2').val('checked');
			$('#e1').val('unChecked');
			$('#e3').val('unChecked');
		});

		$('#e3').click(function() {
			$('#e3').val('checked');
			$('#e1').val('unChecked');
			$('#e2').val('unChecked');
		});

		//첫 번째

		$('#b1').click(function() {
			$('#b1').val('checked');
			ctx.clearRect(0, 0, c.width, c.height);
			if ($('#a1').val() == "checked") {
				$(this).find('input').attr('name', "firstconnect");
				drawA1();
				lineStateA2 = 0;
				lineStateA3 = 0;
				if (lineStateB1 == 1) {
					lineStateB1 = 0;
				} else if (lineStateB2 == 1) {
					drawB2();
				} else if (lineStateB3 == 1) {
					drawB3();
				}

				if (lineStateC1 == 1) {
					lineStateC1 = 0;
				} else if (lineStateC2 == 1) {
					drawC2();
				} else if (lineStateC3 == 1) {
					drawC3();
				}
			}

			else if ($('#a2').val() == "checked") {
				$(this).find('input').attr('name', "secondconnect");
				drawB1();
				lineStateB2 = 0;
				lineStateB3 = 0;
				if (lineStateA1 == 1) {
					lineStateA1 = 0;
				} else if (lineStateA2 == 1) {
					drawA2();
				} else if (lineStateA3 == 1) {
					drawA3();
				}

				if (lineStateC1 == 1) {
					lineStateC1 = 0;
				} else if (lineStateC2 == 1) {
					drawC2();
				} else if (lineStateC3 == 1) {
					drawC3();
				}
			}

			else if ($('#a3').val() == "checked") {
				$(this).find('input').attr('name', "thirdconnect");
				drawC1();
				lineStateC2 = 0;
				lineStateC3 = 0;
				if (lineStateB1 == 1) {
					lineStateB1 = 0;
				} else if (lineStateB2 == 1) {
					drawB2();
				} else if (lineStateB3 == 1) {
					drawB3();
				}

				if (lineStateA1 == 1) {
					lineStateA1 = 0;
				} else if (lineStateA2 == 1) {
					drawA2();
				} else if (lineStateA3 == 1) {
					drawA3();
				}
			}
		});

		$('#b2').click(function() {
			$('#b2').val('checked');
			ctx.clearRect(0, 0, c.width, c.height);
			if ($('#a1').val() == "checked") {
				$(this).find('input').attr('name', "firstconnect");
				drawA2();
				lineStateA1 = 0;
				lineStateA3 = 0;
				if (lineStateB1 == 1) {
					drawB1();
				} else if (lineStateB2 == 1) {
					lineStateB2 = 0;
				} else if (lineStateB3 == 1) {
					drawB3();
				}

				if (lineStateC1 == 1) {
					drawC1();
				} else if (lineStateC2 == 1) {
					lineStateC2 = 0;
				} else if (lineStateC3 == 1) {
					drawC3();
				}
			}

			else if ($('#a2').val() == "checked") {
				$(this).find('input').attr('name', "secondconnect");
				drawB2();
				lineStateB1 = 0;
				lineStateB3 = 0;
				if (lineStateA1 == 1) {
					drawA1();
				} else if (lineStateA2 == 1) {
					lineStateA2 = 0;
				} else if (lineStateA3 == 1) {
					drawA3();
				}

				if (lineStateC1 == 1) {
					drawC1();
				} else if (lineStateC2 == 1) {
					lineStateC2 = 0;
				} else if (lineStateC3 == 1) {
					drawC3();
				}
			}

			else if ($('#a3').val() == "checked") {
				$(this).find('input').attr('name', "thirdconnect");
				drawC2();
				lineStateC1 = 0;
				lineStateC3 = 0;
				if (lineStateB1 == 1) {
					drawB1();
				} else if (lineStateB2 == 1) {
					lineStateB2 = 0;
				} else if (lineStateB3 == 1) {
					drawB3();
				}

				if (lineStateA1 == 1) {
					drawA1();
				} else if (lineStateA2 == 1) {
					lineStateA2 = 0;
				} else if (lineStateA3 == 1) {
					drawA3();
				}
			}
		});

		$('#b3').click(function() {
			$('#b3').val('checked');
			ctx.clearRect(0, 0, c.width, c.height);
			if ($('#a1').val() == "checked") {
				$(this).find('input').attr('name', "firstconnect");
				drawA3();
				lineStateA1 = 0;
				lineStateA2 = 0;
				if (lineStateB1 == 1) {
					drawB1();
				} else if (lineStateB2 == 1) {
					drawB2();
				} else if (lineStateB3 == 1) {
					lineStateB3 = 0;
				}

				if (lineStateC1 == 1) {
					drawC1();
				} else if (lineStateC2 == 1) {
					drawC2();
				} else if (lineStateC3 == 1) {
					lineStateC3 = 0;
				}
			}

			else if ($('#a2').val() == "checked") {
				$(this).find('input').attr('name', "secondconnect");
				drawB3();
				lineStateB1 = 0;
				lineStateB2 = 0;
				if (lineStateA1 == 1) {
					drawA1();
				} else if (lineStateA2 == 1) {
					drawA2();
				} else if (lineStateA3 == 1) {
					lineStateA3 = 0;
				}

				if (lineStateC1 == 1) {
					drawC1();
				} else if (lineStateC2 == 1) {
					drawC2();
				} else if (lineStateC3 == 1) {
					lineStateC3 = 0;
				}
			}

			else if ($('#a3').val() == "checked") {
				$(this).find('input').attr('name', "thirdconnect");
				drawC3();
				lineStateC2 = 0;
				lineStateC1 = 0;
				if (lineStateB1 == 1) {
					drawB1();
				} else if (lineStateB2 == 1) {
					drawB2();
				} else if (lineStateB3 == 1) {
					lineStateB3 = 0;
				}

				if (lineStateA1 == 1) {
					drawA1();
				} else if (lineStateA2 == 1) {
					drawA2();
				} else if (lineStateA3 == 1) {
					lineStateA3 = 0;
				}
			}
		});

		//두 번째

		$('#d1').click(function() {
			$('#d1').val('checked');
			ctx2.clearRect(0, 0, c.width, c.height);
			if ($('#c1').val() == "checked") {
				$(this).find('input').attr('name', "fourthconnect");
				drawD1();
				lineStateD2 = 0;
				lineStateD3 = 0;
				if (lineStateE1 == 1) {
					lineStateE1 = 0;
				} else if (lineStateE2 == 1) {
					drawE2();
				} else if (lineStateE3 == 1) {
					drawE3();
				}

				if (lineStateF1 == 1) {
					lineStateF1 = 0;
				} else if (lineStateF2 == 1) {
					drawF2();
				} else if (lineStateF3 == 1) {
					drawF3();
				}
			}

			else if ($('#c2').val() == "checked") {
				$(this).find('input').attr('name', "fifthconnect");
				drawE1();
				lineStateE2 = 0;
				lineStateE3 = 0;
				if (lineStateD1 == 1) {
					lineStateD1 = 0;
				} else if (lineStateD2 == 1) {
					drawD2();
				} else if (lineStateD3 == 1) {
					drawD3();
				}

				if (lineStateF1 == 1) {
					lineStateF1 = 0;
				} else if (lineStateF2 == 1) {
					drawF2();
				} else if (lineStateF3 == 1) {
					drawF3();
				}
			}

			else if ($('#c3').val() == "checked") {
				$(this).find('input').attr('name', "sixthconnect");
				drawF1();
				lineStateF2 = 0;
				lineStateF3 = 0;
				if (lineStateE1 == 1) {
					lineStateE1 = 0;
				} else if (lineStateE2 == 1) {
					drawE2();
				} else if (lineStateE3 == 1) {
					drawE3();
				}

				if (lineStateD1 == 1) {
					lineStateD1 = 0;
				} else if (lineStateD2 == 1) {
					drawD2();
				} else if (lineStateD3 == 1) {
					drawD3();
				}
			}
		});

		$('#d2').click(function() {
			$('#d2').val('checked');
			ctx2.clearRect(0, 0, c.width, c.height);
			if ($('#c1').val() == "checked") {
				$(this).find('input').attr('name', "fourthconnect");
				drawD2();
				lineStateD1 = 0;
				lineStateD3 = 0;
				if (lineStateE1 == 1) {
					drawE1();
				} else if (lineStateE2 == 1) {
					lineStateE2 = 0;
				} else if (lineStateE3 == 1) {
					drawE3();
				}

				if (lineStateF1 == 1) {
					drawF1();
				} else if (lineStateF2 == 1) {
					lineStateF2 = 0;
				} else if (lineStateF3 == 1) {
					drawF3();
				}
			}

			else if ($('#c2').val() == "checked") {
				$(this).find('input').attr('name', "fifthconnect");
				drawE2();
				lineStateE1 = 0;
				lineStateE3 = 0;
				if (lineStateD1 == 1) {
					drawD1();
				} else if (lineStateD2 == 1) {
					lineStateD2 = 0;
				} else if (lineStateD3 == 1) {
					drawD3();
				}

				if (lineStateF1 == 1) {
					drawF1();
				} else if (lineStateF2 == 1) {
					lineStateF2 = 0;
				} else if (lineStateF3 == 1) {
					drawF3();
				}
			}

			else if ($('#c3').val() == "checked") {
				$(this).find('input').attr('name', "sixthconnect");
				drawF2();
				lineStateF1 = 0;
				lineStateF3 = 0;
				if (lineStateE1 == 1) {
					drawE1();
				} else if (lineStateE2 == 1) {
					lineStateE2 = 0;
				} else if (lineStateE3 == 1) {
					drawE3();
				}

				if (lineStateD1 == 1) {
					drawD1();
				} else if (lineStateD2 == 1) {
					lineStateD2 = 0;
				} else if (lineStateD3 == 1) {
					drawD3();
				}
			}
		});

		$('#d3').click(function() {
			$('#d3').val('checked');
			ctx2.clearRect(0, 0, c.width, c.height);
			if ($('#c1').val() == "checked") {
				$(this).find('input').attr('name', "fourthconnect");
				drawD3();
				lineStateD1 = 0;
				lineStateD2 = 0;
				if (lineStateE1 == 1) {
					drawE1();
				} else if (lineStateE2 == 1) {
					drawE2();
				} else if (lineStateE3 == 1) {
					lineStateE3 = 0;
				}

				if (lineStateF1 == 1) {
					drawF1();
				} else if (lineStateF2 == 1) {
					drawF2();
				} else if (lineStateF3 == 1) {
					lineStateF3 = 0;
				}
			}

			else if ($('#c2').val() == "checked") {
				$(this).find('input').attr('name', "fifthconnect");
				drawE3();
				lineStateE1 = 0;
				lineStateE2 = 0;
				if (lineStateD1 == 1) {
					drawD1();
				} else if (lineStateD2 == 1) {
					drawD2();
				} else if (lineStateD3 == 1) {
					lineStateD3 = 0;
				}

				if (lineStateF1 == 1) {
					drawF1();
				} else if (lineStateF2 == 1) {
					drawF2();
				} else if (lineStateF3 == 1) {
					lineStateF3 = 0;
				}
			}

			else if ($('#c3').val() == "checked") {
				$(this).find('input').attr('name', "sixthconnect");
				drawF3();
				lineStateF2 = 0;
				lineStateF1 = 0;
				if (lineStateE1 == 1) {
					drawE1();
				} else if (lineStateE2 == 1) {
					drawE2();
				} else if (lineStateE3 == 1) {
					lineStateE3 = 0;
				}

				if (lineStateD1 == 1) {
					drawD1();
				} else if (lineStateD2 == 1) {
					drawD2();
				} else if (lineStateD3 == 1) {
					lineStateD3 = 0;
				}
			}
		});

		//세 번째

		$('#f1').click(function() {
			$('#f1').val('checked');
			ctx3.clearRect(0, 0, c.width, c.height);
			if ($('#e1').val() == "checked") {
				$(this).find('input').attr('name', "seventhconnect");
				drawG1();
				lineStateG2 = 0;
				lineStateG3 = 0;
				if (lineStateH1 == 1) {
					lineStateH1 = 0;
				} else if (lineStateH2 == 1) {
					drawH2();
				} else if (lineStateH3 == 1) {
					drawH3();
				}

				if (lineStateI1 == 1) {
					lineStateI1 = 0;
				} else if (lineStateI2 == 1) {
					drawI2();
				} else if (lineStateI3 == 1) {
					drawI3();
				}
			}

			else if ($('#e2').val() == "checked") {
				$(this).find('input').attr('name', "eighthconnect");
				drawH1();
				lineStateH2 = 0;
				lineStateH3 = 0;
				if (lineStateG1 == 1) {
					lineStateG1 = 0;
				} else if (lineStateG2 == 1) {
					drawG2();
				} else if (lineStateG3 == 1) {
					drawG3();
				}

				if (lineStateI1 == 1) {
					lineStateI1 = 0;
				} else if (lineStateI2 == 1) {
					drawI2();
				} else if (lineStateI3 == 1) {
					drawI3();
				}
			}

			else if ($('#e3').val() == "checked") {
				$(this).find('input').attr('name', "ninethconnect");
				drawI1();
				lineStateI2 = 0;
				lineStateI3 = 0;
				if (lineStateH1 == 1) {
					lineStateH1 = 0;
				} else if (lineStateH2 == 1) {
					drawH2();
				} else if (lineStateH3 == 1) {
					drawH3();
				}

				if (lineStateG1 == 1) {
					lineStateG1 = 0;
				} else if (lineStateG2 == 1) {
					drawG2();
				} else if (lineStateG3 == 1) {
					drawG3();
				}
			}
		});

		$('#f2').click(function() {
			$('#f2').val('checked');
			ctx3.clearRect(0, 0, c.width, c.height);
			if ($('#e1').val() == "checked") {
				$(this).find('input').attr('name', "seventhconnect");
				drawG2();
				lineStateG1 = 0;
				lineStateG3 = 0;
				if (lineStateH1 == 1) {
					drawH1();
				} else if (lineStateH2 == 1) {
					lineStateH2 = 0;
				} else if (lineStateH3 == 1) {
					drawH3();
				}

				if (lineStateI1 == 1) {
					drawI1();
				} else if (lineStateI2 == 1) {
					lineStateI2 = 0;
				} else if (lineStateI3 == 1) {
					drawI3();
				}
			}

			else if ($('#e2').val() == "checked") {
				$(this).find('input').attr('name', "eighthconnect");
				drawH2();
				lineStateH1 = 0;
				lineStateH3 = 0;
				if (lineStateG1 == 1) {
					drawG1();
				} else if (lineStateG2 == 1) {
					lineStateG2 = 0;
				} else if (lineStateG3 == 1) {
					drawG3();
				}

				if (lineStateI1 == 1) {
					drawI1();
				} else if (lineStateI2 == 1) {
					lineStateI2 = 0;
				} else if (lineStateI3 == 1) {
					drawI3();
				}
			}

			else if ($('#e3').val() == "checked") {
				$(this).find('input').attr('name', "ninethconnect");
				drawI2();
				lineStateI1 = 0;
				lineStateI3 = 0;
				if (lineStateH1 == 1) {
					drawH1();
				} else if (lineStateH2 == 1) {
					lineStateH2 = 0;
				} else if (lineStateH3 == 1) {
					drawH3();
				}

				if (lineStateG1 == 1) {
					drawG1();
				} else if (lineStateG2 == 1) {
					lineStateG2 = 0;
				} else if (lineStateG3 == 1) {
					drawG3();
				}
			}
		});

		$('#f3').click(function() {
			$('#f3').val('checked');
			ctx3.clearRect(0, 0, c.width, c.height);
			if ($('#e1').val() == "checked") {
				$(this).find('input').attr('name', "seventhconnect");
				drawG3();
				lineStateG1 = 0;
				lineStateG2 = 0;
				if (lineStateH1 == 1) {
					drawH1();
				} else if (lineStateH2 == 1) {
					drawH2();
				} else if (lineStateH3 == 1) {
					lineStateH3 = 0;
				}

				if (lineStateI1 == 1) {
					drawI1();
				} else if (lineStateI2 == 1) {
					drawI2();
				} else if (lineStateI3 == 1) {
					lineStateI3 = 0;
				}
			}

			else if ($('#e2').val() == "checked") {
				$(this).find('input').attr('name', "eighthconnect");
				drawH3();
				lineStateH1 = 0;
				lineStateH2 = 0;
				if (lineStateG1 == 1) {
					drawG1();
				} else if (lineStateG2 == 1) {
					drawG2();
				} else if (lineStateG3 == 1) {
					lineStateG3 = 0;
				}

				if (lineStateI1 == 1) {
					drawI1();
				} else if (lineStateI2 == 1) {
					drawI2();
				} else if (lineStateI3 == 1) {
					lineStateI3 = 0;
				}
			}

			else if ($('#e3').val() == "checked") {
				$(this).find('input').attr('name', "ninethconnect");
				drawI3();
				lineStateI2 = 0;
				lineStateI1 = 0;
				if (lineStateH1 == 1) {
					drawH1();
				} else if (lineStateH2 == 1) {
					drawH2();
				} else if (lineStateH3 == 1) {
					lineStateH3 = 0;
				}

				if (lineStateG1 == 1) {
					drawG1();
				} else if (lineStateG2 == 1) {
					drawG2();
				} else if (lineStateG3 == 1) {
					lineStateG3 = 0;
				}
			}
		});

	});

	function checkValue() {
		if (a && b && _c && d && e && f && g && h && i) {
			return true;
		} else {
			alert("문제를 덜 풀었습니다.");
			return false;
		}
	}
</script>
<style>
.container {
	padding-right: 15px;
	padding-left: 15px;
	margin-right: auto;
	margin-left: auto;
}

* {
	margin: 0;
	padding: 0;
	border: 0;
}

.main_message {
	font: 67.5% "Lucida Sans Unicode", "Bitstream Vera Sans",
		"Trebuchet Unicode MS", "Lucida Grande", Verdana, Helvetica,
		sans-serif;
	font-size: 18px;
}

.drawTable td {
	border: 1px solid #bcbcbc;
	width: 20%;
}

.drawTable {
	width: 70%;
	height: 650px;
	margin: auto;
	text-align: center;
}

.drawTable .line {
	width: 50%;
	margin: auto;
	text-align: center;
}

.container .next {
	font-family: "Roboto", sans-serif;
	text-transform: uppercase;
	outline: 0;
	background: #4CAF50;
	float: right;
	margin-right: 12%;
	width: 10%;
	border: 0;
	padding: 15px;
	color: #FFFFFF;
	font-size: 14px;
	-webkit-transition: all 0.3 ease;
	transition: all 0.3 ease;
	cursor: pointer;
	border-radius: 12px;
}

.container .next:hover, .container .next:active, .container .next:focus
	{
	background: #43A047;
}

.container .drawTable .test button {
	font-family: "Roboto", sans-serif;
	text-transform: uppercase;
	outline: 0;
	background: #fff;
	border: 0;
	padding: 10px;
	font-size: 17px;
	-webkit-transition: all 0.3 ease;
	transition: all 0.3 ease;
	cursor: pointer;
}
</style>
</head>
<body>
	<jsp:include page="ChildLogMenu.jsp" />
	<br>
	<form method="post" action="testResult2.jsp">
		<div class="container">
			<%
				Class.forName("com.mysql.jdbc.Driver");

				Connection conn = null; // DBMS와 Java연결객체
				Statement stmt = null; // SQL구문을 실행
				ResultSet rs = null; // SQL구문의 실행결과를 저장

				try {
					String url = "jdbc:mysql://localhost:3306/webapp1?serverTimezone=UTC";
					String dbUser = "root";
					String dbPass = "db2019";

					int id = Integer.parseInt(request.getParameter("boardId"));

					String query = "select * from board where id='" + id + "'";

					// 2. 데이터베이스 커넥션 생성
					conn = DriverManager.getConnection(url, dbUser, dbPass);

					// 3. Statement 생성
					stmt = conn.createStatement();

					// 4. 쿼리 실행
					rs = stmt.executeQuery(query);

					// 5. 쿼리 실행 결과 출력
					while (rs.next()) {
						String src1 = rs.getString("first");
						String src2 = rs.getString("second");
						String src3 = rs.getString("third");
						String src4 = rs.getString("fourth");
						String src5 = rs.getString("fifth");
						String src6 = rs.getString("sixth");
						String src7 = rs.getString("seventh");
						String src8 = rs.getString("eighth");
						String src9 = rs.getString("nineth");
						String text1 = rs.getString("firstText");
						String text2 = rs.getString("secondText");
						String text3 = rs.getString("thirdText");
						String text4 = rs.getString("fourthText");
						String text5 = rs.getString("fifthText");
						String text6 = rs.getString("sixthText");
						String text7 = rs.getString("seventhText");
						String text8 = rs.getString("eighthText");
						String text9 = rs.getString("ninethText");

						String[] src = { src1, src2, src3, src4, src5, src6, src7, src8, src9 };
						String[] originalsrc = { src1, src2, src3, src4, src5, src6, src7, src8, src9 };
						String[] text = { text1, text2, text3, text4, text5, text6, text7, text8, text9 };

						for (int i = 0; i < src.length; i++) {
							int j = (int) (Math.random() * src.length);
							String tmp = null;

							tmp = src[i];
							src[i] = src[j];
							src[j] = tmp;
						}
			%>
			<p align="center" class="main_message">
				그림과 알맞은 한글을 서로 이어주세요. <br> <br>

				<%
					String btn0 = null, btn1 = null, btn2 = null, btn3 = null, btn4 = null, btn5 = null, btn6 = null,
									btn7 = null, btn8 = null;

							for (int i = 0; i < src.length; i++) {
								if (src[0] == originalsrc[i]) {
									btn0 = text[i];
								}
							}

							for (int i = 0; i < src.length; i++) {
								if (src[1] == originalsrc[i]) {
									btn1 = text[i];
								}
							}

							for (int i = 0; i < src.length; i++) {
								if (src[2] == originalsrc[i]) {
									btn2 = text[i];
								}
							}

							for (int i = 0; i < src.length; i++) {
								if (src[3] == originalsrc[i]) {
									btn3 = text[i];
								}
							}

							for (int i = 0; i < src.length; i++) {
								if (src[4] == originalsrc[i]) {
									btn4 = text[i];
								}
							}

							for (int i = 0; i < src.length; i++) {
								if (src[5] == originalsrc[i]) {
									btn5 = text[i];
								}
							}

							for (int i = 0; i < src.length; i++) {
								if (src[6] == originalsrc[i]) {
									btn6 = text[i];
								}
							}

							for (int i = 0; i < src.length; i++) {
								if (src[7] == originalsrc[i]) {
									btn7 = text[i];
								}
							}

							for (int i = 0; i < src.length; i++) {
								if (src[8] == originalsrc[i]) {
									btn8 = text[i];
								}
							}

							String[] btnA = { btn0, btn1, btn2 };

							for (int i = 0; i < btnA.length; i++) {
								int j = (int) (Math.random() * btnA.length);
								String tmp = null;

								tmp = btnA[i];
								btnA[i] = btnA[j];
								btnA[j] = tmp;
							}

							String[] btnB = { btn3, btn4, btn5 };

							for (int i = 0; i < btnB.length; i++) {
								int j = (int) (Math.random() * btnB.length);
								String tmp = null;

								tmp = btnB[i];
								btnB[i] = btnB[j];
								btnB[j] = tmp;
							}

							String[] btnC = { btn6, btn7, btn8 };

							for (int i = 0; i < btnC.length; i++) {
								int j = (int) (Math.random() * btnC.length);
								String tmp = null;

								tmp = btnC[i];
								btnC[i] = btnC[j];
								btnC[j] = tmp;
							}
				%>
			
			<table class="drawTable">

				<tr>
					<td class="test"><button type="button" id="a1"
							value="unChecked">
							<img src="<%=src[0]%>" style="width: 150px; height: 150px;">
							<input type="hidden" value="<%=src[0]%>" name="firstImage">
						</button></td>
					<td rowspan="3" class="line"><div>
							<canvas id="myCanvas" width="500px" height="500px"></canvas>
						</div></td>
					<td class="test">
						<button type="button" id="b1" value="unChecked" name="button1">
							<h1><%=btnA[0]%></h1>
							<input type="hidden" value="<%=btnA[0]%>" name="">
						</button>
					</td>
				</tr>
				<tr>
					<td class="test"><button type="button" id="a2"
							value="unChecked">
							<img src="<%=src[1]%>" style="width: 150px; height: 150px;">
							<input type="hidden" value="<%=src[1]%>" name="secondImage">
						</button></td>
					<td class="test">
						<button type="button" id="b2" value="unChecked" name="button1">
							<h1><%=btnA[1]%></h1>
							<input type="hidden" value="<%=btnA[1]%>" name="">
						</button>
					</td>
				</tr>
				<tr>
					<td class="test"><button type="button" id="a3"
							value="unChecked">
							<img src="<%=src[2]%>" style="width: 150px; height: 150px;">
							<input type="hidden" value="<%=src[2]%>" name="thirdImage">
						</button></td>
					<td class="test">
						<button type="button" id="b3" value="unChecked" name="button1">
							<h1><%=btnA[2]%></h1>
							<input type="hidden" value="<%=btnA[2]%>" name="">
						</button>
					</td>
				</tr>
			</table>
			<br> <br>
			<table class="drawTable">
				<tr>
					<td class="test"><button type="button" id="c1"
							value="unChecked">
							<img src="<%=src[3]%>" style="width: 150px; height: 150px;">
							<input type="hidden" value="<%=src[3]%>" name="fourthImage">
						</button></td>
					<td rowspan="3" class="line"><div>
							<canvas id="myCanvas2" width="500px" height="500px"></canvas>
						</div></td>
					<td class="test">
						<button type="button" id="d1" value="unChecked" name="button2">
							<h1><%=btnB[0]%></h1>
							<input type="hidden" value="<%=btnB[0]%>" name="">
						</button>
					</td>
				</tr>
				<tr>
					<td class="test"><button type="button" id="c2"
							value="unChecked">
							<img src="<%=src[4]%>" style="width: 150px; height: 150px;">
							<input type="hidden" value="<%=src[4]%>" name="fifthImage">
						</button></td>
					<td class="test">
						<button type="button" id="d2" value="unChecked" name="button2">
							<h1><%=btnB[1]%></h1>
							<input type="hidden" value="<%=btnB[1]%>" name="">
						</button>
					</td>
				</tr>
				<tr>
					<td class="test"><button type="button" id="c3"
							value="unChecked">
							<img src="<%=src[5]%>" style="width: 150px; height: 150px;">
							<input type="hidden" value="<%=src[5]%>" name="sixthImage">
						</button></td>
					<td class="test">
						<button type="button" id="d3" value="unChecked" name="button2">
							<h1><%=btnB[2]%></h1>
							<input type="hidden" value="<%=btnB[2]%>" name="">
						</button>
					</td>
				</tr>
			</table>
			<br> <br>
			<table class="drawTable">
				<tr>
					<td class="test"><button type="button" id="e1"
							value="unChecked">
							<img src="<%=src[6]%>" style="width: 150px; height: 150px;">
							<input type="hidden" value="<%=src[6]%>" name="seventhImage">
						</button></td>
					<td rowspan="3" class="line"><div>
							<canvas id="myCanvas3" width="500px" height="500px"></canvas>
						</div></td>
					<td class="test">
						<button type="button" id="f1" value="unChecked" name="button3">
							<h1><%=btnC[0]%></h1>
							<input type="hidden" value="<%=btnC[0]%>" name="">
						</button>
					</td>
				</tr>
				<tr>
					<td class="test"><button type="button" id="e2"
							value="unChecked">
							<img src="<%=src[7]%>" style="width: 150px; height: 150px;">
							<input type="hidden" value="<%=src[7]%>" name="eighthImage">
						</button></td>
					<td class="test">
						<button type="button" id="f2" value="unChecked" name="button3">
							<h1><%=btnC[1]%></h1>
							<input type="hidden" value="<%=btnC[1]%>" name="">
						</button>
					</td>
				</tr>
				<tr>
					<td class="test"><button type="button" id="e3"
							value="unChecked">
							<img src="<%=src[8]%>" style="width: 150px; height: 150px;">
							<input type="hidden" value="<%=src[8]%>" name="ninethImage">
						</button></td>
					<td class="test">
						<button type="button" id="f3" value="unChecked" name="button3">
							<h1><%=btnC[2]%></h1>
							<input type="hidden" value="<%=btnC[2]%>" name="">
						</button>
					</td>
				</tr>

			</table>

			<%
				}
				} catch (SQLException ex) {
					out.println(ex.getMessage());
					ex.printStackTrace();
				} finally {
					// 6. 사용한 Statement 종료
					if (rs != null)
						try {
							rs.close();
						} catch (SQLException ex) {
						}
					if (stmt != null)
						try {
							stmt.close();
						} catch (SQLException ex) {
						}

					// 7. 커넥션 종료
					if (conn != null)
						try {
							conn.close();
						} catch (SQLException ex) {
						}
				}
			%>
			<br>
			<%
				int id = Integer.parseInt(request.getParameter("boardId"));
			%>
			<input type="hidden" value="<%=id%>" name="boardId"> <input
				type="submit" class="next" value="제출" onclick="return checkValue();">
		</div>
	</form>
</body>
</html>