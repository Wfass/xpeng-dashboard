.class public Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;
.super Ljava/lang/Object;
.source "AccountManagerProxy.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Lcom/xiaopeng/lib/framework/account/IAccountProxy;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$CarAccountCallbackBroadcast;,
        Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;,
        Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$Holder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountManagerProxy"

.field private static sInitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private volatile mAccountManager:Landroid/accounts/AccountManager;

.field private mAppId:Ljava/lang/String;

.field private mApplication:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private mCarAccountCallbackBroadcast:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$CarAccountCallbackBroadcast;

.field private final mLock:[B

.field private volatile mPendingTask:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;

.field private final mTaskLock:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->sInitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->mLock:[B

    .line 69
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->mTaskLock:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$1;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;)Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->mPendingTask:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;)Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->mPendingTask:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->doLogin()V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->unregisterCallbackBroadcast()V

    return-void
.end method

.method static synthetic access$1400(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;Landroid/content/Intent;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;)Landroid/accounts/Account;
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->mAppId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;)[B
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->mLock:[B

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;)Landroid/accounts/AccountManager;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->mAccountManager:Landroid/accounts/AccountManager;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;)[B
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->mTaskLock:[B

    return-object p0
.end method

.method private doLogin()V
    .locals 8

    .line 380
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->mAccountManager:Landroid/accounts/AccountManager;

    new-instance v6, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$2;

    invoke-direct {v6, p0}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$2;-><init>(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;)V

    const-string v1, "com.xiaopeng.accountservice.ACCOUNT_TYPE_XP_VEHICLE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method private fromAccount(Landroid/accounts/Account;)Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;
    .locals 3

    .line 414
    sget-object v0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->sInitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 418
    new-instance v0, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;-><init>()V

    .line 419
    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;->setUserName(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;

    .line 420
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v2, "avatar"

    invoke-virtual {v1, p1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;->setAvatar(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;

    .line 422
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v2, "user_type"

    invoke-virtual {v1, p1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 424
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 425
    invoke-direct {p0, v2}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->getUserType(I)Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;->setUserType(Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;)Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 430
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v2, "update"

    invoke-virtual {v1, p1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 432
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 433
    invoke-direct {p0, v1}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->getInfoType(I)Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;->setInfoType(Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;)Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 435
    :catch_0
    new-instance v0, Lcom/xiaopeng/lib/framework/account/adapt/AccountException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "infoType convert exception, value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/xiaopeng/lib/framework/account/adapt/AccountException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :catch_1
    new-instance p1, Lcom/xiaopeng/lib/framework/account/adapt/AccountException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userType convert exception, value="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/framework/account/adapt/AccountException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 416
    :cond_0
    new-instance p1, Lcom/xiaopeng/lib/framework/account/adapt/AccountException;

    const-string v0, "account is null"

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/framework/account/adapt/AccountException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 440
    :cond_1
    new-instance p1, Lcom/xiaopeng/lib/framework/account/adapt/AccountException;

    const-string v0, "Invoke fromAccount without properly initialized!"

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/framework/account/adapt/AccountException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getCurrentAccount()Landroid/accounts/Account;
    .locals 4

    .line 400
    sget-object v0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->sInitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "AccountManagerProxy"

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v2, "com.xiaopeng.accountservice.ACCOUNT_TYPE_XP_VEHICLE"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 402
    array-length v2, v0

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 403
    aget-object v0, v0, v2

    return-object v0

    .line 405
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no valid account, accounts.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/framework/account/utils/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Invoke getCurrentAccount without properly initialized!"

    .line 408
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/framework/account/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getInfoType(I)Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 464
    :cond_0
    sget-object p1, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;->UPDATE:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;

    return-object p1

    .line 462
    :cond_1
    sget-object p1, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;->CHANGED:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;

    return-object p1
.end method

.method public static getInstance()Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;
    .locals 1

    .line 61
    invoke-static {}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$Holder;->access$100()Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;

    move-result-object v0

    return-object v0
.end method

.method private getUserType(I)Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 455
    sget-object p1, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;->TEMP:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    return-object p1

    .line 453
    :cond_0
    sget-object p1, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;->DRIVER:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    return-object p1

    .line 451
    :cond_1
    sget-object p1, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;->TENANT:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    return-object p1

    .line 449
    :cond_2
    sget-object p1, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;->USER:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    return-object p1

    .line 447
    :cond_3
    sget-object p1, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;->OWNER:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    return-object p1
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->mApplication:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->mApplication:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 359
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->registerCallbackBroadcast()V

    goto :goto_0

    :cond_0
    const-string p1, "AccountManagerProxy"

    const-string v0, "application is null, can\'t start activity"

    .line 361
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/framework/account/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private registerCallbackBroadcast()V
    .locals 3

    .line 366
    new-instance v0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$CarAccountCallbackBroadcast;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$CarAccountCallbackBroadcast;-><init>(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$1;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->mCarAccountCallbackBroadcast:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$CarAccountCallbackBroadcast;

    .line 367
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.xiaopeng.xvs.account.ACTION_ACCOUNT_DIALOG_CANCEL_RESP"

    .line 368
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->mApplication:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->mCarAccountCallbackBroadcast:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$CarAccountCallbackBroadcast;

    invoke-virtual {v1, v2, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterCallbackBroadcast()V
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->mCarAccountCallbackBroadcast:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$CarAccountCallbackBroadcast;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->mApplication:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->mCarAccountCallbackBroadcast:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$CarAccountCallbackBroadcast;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 375
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->mCarAccountCallbackBroadcast:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$CarAccountCallbackBroadcast;

    :cond_0
    return-void
.end method


# virtual methods
.method public getUserInfo()Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;
    .locals 2

    .line 225
    sget-object v0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->sInitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 228
    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->fromAccount(Landroid/accounts/Account;)Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "AccountManagerProxy"

    const-string v1, "Invoke getUserInfo without properly initialized!"

    .line 231
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/account/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 75
    sget-object v0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->sInitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init appId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; packageName:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "AccountManagerProxy"

    invoke-static {v0, p3}, Lcom/xiaopeng/lib/framework/account/utils/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object p3, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->mLock:[B

    monitor-enter p3

    .line 78
    :try_start_0
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->mAccountManager:Landroid/accounts/AccountManager;

    .line 79
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    iget-object p3, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->mAccountManager:Landroid/accounts/AccountManager;

    const/4 v0, 0x0

    const-string v2, "com.xiaopeng.accountservice.ACCOUNT_TYPE_XP_VEHICLE"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p0, v0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z[Ljava/lang/String;)V

    .line 81
    iput-object p2, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->mAppId:Ljava/lang/String;

    .line 82
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->mApplication:Ljava/lang/ref/WeakReference;

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 79
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 84
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "init multi times, appId:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AccountManagerProxy"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/framework/account/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 4

    .line 107
    sget-object v0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->sInitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_3

    .line 109
    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    .line 111
    :try_start_0
    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->fromAccount(Landroid/accounts/Account;)Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;

    move-result-object v0

    const-string v1, "AccountManagerProxy"

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAccountsUpdated userInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/framework/account/utils/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/lib/framework/account/info/UserInfoEventImpl;

    invoke-direct {v2}, Lcom/xiaopeng/lib/framework/account/info/UserInfoEventImpl;-><init>()V

    invoke-virtual {v2, v0}, Lcom/xiaopeng/lib/framework/account/info/UserInfoEventImpl;->setUserInfo(Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;)Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfoEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 114
    sget-object v1, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;->CHANGED:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;

    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;->getInfoType()Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;

    move-result-object v0

    if-ne v1, v0, :cond_3

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->mTaskLock:[B

    monitor-enter v0
    :try_end_0
    .catch Lcom/xiaopeng/lib/framework/account/adapt/AccountException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->mPendingTask:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->mPendingTask:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 120
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Lcom/xiaopeng/lib/framework/account/adapt/AccountException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAccountsUpdate exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AccountManagerProxy"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/framework/account/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_1
    array-length p1, p1

    if-nez p1, :cond_3

    .line 127
    new-instance p1, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;

    invoke-direct {p1}, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;-><init>()V

    const-string v0, ""

    .line 128
    invoke-interface {p1, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;->setUserName(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;

    .line 129
    sget-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;->TEMP:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    invoke-interface {p1, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;->setUserType(Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;)Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;

    .line 130
    sget-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;->CHANGED:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;

    invoke-interface {p1, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;->setInfoType(Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;)Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;

    .line 131
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/lib/framework/account/info/UserInfoEventImpl;

    invoke-direct {v1}, Lcom/xiaopeng/lib/framework/account/info/UserInfoEventImpl;-><init>()V

    invoke-virtual {v1, p1}, Lcom/xiaopeng/lib/framework/account/info/UserInfoEventImpl;->setUserInfo(Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;)Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfoEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string p1, "AccountManagerProxy"

    const-string v0, "Invoking onAccountsUpdated without properly initialized which should never happened"

    .line 135
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/framework/account/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public release(Landroid/content/Context;)V
    .locals 1

    .line 90
    sget-object p1, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->sInitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "AccountManagerProxy"

    const-string v0, "release account manager"

    .line 91
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/framework/account/utils/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {p1, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 93
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->mLock:[B

    monitor-enter p1

    const/4 v0, 0x0

    .line 94
    :try_start_0
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->mAccountManager:Landroid/accounts/AccountManager;

    .line 95
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->mAppId:Ljava/lang/String;

    .line 97
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->mApplication:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 98
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->mApplication:Ljava/lang/ref/WeakReference;

    .line 99
    sget-object p1, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->sInitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 95
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    const-string p1, "AccountManagerProxy"

    const-string v0, "Invoke release without properly initialized!"

    .line 101
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/framework/account/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public requestOAuth(Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback<",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IAuthInfo;",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IError;",
            ">;)V"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->mAppId:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->requestOAuth(Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;)V

    return-void
.end method

.method public requestOAuth(Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;)V
    .locals 5
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

    .line 146
    sget-object v0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->sInitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "AccountManagerProxy"

    if-eqz v0, :cond_1

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestOAuth appId:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/lib/framework/account/utils/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 149
    new-instance v3, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, p2, v4}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;-><init>(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$1;)V

    if-eqz v0, :cond_0

    .line 151
    new-array p1, v1, [Landroid/accounts/Account;

    const/4 p2, 0x0

    aput-object v0, p1, p2

    invoke-virtual {v3, p1}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    const-string p1, "requestOAuth without account, login first."

    .line 153
    invoke-static {v2, p1}, Lcom/xiaopeng/lib/framework/account/utils/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {v3}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;->access$300(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;)V

    goto :goto_0

    :cond_1
    const-string p1, "Invoke requestOAuth without properly initialized!"

    .line 157
    invoke-static {v2, p1}, Lcom/xiaopeng/lib/framework/account/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 159
    new-instance p1, Lcom/xiaopeng/lib/framework/account/exception/AuthInfoError;

    invoke-direct {p1, v1}, Lcom/xiaopeng/lib/framework/account/exception/AuthInfoError;-><init>(I)V

    invoke-interface {p2, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;->onFail(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public requestOTP(Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

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

    .line 167
    sget-object v0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->sInitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "AccountManagerProxy"

    if-eqz v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestOTP deviceId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/framework/account/utils/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance p1, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$1;

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$1;-><init>(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    .line 215
    invoke-virtual {p1, p2}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    const-string p1, "Invoke requestOTP without properly initialized!"

    .line 217
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/framework/account/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance p1, Lcom/xiaopeng/lib/framework/account/exception/OTPInfoError;

    const/16 v0, 0x3e8

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/framework/account/exception/OTPInfoError;-><init>(I)V

    invoke-interface {p2, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;->onFail(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public sendAction(Lcom/xiaopeng/lib/framework/account/action/AccountAction;)V
    .locals 1

    .line 239
    sget-object v0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->sInitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    sget-object v0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$3;->$SwitchMap$com$xiaopeng$lib$framework$account$action$AccountAction:[I

    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/account/action/AccountAction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 242
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->doLogin()V

    :goto_0
    return-void

    .line 251
    :cond_1
    new-instance p1, Lcom/xiaopeng/lib/framework/account/adapt/AccountException;

    const-string v0, "Invoke account action without properly initialized!"

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/framework/account/adapt/AccountException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
