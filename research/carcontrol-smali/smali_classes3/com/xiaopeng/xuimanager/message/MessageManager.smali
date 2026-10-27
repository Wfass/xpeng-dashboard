.class public Lcom/xiaopeng/xuimanager/message/MessageManager;
.super Ljava/lang/Object;
.source "MessageManager.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/XUIManagerBase;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/message/MessageManager$EventCallbackHandler;,
        Lcom/xiaopeng/xuimanager/message/MessageManager$MessageListenerToService;,
        Lcom/xiaopeng/xuimanager/message/MessageManager$MessageManagerHolder;,
        Lcom/xiaopeng/xuimanager/message/MessageManager$MessageListener;
    }
.end annotation


# static fields
.field private static final MSG_onReceiveMessage:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MessageManager"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mListenerMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Lcom/xiaopeng/xuimanager/message/MessageManager$MessageListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mService:Lcom/xiaopeng/xuimanager/message/IMessage;

.field private final mServiceListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuimanager/message/MessageManager$MessageListenerToService;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/message/MessageManager;->mListenerMap:Landroid/util/ArrayMap;

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/message/MessageManager;->mServiceListenerMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/message/MessageManager$1;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/message/MessageManager;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuimanager/message/MessageManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/message/MessageManager;->handleOnReceiveMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuimanager/message/MessageManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/message/MessageManager;->dispatchMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private dispatchMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/message/MessageManager;->mListenerMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/message/MessageManager;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-eqz v1, :cond_0

    .line 204
    new-instance v2, Lcom/xiaopeng/xuimanager/message/-$$Lambda$MessageManager$dR7Z3fX3X2J4Ciu4hnBfH8F54Uc;

    invoke-direct {v2, p1, p2}, Lcom/xiaopeng/xuimanager/message/-$$Lambda$MessageManager$dR7Z3fX3X2J4Ciu4hnBfH8F54Uc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 212
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static getInstance()Lcom/xiaopeng/xuimanager/message/MessageManager;
    .locals 1

    .line 47
    invoke-static {}, Lcom/xiaopeng/xuimanager/message/MessageManager$MessageManagerHolder;->access$000()Lcom/xiaopeng/xuimanager/message/MessageManager;

    move-result-object v0

    return-object v0
.end method

