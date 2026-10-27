.class public Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;
.super Lcom/xiaopeng/musicradio/commonui/base/BindingActivity;
.source "WebViewActivity.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/webview/webview"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$c;,
        Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$a;,
        Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BindingActivity<",
        "Lbth;",
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/musicradio/webview/presenter/WebViewPresenter;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WebViewActivity"

.field private static final TIME_OUT_DURATION:J = 0x7530L


# instance fields
.field public mDayUrl:Ljava/lang/String;
    .annotation build Lcom/alibaba/android/arouter/facade/annotation/Autowired;
        name = "dayUrl"
    .end annotation
.end field

.field private mFailBinding:Lbtj;

.field private mLoadingFailed:Z

.field public mNightUrl:Ljava/lang/String;
    .annotation build Lcom/alibaba/android/arouter/facade/annotation/Autowired;
        name = "nightUrl"
    .end annotation
.end field

.field private mResumeRunnable:Ljava/lang/Runnable;

.field private mTimeOutDisposable:Lio/reactivex/disposables/Disposable;

.field private mTimestamp:J

.field public mTitleEnable:Z
    .annotation build Lcom/alibaba/android/arouter/facade/annotation/Autowired;
        name = "titleEnable"
    .end annotation
.end field

.field private mUrl:Ljava/lang/String;

.field private mWebViewInit:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->loadUrlInternal()V

    return-void
.end method

