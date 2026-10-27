.class public Lcom/xiaopeng/musicradio/web/WebViewLayout;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;
.source "WebViewLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/web/WebViewLayout$b;,
        Lcom/xiaopeng/musicradio/web/WebViewLayout$a;,
        Lcom/xiaopeng/musicradio/web/WebViewLayout$c;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VipBuyLayout"

.field private static final TIME_OUT_DURATION:J = 0x7530L


# instance fields
.field private isFilterTooManyRedirectsError:Z

.field private mBack:Lcom/xiaopeng/xui/widget/XImageButton;

.field private mContext:Landroid/content/Context;

.field private mCurrentUrl:Ljava/lang/String;

.field private mDayUrl:Ljava/lang/String;

.field private mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

.field private mLoadingFailed:Z

.field private mNightUrl:Ljava/lang/String;

.field private mTextZoom:I

.field private mThemeChangeListener:Lcom/xiaopeng/musicradio/web/WebViewLayout$b;

.field private mTimeOutDisposable:Lio/reactivex/disposables/Disposable;

.field private mTimestamp:J

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewInit:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 83
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x64

    .line 77
    iput v0, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mTextZoom:I

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->isFilterTooManyRedirectsError:Z

    .line 84
    iput-object p1, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x64

    .line 77
    iput p2, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mTextZoom:I

    const/4 p2, 0x1

    .line 80
    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->isFilterTooManyRedirectsError:Z

    .line 89
    iput-object p1, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0x64

    .line 77
    iput p2, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mTextZoom:I

    const/4 p2, 0x1

    .line 80
    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->isFilterTooManyRedirectsError:Z

    .line 94
    iput-object p1, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/web/WebViewLayout;)Lcom/xiaopeng/musicradio/widget/LoadingTipsView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/web/WebViewLayout;)Landroid/webkit/WebView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/web/WebViewLayout;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->isFilterTooManyRedirectsError:Z

    return p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/web/WebViewLayout;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mLoadingFailed:Z

    return p0
.end method

.method static synthetic access$402(Lcom/xiaopeng/musicradio/web/WebViewLayout;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mLoadingFailed:Z

    return p1
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/web/WebViewLayout;Z)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->onLoadingFinished(Z)V

    return-void
.end method

.method static synthetic access$602(Lcom/xiaopeng/musicradio/web/WebViewLayout;J)J
    .locals 0

    .line 56
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mTimestamp:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/xiaopeng/musicradio/web/WebViewLayout;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->setupTimeOut()V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/musicradio/web/WebViewLayout;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->onLoadingTimeOut()V

    return-void
.end method

.method private clearTimeOutDisposable()V
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mTimeOutDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mTimeOutDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    const/4 v0, 0x0

    .line 398
    iput-object v0, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mTimeOutDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private hideLoading()V
    .locals 1

    const/4 v0, 0x0

    .line 402
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->showLoadingTip(I)V

    return-void
.end method

