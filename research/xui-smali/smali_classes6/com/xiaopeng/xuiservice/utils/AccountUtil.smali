.class public Lcom/xiaopeng/xuiservice/utils/AccountUtil;
.super Ljava/lang/Object;
.source "AccountUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/utils/AccountUtil$AccountUtilHolder;,
        Lcom/xiaopeng/xuiservice/utils/AccountUtil$AccountsUpdateListener;,
        Lcom/xiaopeng/xuiservice/utils/AccountUtil$AccountListener;,
        Lcom/xiaopeng/xuiservice/utils/AccountUtil$Constants;
    }
.end annotation


# static fields
.field public static final EMPTY_UID:Ljava/lang/String; = ""

.field private static final FAKE:Z = false

.field private static final TAG:Ljava/lang/String; = "AccountUtil"

.field private static inited:Z

.field private static mAccountManager:Landroid/accounts/AccountManager;

.field private static final mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuiservice/utils/AccountUtil$AccountListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountsUpdateListener:Lcom/xiaopeng/xuiservice/utils/AccountUtil$AccountsUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/utils/AccountUtil;->inited:Z

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/AccountUtil;->mUpdateListeners:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/AccountUtil$AccountsUpdateListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/utils/AccountUtil$AccountsUpdateListener;-><init>(Lcom/xiaopeng/xuiservice/utils/AccountUtil$1;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/utils/AccountUtil;->mAccountsUpdateListener:Lcom/xiaopeng/xuiservice/utils/AccountUtil$AccountsUpdateListener;

    .line 108
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/AccountUtil;->mAccountManager:Landroid/accounts/AccountManager;

    .line 109
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/utils/AccountUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/utils/AccountUtil$1;

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/utils/AccountUtil;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .line 12
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/AccountUtil;->mUpdateListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/utils/AccountUtil;
    .locals 1

    .line 121
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/AccountUtil$AccountUtilHolder;->access$300()Lcom/xiaopeng/xuiservice/utils/AccountUtil;

    move-result-object v0

    return-object v0
.end method

.method public static getUid()Ljava/lang/String;
    .locals 3

    .line 178
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/AccountUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/AccountUtil;

    move-result-object v0

    const-string v1, "com.xiaopeng.accountservice.ACCOUNT_TYPE_XP_VEHICLE"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/AccountUtil;->getAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 179
    .local v0, "account":Landroid/accounts/Account;
    if-nez v0, :cond_0

    .line 180
    const-string v1, ""

    return-object v1

    .line 183
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/AccountUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/AccountUtil;

    move-result-object v1

    const-string v2, "uid"

    invoke-virtual {v1, v0, v2}, Lcom/xiaopeng/xuiservice/utils/AccountUtil;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "userId":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v2, "-1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 187
    :cond_1
    return-object v1

    .line 185
    :cond_2
    :goto_0
    const-string v2, ""

    return-object v2
.end method

.method public static synthetic lambda$init$0(Lcom/xiaopeng/xuiservice/utils/AccountUtil;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/utils/AccountUtil;->selfInit()V

    .line 127
    return-void
.end method

.method private declared-synchronized selfInit()V
    .locals 5

    monitor-enter p0

    .line 112
    :try_start_0
    sget-boolean v0, Lcom/xiaopeng/xuiservice/utils/AccountUtil;->inited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 113
    monitor-exit p0

    return-void

    .line 115
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/xiaopeng/xuiservice/utils/AccountUtil;->inited:Z

    .line 116
    sget-object v1, Lcom/xiaopeng/xuiservice/utils/AccountUtil;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/utils/AccountUtil;->mAccountsUpdateListener:Lcom/xiaopeng/xuiservice/utils/AccountUtil$AccountsUpdateListener;

    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v3

    const-string v4, "com.xiaopeng.accountservice.ACCOUNT_TYPE_XP_VEHICLE"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/utils/AccountUtil;
    throw v0
.end method


# virtual methods
.method public addAccountListener(Lcom/xiaopeng/xuiservice/utils/AccountUtil$AccountListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/utils/AccountUtil$AccountListener;

    .line 156
    const-string v0, "AccountUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAccountListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/AccountUtil;->mUpdateListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 158
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/utils/AccountUtil;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    monitor-exit v0

    .line 160
    return-void

    .line 159
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAccount(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 5
    .param p1, "type"    # Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "account":Landroid/accounts/Account;
    sget-object v1, Lcom/xiaopeng/xuiservice/utils/AccountUtil;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v1, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 136
    .local v1, "accounts":[Landroid/accounts/Account;
    array-length v2, v1

    if-lez v2, :cond_0

    .line 137
    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 139
    :cond_0
    const-string v2, "AccountUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-object v0
.end method

.method public getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "key"    # Ljava/lang/String;

    .line 145
    const/4 v0, 0x0

    .line 147
    .local v0, "value":Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/utils/AccountUtil;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v1, p1, p2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 150
    goto :goto_0

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AccountUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUserData,e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public init()V
    .locals 2

    .line 125
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$AccountUtil$Cj3AS_sih8Tt-mVFXI1UWN6s-bA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$AccountUtil$Cj3AS_sih8Tt-mVFXI1UWN6s-bA;-><init>(Lcom/xiaopeng/xuiservice/utils/AccountUtil;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->addBootCompleteTask(Ljava/lang/Runnable;)V

    .line 128
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->isBootComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/utils/AccountUtil;->selfInit()V

    .line 131
    :cond_0
    return-void
.end method

.method public removeAccountListener(Lcom/xiaopeng/xuiservice/utils/AccountUtil$AccountListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/utils/AccountUtil$AccountListener;

    .line 163
    const-string v0, "AccountUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeAccountListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/AccountUtil;->mUpdateListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 165
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/utils/AccountUtil;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 166
    monitor-exit v0

    .line 167
    return-void

    .line 166
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
