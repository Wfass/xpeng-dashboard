.class Lcom/xiaopeng/xvs/xid/account/AccountClientImpl;
.super Lcom/xiaopeng/xvs/xid/base/IClient;
.source "AccountClientImpl.java"

# interfaces
.implements Lcom/xiaopeng/xvs/xid/account/api/IAccount;


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountClientImpl"

.field private static volatile mInstance:Lcom/xiaopeng/xvs/xid/account/api/IAccount;


# instance fields
.field private mContextWrapper:Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/xvs/xid/base/IClient;-><init>()V

    .line 25
    new-instance v0, Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;

    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lcom/xiaopeng/xvs/xid/account/AccountClientImpl;->mContextWrapper:Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;

    return-void
.end method

.method static getInstance()Lcom/xiaopeng/xvs/xid/account/api/IAccount;
    .locals 2

    .line 30
    sget-object v0, Lcom/xiaopeng/xvs/xid/account/AccountClientImpl;->mInstance:Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    if-nez v0, :cond_1

    .line 31
    const-class v0, Lcom/xiaopeng/xvs/xid/account/AccountClientImpl;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xvs/xid/account/AccountClientImpl;->mInstance:Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/xiaopeng/xvs/xid/account/AccountClientImpl;

    invoke-direct {v1}, Lcom/xiaopeng/xvs/xid/account/AccountClientImpl;-><init>()V

    sput-object v1, Lcom/xiaopeng/xvs/xid/account/AccountClientImpl;->mInstance:Lcom/xiaopeng/xvs/xid/account/api/IAccount;

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
    sget-object v0, Lcom/xiaopeng/xvs/xid/account/AccountClientImpl;->mInstance:Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    return-object v0
.end method


# virtual methods
.method public addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/account/AccountClientImpl;->mContextWrapper:Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Z)V

    return-void
.end method

.method public addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "listener",
            "handler",
            "updateImmediately",
            "accountTypes"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/account/AccountClientImpl;->mContextWrapper:Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z[Ljava/lang/String;)V

    return-void
.end method

.method public addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listener",
            "updateImmediately"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/account/AccountClientImpl;->mContextWrapper:Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Z)V

    return-void
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/account/AccountClientImpl;->mContextWrapper:Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;

    invoke-virtual {v0}, Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getAccountInfo()Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/account/AccountClientImpl;->mContextWrapper:Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;

    invoke-virtual {v0}, Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;->getAccountInfo()Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public getUid()J
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/account/AccountClientImpl;->getAccountInfo()Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->getUid()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getUserExtraData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/account/AccountClientImpl;->mContextWrapper:Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;->getUserData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isLogin()Z
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/account/AccountClientImpl;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public login()V
    .locals 2

    .line 114
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.xiaopeng.caraccount"

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.xiaopeng.xvs.account.ACTION_ACCOUNT_DIALOG_QR_REQUEST"

    .line 116
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public login(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 42
    sget-object v0, Lcom/xiaopeng/xvs/xid/account/api/LoginType;->TYPE_LOGIN_QR_SCAN:Lcom/xiaopeng/xvs/xid/account/api/LoginType;

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xvs/xid/account/AccountClientImpl;->login(Lcom/xiaopeng/xvs/xid/account/api/LoginType;Landroid/app/Activity;)V

    return-void
.end method

.method public login(Lcom/xiaopeng/xvs/xid/account/api/LoginType;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "activity"
        }
    .end annotation

    .line 47
    iget-object p1, p0, Lcom/xiaopeng/xvs/xid/account/AccountClientImpl;->mContextWrapper:Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;->login(Landroid/app/Activity;)V

    return-void
.end method

.method public logout()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/account/AccountClientImpl;->mContextWrapper:Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;

    invoke-virtual {v0}, Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;->logout()V

    return-void
.end method

.method public logout(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 122
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.xiaopeng.caraccount"

    .line 123
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.xiaopeng.xvs.sync.ACTION_SERVICE_REQ_ACCOUNT_LOGOUT"

    .line 124
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public registerAccountChangedReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "receiver"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/account/AccountClientImpl;->mContextWrapper:Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;->registerAccountChangedReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/account/AccountClientImpl;->mContextWrapper:Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    return-void
.end method

.method public setUserExtraData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/account/AccountClientImpl;->mContextWrapper:Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;->setUserData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public unregisterAccountChangedReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "receiver"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/account/AccountClientImpl;->mContextWrapper:Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;->unregisterAccountChangedReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
