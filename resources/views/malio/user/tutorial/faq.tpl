<!DOCTYPE html>
<html lang="en">

<head>
  {include file='user/head.tpl'}

  <title>常见问题 &mdash; {$config["appName"]}</title>
 <style>
    .btn-app {
      background: linear-gradient(to right, black, #000) !important;
      color: #dcdcdc !important;
      border-color: black;
      box-shadow: 0 2px 4px #3030307a;
      margin-bottom: 16px;
    }

    .card a {
      color: #029688;
    }

    .steps {
      margin: 10px;
      padding: 0px;
    }

    li {
      list-style: none;
    }

    .step-no {
      font-size: 30px;
      font-weight: 700;
      color: #029688;
    }

    .right-pic {
      text-align: right;
    }

    .tutorial-pic img {
      border-radius: 5px;
      width: 100%;
      max-width: 24rem;
    }

    @media (max-width: 767px) {
      .right-pic {
        display: block;
      }

      .tutorial-pic img {
        margin-top: 16px;
        border-radius: 5px;
        max-width: 100%;
      }

      .qrcode-btn {
        display: none
      }

      .hide-on-mobie {
        display: none;
      }
    }

    .faq h6 {
      color: #191d21;
    }

    .faq h6:before {
      content: ' ';
      border-radius: 5px;
      height: 6px;
      width: 6px;
      background-color: #029688;
      display: inline-block;
      float: left;
      margin-top: 6px;
      margin-right: 8px;
    }

    .faq p {
      font-weight: normal !important;
    }
  </style>
</head>

<body>
  <div id="app">
    <div class="main-wrapper">
      {include file='user/navbar.tpl'}

      <!-- Main Content -->
      <div class="main-content">
        <section class="section">
          <div class="section-header">
            <div class="section-header-back">
              <a href="/user/tutorial" class="btn btn-icon"><i class="fas fa-arrow-left"></i></a>
            </div>
            <h1>常见问题</h1>
          </div>
          <div class="section-body">
            <div class="row mt-sm-4">
              <div class="col-12">
                <div class="card">
                  <div class="card-body">
				  
                    <ul class="steps">
					
						<li>
							<div class="row">
							  <div class="left-text col-xs-12 col-md-6 col-lg-6">
								<label class="step-no">1.官网上不上去了？</label>
									<p>
										（建议在浏览器中收藏本站网址）<br>
										1.切换设备，换用手机或电脑<br>
										2.切换WIFI与数据网络,更换IP再次尝试登录<br>
										3.在专用客户端内登陆用户中心
									</p>
								
							  </div>
							</div>
						 </li>
					
						<li>
							<hr>
							<div class="row">
							  <div class="left-text col-xs-12 col-md-6 col-lg-6">
								<label class="step-no">2.专用客户端登陆失败？</label>
									<p>
										若专用客户端登陆失败，请尝试重新下载最新版本客户端，或尝试换用兼容性客户端。
									</p>
							  </div>
							</div>
						 </li>					
					
						<li>
							<hr>
							<div class="row">
							  <div class="left-text col-xs-12 col-md-6 col-lg-6">
								<label class="step-no">3.线路无法使用？</label>
									<p>
										若遇路线无法使用，请先自查：<br>
										1.套餐是否过期<br>
										2.流量是否用完<br>
										3.在线设备数量是否已满<br>
										4.是否因违规使用被封禁账号<br><br>
										
										若上述情况不存在，再尝试：<br>
										1.尝试切换不同线路<br>
										2.尝试切换全局模式<br><br>

										若是初次使用，请确认客户端已正确配置。<br>
										若确认账号正常且客户端配置无误，仍无法使用，请关注公告是否系统存在故障。<br>
										若其他用户正常使用，即可判断为自己网络或客户端配置问题。<br>
										若是电脑端问题，请看下一条进行排查，并将排查结果一并告诉客服。<br>
									</p>
							  </div>
							</div>
						 </li>						
					
						<li>
							<hr>
							<div class="row">
							  <div class="left-text col-xs-12 col-md-6 col-lg-6">
								<label class="step-no">4.电脑客户端无法使用？</label>
									<p>
										1.校准系统时间。系统时间不准将导致无法使用。<br>
										2.电脑不行的话，换手机等其他设备尝试。若其他设备正常，说明还是电脑客户端配置存在问题。<br>
										3.尝试选择“全局代理，若还不行，请检查防火墙设置，可能是防火墙、电脑管家、杀毒软件拦截了。<br>
										4.换用不同浏览器，部分浏览器需要设置，或某些内置插件拦截。推荐使用谷歌浏览器，建议不用360浏览器。<br>
										5.若连接手机热点网络后可以用，那就是当下电脑连接的网络存在限制。（某些校园网、公司网络无法翻出，就是这个原因）

									</p>
							  </div>
							</div>
						 </li>							
					
						<li>
							<hr>
							<div class="row">
							  <div class="left-text col-xs-12 col-md-6 col-lg-6">
								<label class="step-no">5.关闭客户端后电脑无法正常上网？</label>
									<p>
										客户端在运行中会修改系统代理，如果在连接中强制退出客户端，或连接中直接关机，可能导致电脑无法正常上网。<br>
										此时只需打开客户端，点击连接，再断开连接，退出客户端即可。<br>
										如果没有解决，请可手动清空系统代理：<br>
										系统设置-Internet选项-连接-局域网设置–取消“为LAN使用代理服务器（这些设置不用于拨号或VPN连接）”前面的对勾，清空代理地址和端口里的数字-确定，-确定，-退出，即可。
									</p>
							  </div>
							</div>
						 </li>						
					
						<li>
							<hr>
							<div class="row">
							  <div class="left-text col-xs-12 col-md-6 col-lg-6">
								<label class="step-no">6.客户端安装失败，提示“安装中止”？</label>
									<p>
										这通常是由于上次卸载软件时直接删除目录，导致没有正确卸载。<br>
										此时请在注册表中删除这项后再次尝试安装：<br>
										SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\
									</p>
							  </div>
							</div>
						 </li>						
					
						<li>
							<hr>
							<div class="row">
							  <div class="left-text col-xs-12 col-md-6 col-lg-6">
								<label class="step-no">7.如何更新节点？</label>
									<p>
										路线信息偶尔会发生调整，请随时确保更新最新路线。<br>
										网站每种教程最下端有写如何更新路线。<br><br>

										1.woccloud专用客户端，<br>
										在【断开连接】状态下点击更新按钮即可。<br><br>

										2.兼容性客户端，<br>
										一般情况下找到【更新订阅】选项，点击即可。<br>
										特殊情况下，需登陆网站，重新配置路线（或从网站一键导入）。<br>
										修改密码或重置订阅链接后，必须重新一键导入路线，再使用。
									</p>
							  </div>
							</div>
						 </li>						
					
						<li>
							<hr>
							<div class="row">
							  <div class="left-text col-xs-12 col-md-6 col-lg-6">
								<label class="step-no">8.充值或购买套餐失败？</label>
									<p>

										1.付款后如果套餐未到账，此时请检查<a href="/user/code">我的钱包</a>，若充值的钱在账户余额里，此时只要再次用余额购买套餐即可。<br>
										2.付款后如果套餐未到账，也没有在账户余额中，请提供账号、付款截图、钱包界面截图，联系客服处理。<br>
										3.套餐未到期请勿直接购买新套餐，否则下个月容易导致流量错误。如流量不足，可选购流量包。<br>
										4.如需更换、升级套餐，或买错套餐，可联系客服处理。<br>
										5.购买套餐后，客户端中显示数据可能有延迟，以网站显示为准。<br>
										6.每次购买套餐后，请在客户端中「更新订阅」再使用！
	
									</p>
							  </div>
							</div>
						 </li>


						 
					</ul>
					
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
      {include file='user/footer.tpl'}
    </div>
  </div>

  {include file='user/scripts.tpl'}

</body>

</html>