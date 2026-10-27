.class public abstract Lcom/xiaopeng/carcontrol/viewmodel/account/AccountBaseViewModel;
.super Ljava/lang/Object;
.source "AccountBaseViewModel.java"


# static fields
.field public static final ACCOUNT_TYPE_XP_VEHICLE:Ljava/lang/String; = "com.xiaopeng.accountservice.ACCOUNT_TYPE_XP_VEHICLE"

.field private static final ACTION_REQUEST_QRCODE:Ljava/lang/String; = "com.xiaopeng.xvs.account.ACTION_ACCOUNT_DIALOG_QR_REQUEST"

.field public static final AUTH_INFO_EXTRA_APP_ID:Ljava/lang/String; = "app_id"

.field public static final AUTH_TYPE_AUTH_CODE:Ljava/lang/String; = "com.xiaopeng.accountservice.AUTH_TYPE_AUTH_CODE"

.field public static final AUTH_TYPE_AUTH_OTP:Ljava/lang/String; = "com.xiaopeng.accountservice.AUTH_TYPE_AUTH_OTP"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.xiaopeng.caraccount"

.field protected static final TAG:Ljava/lang/String; = "X_EXAM_AccountViewModel"

.field public static final USER_DATA_EXTRA_UID:Ljava/lang/String; = "uid"


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountBaseViewModel;->mAccountManager:Landroid/accounts/AccountManager;

    return-void
.end method

.method private login()V
    .locals 2

    .line 48
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.xiaopeng.caraccount"

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.xiaopeng.xvs.account.ACTION_ACCOUNT_DIALOG_QR_REQUEST"

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/App;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method protected getAccountManager()Landroid/accounts/AccountManager;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountBaseViewModel;->mAccountManager:Landroid/accounts/AccountManager;

    return-object v0
.end method

.method public getCurrentAccountInfo()Landroid/accounts/Account;
    .locals 6

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountBaseViewModel;->mAccountManager:Landroid/accounts/AccountManager;

    const/4 v1, 0x0

    const-string v2, "X_EXAM_AccountViewModel"

    if-nez v0, :cond_0

    const-string v0, "mAccountManager = null, you should init first! "

    .line 57
    invoke-static {v2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string v3, "com.xiaopeng.accountservice.ACCOUNT_TYPE_XP_VEHICLE"

    .line 60
    invoke-virtual {v0, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 61
    array-length v3, v0

    const/4 v4, 0x0

    if-lez v3, :cond_1

    .line 62
    aget-object v1, v0, v4

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentAccountInfo accounts.length="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";account[0].name="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v1

    :cond_1
    const-string v0, "getCurrentAccountInfo account is empty"

    .line 66
    invoke-static {v2, v0, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v1
.end method
