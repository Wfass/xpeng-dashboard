.class public Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;
.super Ljava/lang/Object;
.source "AwarenessManager.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/XUIManagerBase;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/awareness/AwarenessManager$InstanceHolder;,
        Lcom/xiaopeng/xuimanager/awareness/AwarenessManager$AwarenessEventListenerToService;,
        Lcom/xiaopeng/xuimanager/awareness/AwarenessManager$EventCallbackHandler;,
        Lcom/xiaopeng/xuimanager/awareness/AwarenessManager$AwarenessEventListener;
    }
.end annotation


# static fields
.field public static final DBG:Z = true

.field private static final MSG_AWARENESS_ERROR_EVENT:I = 0x0

.field public static final TAG:Ljava/lang/String; = "AwarenessManager"

.field private static mServiceName:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mListenerToService:Lcom/xiaopeng/xuimanager/awareness/AwarenessManager$AwarenessEventListenerToService;

.field private final mListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/xiaopeng/xuimanager/awareness/AwarenessManager$AwarenessEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/xiaopeng/xuimanager/awareness/IAwareness;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;->mListeners:Landroid/util/ArraySet;

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;->mListenerToService:Lcom/xiaopeng/xuimanager/awareness/AwarenessManager$AwarenessEventListenerToService;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;->mListeners:Landroid/util/ArraySet;

    const/4 p2, 0x0

    .line 52
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;->mListenerToService:Lcom/xiaopeng/xuimanager/awareness/AwarenessManager$AwarenessEventListenerToService;

    .line 122
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/awareness/IAwareness$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/awareness/IAwareness;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;->mService:Lcom/xiaopeng/xuimanager/awareness/IAwareness;

    .line 123
    new-instance p1, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager$EventCallbackHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager$EventCallbackHandler;-><init>(Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/awareness/AwarenessManager$1;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;II)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;->dispatchErrorEventToClient(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;II)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;->handleErrorEvent(II)V

    return-void
.end method

.method private dispatchErrorEventToClient(II)V
    .locals 2

    .line 171
    monitor-enter p0

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;->mListeners:Landroid/util/ArraySet;

    .line 173
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager$AwarenessEventListener;

    .line 176
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager$AwarenessEventListener;->onErrorEvent(II)V

    goto :goto_0

    :cond_0
    const-string p1, "AwarenessManager"

    const-string p2, "Listener is null, not dispatching event."

    .line 179
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 173
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static getInstance()Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;
    .locals 1

    .line 104
    invoke-static {}, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager$InstanceHolder;->access$300()Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;

    move-result-object v0

    return-object v0
.end method

.method private handleErrorEvent(II)V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 185
    iput v1, v0, Landroid/os/Message;->what:I

    .line 186
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 187
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 188
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 246
    sget-object v0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;->mServiceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 247
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;->mServiceName:Ljava/lang/String;

    .line 249
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 109
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/awareness/IAwareness$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/awareness/IAwareness;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;->mService:Lcom/xiaopeng/xuimanager/awareness/IAwareness;

    .line 110
    new-instance p1, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager$EventCallbackHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager$EventCallbackHandler;-><init>(Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onXUIConnected(Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "AwarenessManager"

    if-nez p1, :cond_0

    const-string p1, "onXUIConnected,service binder is null"

    .line 213
    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;->mService:Lcom/xiaopeng/xuimanager/awareness/IAwareness;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/awareness/IAwareness;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 217
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

    .line 220
    :cond_1
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/awareness/IAwareness$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/awareness/IAwareness;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;->mService:Lcom/xiaopeng/xuimanager/awareness/IAwareness;

    .line 221
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 223
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;->mListenerToService:Lcom/xiaopeng/xuimanager/awareness/AwarenessManager$AwarenessEventListenerToService;

    if-nez p1, :cond_2

    .line 224
    new-instance p1, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager$AwarenessEventListenerToService;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager$AwarenessEventListenerToService;-><init>(Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;->mListenerToService:Lcom/xiaopeng/xuimanager/awareness/AwarenessManager$AwarenessEventListenerToService;

    .line 226
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;->mService:Lcom/xiaopeng/xuimanager/awareness/IAwareness;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;->mListenerToService:Lcom/xiaopeng/xuimanager/awareness/AwarenessManager$AwarenessEventListenerToService;

    invoke-interface {p1, v1}, Lcom/xiaopeng/xuimanager/awareness/IAwareness;->registerListener(Lcom/xiaopeng/xuimanager/awareness/IAwarenessEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onXUIConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public onXUIDisconnected()V
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;->mService:Lcom/xiaopeng/xuimanager/awareness/IAwareness;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;->mListenerToService:Lcom/xiaopeng/xuimanager/awareness/AwarenessManager$AwarenessEventListenerToService;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuimanager/awareness/IAwareness;->unregisterListener(Lcom/xiaopeng/xuimanager/awareness/IAwarenessEventListener;)V

    const/4 v0, 0x0

    .line 200
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;->mListenerToService:Lcom/xiaopeng/xuimanager/awareness/AwarenessManager$AwarenessEventListenerToService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onXUIDisconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AwarenessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public declared-synchronized registerListener(Lcom/xiaopeng/xuimanager/awareness/AwarenessManager$AwarenessEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 135
    :try_start_1
    new-instance v0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager$AwarenessEventListenerToService;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager$AwarenessEventListenerToService;-><init>(Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;->mListenerToService:Lcom/xiaopeng/xuimanager/awareness/AwarenessManager$AwarenessEventListenerToService;

    .line 136
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;->mService:Lcom/xiaopeng/xuimanager/awareness/IAwareness;

    invoke-interface {v1, v0}, Lcom/xiaopeng/xuimanager/awareness/IAwareness;->registerListener(Lcom/xiaopeng/xuimanager/awareness/IAwarenessEventListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 141
    :try_start_2
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->checkXUIServiceNotConnectedExceptionFromXUIService(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "AwarenessManager"

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not connect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 144
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0

    .line 238
    sput-object p1, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized unregisterListener(Lcom/xiaopeng/xuimanager/awareness/AwarenessManager$AwarenessEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "AwarenessManager"

    const-string v1, "unregisterListener"

    .line 155
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 158
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 160
    :try_start_1
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;->mService:Lcom/xiaopeng/xuimanager/awareness/IAwareness;

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;->mListenerToService:Lcom/xiaopeng/xuimanager/awareness/AwarenessManager$AwarenessEventListenerToService;

    invoke-interface {p1, v0}, Lcom/xiaopeng/xuimanager/awareness/IAwareness;->unregisterListener(Lcom/xiaopeng/xuimanager/awareness/IAwarenessEventListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 165
    :try_start_2
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;->mListenerToService:Lcom/xiaopeng/xuimanager/awareness/AwarenessManager$AwarenessEventListenerToService;

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "AwarenessManager"

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not unregister: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
