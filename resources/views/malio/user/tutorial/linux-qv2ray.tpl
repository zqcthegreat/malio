<!DOCTYPE html>
<html lang="en">

<head>
  {include file='user/head.tpl'}

  <title>Linux 使用教程 &mdash; {$config["appName"]}</title>

  <style>
    .btn-app {
      background: linear-gradient(to right, #d74613, #d74613) !important;
      color: white !important;
      border: none;
      box-shadow: 0 2px 6px #d747139f;
      margin-bottom: 16px;
    }

    code {
      color: #d74613;
      background: #f8f8f8;
      border-radius: .15rem;
    }

    .card a {
      color: #d74613;
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
      color: #d74613;
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
      background-color: #d74613;
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
            <h1>Linux 使用教程</h1>
          </div>
          <div class="section-body">
            <div class="row mt-sm-4">
              <div class="col-12">
                {if !URL::SSCanConnect($user, $mu) && !(in_array("v2ray",$malio_config['support_sub_type']))}
                <div class="alert alert-warning alert-has-icon">
                  <div class="alert-icon"><i class="fas fa-exclamation-triangle"></i></div>
                  <div class="alert-body">
                    <div class="alert-title">无法使用此客户端</div>
                    您的加密、混淆和协议不兼容 SS 客户端。如需使用，请在 <a href="/user/edit"><u>连接设置</u></a> 页面更改 “加密方式”、“混淆和协议” 为 SS 可连接的选项。
                  </div>
                </div>
                {/if}
                <div class="card">
                  <div class="card-body">
                    <ul class="steps">
                      <li>
                        <div class="row">
                          <div class="left-text col-xs-12 col-md-6 col-lg-6">
                            <label class="step-no">1.</label>
                            <p>安装Qv2ray</br>
							以下教程针对有图形界面的linux，没有图形界面的Linux请使用 <a href="/user/tutorial?os=linux&client=clash">Clash_linux</a>。
							</p>
							
							<p>
							安装并运行Qv2ray</br>
							<code>
								#请确保系统中安装了wget和unzip</br>
								mkdir -p /var/woccloud/</br>
								cd /var/woccloud/</br>
								wget -O Qv2ray.AppImage https://www.lolxiu.vip/woc/qv2ray/Qv2ray.AppImage</br>
								wget -O v2ray-linux.zip https://www.lolxiu.vip/woc/qv2ray/v2ray-linux.zip</br>
								unzip v2ray-linux.zip -d v2ray-linux/</br>
								chmod +x Qv2ray.AppImage</br>
								#启动Qv2ray</br>
								./Qv2ray.AppImage
							</code>
							</p>	
                          </div>
						  
                          <div class="right-pic col-xs-12 col-md-6 col-lg-6">
                            <div class="tutorial-pic">
                              <img style="border:1px solid #f0f0f0" src="/theme/malio/img/tutorial/linux-qv2ray-1.png">
                            </div>
                            <div class="tutorial-pic">
                              <img style="border:1px solid #f0f0f0" src="/theme/malio/img/tutorial/linux-qv2ray-2.png">
                            </div>
                          </div>
                        </div>
                      </li>
					  
					  
                      <li>
                        <hr>
                        <div class="row">
                          <div class="left-text col-xs-12 col-md-6 col-lg-6">
                            <label class="step-no">2.</label>
							<p>设置Qv2ray </br>
							在Qv2ray界面中，选择左上角 首选项 -> 内核设置，</br>
							“V2ray核心可执行文件路径”填入： <code>/var/woccloud/v2ray-linux/v2ray</code></br>
							“V2ray资源目录”填入： <code>/var/woccloud/v2ray-linux/</code></br>
							</br>
							回到主界面，左下角 分组->订阅设置，</br>
							勾选“此分组是一个订阅”</br>
							“订阅地址”填入： <code>{$subInfo['v2ray']}{if $malio_config['enable_sub_extend'] == true}&extend=1{/if}</code></br>
							</br>
							回到主界面，点击刚添加的分组，点击“更新订阅”</br>
							更新后将出现节点，选择任意需要使用的节点连接即可。</br>
							如果连接成功之后还是无法访问，请依次点击 首选项 -> 入站设置 -> 开启代理。</br>
							</p>
							<p>卧槽云在后续可能增删节点或变更配置，请及时更新订阅以便正常使用。</br>
                          </div>
						  
                          <div class="right-pic col-xs-12 col-md-6 col-lg-6">
                            <div class="tutorial-pic">
                              <img src="/theme/malio/img/tutorial/linux-qv2ray-3.png">
                            </div>
							 <div class="tutorial-pic">
                              <img src="/theme/malio/img/tutorial/linux-qv2ray-4.png">
                            </div>
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