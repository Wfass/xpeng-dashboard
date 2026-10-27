.class public Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;
.super Ljava/lang/Object;
.source "MediaBrowserHandler.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/xapp/media/handler/IMediaHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler$RequestBean;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaBrowserHandler"


# instance fields
.field private BrowserConnectionCallback:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

.field private mBrowser:Landroid/support/v4/media/MediaBrowserCompat;

.field private mContext:Landroid/content/Context;

.field private mRequestBean:Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler$RequestBean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler$2;-><init>(Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;->BrowserConnectionCallback:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    .line 20
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;Landroid/os/Bundle;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 13
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;->getResultCode(Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;)Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler$RequestBean;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;

    .line 13
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;->mRequestBean:Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler$RequestBean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;)Landroid/support/v4/media/MediaBrowserCompat;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;

    .line 13
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;->mBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;

    .line 13
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;->executeRequest()V

    return-void
.end method

.method private executeRequest()V
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;->mRequestBean:Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler$RequestBean;

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "MediaBrowserHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeRequest command"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;->mRequestBean:Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler$RequestBean;

    iget-object v2, v2, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler$RequestBean;->mCommand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "search_word"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;->mRequestBean:Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler$RequestBean;

    iget-object v2, v2, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler$RequestBean;->mCommand:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v1, "auto_play"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;->mBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;->getSearchNLPAction()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler$1;

    invoke-direct {v3, p0}, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/media/MediaBrowserCompat;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserCompat$CustomActionCallback;)V

    .line 53
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private getResultCode(Landroid/os/Bundle;)I
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 74
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 75
    const-string/jumbo v1, "xm_err_code"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 76
    .local v0, "code":I
    return v0

    .line 78
    .end local v0    # "code":I
    :cond_0
    return v0
.end method

.method private initBrowser()V
    .locals 5

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;->mBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;->getBrowserComponentName()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;->BrowserConnectionCallback:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/media/MediaBrowserCompat;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;->mBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method public enterApp(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 62
    return-void
.end method

.method public getBrowserComponentName()Landroid/content/ComponentName;
    .locals 3

    .line 70
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.ximalaya.ting.android.car"

    const-string v2, "com.ximalaya.ting.android.car.sdk.XmMediaBrowserService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .line 66
    const-string v0, "com.ximalaya.ting.android.car"

    return-object v0
.end method

.method public getSearchNLPAction()Ljava/lang/String;
    .locals 1

    .line 56
    const-string v0, "com.ximalaya.ting.android.car.action.SEARCH_BY_NLP"

    return-object v0
.end method

.method public mediaPlay(ILjava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/media/Callback;)V
    .locals 8
    .param p1, "displayId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/xiaopeng/xuiservice/xapp/media/Callback;

    .line 25
    const-string v0, "MediaBrowserHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mediaPlay screenId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &command:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler$RequestBean;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler$RequestBean;-><init>(Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;ILjava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/media/Callback;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;->mRequestBean:Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler$RequestBean;

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;->initBrowser()V

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;->mBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;->executeRequest()V

    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;->mBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat;->connect()V

    .line 33
    :goto_0
    return-void
.end method
