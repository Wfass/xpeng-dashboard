.class public Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;
.super Ljava/lang/Object;
.source "CommonMsgController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController$EventCallbackHandler;,
        Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController$InternalCommonEventListener;
    }
.end annotation


# static fields
.field private static final MSG_CONTEXTINFO_COMMON_EVENT:I = 0x0

.field public static final TAG:Ljava/lang/String; = "CommonMsgController"

.field private static mCommonMsgController:Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;


# instance fields
.field private final mHandler:Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController$EventCallbackHandler;

.field private final mInternalCommonEventListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController$InternalCommonEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;->mInternalCommonEventListeners:Landroid/util/ArraySet;

    .line 26
    new-instance v0, Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController$EventCallbackHandler;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController$EventCallbackHandler;-><init>(Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;->mHandler:Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController$EventCallbackHandler;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;II)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;->dispatchCommonEvent(II)V

    return-void
.end method

.method private dispatchCommonEvent(II)V
    .locals 7
    .param p1, "eventType"    # I
    .param p2, "eventValue"    # I

    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;->mInternalCommonEventListeners:Landroid/util/ArraySet;

    .line 59
    .local v0, "commonEventListeners":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController$InternalCommonEventListener;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController$InternalCommonEventListener;

    .line 63
    .local v2, "l":Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController$InternalCommonEventListener;
    :try_start_1
    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController$InternalCommonEventListener;->onInternalCommonEvent(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    goto :goto_1

    .line 64
    :catch_0
    move-exception v3

    .line 65
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "test"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatchCommonEvent  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .end local v2    # "l":Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController$InternalCommonEventListener;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 71
    :cond_0
    return-void

    .line 59
    .end local v0    # "commonEventListeners":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController$InternalCommonEventListener;>;"
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 30
    sget-object v0, Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;->mCommonMsgController:Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;->mCommonMsgController:Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;

    .line 32
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;->mCommonMsgController:Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;

    return-object v0
.end method

.method private handleCommonEvent(II)V
    .locals 2
    .param p1, "eventType"    # I
    .param p2, "eventValue"    # I

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;->mHandler:Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController$EventCallbackHandler;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController$EventCallbackHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 87
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 89
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 90
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;->mHandler:Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController$EventCallbackHandler;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController$EventCallbackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 91
    return-void
.end method


# virtual methods
.method public declared-synchronized registerListener(Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController$InternalCommonEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController$InternalCommonEventListener;

    monitor-enter p0

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;->mInternalCommonEventListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    .line 40
    .end local p1    # "listener":Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController$InternalCommonEventListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;
    throw p1
.end method

.method public sendCommonEvent(II)V
    .locals 0
    .param p1, "eventType"    # I
    .param p2, "eventValue"    # I

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;->handleCommonEvent(II)V

    .line 83
    return-void
.end method

.method public declared-synchronized unregisterListener(Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController$InternalCommonEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController$InternalCommonEventListener;

    monitor-enter p0

    .line 50
    :try_start_0
    const-string v0, "CommonMsgController"

    const-string v1, "unregisterListener(InternalCommonEventListener listener)"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;->mInternalCommonEventListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    .line 49
    .end local p1    # "listener":Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController$InternalCommonEventListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;
    throw p1
.end method
