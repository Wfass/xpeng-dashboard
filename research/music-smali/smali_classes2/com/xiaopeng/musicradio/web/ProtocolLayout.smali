.class public Lcom/xiaopeng/musicradio/web/ProtocolLayout;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;
.source "ProtocolLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/web/ProtocolLayout$b;,
        Lcom/xiaopeng/musicradio/web/ProtocolLayout$a;,
        Lcom/xiaopeng/musicradio/web/ProtocolLayout$c;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VipBuyLayout"

.field private static final TIME_OUT_DURATION:J = 0x7530L


# instance fields
.field private mBack:Lcom/xiaopeng/xui/widget/XImageButton;

.field private mContext:Landroid/content/Context;

.field private mCurrentUrl:Ljava/lang/String;

.field private mDayUrl:Ljava/lang/String;

.field private mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

.field private mLoadingFailed:Z

.field private mNightUrl:Ljava/lang/String;

.field private mTextZoom:I

.field private mThemeChangeListener:Lcom/xiaopeng/musicradio/web/ProtocolLayout$b;

.field private mTimeOutDisposable:Lio/reactivex/disposables/Disposable;

.field private mTimestamp:J

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewInit:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 82
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x64

    .line 77
    iput v0, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mTextZoom:I

    .line 83
    iput-object p1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x64

    .line 77
    iput p2, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mTextZoom:I

    .line 88
    iput-object p1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0x64

    .line 77
    iput p2, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mTextZoom:I

    .line 93
    iput-object p1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/web/ProtocolLayout;)Lcom/xiaopeng/musicradio/widget/LoadingTipsView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/web/ProtocolLayout;)J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mTimestamp:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/xiaopeng/musicradio/web/ProtocolLayout;J)J
    .locals 0

    .line 56
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mTimestamp:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/web/ProtocolLayout;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mLoadingFailed:Z

    return p0
.end method

.method static synthetic access$302(Lcom/xiaopeng/musicradio/web/ProtocolLayout;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mLoadingFailed:Z

    return p1
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/web/ProtocolLayout;Z)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->onLoadingFinished(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/web/ProtocolLayout;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->setupTimeOut()V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/web/ProtocolLayout;)Landroid/webkit/WebView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/musicradio/web/ProtocolLayout;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->onLoadingTimeOut()V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/musicradio/web/ProtocolLayout;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->showLoadingTip(I)V

    return-void
.end method

.method private clearTimeOutDisposable()V
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mTimeOutDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mTimeOutDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    const/4 v0, 0x0

    .line 369
    iput-object v0, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mTimeOutDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private hideLoading()V
    .locals 1

    const/4 v0, 0x0

    .line 373
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->showLoadingTip(I)V

    return-void
.end method

