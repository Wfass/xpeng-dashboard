.class public Lcom/xiaopeng/lib/framework/account/AccountImpl;
.super Ljava/lang/Object;
.source "AccountImpl.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IAccount;


# static fields
.field private static volatile sAccount:Lcom/xiaopeng/lib/framework/account/AccountImpl;

.field private static sInnerProxy:Lcom/xiaopeng/lib/framework/account/IAccountProxy;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AccountImpl"

    .line 23
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/account/AccountImpl;->TAG:Ljava/lang/String;

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/account/AccountImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/lib/framework/account/AccountImpl;
    .locals 2

    .line 29
    sget-object v0, Lcom/xiaopeng/lib/framework/account/AccountImpl;->sAccount:Lcom/xiaopeng/lib/framework/account/AccountImpl;

    if-nez v0, :cond_1

    .line 30
    const-class v0, Lcom/xiaopeng/lib/framework/account/AccountImpl;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/framework/account/AccountImpl;->sAccount:Lcom/xiaopeng/lib/framework/account/AccountImpl;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/xiaopeng/lib/framework/account/AccountImpl;

    invoke-direct {v1}, Lcom/xiaopeng/lib/framework/account/AccountImpl;-><init>()V

    sput-object v1, Lcom/xiaopeng/lib/framework/account/AccountImpl;->sAccount:Lcom/xiaopeng/lib/framework/account/AccountImpl;

    .line 33
    invoke-static {}, Lcom/xiaopeng/lib/framework/account/AccountProxyFactory;->getInstance()Lcom/xiaopeng/lib/framework/account/AccountProxyFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/lib/framework/account/AccountProxyFactory;->getProxy()Lcom/xiaopeng/lib/framework/account/IAccountProxy;

    move-result-object v1

    sput-object v1, Lcom/xiaopeng/lib/framework/account/AccountImpl;->sInnerProxy:Lcom/xiaopeng/lib/framework/account/IAccountProxy;

    .line 35
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 37
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/lib/framework/account/AccountImpl;->sAccount:Lcom/xiaopeng/lib/framework/account/AccountImpl;

    return-object v0
.end method

.method private release(Landroid/content/Context;)V
    .locals 2

    const-string v0, "AccountImpl"

    const-string v1, "release"

    .line 53
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/account/utils/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/xiaopeng/lib/framework/account/AccountImpl;->sInnerProxy:Lcom/xiaopeng/lib/framework/account/IAccountProxy;

    invoke-interface {v0, p1}, Lcom/xiaopeng/lib/framework/account/IAccountProxy;->release(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getUserInfo()Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;
    .locals 2

    const-string v0, "AccountImpl"

    const-string v1, "getUserInfo"

    .line 78
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/account/utils/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/xiaopeng/lib/framework/account/AccountImpl;->sInnerProxy:Lcom/xiaopeng/lib/framework/account/IAccountProxy;

    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/account/IAccountProxy;->getUserInfo()Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/app/Application;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/lib/framework/account/AccountImpl;->init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "AccountImpl"

    const-string v1, "init"

    .line 47
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/account/utils/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/xiaopeng/lib/framework/account/AccountImpl;->sInnerProxy:Lcom/xiaopeng/lib/framework/account/IAccountProxy;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/lib/framework/account/IAccountProxy;->init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public login()V
    .locals 2

    const-string v0, "AccountImpl"

    const-string v1, "login"

    .line 84
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/account/utils/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcom/xiaopeng/lib/framework/account/AccountImpl;->sInnerProxy:Lcom/xiaopeng/lib/framework/account/IAccountProxy;

    sget-object v1, Lcom/xiaopeng/lib/framework/account/action/AccountAction;->QR_LOGIN:Lcom/xiaopeng/lib/framework/account/action/AccountAction;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/account/IAccountProxy;->sendAction(Lcom/xiaopeng/lib/framework/account/action/AccountAction;)V

    return-void
.end method

.method public logout()V
    .locals 2

    const-string v0, "AccountImpl"

    const-string v1, "logout"

    .line 90
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/account/utils/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    sget-object v0, Lcom/xiaopeng/lib/framework/account/AccountImpl;->sInnerProxy:Lcom/xiaopeng/lib/framework/account/IAccountProxy;

    sget-object v1, Lcom/xiaopeng/lib/framework/account/action/AccountAction;->LOGOUT:Lcom/xiaopeng/lib/framework/account/action/AccountAction;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/account/IAccountProxy;->sendAction(Lcom/xiaopeng/lib/framework/account/action/AccountAction;)V

    return-void
.end method

.method public requestOAuth(Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback<",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IAuthInfo;",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IError;",
            ">;)V"
        }
    .end annotation

    const-string v0, "AccountImpl"

    const-string v1, "requestOAuth"

    .line 59
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/account/utils/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lcom/xiaopeng/lib/framework/account/AccountImpl;->sInnerProxy:Lcom/xiaopeng/lib/framework/account/IAccountProxy;

    invoke-interface {v0, p1}, Lcom/xiaopeng/lib/framework/account/IAccountProxy;->requestOAuth(Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;)V

    return-void
.end method

.method public requestOAuth(Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback<",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IAuthInfo;",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IError;",
            ">;)V"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestOAuth appID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccountImpl"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/framework/account/utils/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/xiaopeng/lib/framework/account/AccountImpl;->sInnerProxy:Lcom/xiaopeng/lib/framework/account/IAccountProxy;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/lib/framework/account/IAccountProxy;->requestOAuth(Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;)V

    return-void
.end method

.method public requestOTP(Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback<",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IOTPInfo;",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IError;",
            ">;)V"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestOTP deviceID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccountImpl"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/framework/account/utils/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/xiaopeng/lib/framework/account/AccountImpl;->sInnerProxy:Lcom/xiaopeng/lib/framework/account/IAccountProxy;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/lib/framework/account/IAccountProxy;->requestOTP(Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;)V

    return-void
.end method
