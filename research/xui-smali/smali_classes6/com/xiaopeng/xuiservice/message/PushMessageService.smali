.class public Lcom/xiaopeng/xuiservice/message/PushMessageService;
.super Lcom/xiaopeng/xuimanager/message/IMessage$Stub;
.source "PushMessageService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/XUIServiceBase;
.implements Lcom/xiaopeng/xuiservice/message/PushMessage$PushMessageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;,
        Lcom/xiaopeng/xuiservice/message/PushMessageService$MessageServiceHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MESSAGE.SERVICE.PushMessageService"


# instance fields
.field private final mListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/message/IMessage$Stub;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/message/PushMessageService;->mListenerMap:Ljava/util/Map;

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/message/PushMessageService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/message/PushMessageService$1;

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/message/PushMessageService;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/message/PushMessageService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/message/PushMessageService;

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/message/PushMessageService;->mListenerMap:Ljava/util/Map;

    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/message/PushMessageService;
    .locals 1

    .line 34
    sget-object v0, Lcom/xiaopeng/xuiservice/message/PushMessageService$MessageServiceHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/message/PushMessageService;

    return-object v0
.end method

.method private handleDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 112
    const-string v0, "dump:MESSAGE.SERVICE.PushMessageService"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ListenerRecord: size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/message/PushMessageService;->mListenerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/message/PushMessageService;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;

    .line 115
    .local v1, "record":Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 116
    .end local v1    # "record":Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;
    goto :goto_0

    .line 117
    :cond_0
    return-void
.end method

