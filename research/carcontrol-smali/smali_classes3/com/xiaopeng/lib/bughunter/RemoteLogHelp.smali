.class public Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;
.super Ljava/lang/Object;
.source "RemoteLogHelp.java"


# static fields
.field private static final DATA_COLLECTOR_PACKAGE_NAME:Ljava/lang/String; = "com.xiaopeng.data.collector"

.field private static final DATA_COLLECTOT_DATA_SERVICE:Ljava/lang/String; = "com.xiaopeng.service.DATA_SERVICE"

.field private static final TAG:Ljava/lang/String; = "RemoteLogHelp"

.field private static volatile mInstance:Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRemoteLogService:Lcom/xiaopeng/lib/bughunter/IRemoteLogInterface;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp$1;-><init>(Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;)Lcom/xiaopeng/lib/bughunter/IRemoteLogInterface;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;->mRemoteLogService:Lcom/xiaopeng/lib/bughunter/IRemoteLogInterface;

    return-object p0
.end method

.method static synthetic access$002(Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;Lcom/xiaopeng/lib/bughunter/IRemoteLogInterface;)Lcom/xiaopeng/lib/bughunter/IRemoteLogInterface;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;->mRemoteLogService:Lcom/xiaopeng/lib/bughunter/IRemoteLogInterface;

    return-object p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;)Landroid/content/Context;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;->binderService(Landroid/content/Context;)V

    return-void
.end method

.method private binderService(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 84
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.xiaopeng.data.collector"

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.xiaopeng.service.DATA_SERVICE"

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x13

    if-gt v3, v1, :cond_0

    .line 88
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 89
    iget-object v1, p0, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    .line 91
    :cond_0
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 92
    iget-object v1, p0, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;->mServiceConnection:Landroid/content/ServiceConnection;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;
    .locals 2

    .line 67
    sget-object v0, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;->mInstance:Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;

    if-nez v0, :cond_1

    .line 68
    const-class v0, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;

    monitor-enter v0

    .line 69
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;->mInstance:Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;

    invoke-direct {v1}, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;-><init>()V

    sput-object v1, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;->mInstance:Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;

    .line 72
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 74
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;->mInstance:Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;->mContext:Landroid/content/Context;

    .line 79
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;->binderService(Landroid/content/Context;)V

    return-void
.end method

.method public isServiceConnected()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;->mRemoteLogService:Lcom/xiaopeng/lib/bughunter/IRemoteLogInterface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public uploadRemoteLog(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;->mRemoteLogService:Lcom/xiaopeng/lib/bughunter/IRemoteLogInterface;

    if-eqz v0, :cond_0

    .line 114
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/lib/bughunter/IRemoteLogInterface;->uploadRemoteLog(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 116
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
