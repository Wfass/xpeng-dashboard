.class final Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl;
.super Lcom/xiaopeng/xvs/xid/base/IClient;
.source "OAuthClientImpl.java"

# interfaces
.implements Lcom/xiaopeng/xvs/xid/auth/api/IOAuth;


# static fields
.field private static final TAG:Ljava/lang/String; = "OAuthClientImpl"

.field private static volatile mInstance:Lcom/xiaopeng/xvs/xid/auth/api/IOAuth;


# instance fields
.field private mContextWrapper:Lcom/xiaopeng/xvs/xid/auth/OAuthContextWrapper;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/xvs/xid/base/IClient;-><init>()V

    .line 24
    new-instance v0, Lcom/xiaopeng/xvs/xid/auth/OAuthContextWrapper;

    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getAccountManager()Landroid/accounts/AccountManager;

    move-result-object v1

    const-string/jumbo v2, "xp_car_cashier"

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/xvs/xid/auth/OAuthContextWrapper;-><init>(Ljava/lang/String;Landroid/accounts/AccountManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl;->mContextWrapper:Lcom/xiaopeng/xvs/xid/auth/OAuthContextWrapper;

    return-void
.end method

.method static getInstance()Lcom/xiaopeng/xvs/xid/auth/api/IOAuth;
    .locals 2

    .line 29
    sget-object v0, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl;->mInstance:Lcom/xiaopeng/xvs/xid/auth/api/IOAuth;

    if-nez v0, :cond_1

    .line 30
    const-class v0, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl;->mInstance:Lcom/xiaopeng/xvs/xid/auth/api/IOAuth;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl;

    invoke-direct {v1}, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl;-><init>()V

    sput-object v1, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl;->mInstance:Lcom/xiaopeng/xvs/xid/auth/api/IOAuth;

    .line 34
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 36
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl;->mInstance:Lcom/xiaopeng/xvs/xid/auth/api/IOAuth;

    return-object v0
.end method


# virtual methods
.method public requestCarBind(Landroid/app/Activity;)Lcom/xiaopeng/xvs/xid/base/IResponse;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 151
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getAccountApi()Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/xvs/xid/account/api/IAccount;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 155
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getAccountApi()Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/xvs/xid/account/api/IAccount;->login(Landroid/app/Activity;)V

    .line 157
    :cond_0
    new-instance p1, Lcom/xiaopeng/xvs/xid/auth/api/OAuthResponse;

    const/16 v0, 0x2713

    invoke-direct {p1, v0}, Lcom/xiaopeng/xvs/xid/auth/api/OAuthResponse;-><init>(I)V

    return-object p1

    .line 159
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl;->mContextWrapper:Lcom/xiaopeng/xvs/xid/auth/OAuthContextWrapper;

    const-string v1, "com.xiaopeng.accountservice.AUTH_TYPE_AUTH_CODE"

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/xvs/xid/auth/OAuthContextWrapper;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Lcom/xiaopeng/xvs/xid/base/IResponse;

    move-result-object p1

    return-object p1
.end method

.method public requestCarBind(Landroid/app/Activity;Lcom/xiaopeng/xvs/xid/base/ICallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/xiaopeng/xvs/xid/base/ICallback<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xvs/xid/base/IException;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl;->requestCarBind(Landroid/app/Activity;Lcom/xiaopeng/xvs/xid/base/ICallback;Landroid/os/Handler;)V

    return-void
.end method

.method public requestCarBind(Landroid/app/Activity;Lcom/xiaopeng/xvs/xid/base/ICallback;Landroid/os/Handler;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "callback",
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/xiaopeng/xvs/xid/base/ICallback<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xvs/xid/base/IException;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 119
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getAccountApi()Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/xvs/xid/account/api/IAccount;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 123
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getAccountApi()Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    move-result-object p3

    invoke-interface {p3, p1}, Lcom/xiaopeng/xvs/xid/account/api/IAccount;->login(Landroid/app/Activity;)V

    .line 125
    :cond_0
    new-instance p1, Lcom/xiaopeng/xvs/xid/auth/api/OAuthException;

    const/16 p3, 0x2713

    invoke-direct {p1, p3}, Lcom/xiaopeng/xvs/xid/auth/api/OAuthException;-><init>(I)V

    invoke-interface {p2, p1}, Lcom/xiaopeng/xvs/xid/base/ICallback;->onFail(Ljava/lang/Object;)V

    return-void

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl;->mContextWrapper:Lcom/xiaopeng/xvs/xid/auth/OAuthContextWrapper;

    new-instance v2, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl$2;-><init>(Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl;Lcom/xiaopeng/xvs/xid/base/ICallback;Landroid/app/Activity;)V

    const-string p1, "com.xiaopeng.accountservice.AUTH_TYPE_CHECK_VE_DATA_AUTH"

    invoke-virtual {v1, v0, p1, v2, p3}, Lcom/xiaopeng/xvs/xid/auth/OAuthContextWrapper;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Lcom/xiaopeng/xvs/xid/base/ICallback;Landroid/os/Handler;)V

    return-void
.end method

.method public requestOAuth(Landroid/app/Activity;)Lcom/xiaopeng/xvs/xid/base/IResponse;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 78
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getAccountApi()Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/xvs/xid/account/api/IAccount;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 82
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getAccountApi()Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/xvs/xid/account/api/IAccount;->login(Landroid/app/Activity;)V

    .line 84
    :cond_0
    new-instance p1, Lcom/xiaopeng/xvs/xid/auth/api/OAuthResponse;

    const/16 v0, 0x2713

    invoke-direct {p1, v0}, Lcom/xiaopeng/xvs/xid/auth/api/OAuthResponse;-><init>(I)V

    return-object p1

    .line 86
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl;->mContextWrapper:Lcom/xiaopeng/xvs/xid/auth/OAuthContextWrapper;

    const-string v1, "com.xiaopeng.accountservice.AUTH_TYPE_AUTH_CODE"

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/xvs/xid/auth/OAuthContextWrapper;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Lcom/xiaopeng/xvs/xid/base/IResponse;

    move-result-object p1

    return-object p1
.end method

.method public requestOAuth(Landroid/app/Activity;Lcom/xiaopeng/xvs/xid/base/ICallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/xiaopeng/xvs/xid/base/ICallback<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xvs/xid/base/IException;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl;->requestOAuth(Landroid/app/Activity;Lcom/xiaopeng/xvs/xid/base/ICallback;Landroid/os/Handler;)V

    return-void
.end method

.method public requestOAuth(Landroid/app/Activity;Lcom/xiaopeng/xvs/xid/base/ICallback;Landroid/os/Handler;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "callback",
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/xiaopeng/xvs/xid/base/ICallback<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xvs/xid/base/IException;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getAccountApi()Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/xvs/xid/account/api/IAccount;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 51
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getAccountApi()Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    move-result-object p3

    invoke-interface {p3, p1}, Lcom/xiaopeng/xvs/xid/account/api/IAccount;->login(Landroid/app/Activity;)V

    .line 53
    :cond_0
    new-instance p1, Lcom/xiaopeng/xvs/xid/auth/api/OAuthException;

    const/16 p3, 0x2713

    invoke-direct {p1, p3}, Lcom/xiaopeng/xvs/xid/auth/api/OAuthException;-><init>(I)V

    invoke-interface {p2, p1}, Lcom/xiaopeng/xvs/xid/base/ICallback;->onFail(Ljava/lang/Object;)V

    return-void

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl;->mContextWrapper:Lcom/xiaopeng/xvs/xid/auth/OAuthContextWrapper;

    new-instance v2, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl$1;-><init>(Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl;Lcom/xiaopeng/xvs/xid/base/ICallback;Landroid/app/Activity;)V

    const-string p1, "com.xiaopeng.accountservice.AUTH_TYPE_AUTH_CODE"

    invoke-virtual {v1, v0, p1, v2, p3}, Lcom/xiaopeng/xvs/xid/auth/OAuthContextWrapper;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Lcom/xiaopeng/xvs/xid/base/ICallback;Landroid/os/Handler;)V

    return-void
.end method

.method public requestOTP()Lcom/xiaopeng/xvs/xid/base/IResponse;
    .locals 3

    .line 106
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getAccountApi()Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/xvs/xid/account/api/IAccount;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/xiaopeng/xvs/xid/auth/api/OAuthResponse;

    const/16 v1, 0x2713

    invoke-direct {v0, v1}, Lcom/xiaopeng/xvs/xid/auth/api/OAuthResponse;-><init>(I)V

    return-object v0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl;->mContextWrapper:Lcom/xiaopeng/xvs/xid/auth/OAuthContextWrapper;

    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getAccountApi()Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaopeng/xvs/xid/account/api/IAccount;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    const-string v2, "com.xiaopeng.accountservice.AUTH_TYPE_AUTH_OTP"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xvs/xid/auth/OAuthContextWrapper;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Lcom/xiaopeng/xvs/xid/base/IResponse;

    move-result-object v0

    return-object v0
.end method

.method public requestOTP(Lcom/xiaopeng/xvs/xid/base/ICallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/xvs/xid/base/ICallback<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xvs/xid/base/IException;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl;->requestOTP(Lcom/xiaopeng/xvs/xid/base/ICallback;Landroid/os/Handler;)V

    return-void
.end method

.method public requestOTP(Lcom/xiaopeng/xvs/xid/base/ICallback;Landroid/os/Handler;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/xvs/xid/base/ICallback<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xvs/xid/base/IException;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 96
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getAccountApi()Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/xvs/xid/account/api/IAccount;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    .line 98
    new-instance p2, Lcom/xiaopeng/xvs/xid/auth/api/OAuthException;

    const/16 v0, 0x2713

    invoke-direct {p2, v0}, Lcom/xiaopeng/xvs/xid/auth/api/OAuthException;-><init>(I)V

    invoke-interface {p1, p2}, Lcom/xiaopeng/xvs/xid/base/ICallback;->onFail(Ljava/lang/Object;)V

    return-void

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl;->mContextWrapper:Lcom/xiaopeng/xvs/xid/auth/OAuthContextWrapper;

    const-string v2, "com.xiaopeng.accountservice.AUTH_TYPE_AUTH_OTP"

    invoke-virtual {v1, v0, v2, p1, p2}, Lcom/xiaopeng/xvs/xid/auth/OAuthContextWrapper;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Lcom/xiaopeng/xvs/xid/base/ICallback;Landroid/os/Handler;)V

    return-void
.end method

.method public requestToBindCar(Landroid/app/Activity;)Lcom/xiaopeng/xvs/xid/base/IResponse;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 200
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getAccountApi()Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/xvs/xid/account/api/IAccount;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 204
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getAccountApi()Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/xvs/xid/account/api/IAccount;->login(Landroid/app/Activity;)V

    .line 206
    :cond_0
    new-instance p1, Lcom/xiaopeng/xvs/xid/auth/api/OAuthResponse;

    const/16 v0, 0x2713

    invoke-direct {p1, v0}, Lcom/xiaopeng/xvs/xid/auth/api/OAuthResponse;-><init>(I)V

    return-object p1

    .line 208
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl;->mContextWrapper:Lcom/xiaopeng/xvs/xid/auth/OAuthContextWrapper;

    const-string v1, "com.xiaopeng.accountservice.AUTH_TYPE_AUTH_CODE"

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/xvs/xid/auth/OAuthContextWrapper;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Lcom/xiaopeng/xvs/xid/base/IResponse;

    move-result-object p1

    return-object p1
.end method

.method public requestToBindCar(Landroid/app/Activity;Lcom/xiaopeng/xvs/xid/base/ICallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/xiaopeng/xvs/xid/base/ICallback<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xvs/xid/base/IException;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 164
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl;->requestToBindCar(Landroid/app/Activity;Lcom/xiaopeng/xvs/xid/base/ICallback;Landroid/os/Handler;)V

    return-void
.end method

.method public requestToBindCar(Landroid/app/Activity;Lcom/xiaopeng/xvs/xid/base/ICallback;Landroid/os/Handler;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "callback",
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/xiaopeng/xvs/xid/base/ICallback<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xvs/xid/base/IException;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 169
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getAccountApi()Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/xvs/xid/account/api/IAccount;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 173
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getAccountApi()Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    move-result-object p3

    invoke-interface {p3, p1}, Lcom/xiaopeng/xvs/xid/account/api/IAccount;->login(Landroid/app/Activity;)V

    .line 175
    :cond_0
    new-instance p1, Lcom/xiaopeng/xvs/xid/auth/api/OAuthException;

    const/16 p3, 0x2713

    invoke-direct {p1, p3}, Lcom/xiaopeng/xvs/xid/auth/api/OAuthException;-><init>(I)V

    invoke-interface {p2, p1}, Lcom/xiaopeng/xvs/xid/base/ICallback;->onFail(Ljava/lang/Object;)V

    return-void

    .line 178
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl;->mContextWrapper:Lcom/xiaopeng/xvs/xid/auth/OAuthContextWrapper;

    new-instance v2, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl$3;

    invoke-direct {v2, p0, p2, p1}, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl$3;-><init>(Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl;Lcom/xiaopeng/xvs/xid/base/ICallback;Landroid/app/Activity;)V

    const-string p1, "com.xiaopeng.accountservice.AUTH_TYPE_BIND_VE_DATA_AUTH"

    invoke-virtual {v1, v0, p1, v2, p3}, Lcom/xiaopeng/xvs/xid/auth/OAuthContextWrapper;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Lcom/xiaopeng/xvs/xid/base/ICallback;Landroid/os/Handler;)V

    return-void
.end method

.method public requestToDeleteBindCar(Landroid/app/Activity;)Lcom/xiaopeng/xvs/xid/base/IResponse;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 249
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getAccountApi()Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/xvs/xid/account/api/IAccount;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 253
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getAccountApi()Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/xvs/xid/account/api/IAccount;->login(Landroid/app/Activity;)V

    .line 255
    :cond_0
    new-instance p1, Lcom/xiaopeng/xvs/xid/auth/api/OAuthResponse;

    const/16 v0, 0x2713

    invoke-direct {p1, v0}, Lcom/xiaopeng/xvs/xid/auth/api/OAuthResponse;-><init>(I)V

    return-object p1

    .line 257
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl;->mContextWrapper:Lcom/xiaopeng/xvs/xid/auth/OAuthContextWrapper;

    const-string v1, "com.xiaopeng.accountservice.AUTH_TYPE_AUTH_CODE"

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/xvs/xid/auth/OAuthContextWrapper;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Lcom/xiaopeng/xvs/xid/base/IResponse;

    move-result-object p1

    return-object p1
.end method

.method public requestToDeleteBindCar(Landroid/app/Activity;Lcom/xiaopeng/xvs/xid/base/ICallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/xiaopeng/xvs/xid/base/ICallback<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xvs/xid/base/IException;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 213
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl;->requestToDeleteBindCar(Landroid/app/Activity;Lcom/xiaopeng/xvs/xid/base/ICallback;Landroid/os/Handler;)V

    return-void
.end method

.method public requestToDeleteBindCar(Landroid/app/Activity;Lcom/xiaopeng/xvs/xid/base/ICallback;Landroid/os/Handler;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "callback",
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/xiaopeng/xvs/xid/base/ICallback<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xvs/xid/base/IException;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 218
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getAccountApi()Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/xvs/xid/account/api/IAccount;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 222
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getAccountApi()Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    move-result-object p3

    invoke-interface {p3, p1}, Lcom/xiaopeng/xvs/xid/account/api/IAccount;->login(Landroid/app/Activity;)V

    .line 224
    :cond_0
    new-instance p1, Lcom/xiaopeng/xvs/xid/auth/api/OAuthException;

    const/16 p3, 0x2713

    invoke-direct {p1, p3}, Lcom/xiaopeng/xvs/xid/auth/api/OAuthException;-><init>(I)V

    invoke-interface {p2, p1}, Lcom/xiaopeng/xvs/xid/base/ICallback;->onFail(Ljava/lang/Object;)V

    return-void

    .line 227
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl;->mContextWrapper:Lcom/xiaopeng/xvs/xid/auth/OAuthContextWrapper;

    new-instance v2, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl$4;

    invoke-direct {v2, p0, p2, p1}, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl$4;-><init>(Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl;Lcom/xiaopeng/xvs/xid/base/ICallback;Landroid/app/Activity;)V

    const-string p1, "com.xiaopeng.accountservice.AUTH_TYPE_DELETE_VE_DATA_AUTH_RECORD"

    invoke-virtual {v1, v0, p1, v2, p3}, Lcom/xiaopeng/xvs/xid/auth/OAuthContextWrapper;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Lcom/xiaopeng/xvs/xid/base/ICallback;Landroid/os/Handler;)V

    return-void
.end method