.method public static synthetic lambda$KwujArOpsqFV9_eArj8bh3zXiRM(Lcom/xiaopeng/xuiservice/message/PushMessageService;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/message/PushMessageService;->handleDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onReceivePushMessage$0(Ljava/lang/String;Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;)Z
    .locals 1
    .param p0, "messageType"    # Ljava/lang/String;
    .param p1, "r"    # Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;

    .line 232
    iget-object v0, p1, Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;->messageType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$onReceivePushMessage$1(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;)V
    .locals 4
    .param p0, "messageType"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "r"    # Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;

    .line 235
    :try_start_0
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;->listener:Lcom/xiaopeng/xuimanager/message/IMessageListener;

    invoke-interface {v0, p0, p1}, Lcom/xiaopeng/xuimanager/message/IMessageListener;->onReceiveMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MESSAGE.SERVICE.PushMessageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceiveMessage, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 240
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 104
    return-void
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 108
    const-string v0, "PushMessageService"

    return-object v0
.end method

.method public init()V
    .locals 2

    .line 84
    const-string v0, "MESSAGE.SERVICE.PushMessageService"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "message"

    new-instance v1, Lcom/xiaopeng/xuiservice/message/-$$Lambda$PushMessageService$KwujArOpsqFV9_eArj8bh3zXiRM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/message/-$$Lambda$PushMessageService$KwujArOpsqFV9_eArj8bh3zXiRM;-><init>(Lcom/xiaopeng/xuiservice/message/PushMessageService;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->registerDump(Ljava/lang/String;Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;)V

    .line 86
    invoke-static {}, Lcom/xiaopeng/xuiservice/message/PushMessage;->getInstance()Lcom/xiaopeng/xuiservice/message/PushMessage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/message/PushMessage;->setAllMessageListener(Lcom/xiaopeng/xuiservice/message/PushMessage$PushMessageListener;)V

    .line 87
    return-void
.end method

.method public onReceivePushMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "messageType"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/message/PushMessageService;->mListenerMap:Ljava/util/Map;

    monitor-enter v0

    .line 229
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/message/PushMessageService;->mListenerMap:Ljava/util/Map;

    .line 230
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 231
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/message/-$$Lambda$PushMessageService$NA3pV7BNXoUggdp7UqUYw0-cSSw;

    invoke-direct {v2, p1}, Lcom/xiaopeng/xuiservice/message/-$$Lambda$PushMessageService$NA3pV7BNXoUggdp7UqUYw0-cSSw;-><init>(Ljava/lang/String;)V

    .line 232
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/message/-$$Lambda$PushMessageService$B_2aWQ8YTGB3UIVs-ppJpUzcdw8;

    invoke-direct {v2, p1, p2}, Lcom/xiaopeng/xuiservice/message/-$$Lambda$PushMessageService$B_2aWQ8YTGB3UIVs-ppJpUzcdw8;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 241
    monitor-exit v0

    .line 242
    return-void

    .line 241
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    const-string v0, "PushMessageService"

    .line 210
    .local v0, "module":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "info":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderEnter(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const/4 v2, 0x1

    .line 215
    .local v2, "ret":Z
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/message/IMessage$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 220
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderLeave(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    nop

    .line 223
    return v2

    .line 220
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 216
    :catch_0
    move-exception v3

    .line 217
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "MESSAGE.SERVICE.PushMessageService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTransact e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderLeave(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method

.method public publishMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "messageType"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 194
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 195
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 197
    .local v1, "uid":I
    const-string v2, "MESSAGE.SERVICE.PushMessageService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "publishMessage messageType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    const-string v2, "MESSAGE.SERVICE.PushMessageService"

    const-string v3, "publishMessage messageType is empty"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void

    .line 204
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/message/PushMessage;->getInstance()Lcom/xiaopeng/xuiservice/message/PushMessage;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/xiaopeng/xuiservice/message/PushMessage;->dispatchInternalMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public registerMessage(Ljava/lang/String;Lcom/xiaopeng/xuimanager/message/IMessageListener;)V
    .locals 11
    .param p1, "messageType"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/xiaopeng/xuimanager/message/IMessageListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 123
    .local v6, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 125
    .local v7, "uid":I
    const-string v0, "MESSAGE.SERVICE.PushMessageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerMessage messageType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const-string v0, "MESSAGE.SERVICE.PushMessageService"

    const-string v1, "registerMessage messageType is empty"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void

    .line 133
    :cond_0
    if-nez p2, :cond_1

    .line 134
    const-string v0, "MESSAGE.SERVICE.PushMessageService"

    const-string v1, "registerMessage listener=null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void

    .line 139
    :cond_1
    invoke-interface {p2}, Lcom/xiaopeng/xuimanager/message/IMessageListener;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 141
    .local v8, "binder":Landroid/os/IBinder;
    iget-object v9, p0, Lcom/xiaopeng/xuiservice/message/PushMessageService;->mListenerMap:Ljava/util/Map;

    monitor-enter v9

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/message/PushMessageService;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    const-string v0, "MESSAGE.SERVICE.PushMessageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "repeat listener-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    monitor-exit v9

    return-void

    .line 147
    :cond_2
    new-instance v10, Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, v6

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;-><init>(Lcom/xiaopeng/xuiservice/message/PushMessageService;Ljava/lang/String;Lcom/xiaopeng/xuimanager/message/IMessageListener;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v10

    .line 149
    .local v0, "record":Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v8, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    nop

    .line 154
    :try_start_2
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/message/PushMessageService;->mListenerMap:Ljava/util/Map;

    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .end local v0    # "record":Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;
    monitor-exit v9

    .line 157
    return-void

    .line 150
    .restart local v0    # "record":Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MESSAGE.SERVICE.PushMessageService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerMessage e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    monitor-exit v9

    return-void

    .line 155
    .end local v0    # "record":Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 3

    .line 91
    const-string v0, "MESSAGE.SERVICE.PushMessageService"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/message/PushMessageService;->mListenerMap:Ljava/util/Map;

    monitor-enter v0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/message/PushMessageService;->mListenerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;

    .line 94
    .local v2, "record":Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;->release()V

    .line 95
    .end local v2    # "record":Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;
    goto :goto_0

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/message/PushMessageService;->mListenerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 97
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-static {}, Lcom/xiaopeng/xuiservice/message/PushMessage;->getInstance()Lcom/xiaopeng/xuiservice/message/PushMessage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/message/PushMessage;->setAllMessageListener(Lcom/xiaopeng/xuiservice/message/PushMessage$PushMessageListener;)V

    .line 99
    return-void

    .line 97
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public unregisterMessage(Ljava/lang/String;Lcom/xiaopeng/xuimanager/message/IMessageListener;)V
    .locals 7
    .param p1, "messageType"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/xiaopeng/xuimanager/message/IMessageListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 163
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 165
    .local v1, "uid":I
    const-string v2, "MESSAGE.SERVICE.PushMessageService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterMessage messageType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", listener="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    const-string v2, "MESSAGE.SERVICE.PushMessageService"

    const-string v3, "unregisterMessage messageType is empty"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void

    .line 173
    :cond_0
    if-nez p2, :cond_1

    .line 174
    const-string v2, "MESSAGE.SERVICE.PushMessageService"

    const-string v3, "unregisterMessage listener=null"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void

    .line 178
    :cond_1
    invoke-interface {p2}, Lcom/xiaopeng/xuimanager/message/IMessageListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 179
    .local v2, "binder":Landroid/os/IBinder;
    const-string v3, "MESSAGE.SERVICE.PushMessageService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unregisterMessage,binder-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",listeners-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/message/PushMessageService;->mListenerMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/message/PushMessageService;->mListenerMap:Ljava/util/Map;

    monitor-enter v3

    .line 182
    :try_start_0
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/message/PushMessageService;->mListenerMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;

    .line 183
    .local v4, "record":Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    if-nez v4, :cond_2

    .line 185
    const-string v3, "MESSAGE.SERVICE.PushMessageService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no registered record for binder-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void

    .line 188
    :cond_2
    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;->release()V

    .line 189
    return-void

    .line 183
    .end local v4    # "record":Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method
