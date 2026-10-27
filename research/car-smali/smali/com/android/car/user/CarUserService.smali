.class public Lcom/android/car/user/CarUserService;
.super Landroid/content/BroadcastReceiver;
.source "CarUserService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# static fields
.field static final OWNER_NAME:Ljava/lang/String; = "Owner"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CarUserService"


# instance fields
.field private final mCarUserManagerHelper:Landroid/car/user/CarUserManagerHelper;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/car/user/CarUserManagerHelper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "carUserManagerHelper"    # Landroid/car/user/CarUserManagerHelper;

    .line 52
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 53
    const-string v0, "CarUserService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const-string v0, "CarUserService"

    const-string v1, "constructed"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    iput-object p1, p0, Lcom/android/car/user/CarUserService;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/android/car/user/CarUserService;->mCarUserManagerHelper:Landroid/car/user/CarUserManagerHelper;

    .line 58
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 81
    const-string v0, "CarUserService"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/user/CarUserService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public init()V
    .locals 2

    .line 62
    const-string v0, "CarUserService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "CarUserService"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 66
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/android/car/user/CarUserService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 87
    const-string v0, "CarUserService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "CarUserService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    if-ne v0, v1, :cond_2

    .line 92
    iget-object v0, p0, Lcom/android/car/user/CarUserService;->mCarUserManagerHelper:Landroid/car/user/CarUserManagerHelper;

    invoke-virtual {v0}, Landroid/car/user/CarUserManagerHelper;->getAllUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/android/car/user/CarUserService;->mCarUserManagerHelper:Landroid/car/user/CarUserManagerHelper;

    const-string v1, "Owner"

    invoke-virtual {v0, v1}, Landroid/car/user/CarUserManagerHelper;->createNewAdminUser(Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 94
    .local v0, "admin":Landroid/content/pm/UserInfo;
    iget-object v1, p0, Lcom/android/car/user/CarUserService;->mCarUserManagerHelper:Landroid/car/user/CarUserManagerHelper;

    invoke-virtual {v1, v0}, Landroid/car/user/CarUserManagerHelper;->switchToUser(Landroid/content/pm/UserInfo;)Z

    .line 95
    .end local v0    # "admin":Landroid/content/pm/UserInfo;
    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/android/car/user/CarUserService;->mCarUserManagerHelper:Landroid/car/user/CarUserManagerHelper;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/car/user/CarUserManagerHelper;->switchToUserId(I)Z

    .line 99
    :cond_2
    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 73
    const-string v0, "CarUserService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "CarUserService"

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/car/user/CarUserService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 77
    return-void
.end method
