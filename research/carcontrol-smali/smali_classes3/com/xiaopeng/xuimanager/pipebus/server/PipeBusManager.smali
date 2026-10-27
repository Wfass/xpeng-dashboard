.class public abstract Lcom/xiaopeng/xuimanager/pipebus/server/PipeBusManager;
.super Ljava/lang/Object;
.source "PipeBusManager.java"


# instance fields
.field protected volatile mCallback:Lcom/xiaopeng/xuimanager/pipebus/server/IPipeBusManagerCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/server/PipeBusManager;->mCallback:Lcom/xiaopeng/xuimanager/pipebus/server/IPipeBusManagerCallback;

    return-void
.end method


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract getModuleName()Ljava/lang/String;
.end method

.method public abstract init()I
.end method

.method public abstract ioControl(Ljava/lang/String;[Ljava/lang/String;II)I
.end method

.method public abstract ioControlWithParcelable(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;II)I
.end method

.method public abstract ioControlWithPocket(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;II)I
.end method

.method public abstract onClientDied(II)V
.end method

.method declared-synchronized registerCallback(Lcom/xiaopeng/xuimanager/pipebus/server/IPipeBusManagerCallback;)V
    .locals 0

    monitor-enter p0

    .line 90
    :try_start_0
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/pipebus/server/PipeBusManager;->mCallback:Lcom/xiaopeng/xuimanager/pipebus/server/IPipeBusManagerCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract registerListener(II)V
.end method

.method public abstract unRegisterListener(II)V
.end method
