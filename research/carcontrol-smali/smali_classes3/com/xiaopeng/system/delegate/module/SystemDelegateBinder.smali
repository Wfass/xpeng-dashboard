.class Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder;
.super Ljava/lang/Object;
.source "SystemDelegateBinder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemDelegateBinder"

.field private static volatile sInstance:Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder;


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mRemoteService:Lcom/xiaopeng/system/delegate/ISystemDelegateInterface;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder$1;-><init>(Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder;)V

    iput-object v0, p0, Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder;Lcom/xiaopeng/system/delegate/ISystemDelegateInterface;)Lcom/xiaopeng/system/delegate/ISystemDelegateInterface;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder;->mRemoteService:Lcom/xiaopeng/system/delegate/ISystemDelegateInterface;

    return-object p1
.end method

.method static getInstance()Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder;
    .locals 2

    .line 42
    sget-object v0, Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder;->sInstance:Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder;

    if-nez v0, :cond_1

    .line 43
    const-class v0, Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder;->sInstance:Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder;

    invoke-direct {v1}, Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder;-><init>()V

    sput-object v1, Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder;->sInstance:Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder;

    .line 47
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 49
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder;->sInstance:Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder;

    return-object v0
.end method


# virtual methods
.method init(Landroid/content/Context;)V
    .locals 4

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init threadId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemDelegateBinder"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.service.SYSTEM_DELEGATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaopeng.system.delegate"

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 62
    iget-object v1, p0, Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder;->mConnection:Landroid/content/ServiceConnection;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method

.method isConnected()Z
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/system/delegate/module/SystemDelegateBinder;->mRemoteService:Lcom/xiaopeng/system/delegate/ISystemDelegateInterface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
