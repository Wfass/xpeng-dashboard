.class public Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;
.super Ljava/lang/Object;
.source "AppServer.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/ipc/server/ipc/IpcServer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$PipeListenerRecord;,
        Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppServer"

.field private static final mPipeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$PipeListenerRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hasInitCompleted:Z

.field private mConfig:Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig;

.field private mListener:Lcom/xiaopeng/smartcontrol/ipc/server/ipc/IpcServer$IpcCallback;

.field private final mStickDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/smartcontrol/ipc/server/ipc/StickyData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->mPipeListeners:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->mStickDataMap:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$1;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;-><init>()V

    return-void
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .locals 1

    .line 18
    sget-object v0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->mPipeListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static get()Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;
    .locals 1

    .line 32
    invoke-static {}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$SingletonHolder;->access$100()Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$notifyStickySend$0(Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$PipeListenerRecord;Lcom/xiaopeng/smartcontrol/ipc/server/ipc/StickyData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "record",
            "obj"
        }
    .end annotation

    .line 101
    invoke-virtual {p1, p0}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/StickyData;->send(Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$PipeListenerRecord;)V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$PipeListenerRecord;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "record"
        }
    .end annotation

    const-string v0, "AppServer"

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->mPipeListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 58
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public findIndexOfPipeListenerLocked(Lcom/xiaopeng/ipc/aidl/IPipeBusListener;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 70
    sget-object v0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->mPipeListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 71
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 72
    sget-object v2, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->mPipeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$PipeListenerRecord;

    iget-object v2, v2, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$PipeListenerRecord;->listener:Lcom/xiaopeng/ipc/aidl/IPipeBusListener;

    invoke-interface {v2}, Lcom/xiaopeng/ipc/aidl/IPipeBusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Lcom/xiaopeng/ipc/aidl/IPipeBusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 73
    monitor-exit v0

    return v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 76
    :cond_1
    monitor-exit v0

    const/4 p1, -0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public findPipeListenerRecordLocked(Lcom/xiaopeng/ipc/aidl/IPipeBusListener;)Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$PipeListenerRecord;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 81
    sget-object v0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->mPipeListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 82
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 83
    sget-object v2, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->mPipeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$PipeListenerRecord;

    iget-object v3, v3, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$PipeListenerRecord;->listener:Lcom/xiaopeng/ipc/aidl/IPipeBusListener;

    invoke-interface {v3}, Lcom/xiaopeng/ipc/aidl/IPipeBusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Lcom/xiaopeng/ipc/aidl/IPipeBusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 84
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$PipeListenerRecord;

    monitor-exit v0

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 87
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public hasInitCompleted()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->hasInitCompleted:Z

    return v0
.end method

.method public init(Landroid/content/Context;Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ctx",
            "config"
        }
    .end annotation

    const-string v0, "AppServer"

    const-string v1, "init"

    .line 38
    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iput-object p2, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->mConfig:Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig;

    .line 42
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmartControlSDKServiceBinder_"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/smartcontrol/utils/Apps;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AidlServiceBinder;

    invoke-direct {v1}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AidlServiceBinder;-><init>()V

    invoke-static {p2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string p2, "addService success"

    .line 43
    invoke-static {v0, p2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 45
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p2, "addService failed, start service self"

    .line 46
    invoke-static {v0, p2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.xiaopeng.smartcontrol.BindAidlService"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method public notifyStickySend(Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$PipeListenerRecord;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "record"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->mConfig:Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig;->isSticky()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->mStickDataMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    const-string v1, "AppServer"

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stickyDataMap size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->mStickDataMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->mStickDataMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/-$$Lambda$AppServer$c1_4NOx0-OOS6QpMlhs9zKpmmag;

    invoke-direct {v2, p1}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/-$$Lambda$AppServer$c1_4NOx0-OOS6QpMlhs9zKpmmag;-><init>(Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$PipeListenerRecord;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 102
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public onCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "module",
            "method",
            "param"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const-string v1, "onCall %s %s %s"

    .line 142
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppServer"

    invoke-static {v1, v0}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->mListener:Lcom/xiaopeng/smartcontrol/ipc/server/ipc/IpcServer$IpcCallback;

    if-nez v0, :cond_0

    const-string p1, "listeners null"

    .line 144
    invoke-static {v1, p1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 147
    :cond_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/IpcServer$IpcCallback;->onCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public removeListener(I)Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$PipeListenerRecord;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    const-string v0, "AppServer"

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->mPipeListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 65
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$PipeListenerRecord;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 66
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "module",
            "method",
            "data"
        }
    .end annotation

    const-string v0, "AppServer"

    const-string v1, "send %s %s %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v4, 0x2

    aput-object p3, v2, v4

    .line 108
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-object v0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->mPipeListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 110
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AppServer"

    const-string v2, "listeners null"

    .line 112
    invoke-static {v1, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v2, "AppServer"

    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "listeners size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$PipeListenerRecord;

    .line 116
    invoke-virtual {v2, p1, p2, p3}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$PipeListenerRecord;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->mConfig:Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig;->isSticky()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->mStickDataMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 124
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->mStickDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/StickyData;

    if-eqz v2, :cond_2

    .line 127
    invoke-virtual {v2, p3}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/StickyData;->refresh(Ljava/lang/String;)V

    goto :goto_2

    .line 129
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->mStickDataMap:Ljava/util/HashMap;

    new-instance v10, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/StickyData;

    iget-object v4, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->mConfig:Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig;

    invoke-virtual {v4}, Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig;->getStickyExpireInterval()J

    move-result-wide v8

    move-object v4, v10

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v4 .. v9}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/StickyData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v2, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :goto_2
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_3
    const-string p1, "initComplete"

    .line 135
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 136
    iput-boolean v3, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->hasInitCompleted:Z

    :cond_4
    return-void

    :catchall_1
    move-exception p1

    .line 119
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public setIpcCallback(Lcom/xiaopeng/smartcontrol/ipc/server/ipc/IpcServer$IpcCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->mListener:Lcom/xiaopeng/smartcontrol/ipc/server/ipc/IpcServer$IpcCallback;

    return-void
.end method