.method static synthetic access$1002(Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;J)J
    .locals 0

    .line 57
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mTimestamp:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->setupTimeOut()V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;Z)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->onLoadingFinished(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->onLoadingTimeOut()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->refresh()V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->updateTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mLoadingFailed:Z

    return p0
.end method

.method static synthetic access$502(Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mLoadingFailed:Z

    return p1
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method private clearTimeOutDisposable()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mTimeOutDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mTimeOutDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    const/4 v0, 0x0

    .line 195
    iput-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mTimeOutDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private handleWebViewBack()Z
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

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

    .line 301
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->f:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->d:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->f:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initIntent()V
    .locals 2

    .line 148
    invoke-static {}, Lpp;->a()Lpp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lpp;->a(Ljava/lang/Object;)V

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initIntent:dayUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mDayUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nightUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mNightUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebViewActivity"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mTitleEnable:Z

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 153
    sget v1, Lcom/xiaopeng/musicradio/webview/a$a;->x_title_bar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 157
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lbth;

    iget-object v1, v1, Lbth;->j:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 158
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->j:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initWebView()V
    .locals 6

    .line 227
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mWebViewInit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 230
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mWebViewInit:Z

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 232
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

    .line 233
    iget-object v1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lbth;

    iget-object v1, v1, Lbth;->h:Landroid/webkit/WebView;

    const/4 v2, 0x0

    .line 235
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 237
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLongClickable(Z)V

    .line 238
    new-instance v3, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$4;

    invoke-direct {v3, p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$4;-><init>(Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 244
    new-instance v3, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$b;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$b;-><init>(Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$1;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 245
    new-instance v3, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$a;

    invoke-direct {v3, p0, v1}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$a;-><init>(Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;Landroid/webkit/WebView;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 246
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const-string v4, "utf-8"

    .line 247
    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 249
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 250
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 252
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 254
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 256
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 258
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 260
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 261
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 262
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 264
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    return-void
.end method

.method private loadUrl()V
    .locals 1

    const/4 v0, 0x0

    .line 121
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->loadUrl(Z)V

    return-void
.end method

.method private loadUrl(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mResumeRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mLoadingFailed:Z

    .line 127
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->showLoading()V

    if-eqz p1, :cond_0

    .line 129
    new-instance p1, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$2;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$2;-><init>(Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mResumeRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->loadUrlInternal()V

    :goto_0
    return-void
.end method

.method private loadUrlInternal()V
    .locals 2

    .line 141
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->initWebView()V

    .line 142
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->updateCacheMode()V

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mNightUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lapo;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mNightUrl:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mDayUrl:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mUrl:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->h:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private onLoadingFinished(Z)V
    .locals 5

    .line 343
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->clearTimeOutDisposable()V

    .line 345
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->hideLoading()V

    if-eqz p1, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->hideFail()V

    goto :goto_0

    .line 350
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->showFail()V

    .line 353
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadingFinished:time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mTimestamp:J

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

    .line 274
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    move-result v0

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadingTimeOut:progress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mTimestamp:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WebViewActivity"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    .line 277
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mLoadingFailed:Z

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    :cond_0
    return-void
.end method

.method private refresh()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mFailBinding:Lbtj;

    iget-object v0, v0, Lbtj;->c:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 164
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->hideFail()V

    .line 165
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->reset()V

    .line 166
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->loadUrl()V

    return-void
.end method

.method private reset()V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 216
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->clearTimeOutDisposable()V

    return-void
.end method

.method private setupTimeOut()V
    .locals 3

    .line 290
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7530

    invoke-static {v1, v2, v0}, Lio/reactivex/Flowable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 291
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$5;-><init>(Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;)V

    .line 292
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mTimeOutDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private showLoading()V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->f:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->d:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->f:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private updateCacheMode()V
    .locals 3

    .line 220
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 222
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

    .line 223
    iget-object v1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lbth;

    iget-object v1, v1, Lbth;->h:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    return-void
.end method

.method private updateTitle(Ljava/lang/String;)V
    .locals 1

    .line 268
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mTitleEnable:Z

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->g:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->createPresenter()Lcom/xiaopeng/musicradio/webview/presenter/WebViewPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/webview/presenter/WebViewPresenter;
    .locals 1

    .line 91
    new-instance v0, Lcom/xiaopeng/musicradio/webview/presenter/WebViewPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/webview/presenter/WebViewPresenter;-><init>()V

    return-object v0
.end method

.method protected getContentViewId()I
    .locals 1

    .line 85
    sget v0, Lcom/xiaopeng/musicradio/webview/a$d;->activity_web_view:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 358
    sget-object v0, Lcom/xiaopeng/musicradio/vui/c;->bq:Ljava/lang/String;

    return-object v0
.end method

.method public hideFail()V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mFailBinding:Lbtj;

    if-nez v0, :cond_0

    return-void

    .line 333
    :cond_0
    iget-object v0, v0, Lbtj;->d:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mFailBinding:Lbtj;

    iget-object v0, v0, Lbtj;->d:Lcom/xiaopeng/xui/widget/XLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->h:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mNightUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 338
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->i:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 200
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->handleWebViewBack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 363
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BindingActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 364
    invoke-static {p1}, Lcom/xiaopeng/xui/theme/XThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mNightUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/webview/a$b;->x_bg_app:I

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/xui/theme/XThemeManager;->setWindowBackgroundResource(Landroid/content/res/Configuration;Landroid/view/Window;I)V

    .line 366
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->loadUrlInternal()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 96
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BindingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-static {}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$c;->b()V

    .line 98
    sget-object p1, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->a:Landroid/content/Context;

    if-nez p1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->a:Landroid/content/Context;

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->initIntent()V

    const/4 p1, 0x1

    .line 102
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->loadUrl(Z)V

    .line 103
    sget p1, Lcom/xiaopeng/musicradio/webview/a$c;->btn_back:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$1;-><init>(Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 171
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->reset()V

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->h:Landroid/webkit/WebView;

    const/4 v1, 0x0

    .line 173
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 174
    invoke-static {}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$c;->a()V

    .line 175
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 207
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BindingActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 208
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->reset()V

    .line 209
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->setIntent(Landroid/content/Intent;)V

    .line 210
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->initIntent()V

    .line 211
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->loadUrl()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 113
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingActivity;->onResume()V

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mResumeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x64

    .line 115
    invoke-static {v0, v1, v2}, Lbql;->b(Ljava/lang/Runnable;J)V

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mResumeRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 180
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingActivity;->onStop()V

    .line 181
    new-instance v0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$3;-><init>(Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showFail()V
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mFailBinding:Lbtj;

    if-nez v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->e:Landroidx/databinding/l;

    invoke-virtual {v0}, Landroidx/databinding/l;->b()Landroid/view/ViewStub;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->e:Landroidx/databinding/l;

    invoke-virtual {v0}, Landroidx/databinding/l;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lbtj;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mFailBinding:Lbtj;

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mFailBinding:Lbtj;

    iget-object v0, v0, Lbtj;->c:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$6;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$6;-><init>(Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mFailBinding:Lbtj;

    iget-object v0, v0, Lbtj;->c:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 322
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mFailBinding:Lbtj;

    iget-object v0, v0, Lbtj;->d:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mFailBinding:Lbtj;

    iget-object v0, v0, Lbtj;->d:Lcom/xiaopeng/xui/widget/XLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 325
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->h:Landroid/webkit/WebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->i:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    return-void
.end method
