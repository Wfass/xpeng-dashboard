.class public Lcom/xiaopeng/privacymanager/PrivacyServiceManager;
.super Ljava/lang/Object;
.source "PrivacyServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/privacymanager/PrivacyServiceManager$PrivacyServiceConnection;
    }
.end annotation


# static fields
.field private static final PRIVACY_SERVICE_ACTION_NAME:Ljava/lang/String;

.field private static final PRIVACY_SERVICE_PACKAGE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "PrivacyServiceManager"


# instance fields
.field private isDisconnectedByClient:Z

.field private mConnection:Lcom/xiaopeng/privacymanager/PrivacyServiceManager$PrivacyServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mPrivacyService:Lcom/xiaopeng/privacyservice/IPrivacyService;

.field private mRetryConnectServiceCount:I

.field private final mRetryJob:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    invoke-static {}, Lcom/xiaopeng/privacymanager/feature/BaseFeatureOption;->getInstance()Lcom/xiaopeng/privacymanager/feature/BaseFeatureOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/privacymanager/feature/BaseFeatureOption;->getPrivacyServicePackage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->PRIVACY_SERVICE_PACKAGE_NAME:Ljava/lang/String;

    .line 28
    invoke-static {}, Lcom/xiaopeng/privacymanager/feature/BaseFeatureOption;->getInstance()Lcom/xiaopeng/privacymanager/feature/BaseFeatureOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/privacymanager/feature/BaseFeatureOption;->getPrivacyServiceAction()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->PRIVACY_SERVICE_ACTION_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->isDisconnectedByClient:Z

    const/4 v0, 0x1

    .line 34
    iput v0, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mRetryConnectServiceCount:I

    .line 36
    new-instance v0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/privacymanager/PrivacyServiceManager$1;-><init>(Lcom/xiaopeng/privacymanager/PrivacyServiceManager;)V

    iput-object v0, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mRetryJob:Ljava/lang/Runnable;

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mContext:Landroid/content/Context;

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/privacymanager/PrivacyServiceManager;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->isDisconnectedByClient:Z

    return p0
.end method

.method static synthetic access$102(Lcom/xiaopeng/privacymanager/PrivacyServiceManager;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mRetryConnectServiceCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/xiaopeng/privacymanager/PrivacyServiceManager;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->bindInternalService()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/privacymanager/PrivacyServiceManager;)Landroid/os/Handler;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$402(Lcom/xiaopeng/privacymanager/PrivacyServiceManager;Lcom/xiaopeng/privacyservice/IPrivacyService;)Lcom/xiaopeng/privacyservice/IPrivacyService;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mPrivacyService:Lcom/xiaopeng/privacyservice/IPrivacyService;

    return-object p1
.end method

.method private bindInternalService()V
    .locals 5

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mConnection:Lcom/xiaopeng/privacymanager/PrivacyServiceManager$PrivacyServiceConnection;

    const-string v1, "PrivacyServiceManager"

    if-nez v0, :cond_0

    const-string v0, "PrivacyService bindInternalService unexpected flow, mConnection is null"

    .line 74
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 77
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 78
    sget-object v2, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->PRIVACY_SERVICE_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    sget-object v2, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->PRIVACY_SERVICE_ACTION_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    iget-object v2, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "callingPackage"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    iget-object v2, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mConnection:Lcom/xiaopeng/privacymanager/PrivacyServiceManager$PrivacyServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PrivacyService bindInternalService result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", retryCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mRetryConnectServiceCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mRetryJob:Ljava/lang/Runnable;

    iget v2, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mRetryConnectServiceCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mRetryConnectServiceCount:I

    mul-int/lit16 v2, v2, 0x7d0

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 86
    :cond_1
    iput v4, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mRetryConnectServiceCount:I

    :goto_0
    return-void
.end method

.method private bindServiceImmediately()V
    .locals 2

    const/4 v0, 0x1

    .line 66
    iput v0, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mRetryConnectServiceCount:I

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mRetryJob:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 68
    invoke-direct {p0}, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->bindInternalService()V

    return-void