.method private initWebView()V
    .locals 6

    .line 194
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mWebViewInit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 197
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mWebViewInit:Z

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 199
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

    .line 200
    iget-object v1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    .line 202
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 204
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLongClickable(Z)V

    .line 205
    new-instance v3, Lcom/xiaopeng/musicradio/web/ProtocolLayout$2;

    invoke-direct {v3, p0}, Lcom/xiaopeng/musicradio/web/ProtocolLayout$2;-><init>(Lcom/xiaopeng/musicradio/web/ProtocolLayout;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 211
    new-instance v3, Lcom/xiaopeng/musicradio/web/ProtocolLayout$c;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/xiaopeng/musicradio/web/ProtocolLayout$c;-><init>(Lcom/xiaopeng/musicradio/web/ProtocolLayout;Lcom/xiaopeng/musicradio/web/ProtocolLayout$1;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 212
    new-instance v3, Lcom/xiaopeng/musicradio/web/ProtocolLayout$a;

    invoke-direct {v3, p0, v1}, Lcom/xiaopeng/musicradio/web/ProtocolLayout$a;-><init>(Lcom/xiaopeng/musicradio/web/ProtocolLayout;Landroid/webkit/WebView;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 213
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 214
    iget v4, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mTextZoom:I

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    const-string v4, "utf-8"

    .line 215
    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 217
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 218
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 220
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 222
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 224
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 226
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 228
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 229
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 230
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 232
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    return-void
.end method

.method public static isSkipError(Landroid/webkit/WebResourceError;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 331
    invoke-virtual {p0}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->isSkipError(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSkipError(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 323
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "net::ERR_NAME_NOT_RESOLVED"

    .line 324
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private onLoadingFinished(Z)V
    .locals 5

    .line 348
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->clearTimeOutDisposable()V

    if-eqz p1, :cond_0

    .line 350
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setAlpha(F)V

    const/4 v0, 0x2

    .line 351
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->showLoadingTip(I)V

    goto :goto_0

    .line 353
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/web/ProtocolLayout$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/web/ProtocolLayout$4;-><init>(Lcom/xiaopeng/musicradio/web/ProtocolLayout;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lbql;->b(Ljava/lang/Runnable;J)V

    .line 362
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadingFinished:time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mTimestamp:J

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

    .line 377
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    move-result v0

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadingTimeOut:progress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mTimestamp:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VipBuyLayout"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    .line 380
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mLoadingFailed:Z

    .line 381
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    :cond_0
    return-void
.end method

.method private setupTimeOut()V
    .locals 3

    .line 337
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7530

    invoke-static {v1, v2, v0}, Lio/reactivex/Flowable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 338
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/web/ProtocolLayout$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/web/ProtocolLayout$3;-><init>(Lcom/xiaopeng/musicradio/web/ProtocolLayout;)V

    .line 339
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mTimeOutDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private showLoadingTip(I)V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    goto :goto_1

    .line 171
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    :goto_1
    return-void
.end method

.method private updateCacheMode()V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 164
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCacheMode:cacheMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VipBuyLayout"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

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

    .line 118
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->dialog_back:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mBack:Lcom/xiaopeng/xui/widget/XImageButton;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "generalAct"

    const-string v2, "System.Return"

    .line 120
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mBack:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->addProps(Lbxq;Ljava/util/Map;)V

    .line 122
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->web_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mWebView:Landroid/webkit/WebView;

    .line 123
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->loading_item:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setAutoClickLoadingEnable(Z)V

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 112
    sget v0, Lcom/xiaopeng/musicradio/common/k$f;->protocol_layout:I

    return v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public loadUrl()V
    .locals 2

    const/4 v0, 0x0

    .line 146
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mLoadingFailed:Z

    const/4 v0, 0x1

    .line 147
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->showLoadingTip(I)V

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setAlpha(F)V

    .line 149
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->initWebView()V

    .line 150
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->updateCacheMode()V

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 152
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->clearTimeOutDisposable()V

    const-wide/16 v0, 0x0

    .line 153
    iput-wide v0, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mTimestamp:J

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mCurrentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 387
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 390
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lapo;->d(Landroid/content/Context;)Z

    move-result v0

    .line 391
    iget-object v1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mThemeChangeListener:Lcom/xiaopeng/musicradio/web/ProtocolLayout$b;

    if-eqz v1, :cond_0

    .line 392
    invoke-interface {v1, v0}, Lcom/xiaopeng/musicradio/web/ProtocolLayout$b;->a(Z)V

    return-void

    .line 396
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mDayUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mNightUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 400
    :cond_1
    invoke-static {p1}, Lcom/xiaopeng/xui/theme/XThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    .line 402
    iget-object p1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mNightUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mCurrentUrl:Ljava/lang/String;

    goto :goto_0

    .line 404
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mDayUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mCurrentUrl:Ljava/lang/String;

    .line 406
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->loadUrl()V

    :cond_3
    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 179
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public setCancleListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mBack:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mDayUrl:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mNightUrl:Ljava/lang/String;

    .line 99
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p1}, Lapo;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 100
    iget-object p1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mNightUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mCurrentUrl:Ljava/lang/String;

    goto :goto_0

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mDayUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mCurrentUrl:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    new-instance v1, Lcom/xiaopeng/musicradio/web/ProtocolLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/web/ProtocolLayout$1;-><init>(Lcom/xiaopeng/musicradio/web/ProtocolLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnThemeChangeListener(Lcom/xiaopeng/musicradio/web/ProtocolLayout$b;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mThemeChangeListener:Lcom/xiaopeng/musicradio/web/ProtocolLayout$b;

    return-void
.end method

.method public setTextZoom(I)V
    .locals 0

    .line 107
    iput p1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->mTextZoom:I

    return-void
.end method

.method protected setView()V
    .locals 0

    return-void
.end method
