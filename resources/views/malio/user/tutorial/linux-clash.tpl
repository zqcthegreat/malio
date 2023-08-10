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
                            <p>使用docker安装clash-linux</br>
							以下教程针对没有图形界面的Linux，有图形界面的也可使用。</br>
							(有图形界面更建议使用<a href="/user/tutorial?os=linux&client=qv2ray">Qv2ray</a>)。</br>
							</p>
							
							<p><code>
								#请确保系统中安装了wget</br>
								#1.安装docker</br>
								curl -fsSL get.docker.com | bash</br>
								service docker restart</br>
								（墙内安装docker和镜像加速请自行百度）</br></br>
								#2.下载配置文件</br>
								mkdir -p /var/woccloud/</br></br>
								echo "wget -O /var/woccloud/config.yml {$subInfo["clash"]}" > /var/woccloud/UpdateSubscribe.sh</br></br>
								bash /var/woccloud/UpdateSubscribe.sh</br></br>
								
								#3.启动Docker_Clash</br>
								docker run -d --name=clash -v "/var/woccloud/config.yml:/root/.config/clash/config.yaml" -p7890:7890 -p7891:7891 -p9090:9090 --restart=unless-stopped dreamacro/clash
							</code></p>	
							
							<p>
								常用命令</br>
								<code>
								#启动Docker： service docker start</br>
								#启动Docker_Clash： docker start clash</br>
								#查看Docker_Clash日志： docker logs -f clash</br>
								#关闭Docker_Clash： docker stop clash</br>
								#关闭Docker： service docker stop</br>
								#删除Docker_Clash： docker rm -f clash
								</code>
							</p>
							<p>卧槽云在后续可能增删节点或变更配置，请及时更新配置文件以便正常使用。</br>
							<code>#更新配置： bash /var/woccloud/UpdateSubscribe.sh</code></p> 
                          </div>
						  
						  
                          <div class="right-pic col-xs-12 col-md-6 col-lg-6">
                            <div class="tutorial-pic">
                              <img style="border:1px solid #f0f0f0" src="/theme/malio/img/tutorial/linux-clash-2.jpg">
                            </div>
							<div class="tutorial-pic hide-on-mobie">
                              <img style="border:1px solid #f0f0f0" src="/theme/malio/img/tutorial/linux-clash-3.jpg">
                            </div>
                          </div>
                        </div>
                      </li>
                      <li>
                        <hr>
                        <div class="row">
                          <div class="left-text col-xs-12 col-md-6 col-lg-6">
                            <label class="step-no">2.</label>
							<p>设置Clash: </br>
							在有图形界面的设备上浏览器访问 <a href="https://clash.razord.top/" target="blank" >https://clash.razord.top/</a> 进行切换节点、测试延迟等操作。</br>
							远程服务器请确认开放9090端口。</br>
							Host: 填装clash_linux机器的IP，Port: 9090</p>
                          </div>
						  
                          <div class="right-pic col-xs-12 col-md-6 col-lg-6">
                            <div class="tutorial-pic">
                              <img src="/theme/malio/img/tutorial/linux-clash-4.jpg">
                            </div>
                          </div>
                        </div>
                      </li>
                      <li>
                        <hr>
                        <div class="row">
                          <div class="left-text col-xs-12 col-md-6 col-lg-6">
                            <label class="step-no">3.</label>
							<p>
							设置系统代理：</br>
								<code>
								export ALL_PROXY="socks5://127.0.0.1:7891"</br>
								export all_proxy="socks5://127.0.0.1:7891"</br>
								</code>					
								关闭系统代理：</br>
								<code>
								unset ALL_PROXY</br>
								unset all_proxy</br>
								</code>
								检查代理是否设置成功: 开启代理前后分别<code>curl https://ip.gs</code>，看IP是否变化。</br>
							</p>
							
							<p>图形界面设置系统代理: </br>
							以 Ubuntu 19.04 为例，打开系统设置，选择网络，点击网络代理右边的 ⚙ 按钮，选择手动，填写 HTTP 和 HTTPS 代理为 127.0.0.1:7890，填写 Socks 主机为 127.0.0.1:7891，即可启用系统代理。</p>
                          </div>
                          <div class="right-pic col-xs-12 col-md-6 col-lg-6">
                            <div class="tutorial-pic">
                              <img style="border:1px solid #f0f0f0" src="/theme/malio/img/tutorial/linux-clash-5.jpg">
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