.end method

.method private checkInternalServiceAlive()Z
    .locals 3

    .line 91
    iget-boolean v0, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->isDisconnectedByClient:Z

    const/4 v1, 0x0

    const-string v2, "PrivacyServiceManager"

    if-eqz v0, :cond_0

    const-string v0, "PrivacyService disconnected by client "

    .line 92
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PrivacyService is not alive , bind it immediately !"

    .line 96
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mPrivacyService:Lcom/xiaopeng/privacyservice/IPrivacyService;

    .line 98
    invoke-direct {p0}, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->bindServiceImmediately()V

    return v1

    :cond_1
    const-string v0, "PrivacyService is alive"

    .line 101
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public cancelFetchTask(I)V
    .locals 2

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call cancelFetchTask by client. type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrivacyServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-direct {p0}, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->checkInternalServiceAlive()Z

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mPrivacyService:Lcom/xiaopeng/privacyservice/IPrivacyService;

    if-eqz v0, :cond_0

    .line 239
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/privacyservice/IPrivacyService;->cancelFetchTask(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 241
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public cancelPrivacyDialog(Ljava/lang/String;)V
    .locals 2

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call cancelPrivacyDialog by client. dialogId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrivacyServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-direct {p0}, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->checkInternalServiceAlive()Z

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mPrivacyService:Lcom/xiaopeng/privacyservice/IPrivacyService;

    if-eqz v0, :cond_0

    .line 190
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/privacyservice/IPrivacyService;->cancelPrivacyDialog(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 192
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public connect(Landroid/content/ServiceConnection;)V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mConnection:Lcom/xiaopeng/privacymanager/PrivacyServiceManager$PrivacyServiceConnection;

    const-string v1, "PrivacyServiceManager"

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call connect by client, mConnection is null. ServiceConnection callback: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager$PrivacyServiceConnection;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/privacymanager/PrivacyServiceManager$PrivacyServiceConnection;-><init>(Lcom/xiaopeng/privacymanager/PrivacyServiceManager;Landroid/content/ServiceConnection;)V

    iput-object v0, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mConnection:Lcom/xiaopeng/privacymanager/PrivacyServiceManager$PrivacyServiceConnection;

    goto :goto_0

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call connect by client, mConnection is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mConnection:Lcom/xiaopeng/privacymanager/PrivacyServiceManager$PrivacyServiceConnection;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", ServiceConnection callback: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mConnection:Lcom/xiaopeng/privacymanager/PrivacyServiceManager$PrivacyServiceConnection;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/privacymanager/PrivacyServiceManager$PrivacyServiceConnection;->setPrivacyServiceConnection(Landroid/content/ServiceConnection;)V

    :goto_0
    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->isDisconnectedByClient:Z

    .line 62
    invoke-direct {p0}, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->bindServiceImmediately()V

    return-void
.end method

.method public disconnect()V
    .locals 2

    const-string v0, "PrivacyServiceManager"

    const-string v1, "call disconnect by client. "

    .line 107
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->isDisconnectedByClient:Z

    const/4 v1, 0x0

    .line 109
    iput-object v1, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mPrivacyService:Lcom/xiaopeng/privacyservice/IPrivacyService;

    .line 110
    iput v0, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mRetryConnectServiceCount:I

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mConnection:Lcom/xiaopeng/privacymanager/PrivacyServiceManager$PrivacyServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public dismissPrivacyDialog(Ljava/lang/String;)V
    .locals 2

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call dismissPrivacyDialog by client. dialogId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrivacyServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-direct {p0}, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->checkInternalServiceAlive()Z

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mPrivacyService:Lcom/xiaopeng/privacyservice/IPrivacyService;

    if-eqz v0, :cond_0

    .line 178
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/privacyservice/IPrivacyService;->dismissPrivacyDialog(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 180
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public fetchProtocol(ILcom/xiaopeng/privacyservice/IFetchProtocolCallback;)V
    .locals 2

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call fetchProtocol by client. type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrivacyServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-direct {p0}, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->checkInternalServiceAlive()Z

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mPrivacyService:Lcom/xiaopeng/privacyservice/IPrivacyService;

    if-eqz v0, :cond_0

    .line 227
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/privacyservice/IPrivacyService;->fetchProtocol(ILcom/xiaopeng/privacyservice/IFetchProtocolCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 229
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public getPrivacyContent(I)Ljava/lang/String;
    .locals 2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call getPrivacyContent by client. type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrivacyServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-direct {p0}, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->checkInternalServiceAlive()Z

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mPrivacyService:Lcom/xiaopeng/privacyservice/IPrivacyService;

    if-eqz v0, :cond_0

    .line 165
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/privacyservice/IPrivacyService;->getPrivacyContent(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 167
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPrivacyPath(I)Ljava/lang/String;
    .locals 2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call getPrivacyPath by client. type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrivacyServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-direct {p0}, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->checkInternalServiceAlive()Z

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mPrivacyService:Lcom/xiaopeng/privacyservice/IPrivacyService;

    if-eqz v0, :cond_0

    .line 152
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/privacyservice/IPrivacyService;->getPrivacyPath(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 154
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public haveDialogOnScreen()Z
    .locals 2

    const-string v0, "PrivacyServiceManager"

    const-string v1, "call haveDialogOnScreen by client."

    .line 198
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-direct {p0}, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->checkInternalServiceAlive()Z

    .line 200
    iget-object v1, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mPrivacyService:Lcom/xiaopeng/privacyservice/IPrivacyService;

    if-eqz v1, :cond_0

    .line 202
    :try_start_0
    invoke-interface {v1}, Lcom/xiaopeng/privacyservice/IPrivacyService;->haveDialogOnScreen()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 204
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->isDisconnectedByClient:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mPrivacyService:Lcom/xiaopeng/privacyservice/IPrivacyService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/xiaopeng/privacyservice/IPrivacyService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mPrivacyService:Lcom/xiaopeng/privacyservice/IPrivacyService;

    .line 117
    invoke-interface {v0}, Lcom/xiaopeng/privacyservice/IPrivacyService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showPrivacyDialog(IILcom/xiaopeng/privacymanager/PrivacyDialogListener;)Ljava/lang/String;
    .locals 4

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call showPrivacyDialog by client. type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " flags : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrivacyServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-direct {p0}, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->checkInternalServiceAlive()Z

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mPrivacyService:Lcom/xiaopeng/privacyservice/IPrivacyService;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 126
    :try_start_0
    new-instance v3, Lcom/xiaopeng/privacymanager/PrivacyServiceManager$2;

    invoke-direct {v3, p0, p3}, Lcom/xiaopeng/privacymanager/PrivacyServiceManager$2;-><init>(Lcom/xiaopeng/privacymanager/PrivacyServiceManager;Lcom/xiaopeng/privacymanager/PrivacyDialogListener;)V

    invoke-interface {v0, p1, p2, v3}, Lcom/xiaopeng/privacyservice/IPrivacyService;->showPrivacyDialog(IILcom/xiaopeng/privacyservice/IPrivacyDialogCallback;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 138
    :cond_0
    invoke-interface {v0, p1, p2, v2}, Lcom/xiaopeng/privacyservice/IPrivacyService;->showPrivacyDialog(IILcom/xiaopeng/privacyservice/IPrivacyDialogCallback;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 141
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v2
.end method

.method public signProtocol(I)V
    .locals 2

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call signProtocol by client. type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrivacyServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-direct {p0}, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->checkInternalServiceAlive()Z

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->mPrivacyService:Lcom/xiaopeng/privacyservice/IPrivacyService;

    if-eqz v0, :cond_0

    .line 215
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/privacyservice/IPrivacyService;->signProtocol(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 217
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
