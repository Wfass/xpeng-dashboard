.class public Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;
.super Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;
.source "WebViewFragment.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/webview/webviewfragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/webview/view/WebViewFragment$c;,
        Lcom/xiaopeng/musicradio/webview/view/WebViewFragment$a;,
        Lcom/xiaopeng/musicradio/webview/view/WebViewFragment$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BindingFragment<",
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

.field private mFailBinding:Lbtj;

.field private mLoadingFailed:Z

.field public mNightUrl:Ljava/lang/String;

.field private mResumeRunnable:Ljava/lang/Runnable;

.field private mTimeOutDisposable:Lio/reactivex/disposables/Disposable;

.field private mTimestamp:J

.field public mTitleEnable:Z

.field private mUrl:Ljava/lang/String;

.field private mWebViewInit:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->loadUrlInternal()V

    return-void
.end method

.method static synthetic access$1002(Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;J)J
    .locals 0

    .line 62
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mTimestamp:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->setupTimeOut()V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;Z)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->onLoadingFinished(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->onLoadingTimeOut()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->refresh()V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->updateTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mLoadingFailed:Z

    return p0
.end method

.method static synthetic access$502(Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mLoadingFailed:Z

    return p1
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method private clearTimeOutDisposable()V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mTimeOutDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mTimeOutDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mTimeOutDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private handleWebViewBack()Z
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

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

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->f:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->d:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->f:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initIntent()V
    .locals 3

    .line 158
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "dayUrl"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mDayUrl:Ljava/lang/String;

    .line 160
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "nightUrl"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mNightUrl:Ljava/lang/String;

    .line 161
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "titleEnable"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mTitleEnable:Z

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initIntent:dayUrl="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mDayUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", nightUrl="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mNightUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WebViewActivity"

    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mTitleEnable:Z

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 168
    sget v1, Lcom/xiaopeng/musicradio/webview/a$a;->x_title_bar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->j:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 173
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 174
    iget-object v1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lbth;

    iget-object v1, v1, Lbth;->j:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initWebView()V
    .locals 6

    .line 224
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mWebViewInit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 227
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mWebViewInit:Z

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 229
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

    .line 230
    iget-object v1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lbth;

    iget-object v1, v1, Lbth;->h:Landroid/webkit/WebView;

    const/4 v2, 0x0

    .line 232
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 234
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLongClickable(Z)V

    .line 235
    new-instance v3, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment$3;

    invoke-direct {v3, p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment$3;-><init>(Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 241
    new-instance v3, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment$b;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment$b;-><init>(Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;Lcom/xiaopeng/musicradio/webview/view/WebViewFragment$1;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 242
    new-instance v3, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment$a;

    invoke-direct {v3, p0, v1}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment$a;-><init>(Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;Landroid/webkit/WebView;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 243
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const-string v4, "utf-8"

    .line 244
    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 246
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 247
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 249
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 251
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 253
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 255
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 257
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 258
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 259
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 261
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    return-void
.end method

.method private loadUrl()V
    .locals 1

    const/4 v0, 0x0

    .line 130
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->loadUrl(Z)V

    return-void
.end method

.method private loadUrl(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mResumeRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mLoadingFailed:Z

    .line 136
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->showLoading()V

    if-eqz p1, :cond_0

    .line 138
    new-instance p1, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment$2;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment$2;-><init>(Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mResumeRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->loadUrlInternal()V

    :goto_0
    return-void
.end method

.method private loadUrlInternal()V
    .locals 2

    .line 150
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->initWebView()V

    .line 151
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->updateCacheMode()V

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mNightUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lapo;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mNightUrl:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mDayUrl:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mUrl:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->h:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private onLoadingFinished(Z)V
    .locals 5

    .line 340
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->clearTimeOutDisposable()V

    .line 342
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->hideLoading()V

    if-eqz p1, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->hideFail()V

    goto :goto_0

    .line 347
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->showFail()V

    .line 350
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadingFinished:time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mTimestamp:J

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

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    move-result v0

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadingTimeOut:progress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mTimestamp:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WebViewActivity"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    .line 274
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mLoadingFailed:Z

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    :cond_0
    return-void
.end method

.method private refresh()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mFailBinding:Lbtj;

    iget-object v0, v0, Lbtj;->c:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 179
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->hideFail()V

    .line 180
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->reset()V

    .line 181
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->loadUrl()V

    return-void
.end method

.method private reset()V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 213
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->clearTimeOutDisposable()V

    return-void
.end method

.method private setupTimeOut()V
    .locals 3

    .line 287
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7530

    invoke-static {v1, v2, v0}, Lio/reactivex/Flowable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 288
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment$4;-><init>(Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;)V

    .line 289
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mTimeOutDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private showLoading()V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->f:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->d:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->f:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private updateCacheMode()V
    .locals 3

    .line 217
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 219
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

    .line 220
    iget-object v1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lbth;

    iget-object v1, v1, Lbth;->h:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    return-void
.end method

.method private updateTitle(Ljava/lang/String;)V
    .locals 1

    .line 265
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mTitleEnable:Z

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->g:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->createPresenter()Lcom/xiaopeng/musicradio/webview/presenter/WebViewPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/webview/presenter/WebViewPresenter;
    .locals 1

    .line 93
    new-instance v0, Lcom/xiaopeng/musicradio/webview/presenter/WebViewPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/webview/presenter/WebViewPresenter;-><init>()V

    return-object v0
.end method

.method protected getContentViewId()I
    .locals 1

    .line 87
    sget v0, Lcom/xiaopeng/musicradio/webview/a$d;->activity_web_view:I

    return v0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 2

    .line 493
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arguments"

    .line 494
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 355
    sget-object v0, Lcom/xiaopeng/musicradio/vui/c;->bq:Ljava/lang/String;

    return-object v0
.end method

.method public hideFail()V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mFailBinding:Lbtj;

    if-nez v0, :cond_0

    return-void

    .line 330
    :cond_0
    iget-object v0, v0, Lbtj;->d:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mFailBinding:Lbtj;

    iget-object v0, v0, Lbtj;->d:Lcom/xiaopeng/xui/widget/XLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->h:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mNightUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 335
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->i:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 206
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->handleWebViewBack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbni;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 360
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 100
    invoke-super {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 186
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->reset()V

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->h:Landroid/webkit/WebView;

    const/4 v1, 0x0

    .line 188
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 189
    invoke-static {}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment$c;->a()V

    .line 190
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 105
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->onResume()V

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mResumeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x64

    .line 107
    invoke-static {v0, v1, v2}, Lbql;->b(Ljava/lang/Runnable;J)V

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mResumeRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 195
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->onStop()V

    return-void
.end method

.method protected setView()V
    .locals 2

    .line 114
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->setView()V

    .line 115
    invoke-static {}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment$c;->b()V

    .line 116
    sget-object v0, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->a:Landroid/content/Context;

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->initIntent()V

    const/4 v0, 0x1

    .line 120
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->loadUrl(Z)V

    .line 121
    sget v0, Lcom/xiaopeng/musicradio/webview/a$c;->btn_back:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment$1;-><init>(Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showFail()V
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mFailBinding:Lbtj;

    if-nez v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->e:Landroidx/databinding/l;

    invoke-virtual {v0}, Landroidx/databinding/l;->b()Landroid/view/ViewStub;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->e:Landroidx/databinding/l;

    invoke-virtual {v0}, Landroidx/databinding/l;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lbtj;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mFailBinding:Lbtj;

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mFailBinding:Lbtj;

    iget-object v0, v0, Lbtj;->c:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment$5;-><init>(Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mFailBinding:Lbtj;

    iget-object v0, v0, Lbtj;->c:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 319
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mFailBinding:Lbtj;

    iget-object v0, v0, Lbtj;->d:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 320
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mFailBinding:Lbtj;

    iget-object v0, v0, Lbtj;->d:Lcom/xiaopeng/xui/widget/XLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 322
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->h:Landroid/webkit/WebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lbth;

    iget-object v0, v0, Lbth;->i:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    return-void
.end method
