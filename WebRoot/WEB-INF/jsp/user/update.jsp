<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<html>
<head>
 	<title>工作流管理</title>
    <meta charset="utf8" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="html/assets/global/plugins/easyForm/js/easyform/easyform.css">
    <!-- <link rel="stylesheet" href="html/assets/global/plugins/Pikaday/css/pikaday.css">
    <link rel="stylesheet" href="html/assets/global/plugins/Pikaday/css/site.css"> -->
    <style type="text/css">
	  html {
	    font-size: 16px;
	    font-family: "微软雅黑","黑体";
		}
        body {
            background-color: transparent;
            text-align: center;
        }
        input[type='text'], input[type='password'], input[type='email'] {
            box-shadow: inset 0px 2px 5px #eee;
            padding: 8px;
            border: 1px solid #D4D4D4;
            color: #333333;
            margin-top: 5px;
        }

        .form-div input[type='text'], .form-div input[type='password'], .form-div input[type='email'] {
            margin: 10px;
            line-height: 20px;
            font-size: 16px;
        }
        input[type='text']:focus, input[type='password']:focus, input[type='email']:focus {
            border: 1px solid #50afeb;
            outline: none;
        }


        input[type="button"], input[type="submit"],input[type="reset"],.return {
            padding: 7px 15px;
            background-color: #3c6db0;
            text-align: center;
            border-radius: 5px;
            overflow: hidden;
            min-width: 80px;
            border: none;
            color: #FFF;
            box-shadow: 1px 1px 1px rgba(75, 75, 75, 0.3);
        }
		input[type="button"], input[type="submit"],input[type="reset"],.return{font-size:16px ; }

		input[type="button"]:hover, input[type="submit"]:hover,input[type="reset"]:hover,.return:hover { background-color: #5a88c8;}

 		input[type="button"]:active, input[type="submit"]:active,input[type="reset"]:active,.return:active {background-color: #5a88c8;}
		 .form-div {
		      background-color: rgba(255, 255, 255, 0.27);
		      border-radius: 10px;
		      border: 1px solid #aaa;
		      margin: 0 auto;
		      padding: 30px 0 20px 0px;
		      font-size: 12px;
		      box-shadow: inset 0px 0px 10px rgba(255,255,255,0.5), 0px 0px 15px rgba(75,75,75,0.3);
		      text-align: left;
		      width:1000px;
		}
		 .header {
		    margin: 25px 0;
		}
		        
		.link {
		    outline: none;
		    text-decoration: none;
		    position: relative;
		    font-size: 55px;
		    line-height: 90px;
		    color: #9e9ba4;
		    display: inline-block;
		}
		.title-ani {
		    text-transform: uppercase;
		    font-weight: 900;
		    overflow: hidden;
		    line-height: 90px;
		    color: #b2b0a9;
		}
		.title-ani::after {
		    content: "";
		    position: absolute;
		    height: 16px;
		    width: 100%;
		    top: 50%;
		    margin-top: -8px;
		    right: 0px;
		    background: #F9F9F9;
		    transform: translate3d(-100%, 0px, 0px);
		    transition: transform 0.4s;
		    transition-timing-function: cubic-bezier(0.7, 0, 0.3, 1);
		}
		.title-ani::before {
		    content: attr(data-letters);
		    position: absolute;
		    z-index: 2;
		    overflow: hidden;
		    color: #777;
		    white-space: nowrap;
		    width: 0%;
		    transition: width 0.4s 0.3s;
		}
		.title-ani:hover {
		    color: #b2b0a9;
		}
		.title-ani:hover::after {
		    transform: translate3d(100%, 0px, 0px);
		}
		.title-ani:hover::before {
		    width: 100%;
		}
		.form-div table{
			margin:auto;
			width:80%;
		}
		
		.buttons .button{
		    display: inline-block;
		    border-radius: 2px;
		    margin-left: 25%;
		    text-align:center;
		}
		.buttons .return{
		    display: inline-block;
		    border-radius: 2px;
		    margin-right: 25%;
		    text-align:center;
		   background-color:#eee;
		   vertical-align:top;
		}
		.form-div .step1 table {
		    margin: auto;
		    width: 50%;
		}
		.form-div .step1 table tr{
		    text-align:center;
		}
		
		.clear{
			clear:both;
		}	
		hr {
		    margin-top: 20px;
		    margin-bottom: 20px;
		    border: 0;
		    border-top: 1px solid #eee;
		}
		.decorate {
    		margin-top: 12%;
    		text-align: left;
		}		
		.note.note-success {
		    background-color: #eef7ea;
		    border-color: #c9e2b3;
		    color: #3c763d;
		}
		
		.note {
		    margin: 0 0 20px 0;
		    padding: 15px 30px 15px 15px;
		    border-left: 5px solid #eee;
		    -webkit-border-radius: 0 4px 4px 0;
		    -moz-border-radius: 0 4px 4px 0;
		    -ms-border-radius: 0 4px 4px 0;
		    -o-border-radius: 0 4px 4px 0;
		    border-radius: 0 4px 4px 0;
		}
		 /*****************************************************/
        /*****************************************************/
        /*****************************************************/
        /*****************************************************/
         .twt-feed {
        border-radius: 4px 4px 0 0;
        -webkit-border-radius: 4px 4px 0 0;
        color: #ffffff;
        padding: 10px;
        position: relative;
        text-align: center;
    }
    .twt-feed.blue-bg {
        background: #736086;
    }
    .twt-feed h1 {
        font-size: 22px;
        font-weight: 300;
        margin-bottom: 5px;
    }
    a, a:hover, a:focus {
        text-decoration: none;
        outline: none;
    }
    .twt-feed a {
        border: 8px solid #fff;
        border-radius: 50%;
        -webkit-border-radius: 50%;
        display: inline-block;
        margin-bottom: -55px;
    }
    .twt-feed a .img {
        height: 112px;
        width: 112px;
        border-radius: 50%;
        -webkit-border-radius: 50%;
        background:url(html/icon/logo1.png);
        background-size:cover;
    }
        
    </style>
    <script src="html/assets/global/plugins/easyForm/js/jquery-2.1.0.min.js"></script>
    <script src="html/assets/global/plugins/easyForm/js/easyform/easyform.js"></script>
    <!-- <script src="html/assets/global/plugins/Pikaday/js/moment.js"></script>
    <script src="html/assets/global/plugins/Pikaday/js/pikaday.js"></script> -->
</head>
<body>
<div class="page">
	<div class="row" style="width: 45%;margin: auto;">
      <div class="col-lg-12">
          <section class="panel" style="background-color:transparent;">
              <div class="twt-feed blue-bg">
                  <h1>
                     ${session['userModel'].name}
                  </h1>
                  <p>
                      ${session['userModel'].email}
                  </p>
                  <a href="#">
                      <!-- <img alt="" src="img/profile-avatar.jpg"> -->
                      <div class="img"></div>
                  </a>
              </div>
          </section>
      </div>
  </div>
    <hr>
    <div class="form-div">
        <form id="reg-form" action="user_save.action" method="post">
            <section class="step1" style="width:83%;margin:auto;">
            <s:hidden name="um.uuid"/>
            <table style="float:left;">
                <tr>
                    <td>登陆昵称</td>
                    <td>
                    	<s:textfield name="um.userName" id="um_userName"
                               data-easyform="real-time;ajax:ajax_demo(1);"
                               data-message="登陆昵称不能为空"
                               data-easytip="position:top;class:easy-blue;" data-message-ajax="该昵称已存在!" autocomplete="off"/>
                    </td>
                </tr>
                <tr>
                    <td>真实姓名</td>
                    <td><s:textfield name="um.name" id="um_name"
                    		   data-easyform="real-time;"
                               data-message="真实姓名不能为空!"
                               data-easytip="position:top;class:easy-blue;" autocomplete="off"/>
                     </td>
                </tr>
            </table>
			<table style="float:right;">
				<tr>
                    <td>员工电话</td>
                    <td><s:textfield name="um.tele" id="em_tele" 
                    		   data-easyform="real-time;"
                               data-message="员工电话不能为空!"
                               data-easytip="class:easy-blue;" autocomplete="off"/>
                     </td>
                </tr>
				<tr>
                    <td>员工邮箱</td>
                    <td><s:textfield name="um.email" id="um_email" 
                    		   data-easyform="real-time;"
                               data-message="员工邮箱不能为空!"
                               data-easytip="class:easy-blue;" autocomplete="off"/>
                     </td>
                </tr>
			</table>
			<div class="clear"></div>
			</section>
			<br>
			<br>
            <div class="buttons">
                <div class="button">
                <input value="保存" type="submit" style="border-radius:0px;"/>
                </div>
                <div class="button return">
             		<a href="javascript:history.back();" style="text-decoration:none">返回</a>
                </div>
            </div>
            <br>
        </form>
    </div>
</div>
<div class="decorate">
	<div class="row">
		<div class="col-md-12">
			<div class="note note-success">
			  <p>注意设置管理员一定要满足以上添加才能注册成功！</p>
              <ul>
                <li>拒绝宣传或反动社会用语</li>
                <li>拒绝诋毁，诽谤，粗俗词组</li>
                <li>否则系统将拒绝错误数据</li>
              </ul>
			</div>
		</div>
	</div>
</div>

<script>
	$(document).ready(function (){
        var v = $('#reg-form').easyform();
        v.is_submit = false;
    });
    function ajax_demo(p)
    {
    	if(p==1){
    		$("#um_userName").trigger("easyform-ajax", true);
    	}
    } 
</script>
</body>
</html>
