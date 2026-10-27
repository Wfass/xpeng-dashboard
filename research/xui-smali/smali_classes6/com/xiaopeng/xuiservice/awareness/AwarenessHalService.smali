.class public Lcom/xiaopeng/xuiservice/awareness/AwarenessHalService;
.super Lcom/xiaopeng/xuiservice/HalServiceBase;
.source "AwarenessHalService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/awareness/AwarenessHalService$AwarenessHalListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "AwarenessHalService"


# instance fields
.field private mListener:Lcom/xiaopeng/xuiservice/awareness/AwarenessHalService$AwarenessHalListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/HalServiceBase;-><init>()V

    .line 18
    const-string v0, "AwarenessHalService"

    const-string v1, "started AwarenessHalService!"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method private dispatchEventToListener(Lcom/xiaopeng/xuiservice/awareness/AwarenessHalService$AwarenessHalListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/awareness/AwarenessHalService$AwarenessHalListener;

    .line 56
    const-string v0, "AwarenessHalService"

    const-string v1, "handleHalEvents event: "

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 62
    const-string v0, "*Awareness HAL*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public handleHalEvents()V
    .locals 1

    .line 45
    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/awareness/AwarenessHalService;->mListener:Lcom/xiaopeng/xuiservice/awareness/AwarenessHalService$AwarenessHalListener;

    .line 47
    .local v0, "listener":Lcom/xiaopeng/xuiservice/awareness/AwarenessHalService$AwarenessHalListener;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/awareness/AwarenessHalService;->dispatchEventToListener(Lcom/xiaopeng/xuiservice/awareness/AwarenessHalService$AwarenessHalListener;)V

    .line 51
    :cond_0
    return-void

    .line 47
    .end local v0    # "listener":Lcom/xiaopeng/xuiservice/awareness/AwarenessHalService$AwarenessHalListener;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public init()V
    .locals 2

    .line 31
    const-string v0, "AwarenessHalService"

    const-string v1, "init()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public release()V
    .locals 2

    .line 38
    const-string v0, "AwarenessHalService"

    const-string v1, "release()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/awareness/AwarenessHalService;->mListener:Lcom/xiaopeng/xuiservice/awareness/AwarenessHalService$AwarenessHalListener;

    .line 41
    return-void
.end method

.method public setListener(Lcom/xiaopeng/xuiservice/awareness/AwarenessHalService$AwarenessHalListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/awareness/AwarenessHalService$AwarenessHalListener;

    .line 23
    monitor-enter p0

    .line 24
    :try_start_0
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/awareness/AwarenessHalService;->mListener:Lcom/xiaopeng/xuiservice/awareness/AwarenessHalService$AwarenessHalListener;

    .line 25
    monitor-exit p0

    .line 26
    return-void

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
