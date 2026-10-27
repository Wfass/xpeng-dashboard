.class final Lcom/xiaopeng/xvs/xid/auth/OAuthContextWrapper;
.super Ljava/lang/Object;
.source "OAuthContextWrapper.java"

# interfaces
.implements Lcom/xiaopeng/xvs/xid/base/IWrapper;


# static fields
.field private static final TAG:Ljava/lang/String; = "OAuthContextWrapper"


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mAppId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/accounts/AccountManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appId",
            "accountManager"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/xiaopeng/xvs/xid/auth/OAuthContextWrapper;->mAccountManager:Landroid/accounts/AccountManager;

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/xvs/xid/auth/OAuthContextWrapper;->mAppId:Ljava/lang/String;

    return-void
.end method

.method private parseToken(Landroid/accounts/AccountManagerFuture;)Lcom/xiaopeng/xvs/xid/base/IResponse;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "future"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)",
            "Lcom/xiaopeng/xvs/xid/base/IResponse;"
        }
    .end annotation

    const-string v0, "OAuthContextWrapper"

    .line 75
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "authtoken"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "errorMessage"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v3, "errorCode"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 78
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 80
    new-instance p1, Lcom/xiaopeng/xvs/xid/auth/api/OAuthResponse;

    invoke-direct {p1, v1}, Lcom/xiaopeng/xvs/xid/auth/api/OAuthResponse;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 82
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseToken errCode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ";errMsg="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xvs/xid/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v1, Lcom/xiaopeng/xvs/xid/auth/api/OAuthResponse;

    invoke-direct {v1, p1}, Lcom/xiaopeng/xvs/xid/auth/api/OAuthResponse;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    .line 86
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseToken exception e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xvs/xid/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v0, Lcom/xiaopeng/xvs/xid/auth/api/OAuthResponse;

    const v1, 0x15ff4

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/xiaopeng/xvs/xid/auth/api/OAuthResponse;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method getAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Lcom/xiaopeng/xvs/xid/base/IResponse;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "account",
            "authTokenType"
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAuthToken account.name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";authTokenType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OAuthContextWrapper"

    invoke-static {v1, v0}, Lcom/xiaopeng/xvs/xid/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/auth/OAuthContextWrapper;->mAppId:Ljava/lang/String;

    const-string v1, "app_id"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v2, p0, Lcom/xiaopeng/xvs/xid/auth/OAuthContextWrapper;->mAccountManager:Landroid/accounts/AccountManager;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    .line 40
    invoke-direct {p0, p1}, Lcom/xiaopeng/xvs/xid/auth/OAuthContextWrapper;->parseToken(Landroid/accounts/AccountManagerFuture;)Lcom/xiaopeng/xvs/xid/base/IResponse;

    move-result-object p1

    return-object p1
.end method

.method getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Lcom/xiaopeng/xvs/xid/base/ICallback;Landroid/os/Handler;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0,
            0x0
        }
        names = {
            "account",
            "authTokenType",
            "callback",
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xvs/xid/base/ICallback<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xvs/xid/base/IException;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAuthToken account.name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";authTokenType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OAuthContextWrapper"

    invoke-static {v1, v0}, Lcom/xiaopeng/xvs/xid/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "app_id"

    const-string/jumbo v1, "xp_car_cashier"

    .line 47
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Lcom/xiaopeng/xvs/xid/auth/OAuthContextWrapper;->mAccountManager:Landroid/accounts/AccountManager;

    new-instance v7, Lcom/xiaopeng/xvs/xid/auth/-$$Lambda$OAuthContextWrapper$BoSKu2xCrD397tgMkQGnx7pl250;

    invoke-direct {v7, p0, p3}, Lcom/xiaopeng/xvs/xid/auth/-$$Lambda$OAuthContextWrapper$BoSKu2xCrD397tgMkQGnx7pl250;-><init>(Lcom/xiaopeng/xvs/xid/auth/OAuthContextWrapper;Lcom/xiaopeng/xvs/xid/base/ICallback;)V

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v8, p4

    invoke-virtual/range {v2 .. v8}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method public synthetic lambda$getAuthToken$0$OAuthContextWrapper(Lcom/xiaopeng/xvs/xid/base/ICallback;Landroid/accounts/AccountManagerFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "callback",
            "future"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p2}, Lcom/xiaopeng/xvs/xid/auth/OAuthContextWrapper;->parseToken(Landroid/accounts/AccountManagerFuture;)Lcom/xiaopeng/xvs/xid/base/IResponse;

    move-result-object p2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAuthToken response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OAuthContextWrapper"

    invoke-static {v1, v0}, Lcom/xiaopeng/xvs/xid/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-interface {p2}, Lcom/xiaopeng/xvs/xid/base/IResponse;->getCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-interface {p2}, Lcom/xiaopeng/xvs/xid/base/IResponse;->getContent()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/xvs/xid/base/ICallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-interface {p1, p2}, Lcom/xiaopeng/xvs/xid/base/ICallback;->onFail(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
