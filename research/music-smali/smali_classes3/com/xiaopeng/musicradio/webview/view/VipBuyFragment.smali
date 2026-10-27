.class public Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;
.super Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;
.source "VipBuyFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/webview/view/b;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/webview/vipbuyfragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment$c;,
        Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment$a;,
        Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BindingFragment<",
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

    .line 59
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->loadUrlInternal()V

    return-void
.end method

.method static synthetic access$1002(Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;J)J
    .locals 0

    .line 59
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mTimestamp:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->setupTimeOut()V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->onLoadingFinished(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->onLoadingTimeOut()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->refresh()V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->updateTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mLoadingFailed:Z

    return p0
.end method

.method static synthetic access$502(Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mLoadingFailed:Z

    return p1
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method private clearTimeOutDisposable()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mTimeOutDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mTimeOutDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    const/4 v0, 0x0

    .line 209
    iput-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mTimeOutDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private handleWebViewBack()Z
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

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

    .line 305
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->f:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->d:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->f:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initIntent()V
    .locals 3

    .line 166
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "vipBuyUrlType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mVipBuyType:I

    .line 170
    :cond_0
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mTitleEnable:Z

    .line 173
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mTitleEnable:Z

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 175
    sget v1, Lcom/xiaopeng/musicradio/webview/a$a;->x_title_bar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->j:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 180
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 181
    iget-object v1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lbth;

    iget-object v1, v1, Lbth;->j:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initWebView()V
    .locals 6

    .line 231
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mWebViewInit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 234
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mWebViewInit:Z

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 236
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

    .line 237
    iget-object v1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lbth;

    iget-object v1, v1, Lbth;->h:Landroid/webkit/WebView;

    const/4 v2, 0x0

    .line 239
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 241
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLongClickable(Z)V

    .line 242
    new-instance v3, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment$3;

    invoke-direct {v3, p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment$3;-><init>(Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 248
    new-instance v3, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment$b;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment$b;-><init>(Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment$1;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 249
    new-instance v3, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment$a;

    invoke-direct {v3, p0, v1}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment$a;-><init>(Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;Landroid/webkit/WebView;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 250
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const-string v4, "utf-8"

    .line 251
    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 253
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 254
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 256
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 258
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 260
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 262
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 264
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 265
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 266
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 268
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    return-void
.end method

.method private loadUrl()V
    .locals 1

    const/4 v0, 0x0

    .line 139
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->loadUrl(Z)V

    return-void
.end method

.method private loadUrl(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mResumeRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mLoadingFailed:Z

    .line 145
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->showLoading()V

    if-eqz p1, :cond_0

    .line 147
    new-instance p1, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment$2;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment$2;-><init>(Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mResumeRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 154
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->loadUrlInternal()V

    :goto_0
    return-void
.end method

.method private loadUrlInternal()V
    .locals 2

    .line 159
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->initWebView()V

    .line 160
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->updateCacheMode()V

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->h:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private onLoadingFinished(Z)V
    .locals 5

    .line 344
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->clearTimeOutDisposable()V

    .line 346
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->hideLoading()V

    if-eqz p1, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->hideFail()V

    goto :goto_0

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->showFail()V

    .line 354
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadingFinished:time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mTimestamp:J

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

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    move-result v0

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadingTimeOut:progress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mTimestamp:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WebViewActivity"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    .line 281
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mLoadingFailed:Z

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    :cond_0
    return-void
.end method

.method private refresh()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mFailBinding:Lbtj;

    iget-object v0, v0, Lbtj;->c:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 186
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->hideFail()V

    .line 187
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->reset()V

    .line 188
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->loadUrl()V

    return-void
.end method

.method private reset()V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 220
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->clearTimeOutDisposable()V

    return-void
.end method

.method private setupTimeOut()V
    .locals 3

    .line 294
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7530

    invoke-static {v1, v2, v0}, Lio/reactivex/Flowable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 295
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment$4;-><init>(Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;)V

    .line 296
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mTimeOutDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private showLoading()V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->f:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->d:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->f:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private updateCacheMode()V
    .locals 3

    .line 224
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 226
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

    .line 227
    iget-object v1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lbth;

    iget-object v1, v1, Lbth;->h:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    return-void
.end method

.method private updateTitle(Ljava/lang/String;)V
    .locals 1

    .line 272
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mTitleEnable:Z

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->g:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->createPresenter()Lcom/xiaopeng/musicradio/webview/presenter/VipBuyViewPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/webview/presenter/VipBuyViewPresenter;
    .locals 1

    .line 90
    new-instance v0, Lcom/xiaopeng/musicradio/webview/presenter/VipBuyViewPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/webview/presenter/VipBuyViewPresenter;-><init>()V

    return-object v0
.end method

.method protected createViewFirst()V
    .locals 2

    .line 128
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->createViewFirst()V

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/webview/presenter/VipBuyViewPresenter;

    iget v1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mVipBuyType:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/webview/presenter/VipBuyViewPresenter;->a(I)V

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 84
    sget v0, Lcom/xiaopeng/musicradio/webview/a$d;->activity_web_view:I

    return v0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 2

    .line 497
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arguments"

    .line 498
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 359
    sget-object v0, Lcom/xiaopeng/musicradio/vui/c;->bq:Ljava/lang/String;

    return-object v0
.end method

.method public hideFail()V
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mFailBinding:Lbtj;

    if-nez v0, :cond_0

    return-void

    .line 337
    :cond_0
    iget-object v0, v0, Lbtj;->d:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mFailBinding:Lbtj;

    iget-object v0, v0, Lbtj;->d:Lcom/xiaopeng/xui/widget/XLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->h:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 213
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->handleWebViewBack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbni;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onBuyUrlGet(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mUrl:Ljava/lang/String;

    const/4 p1, 0x1

    .line 135
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->loadUrl(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 364
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 97
    invoke-super {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 193
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->reset()V

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->h:Landroid/webkit/WebView;

    const/4 v1, 0x0

    .line 195
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 196
    invoke-static {}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment$c;->a()V

    .line 197
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 102
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->onResume()V

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mResumeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x64

    .line 104
    invoke-static {v0, v1, v2}, Lbql;->b(Ljava/lang/Runnable;J)V

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mResumeRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 202
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->onStop()V

    return-void
.end method

.method protected setView()V
    .locals 2

    .line 111
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->setView()V

    .line 112
    invoke-static {}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment$c;->b()V

    .line 113
    sget-object v0, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->a:Landroid/content/Context;

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->initIntent()V

    .line 117
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->showLoading()V

    .line 118
    sget v0, Lcom/xiaopeng/musicradio/webview/a$c;->btn_back:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment$1;-><init>(Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showFail()V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mFailBinding:Lbtj;

    if-nez v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->e:Landroidx/databinding/l;

    invoke-virtual {v0}, Landroidx/databinding/l;->b()Landroid/view/ViewStub;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->e:Landroidx/databinding/l;

    invoke-virtual {v0}, Landroidx/databinding/l;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lbtj;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mFailBinding:Lbtj;

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mFailBinding:Lbtj;

    iget-object v0, v0, Lbtj;->c:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment$5;-><init>(Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mFailBinding:Lbtj;

    iget-object v0, v0, Lbtj;->c:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 326
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mFailBinding:Lbtj;

    iget-object v0, v0, Lbtj;->d:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 327
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mFailBinding:Lbtj;

    iget-object v0, v0, Lbtj;->d:Lcom/xiaopeng/xui/widget/XLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->h:Landroid/webkit/WebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->i:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    return-void
.end method