.method private initWebView()V
    .locals 6

    .line 204
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mWebViewInit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 207
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mWebViewInit:Z

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 209
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

    const-string v2, "VipBuyLayout"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    .line 212
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 214
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLongClickable(Z)V

    .line 215
    new-instance v3, Lcom/xiaopeng/musicradio/web/WebViewLayout$3;

    invoke-direct {v3, p0}, Lcom/xiaopeng/musicradio/web/WebViewLayout$3;-><init>(Lcom/xiaopeng/musicradio/web/WebViewLayout;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 221
    new-instance v3, Lcom/xiaopeng/musicradio/web/WebViewLayout$c;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/xiaopeng/musicradio/web/WebViewLayout$c;-><init>(Lcom/xiaopeng/musicradio/web/WebViewLayout;Lcom/xiaopeng/musicradio/web/WebViewLayout$1;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 222
    new-instance v3, Lcom/xiaopeng/musicradio/web/WebViewLayout$a;

    invoke-direct {v3, p0, v1}, Lcom/xiaopeng/musicradio/web/WebViewLayout$a;-><init>(Lcom/xiaopeng/musicradio/web/WebViewLayout;Landroid/webkit/WebView;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 223
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 224
    iget v4, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mTextZoom:I

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    const-string v4, "utf-8"

    .line 225
    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 227
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 228
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 230
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 232
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 234
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 236
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 238
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 239
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 240
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 242
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 243
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    .line 245
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    return-void
.end method

.method public static isSkipError(Landroid/webkit/WebResourceError;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 360
    invoke-virtual {p0}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->isSkipError(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSkipError(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 352
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "net::ERR_NAME_NOT_RESOLVED"

    .line 353
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private onLoadingFinished(Z)V
    .locals 5

    .line 377
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->clearTimeOutDisposable()V

    if-eqz p1, :cond_0

    .line 379
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    const/4 v0, 0x2

    .line 380
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->showLoadingTip(I)V

    goto :goto_0

    .line 382
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/web/WebViewLayout$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/web/WebViewLayout$5;-><init>(Lcom/xiaopeng/musicradio/web/WebViewLayout;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lbql;->b(Ljava/lang/Runnable;J)V

    .line 391
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadingFinished:time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mTimestamp:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",fail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VipBuyLayout"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private onLoadingTimeOut()V
    .locals 6

    .line 406
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    move-result v0

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadingTimeOut:progress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mTimestamp:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VipBuyLayout"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    .line 409
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mLoadingFailed:Z

    .line 410
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    :cond_0
    return-void
.end method

.method private setupTimeOut()V
    .locals 3

    .line 366
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7530

    invoke-static {v1, v2, v0}, Lio/reactivex/Flowable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 367
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/web/WebViewLayout$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/web/WebViewLayout$4;-><init>(Lcom/xiaopeng/musicradio/web/WebViewLayout;)V

    .line 368
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mTimeOutDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private updateCacheMode()V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCacheMode:cacheMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VipBuyLayout"

    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    return-void
.end method


# virtual methods
.method protected createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected findView()V
    .locals 3

    .line 119
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->dialog_back:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mBack:Lcom/xiaopeng/xui/widget/XImageButton;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "generalAct"

    const-string v2, "System.Return"

    .line 121
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v1, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mBack:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->addProps(Lbxq;Ljava/util/Map;)V

    .line 123
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->web_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mWebView:Landroid/webkit/WebView;

    .line 124
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->loading_item:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setAutoClickLoadingEnable(Z)V

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 113
    sget v0, Lcom/xiaopeng/musicradio/common/k$f;->webview_layout:I

    return v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public isDoTooManyRedirectsError(Z)V
    .locals 0

    .line 261
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->isFilterTooManyRedirectsError:Z

    return-void
.end method

.method public loadUrl()V
    .locals 2

    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mLoadingFailed:Z

    const/4 v0, 0x1

    .line 148
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->showLoadingTip(I)V

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 150
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->initWebView()V

    .line 151
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->updateCacheMode()V

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mCurrentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 416
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 419
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lapo;->d(Landroid/content/Context;)Z

    move-result v0

    .line 420
    iget-object v1, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mThemeChangeListener:Lcom/xiaopeng/musicradio/web/WebViewLayout$b;

    if-eqz v1, :cond_0

    .line 421
    invoke-interface {v1, v0}, Lcom/xiaopeng/musicradio/web/WebViewLayout$b;->a(Z)V

    return-void

    .line 425
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mDayUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mNightUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 429
    :cond_1
    invoke-static {p1}, Lcom/xiaopeng/xui/theme/XThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    .line 431
    iget-object p1, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mNightUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mCurrentUrl:Ljava/lang/String;

    goto :goto_0

    .line 433
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mDayUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mCurrentUrl:Ljava/lang/String;

    .line 435
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->loadUrl()V

    :cond_3
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 250
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onDetachedFromWindow()V

    .line 251
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->releaseVui()V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 189
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    .line 256
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onViewRemoved(Landroid/view/View;)V

    return-void
.end method

.method public setCancleListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mBack:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mDayUrl:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mNightUrl:Ljava/lang/String;

    .line 100
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p1}, Lapo;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    iget-object p1, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mNightUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mCurrentUrl:Ljava/lang/String;

    goto :goto_0

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mDayUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mCurrentUrl:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    new-instance v1, Lcom/xiaopeng/musicradio/web/WebViewLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/web/WebViewLayout$1;-><init>(Lcom/xiaopeng/musicradio/web/WebViewLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnThemeChangeListener(Lcom/xiaopeng/musicradio/web/WebViewLayout$b;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mThemeChangeListener:Lcom/xiaopeng/musicradio/web/WebViewLayout$b;

    return-void
.end method

.method public setTextZoom(I)V
    .locals 0

    .line 108
    iput p1, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout;->mTextZoom:I

    return-void
.end method

.method protected setView()V
    .locals 0

    return-void
.end method

.method public showLoadingTip(I)V
    .locals 1

    .line 169
    new-instance v0, Lcom/xiaopeng/musicradio/web/WebViewLayout$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/web/WebViewLayout$2;-><init>(Lcom/xiaopeng/musicradio/web/WebViewLayout;I)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method
