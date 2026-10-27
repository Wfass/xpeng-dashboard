.class Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;
.super Ljava/lang/Object;
.source "AccountContextWrapper.java"

# interfaces
.implements Lcom/xiaopeng/xvs/xid/base/IWrapper;


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountContextWrapper"


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mApplication:Landroid/app/Application;

.field private mCurrentAccountInfo:Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "application"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;->mApplication:Landroid/app/Application;

    .line 38
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;->mAccountManager:Landroid/accounts/AccountManager;

    return-void
.end method

.method private getCurrentAccountInfo(Landroid/accounts/Account;)Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "account"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;->mCurrentAccountInfo:Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;

    if-nez v0, :cond_1

    .line 193
    new-instance v0, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;

    iget-object v1, p0, Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-direct {v0, v1, p1}, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/Account;)V

    iput-object v0, p0, Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;->mCurrentAccountInfo:Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->update(Landroid/accounts/Account;)V

    .line 197
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;->mCurrentAccountInfo:Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;

    return-object p1
.end method

.method static synthetic lambda$login$0(Landroid/app/Activity;Landroid/accounts/AccountManagerFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "activity",
            "future"
        }
    .end annotation

    const-string v0, "AccountContextWrapper"

    if-nez p0, :cond_0

    const-string p0, "login: context is null . cannot launch login intent."

    .line 45
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 49
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v1, "intent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 50
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    .line 53
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "login callback fail. exception = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaopeng/xvs/xid/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private loginStartActivity(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    return-void
.end method

.method private loginStartService(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    return-void
.end method

.method private removeAccounts()V
    .locals 7

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.xiaopeng.accountservice.ACCOUNT_TYPE_XP_VEHICLE"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeAccounts length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AccountContextWrapper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 88
    :try_start_0
    iget-object v5, p0, Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v5, v4}, Landroid/accounts/AccountManager;->removeAccountExplicitly(Landroid/accounts/Account;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 90
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeAccounts err="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
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

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z[Ljava/lang/String;)V

    return-void
.end method

.method addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "listener",
            "updateImmediately"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.xiaopeng.accountservice.ACCOUNT_TYPE_XP_VEHICLE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, p2, v1}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z[Ljava/lang/String;)V

    return-void
.end method

.method getAccount()Landroid/accounts/Account;
    .locals 4

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.xiaopeng.accountservice.ACCOUNT_TYPE_XP_VEHICLE"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 179
    array-length v1, v0

    const-string v2, "AccountContextWrapper"

    if-lez v1, :cond_0

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccount accounts.length="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; accounts="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaopeng/xvs/xid/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 181
    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const-string v0, "getAccount account is null, means not login"

    .line 183
    invoke-static {v2, v0}, Lcom/xiaopeng/xvs/xid/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method getAccountInfo()Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;
    .locals 1

    .line 150
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;->getCurrentAccountInfo(Landroid/accounts/Account;)Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getUserData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
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

    monitor-enter p0

    .line 155
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;->getAccount()Landroid/accounts/Account;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 157
    monitor-exit p0

    return-object p2

    .line 159
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v1, v0, p1}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    .line 161
    monitor-exit p0

    return-object p2

    .line 163
    :cond_1
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method login(Landroid/app/Activity;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;->mAccountManager:Landroid/accounts/AccountManager;

    new-instance v6, Lcom/xiaopeng/xvs/xid/account/-$$Lambda$AccountContextWrapper$oquVEb-MMgNFCh4YglzUwnoOwKs;

    invoke-direct {v6, p1}, Lcom/xiaopeng/xvs/xid/account/-$$Lambda$AccountContextWrapper$oquVEb-MMgNFCh4YglzUwnoOwKs;-><init>(Landroid/app/Activity;)V

    const-string v1, "com.xiaopeng.accountservice.ACCOUNT_TYPE_XP_VEHICLE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method logout()V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;->removeAccounts()V

    return-void
.end method

.method registerAccountChangedReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "receiver"
        }
    .end annotation

    .line 123
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.accounts.action.VISIBLE_ACCOUNTS_CHANGED"

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    .line 126
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;->mApplication:Landroid/app/Application;

    invoke-virtual {v1, p1, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    return-void
.end method

.method public declared-synchronized setUserData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
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

    monitor-enter p0

    .line 167
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;->getAccount()Landroid/accounts/Account;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 169
    monitor-exit p0

    return p1

    .line 171
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v1, v0, p1, p2}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 172
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method unregisterAccountChangedReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "receiver"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/account/AccountContextWrapper;->mApplication:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
