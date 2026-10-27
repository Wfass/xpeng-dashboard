.class public Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;
.super Lcom/xiaopeng/musicradio/commonui/base/BindingActivity;
.source "VipBuyActivity.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/webview/view/b;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/webview/vipbuyactivity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity$c;,
        Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity$a;,
        Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BindingActivity<",
        "Lbth;",
        "Lcom/xiaopeng/musicradio/webview/view/b;",
        "Lcom/xiaopeng/musicradio/webview/presenter/VipBuyViewPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/webview/view/b;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WebViewActivity"

.field private static final TIME_OUT_DURATION:J = 0x7530L


# instance fields
.field private mFailBinding:Lbtj;

.field private mLoadingFailed:Z

.field private mResumeRunnable:Ljava/lang/Runnable;

.field private mTimeOutDisposable:Lio/reactivex/disposables/Disposable;

.field private mTimestamp:J

.field public mTitleEnable:Z

.field private mUrl:Ljava/lang/String;

.field private mVipBuyType:I

.field private mWebViewInit:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->loadUrlInternal()V

    return-void
.end method

.method static synthetic access$1002(Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;J)J
    .locals 0

    .line 56
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mTimestamp:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->setupTimeOut()V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;Z)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->onLoadingFinished(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->onLoadingTimeOut()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->refresh()V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->updateTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mLoadingFailed:Z

    return p0
.end method

.method static synthetic access$502(Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mLoadingFailed:Z

    return p1
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method private clearTimeOutDisposable()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mTimeOutDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mTimeOutDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    const/4 v0, 0x0

    .line 196
    iput-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mTimeOutDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private handleWebViewBack()Z
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hideLoading()V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->f:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->d:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->f:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initIntent()V
    .locals 3

    .line 153
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "vipBuyUrlType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mVipBuyType:I

    .line 157
    :cond_0
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mTitleEnable:Z

    .line 160
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mTitleEnable:Z

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 162
    sget v1, Lcom/xiaopeng/musicradio/webview/a$a;->x_title_bar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->j:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 167
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 168
    iget-object v1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lbth;

    iget-object v1, v1, Lbth;->j:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initWebView()V
    .locals 6

    .line 218
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mWebViewInit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 221
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mWebViewInit:Z

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WebView init time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WebViewActivity"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lbth;

    iget-object v1, v1, Lbth;->h:Landroid/webkit/WebView;

    const/4 v2, 0x0

    .line 226
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 228
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLongClickable(Z)V

    .line 229
    new-instance v3, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity$3;

    invoke-direct {v3, p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity$3;-><init>(Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 235
    new-instance v3, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity$b;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity$b;-><init>(Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity$1;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 236
    new-instance v3, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity$a;

    invoke-direct {v3, p0, v1}, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity$a;-><init>(Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;Landroid/webkit/WebView;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 237
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const-string v4, "utf-8"

    .line 238
    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 240
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 241
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 243
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 245
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 247
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 249
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 251
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 252
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 253
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 255
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    return-void
.end method

.method private loadUrl()V
    .locals 1

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->loadUrl(Z)V

    return-void
.end method

.method private loadUrl(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mResumeRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mLoadingFailed:Z

    .line 132
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->showLoading()V

    if-eqz p1, :cond_0

    .line 134
    new-instance p1, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity$2;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity$2;-><init>(Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mResumeRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->loadUrlInternal()V

    :goto_0
    return-void
.end method

.method private loadUrlInternal()V
    .locals 2

    .line 146
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->initWebView()V

    .line 147
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->updateCacheMode()V

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->h:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private onLoadingFinished(Z)V
    .locals 5

    .line 331
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->clearTimeOutDisposable()V

    .line 333
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->hideLoading()V

    if-eqz p1, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->hideFail()V

    goto :goto_0

    .line 338
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->showFail()V

    .line 341
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadingFinished:time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mTimestamp:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WebViewActivity"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private onLoadingTimeOut()V
    .locals 6

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    move-result v0

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadingTimeOut:progress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mTimestamp:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WebViewActivity"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    .line 268
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mLoadingFailed:Z

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    :cond_0
    return-void
.end method

.method private refresh()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mFailBinding:Lbtj;

    iget-object v0, v0, Lbtj;->c:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 173
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->hideFail()V

    .line 174
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->reset()V

    .line 175
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->loadUrl()V

    return-void
.end method

.method private reset()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 207
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->clearTimeOutDisposable()V

    return-void
.end method

.method private setupTimeOut()V
    .locals 3

    .line 281
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7530

    invoke-static {v1, v2, v0}, Lio/reactivex/Flowable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 282
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity$4;-><init>(Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;)V

    .line 283
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mTimeOutDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private showLoading()V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->f:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->d:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->f:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private updateCacheMode()V
    .locals 3

    .line 211
    invoke-static {p0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 213
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCacheMode:cacheMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WebViewActivity"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lbth;

    iget-object v1, v1, Lbth;->h:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    return-void
.end method

.method private updateTitle(Ljava/lang/String;)V
    .locals 1

    .line 259
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mTitleEnable:Z

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->g:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->createPresenter()Lcom/xiaopeng/musicradio/webview/presenter/VipBuyViewPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/webview/presenter/VipBuyViewPresenter;
    .locals 1

    .line 87
    new-instance v0, Lcom/xiaopeng/musicradio/webview/presenter/VipBuyViewPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/webview/presenter/VipBuyViewPresenter;-><init>()V

    return-object v0
.end method

.method protected getContentViewId()I
    .locals 1

    .line 81
    sget v0, Lcom/xiaopeng/musicradio/webview/a$d;->activity_web_view:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 346
    sget-object v0, Lcom/xiaopeng/musicradio/vui/c;->bq:Ljava/lang/String;

    return-object v0
.end method

.method public hideFail()V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mFailBinding:Lbtj;

    if-nez v0, :cond_0

    return-void

    .line 324
    :cond_0
    iget-object v0, v0, Lbtj;->d:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mFailBinding:Lbtj;

    iget-object v0, v0, Lbtj;->d:Lcom/xiaopeng/xui/widget/XLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->h:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 200
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->handleWebViewBack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onBuyUrlGet(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mUrl:Ljava/lang/String;

    const/4 p1, 0x1

    .line 122
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->loadUrl(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 351
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BindingActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 180
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->reset()V

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->h:Landroid/webkit/WebView;

    const/4 v1, 0x0

    .line 182
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 183
    invoke-static {}, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity$c;->a()V

    .line 184
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingActivity;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 94
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingActivity;->onResume()V

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mResumeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x64

    .line 96
    invoke-static {v0, v1, v2}, Lbql;->b(Ljava/lang/Runnable;J)V

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mResumeRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 189
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingActivity;->onStop()V

    return-void
.end method

.method public setView()V
    .locals 2

    .line 103
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingActivity;->setView()V

    .line 104
    invoke-static {}, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity$c;->b()V

    .line 105
    sget-object v0, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 106
    sput-object p0, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->a:Landroid/content/Context;

    .line 108
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->initIntent()V

    .line 109
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->showLoading()V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/webview/presenter/VipBuyViewPresenter;

    iget v1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mVipBuyType:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/webview/presenter/VipBuyViewPresenter;->a(I)V

    .line 111
    sget v0, Lcom/xiaopeng/musicradio/webview/a$c;->btn_back:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity$1;-><init>(Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showFail()V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mFailBinding:Lbtj;

    if-nez v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->e:Landroidx/databinding/l;

    invoke-virtual {v0}, Landroidx/databinding/l;->b()Landroid/view/ViewStub;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->e:Landroidx/databinding/l;

    invoke-virtual {v0}, Landroidx/databinding/l;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lbtj;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mFailBinding:Lbtj;

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mFailBinding:Lbtj;

    iget-object v0, v0, Lbtj;->c:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity$5;-><init>(Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mFailBinding:Lbtj;

    iget-object v0, v0, Lbtj;->c:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 313
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mFailBinding:Lbtj;

    iget-object v0, v0, Lbtj;->d:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mFailBinding:Lbtj;

    iget-object v0, v0, Lbtj;->d:Lcom/xiaopeng/xui/widget/XLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 316
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->h:Landroid/webkit/WebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->i:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    return-void
.end method
