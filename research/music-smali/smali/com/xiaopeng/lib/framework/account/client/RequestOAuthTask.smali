.class public Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;
.super Ljava/lang/Object;
.source "RequestOAuthTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final REQ_OAUTH_MAX_TIMEOUT:J = 0xea60L

.field private static final REQ_OAUTH_TIMEOUT:J = 0x1f40L

.field private static final TAG:Ljava/lang/String; = "RequestOAuthTask"


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mAppLifeCycleHelper:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper;

.field private mApplication:Landroid/app/Application;

.field private mCallback:Lcom/xiaopeng/lib/framework/account/client/RequestOAuthCallback;

.field private mTimeout:J

.field private mXpAccountService:Lcom/xiaopeng/lib/framework/account/IXpAccountService;


# direct methods
.method constructor <init>(Landroid/app/Application;Ljava/lang/String;Lcom/xiaopeng/lib/framework/account/IXpAccountService;Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/lib/framework/account/IXpAccountService;",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback<",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IAuthInfo;",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IError;",
            ">;J)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthCallback;

    invoke-direct {v0, p4}, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthCallback;-><init>(Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;->mCallback:Lcom/xiaopeng/lib/framework/account/client/RequestOAuthCallback;

    .line 36
    iput-object p3, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;->mXpAccountService:Lcom/xiaopeng/lib/framework/account/IXpAccountService;

    .line 37
    iput-object p2, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;->mAppId:Ljava/lang/String;

    .line 38
    new-instance p2, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper;

    invoke-direct {p2, p1}, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper;-><init>(Landroid/app/Application;)V

    iput-object p2, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;->mAppLifeCycleHelper:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper;

    .line 39
    iput-wide p5, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;->mTimeout:J

    .line 40
    iget-wide p2, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;->mTimeout:J

    const-wide/16 p4, 0x0

    cmp-long p4, p2, p4

    if-lez p4, :cond_0

    const-wide/32 p4, 0xea60

    cmp-long p2, p2, p4

    if-lez p2, :cond_1

    :cond_0
    const-wide/16 p2, 0x1f40

    .line 41
    iput-wide p2, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;->mTimeout:J

    .line 43
    :cond_1
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;->mApplication:Landroid/app/Application;

    .line 44
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;->mAppLifeCycleHelper:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper;

    new-instance p2, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask$1;

    invoke-direct {p2, p0}, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask$1;-><init>(Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;)V

    invoke-virtual {p1, p2}, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper;->setOnAppTopListener(Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$OnAppTopListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;)J
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;->mTimeout:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;)Lcom/xiaopeng/lib/framework/account/client/RequestOAuthCallback;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;->mCallback:Lcom/xiaopeng/lib/framework/account/client/RequestOAuthCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;)Landroid/app/Application;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;->mApplication:Landroid/app/Application;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;)Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;->mAppLifeCycleHelper:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;->onAuthorizeFinished()V

    return-void
.end method

.method private onAuthorizeFinished()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;->mAppLifeCycleHelper:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper;->setOnAppTopListener(Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$OnAppTopListener;)V

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;->mAppLifeCycleHelper:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;->mApplication:Landroid/app/Application;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper;->unregisterCallbacks(Landroid/app/Application;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    .line 60
    :try_start_0
    iget-object v3, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;->mXpAccountService:Lcom/xiaopeng/lib/framework/account/IXpAccountService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "RequestOAuthTask"

    if-nez v3, :cond_0

    :try_start_1
    const-string v3, "mXpAccountService is null.errCode=1"

    .line 61
    invoke-static {v4, v3}, Lcom/xiaopeng/lib/framework/account/utils/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v3, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;->mCallback:Lcom/xiaopeng/lib/framework/account/client/RequestOAuthCallback;

    invoke-virtual {v3, v2, v0, v1}, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthCallback;->dispatchMessage(IJ)V

    return-void

    .line 66
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requestOAuth timestamp="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ";mAppId="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;->mAppId:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/xiaopeng/lib/framework/account/utils/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v3, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;->mXpAccountService:Lcom/xiaopeng/lib/framework/account/IXpAccountService;

    iget-object v4, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;->mAppId:Ljava/lang/String;

    new-instance v7, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask$2;

    invoke-direct {v7, p0}, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask$2;-><init>(Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;)V

    invoke-interface {v3, v5, v6, v4, v7}, Lcom/xiaopeng/lib/framework/account/IXpAccountService;->requestOAuth(JLjava/lang/String;Lcom/xiaopeng/lib/framework/account/IXpCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 102
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 103
    iget-object v3, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;->mCallback:Lcom/xiaopeng/lib/framework/account/client/RequestOAuthCallback;

    invoke-virtual {v3, v2, v0, v1}, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthCallback;->dispatchMessage(IJ)V

    :goto_0
    return-void
.end method
