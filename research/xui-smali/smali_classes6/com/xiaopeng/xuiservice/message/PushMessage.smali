.class public Lcom/xiaopeng/xuiservice/message/PushMessage;
.super Ljava/lang/Object;
.source "PushMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/message/PushMessage$MessageTypeData;,
        Lcom/xiaopeng/xuiservice/message/PushMessage$SingletonHolder;,
        Lcom/xiaopeng/xuiservice/message/PushMessage$PushMessageListener;
    }
.end annotation


# static fields
.field private static final MESSAGE_CENTER_TYPE:I = 0x38

.field private static final MSG_CLOUD:I = 0x1

.field private static final MSG_INTERNAL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "xuimessage"


# instance fields
.field private allMessageListener:Lcom/xiaopeng/xuiservice/message/PushMessage$PushMessageListener;

.field private handler:Landroid/os/Handler;

.field private handlerThread:Landroid/os/HandlerThread;

.field private final mMessageType2ListenersMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Lcom/xiaopeng/xuiservice/message/PushMessage$PushMessageListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/message/PushMessage;->mMessageType2ListenersMap:Landroid/util/ArrayMap;

    .line 49
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "XUIService Message Dispatcher"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/message/PushMessage;->handlerThread:Landroid/os/HandlerThread;

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/message/PushMessage;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 51
    new-instance v0, Lcom/xiaopeng/xuiservice/message/PushMessage$1;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/message/PushMessage;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/message/PushMessage$1;-><init>(Lcom/xiaopeng/xuiservice/message/PushMessage;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/message/PushMessage;->handler:Landroid/os/Handler;

    .line 85
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/message/PushMessage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/message/PushMessage$1;

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/message/PushMessage;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/message/PushMessage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/message/PushMessage;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/message/PushMessage;->notifyMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/message/PushMessage;
    .locals 1

    .line 88
    invoke-static {}, Lcom/xiaopeng/xuiservice/message/PushMessage$SingletonHolder;->access$200()Lcom/xiaopeng/xuiservice/message/PushMessage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$notifyMessage$0(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/message/PushMessage$PushMessageListener;)V
    .locals 0
    .param p0, "messageType"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "l"    # Lcom/xiaopeng/xuiservice/message/PushMessage$PushMessageListener;

    .line 128
    invoke-interface {p2, p0, p1}, Lcom/xiaopeng/xuiservice/message/PushMessage$PushMessageListener;->onReceivePushMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private notifyMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "messageType"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 123
    const-string/jumbo v0, "xuimessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyMessage messageType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/message/PushMessage;->mMessageType2ListenersMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/message/PushMessage;->mMessageType2ListenersMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 127
    .local v1, "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/xiaopeng/xuiservice/message/PushMessage$PushMessageListener;>;"
    if-eqz v1, :cond_0

    .line 128
    new-instance v2, Lcom/xiaopeng/xuiservice/message/-$$Lambda$PushMessage$JPv9CFKuWPW0UmR0hyUlyst72u0;

    invoke-direct {v2, p1, p2}, Lcom/xiaopeng/xuiservice/message/-$$Lambda$PushMessage$JPv9CFKuWPW0UmR0hyUlyst72u0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 130
    .end local v1    # "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/xiaopeng/xuiservice/message/PushMessage$PushMessageListener;>;"
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/message/PushMessage;->allMessageListener:Lcom/xiaopeng/xuiservice/message/PushMessage$PushMessageListener;

    .line 133
    .local v0, "listener":Lcom/xiaopeng/xuiservice/message/PushMessage$PushMessageListener;
    if-eqz v0, :cond_1

    .line 134
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuiservice/message/PushMessage$PushMessageListener;->onReceivePushMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_1
    return-void

    .line 130
    .end local v0    # "listener":Lcom/xiaopeng/xuiservice/message/PushMessage$PushMessageListener;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public dispatchCloudMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "bundle"    # Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/message/PushMessage;->handler:Landroid/os/Handler;

    .line 144
    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 146
    return-void
.end method

.method public dispatchInternalMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "messageType"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/message/PushMessage;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/xuiservice/message/PushMessage$MessageTypeData;

    invoke-direct {v1, p1, p2}, Lcom/xiaopeng/xuiservice/message/PushMessage$MessageTypeData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 152
    return-void
.end method

.method public registerMessage(Ljava/lang/String;Lcom/xiaopeng/xuiservice/message/PushMessage$PushMessageListener;)V
    .locals 3
    .param p1, "messageType"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/xiaopeng/xuiservice/message/PushMessage$PushMessageListener;

    .line 96
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/message/PushMessage;->mMessageType2ListenersMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/message/PushMessage;->mMessageType2ListenersMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 101
    .local v1, "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/xiaopeng/xuiservice/message/PushMessage$PushMessageListener;>;"
    if-nez v1, :cond_1

    .line 102
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 103
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/message/PushMessage;->mMessageType2ListenersMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_1
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 106
    .end local v1    # "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/xiaopeng/xuiservice/message/PushMessage$PushMessageListener;>;"
    monitor-exit v0

    .line 107
    return-void

    .line 106
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setAllMessageListener(Lcom/xiaopeng/xuiservice/message/PushMessage$PushMessageListener;)V
    .locals 0
    .param p1, "allMessageListener"    # Lcom/xiaopeng/xuiservice/message/PushMessage$PushMessageListener;

    .line 92
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/message/PushMessage;->allMessageListener:Lcom/xiaopeng/xuiservice/message/PushMessage$PushMessageListener;

    .line 93
    return-void
.end method

.method public unregisterMessage(Ljava/lang/String;Lcom/xiaopeng/xuiservice/message/PushMessage$PushMessageListener;)V
    .locals 2
    .param p1, "messageType"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/xiaopeng/xuiservice/message/PushMessage$PushMessageListener;

    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/message/PushMessage;->mMessageType2ListenersMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/message/PushMessage;->mMessageType2ListenersMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 115
    .local v1, "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/xiaopeng/xuiservice/message/PushMessage$PushMessageListener;>;"
    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 118
    .end local v1    # "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/xiaopeng/xuiservice/message/PushMessage$PushMessageListener;>;"
    :cond_1
    monitor-exit v0

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
