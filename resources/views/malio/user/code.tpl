<!DOCTYPE html>
<html lang="en">

<head>
  {include file='user/head.tpl'}

  <title>我的钱包 &mdash; {$config["appName"]}</title>

  <style>
    #topup {
      padding: .55rem 1.5rem !important;
    }

    .alipay:focus+.selectgroup-button,
    .alipay:checked+.selectgroup-button {
      background-color: #029de3;
      color: #fff;
      z-index: 1;
    }

    .wechat-pay:focus+.selectgroup-button,
    .wechat-pay:checked+.selectgroup-button {
      background-color: #00ae47;
      color: #fff;
      z-index: 1;
    }

    .qqpay:focus+.selectgroup-button,
    .qqpay:checked+.selectgroup-button {
      background-color: #11b7f5;
      color: #fff;
      z-index: 1;
    }
  </style>
</head>

<body>
  <div id="app">
    <div class="main-wrapper">
      {include file='user/navbar.tpl'}

      <!-- Main Content -->
      <div id="main-page" class="main-content">
        <section class="section">
          <div class="section-header">
            <h1>我的钱包</h1>
          </div>
          <div class="section-body">
            <div class="row">
              <div class="col-12">
                <div class="card card-hero">
                  <div class="card-header" style="border-radius: 3px;box-shadow: 0 2px 6px #acb5f6;border: none;">
                    <div class="card-icon">
                      <i class="fas fa-yen-sign "></i>
                    </div>
                    <h4>¥ {$user->money}</h4>
                    <div class="card-description">账号可用余额</div>
                    <div class="mt-4">
                      <a href="##" id="top-up" class="btn btn-outline-white btn-lg btn-icon icon-left">
                        <i class="fas fa-piggy-bank"></i> 充值
                      </a>
                      {if $malio_config['enable_topup_code'] == true}
                      <a href="##" class="btn btn-outline-white btn-lg btn-icon icon-left ml-2" data-toggle="modal" data-target="#code-topup-modal">
                        使用充值码
                      </a>
                      {/if}
                    </div>
                  </div>
                </div>

                <div class="card">
                  <div class="card-header">
                    <h4>充值记录</h4>
                  </div>
                  <div class="card-body">
                    <div class="table-responsive">
                      <table class="table table-striped table-md">
                        <tr>
                          <th scope="col">代码</th>
                          <th scope="col">类型</th>
                          <th scope="col">操作</th>
                          <th scope="col">使用时间</th>
                        </tr>
                        {if count($codes) == 0}
                        <tr>
                          <td colspan="4"><strong>无充值记录</strong></td>
                        </tr>
                        {else}
                        {foreach $codes as $code}
                        {if $code->type!=-2}
                        <tr>
                          <td>{$code->code}</td>
                          {if $code->type==-1}
                          <td>金额充值</td>
                          {/if}
                          {if $code->type==10001}
                          <td>流量充值</td>
                          {/if}
                          {if $code->type==10002}
                          <td>用户续期</td>
                          {/if}
                          {if $code->type>=1&&$code->type<=10000} <td>等级续期 - 等级{$code->type}</td>
                            {/if}
                            {if $code->type==-1}
                            <td>充值 {$code->number} 元</td>
                            {/if}
                            {if $code->type==10001}
                            <td>充值 {$code->number} GB 流量</td>
                            {/if}
                            {if $code->type==10002}
                            <td>延长账户有效期 {$code->number} 天</td>
                            {/if}
                            {if $code->type>=1&&$code->type<=10000} <td>延长等级有效期 {$code->number} 天</td>
                              {/if}
                              <td>{$code->usedatetime}</td>
                        </tr>
                        {/if}
                        {/foreach}
                        {/if}
                      </table>
                    </div>
                    <div class="pagination-render float-right">
                      {$codes->render()}
                    </div>
                  </div>
                </div>
                <div class="card">
                  <div class="card-header">
                    <h4>购买记录</h4>
                  </div>
                  <div class="card-body">
                    <div class="table-responsive">
                      <table class="table table-striped table-md">
                        <tr>
                          <th>商品名称</th>
                          <th>价格</th>
                          <th>购买时间</th>
                          {if $malio_config['shop_enable_autorenew'] == true}
                          <th>续费时间</th>
                          <th>续费时重置流量</th>
                          <th>操作</th>
                          {/if}
                        </tr>
                        {if count($shops) == 0}
                        <tr>
                          <td colspan="3"><strong>无购买记录</strong></td>
                        </tr>
                        {else}
                        {foreach $shops as $shop}
                        <tr>
                          <td>{$shop->shop()->name}</td>
                          <td>¥{$shop->price}</td>
                          <td>{date('Y-m-d H:i:s', $shop->datetime)}</td>
                          {if $malio_config['shop_enable_autorenew'] == true}

                          {if $shop->renew==0}
                          <td>不自动续费</td>
                          {else}
                          <td>在 {$shop->renew_date()} 续费</td>
                          {/if}

                          {if $shop->shop()->auto_reset_bandwidth==0}
                          <td>不自动重置</td>
                          {else}
                          <td>自动重置</td>
                          {/if}

                          <td>
                            {if $shop->renew==0}
                            无操作
                            {else}
                            <a href="#" onclick="stopAutorenew({$shop->id})" class="btn btn-primary">关闭自动续费</a>
                            {/if}
                          </td>
                          {/if}
                        </tr>
                        {/foreach}
                        {/if}
                      </table>
                    </div>
                    <div class="pagination-render float-right">
                      {$shops->render()}
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>

      <div id="topup-page" class="main-content" style="display: none">
        <section class="section">
          <div class="section-header">
            <div class="section-header-back">
              <a id="back-to-main" href="##" class="btn btn-icon"><i class="fas fa-arrow-left"></i></a>
            </div>
            <h1>充值</h1>
          </div>
          <div class="section-body">
            <div class="row">
              <div class="col-12">
                <div class="card">
                  <div class="card-body">
                    <div class="form-group row mb-4">
                      <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">金额</label>
                      <div class="col-sm-12 col-md-7">
                        {if $malio_config['topup_amount_input_mode'] == 'select'}
                        <div class="selectric-wrapper selectric-form-control selectric-selectric selectric-below">
                          <div class="selectric-hide-select">
                            <select class="form-control" tabindex="-1" id="amount">
                              {foreach $malio_config['topup_select_list'] as $amount}
                              <option value="{$amount}">¥ {$amount}</option>
                              {/foreach}
                            </select>
                          </div>
                        </div>
                        {else}
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <div class="input-group-text">
                              ¥
                            </div>
                          </div>
                          <input id="amount" type="number" class="form-control currency" onclick="hideFeedback('no-amount-warn')">
                          <div id="no-amount-warn" class="invalid-feedback">
                            请输入金额
                          </div>
                        </div>
                        {/if}
                      </div>
                    </form>
                    </div>
                    <div class="form-group row mb-4">
                      <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">支付方式</label>
                      <div class="col-sm-12 {if $config['payment_system'] != 'f2fpay'}col-md-7{else}col-md-3{/if}">
                        <div class="selectgroup w-100">
                          {if $config['payment_system'] != malio}
                            {if $config['payment_system'] != 'payjs'}
                            <label class="selectgroup-item">
                              <input type="radio" name="payment" value="alipay" class="selectgroup-input alipay" checked="">
                              <span class="selectgroup-button selectgroup-button-icon"><i class="fab fa-alipay mr-1"></i>支付宝</span>
                            </label>
                            {/if}
                            {if $config['payment_system'] != 'f2fpay' && $config['payment_system'] != 'spay' && $config['payment_system'] != 'payssion'}
                            <label class="selectgroup-item">
                              {if $config['payment_system'] == 'payjs'}
                              <input type="radio" name="payment" value="wechat" class="selectgroup-input wechat-pay" checked="">
                              {else}
                              <input type="radio" name="payment" value="wechat" class="selectgroup-input wechat-pay">
                              {/if}
                              <span class="selectgroup-button selectgroup-button-icon"><i class="malio-wechat-pay mr-1" style="vertical-align: -1px"></i>微信支付</span>
                            </label>
                            {/if}
                            {if $config['payment_system'] == 'bitpayx'}
                            <label class="selectgroup-item">
                              <input type="radio" name="payment" value="crypto" class="selectgroup-input">
                              <span class="selectgroup-button selectgroup-button-icon"><i class="fab fa-btc mr-1"></i>加密货币</span>
                            </label>
                            {/if}
                            {if $config['payment_system'] == 'codepay' || $config['payment_system'] == 'flyfoxpay'}
                            <label class="selectgroup-item">
                              <input type="radio" name="payment" value="qqpay" class="selectgroup-input qqpay">
                              <span class="selectgroup-button selectgroup-button-icon"><i class="fab fa-qq mr-1"></i>QQ支付</span>
                            </label>
                            {/if}
                            {if $config['payment_system'] == 'payssion'}
                            <label class="selectgroup-item">
                              <input type="radio" name="payment" value="unionpay" class="selectgroup-input">
                              <span class="selectgroup-button selectgroup-button-icon"><i class="malio-unionpay mr-1"></i>银联支付</span>
                            </label>
                            {/if}
                          {else}
                            {if $malio_config['mups_alipay'] != 'none'}
                            <label class="selectgroup-item">
                              <input type="radio" name="payment" value="alipay" class="selectgroup-input alipay" checked="">
                              <span class="selectgroup-button selectgroup-button-icon"><i class="fab fa-alipay mr-1"></i>支付宝</span>
                            </label>
                            {/if}
                            {if $malio_config['mups_wechat'] != 'none'}
                            <label class="selectgroup-item">
                              <input type="radio" name="payment" value="wechat" class="selectgroup-input wechat-pay">
                              <span class="selectgroup-button selectgroup-button-icon"><i class="malio-wechat-pay mr-1" style="vertical-align: -1px"></i>微信支付</span>
                            </label>
                            {/if}
                          {/if}
                        </div>
                      </div>
                    </div>
                    <div class="form-group row mb-4">
                      <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3"></label>
                      <div class="col-sm-12 col-md-7">
                        <button id="topup-confirm" class="btn btn-primary">立即充值</button>
                      </div>
                    </div>
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
  <script src="/cdn.jsdelivr.net/npm/kjua@0.1.2/dist/kjua.min.js"></script>

  <script>
    $('#top-up').click(function () {
      $('#main-page').hide();
      $('#topup-page').show();
    })
    $('#back-to-main').click(function () {
      $('#topup-page').hide();
      $('#main-page').show();
    })
    var paymentSystem = "{$config['payment_system']}";
    $('#topup-confirm').click(function () {
      walletTopup($('input:radio:checked').val());
    })
  </script>
  
  {if $config['payment_system'] == 'wellpay'}

  <script>
 $('#topup-confirm').click(function(){
  $.post('/user/payment/purchase', {
   amount: $('#amount').val(),
   type:$('input:radio[name=payment]:checked').val()
  }, (data) => {
   data = JSON.parse(data)
   if (data.code !== 0) {
    alert('--'+data.msg+'--')
    return
   }
   window.location.href = data.url
  })
 })
  </script>
  {/if}

  {if $config['payment_system'] == 'f2fpay' || $config['payment_system'] == 'f2fpay_payjs'}
  <div class="modal fade" tabindex="-1" role="dialog" id="f2fpay-modal">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">打开支付宝，扫码支付</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div id="f2fpay-qr" style="text-align: center"></div>
        </div>
        <div class="modal-footer bg-whitesmoke br">
          <a id="to-alipay-app" href="##" target="blank" class="btn btn-primary">打开手机支付宝</a>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
        </div>
      </div>
    </div>
  </div>
  {/if}

  {if $config['payment_system'] == 'payjs' || $config['payment_system'] == 'f2fpay_payjs'}
  <div class="modal fade" tabindex="-1" role="dialog" id="payjs-modal">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">打开微信，扫码支付</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div id="payjs-qr" style="text-align: center"></div>
        </div>
        <div class="modal-footer bg-whitesmoke br">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
        </div>
      </div>
    </div>
  </div>
  {/if}

  {if $config['payment_system'] == 'stripe'}
  <div class="modal fade" tabindex="-1" role="dialog" id="stripe-wechat-modal">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">打开微信，扫码支付</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div id="stripe-qr" style="text-align: center"></div>
        </div>
        <div class="modal-footer bg-whitesmoke br">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
        </div>
      </div>
    </div>
  </div>
  {/if}

  {if $malio_config['enable_topup_code'] == true}
  <div class="modal fade" tabindex="-1" role="dialog" id="code-topup-modal">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">使用充值码</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="form-group">
            <label>请输入充值码</label>
            <input id="topup-code" type="text" class="form-control">
          </div>
        </div>
        <div class="modal-footer bg-whitesmoke br">
          <button type="button" class="btn btn-primary" onclick="codeTopup()">充值</button>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
        </div>
      </div>
    </div>
  </div>
  {/if}

</body>

</html>