.method private handleOnReceiveMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/message/MessageManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 197
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic lambda$dispatchMessage$0(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/message/MessageManager$MessageListener;)V
    .locals 1

    .line 206
    :try_start_0
    invoke-interface {p2, p0, p1}, Lcom/xiaopeng/xuimanager/message/MessageManager$MessageListener;->onReceiveMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 208
    sget-object p1, Lcom/xiaopeng/xuimanager/message/MessageManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "client error in onReceiveMessage callback, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/message/MessageManager;->mServiceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/message/MessageManager;->mServiceName:Ljava/lang/String;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/message/MessageManager;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 115
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/message/IMessage$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/message/IMessage;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/message/MessageManager;->mService:Lcom/xiaopeng/xuimanager/message/IMessage;

    .line 116
    new-instance p1, Lcom/xiaopeng/xuimanager/message/MessageManager$EventCallbackHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/xuimanager/message/MessageManager$EventCallbackHandler;-><init>(Lcom/xiaopeng/xuimanager/message/MessageManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/message/MessageManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onXUIConnected(Landroid/os/IBinder;)V
    .locals 3

    if-nez p1, :cond_0

    .line 61
    sget-object p1, Lcom/xiaopeng/xuimanager/message/MessageManager;->TAG:Ljava/lang/String;

    const-string v0, "onXUIConnected,service binder is null"

    invoke-static {p1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/message/MessageManager;->mService:Lcom/xiaopeng/xuimanager/message/IMessage;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/message/IMessage;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 65
    sget-object v0, Lcom/xiaopeng/xuimanager/message/MessageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onXUIConnected,service is the same:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 68
    :cond_1
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/message/IMessage$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/message/IMessage;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/message/MessageManager;->mService:Lcom/xiaopeng/xuimanager/message/IMessage;

    .line 70
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/message/MessageManager;->mServiceListenerMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 71
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/message/MessageManager;->mServiceListenerMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 72
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/message/MessageManager;->mService:Lcom/xiaopeng/xuimanager/message/IMessage;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/message/IMessageListener;

    invoke-interface {v1, v2, v0}, Lcom/xiaopeng/xuimanager/message/IMessage;->registerMessage(Ljava/lang/String;Lcom/xiaopeng/xuimanager/message/IMessageListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 76
    sget-object v0, Lcom/xiaopeng/xuimanager/message/MessageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onXUIConnected,registerMessage failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onXUIDisconnected()V
    .locals 4

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/message/MessageManager;->mServiceListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/message/MessageManager;->mServiceListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 85
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/message/MessageManager;->mService:Lcom/xiaopeng/xuimanager/message/IMessage;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/message/IMessageListener;

    invoke-interface {v2, v3, v1}, Lcom/xiaopeng/xuimanager/message/IMessage;->unregisterMessage(Ljava/lang/String;Lcom/xiaopeng/xuimanager/message/IMessageListener;)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/message/MessageManager;->mServiceListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 90
    sget-object v1, Lcom/xiaopeng/xuimanager/message/MessageManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onXUIDisconnected,registerMessage failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public publishMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/message/MessageManager;->mService:Lcom/xiaopeng/xuimanager/message/IMessage;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/message/IMessage;->publishMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 191
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/XUIManager;->checkXUIServiceNotConnectedExceptionFromXUIService(Ljava/lang/IllegalStateException;)V

    :goto_0
    return-void

    :catch_1
    move-exception p1

    .line 187
    sget-object p2, Lcom/xiaopeng/xuimanager/message/MessageManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMessage.publishMessage fail, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 189
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public registerMessage(Ljava/lang/String;Lcom/xiaopeng/xuimanager/message/MessageManager$MessageListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "messageType is null"

    .line 121
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "MessageListener listener is null"

    .line 124
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/message/MessageManager;->mListenerMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/message/MessageManager;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-nez v1, :cond_0

    .line 129
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 130
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/message/MessageManager;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_0
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 135
    :try_start_1
    new-instance v2, Lcom/xiaopeng/xuimanager/message/MessageManager$MessageListenerToService;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuimanager/message/MessageManager$MessageListenerToService;-><init>(Lcom/xiaopeng/xuimanager/message/MessageManager;)V

    .line 136
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/message/MessageManager;->mService:Lcom/xiaopeng/xuimanager/message/IMessage;

    invoke-interface {v3, p1, v2}, Lcom/xiaopeng/xuimanager/message/IMessage;->registerMessage(Ljava/lang/String;Lcom/xiaopeng/xuimanager/message/IMessageListener;)V

    .line 137
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/message/MessageManager;->mServiceListenerMap:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 143
    :try_start_2
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/XUIManager;->checkXUIServiceNotConnectedExceptionFromXUIService(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 139
    sget-object p2, Lcom/xiaopeng/xuimanager/message/MessageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMessage.registerMessage fail, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 141
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2

    .line 147
    :cond_1
    :goto_0
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 148
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/message/MessageManager;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method public unregisterMessage(Ljava/lang/String;Lcom/xiaopeng/xuimanager/message/MessageManager$MessageListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "messageType is null"

    .line 153
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "MessageListener listener is null"

    .line 156
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/message/MessageManager;->mListenerMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/message/MessageManager;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 162
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 163
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/message/MessageManager;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/message/MessageManager;->mServiceListenerMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xuimanager/message/MessageManager$MessageListenerToService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 168
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/message/MessageManager;->mService:Lcom/xiaopeng/xuimanager/message/IMessage;

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/message/IMessage;->unregisterMessage(Ljava/lang/String;Lcom/xiaopeng/xuimanager/message/IMessageListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 174
    :try_start_2
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/XUIManager;->checkXUIServiceNotConnectedExceptionFromXUIService(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 170
    sget-object p2, Lcom/xiaopeng/xuimanager/message/MessageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMessage.unregisterMessage fail, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 172
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2

    .line 180
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
