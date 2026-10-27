.class public Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;
.super Ljava/lang/Object;
.source "MusicRecognizeManager.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/XUIManagerBase;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager$SingletonHolder;,
        Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager$MusicRecognizeEventListenerToService;,
        Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager$EventCallbackHandler;,
        Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager$MusicRecognizeEventListener;
    }
.end annotation


# static fields
.field public static final DBG:Z = true

.field private static final MODE_HUMMING:I = 0x2

.field private static final MODE_ORIGINAL_SOUND:I = 0x1

.field private static final MSG_MUSICRECOGNIZE_ERROR_EVENT:I = 0x0

.field private static final MSG_MUSICRECOGNIZE_FINDCOVER_EVENT:I = 0x1

.field private static final MSG_MUSICRECOGNIZE_RECOGNIZE_EVENT:I = 0x2

.field public static final TAG:Ljava/lang/String; = "MusicRecognizeManager"

.field private static mServiceName:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mListenerToService:Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager$MusicRecognizeEventListenerToService;

.field private final mListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager$MusicRecognizeEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognize;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->mListeners:Landroid/util/ArraySet;

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->mListenerToService:Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager$MusicRecognizeEventListenerToService;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->mListeners:Landroid/util/ArraySet;

    const/4 p2, 0x0

    .line 64
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->mListenerToService:Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager$MusicRecognizeEventListenerToService;

    .line 165
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognize$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognize;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->mService:Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognize;

    .line 166
    new-instance p1, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager$EventCallbackHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager$EventCallbackHandler;-><init>(Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager$1;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->dispatchFindCoverEventToClient(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->dispatchRecognizeEventToClient(Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;II)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->dispatchErrorEventToClient(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->handleFindCoverEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;II)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->handleErrorEvent(II)V

    return-void
.end method

.method private dispatchErrorEventToClient(II)V
    .locals 2

    .line 243
    monitor-enter p0

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->mListeners:Landroid/util/ArraySet;

    .line 245
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager$MusicRecognizeEventListener;

    .line 248
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager$MusicRecognizeEventListener;->onErrorEvent(II)V

    goto :goto_0

    :cond_0
    const-string p1, "MusicRecognizeManager"

    const-string p2, "Listener is null, not dispatching event."

    .line 251
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 245
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private dispatchFindCoverEventToClient(Ljava/lang/String;)V
    .locals 2

    .line 214
    monitor-enter p0

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->mListeners:Landroid/util/ArraySet;

    .line 216
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager$MusicRecognizeEventListener;

    .line 219
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager$MusicRecognizeEventListener;->onFindCoverEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "MusicRecognizeManager"

    const-string v0, "Listener died, not dispatching event."

    .line 222
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 216
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private dispatchRecognizeEventToClient(Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;)V
    .locals 2

    .line 229
    monitor-enter p0

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->mListeners:Landroid/util/ArraySet;

    .line 231
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager$MusicRecognizeEventListener;

    .line 234
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager$MusicRecognizeEventListener;->onRecognizeEvent(Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;)V

    goto :goto_0

    :cond_0
    const-string p1, "MusicRecognizeManager"

    const-string v0, "Listener is null, not dispatching event."

    .line 237
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 231
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static getInstance()Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;
    .locals 1

    .line 143
    invoke-static {}, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager$SingletonHolder;->access$600()Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;

    move-result-object v0

    return-object v0
.end method

.method private handleErrorEvent(II)V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 265
    iput v1, v0, Landroid/os/Message;->what:I

    .line 266
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 267
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 268
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleFindCoverEvent(Ljava/lang/String;)V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public findSongCover(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "MusicRecognizeManager"

    const-string v1, "getMinScore()"

    .line 407
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->mService:Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognize;

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognize;->findSongCover(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not getMinScore: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getMinScore()F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "MusicRecognizeManager"

    const-string v1, "getMinScore()"

    .line 395
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->mService:Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognize;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognize;->getMinScore()F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not getMinScore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getMode()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "MusicRecognizeManager"

    const-string v1, "getMode()"

    .line 371
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->mService:Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognize;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognize;->getMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not getMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 315
    sget-object v0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->mServiceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 316
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->mServiceName:Ljava/lang/String;

    .line 318
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public handleRecognizeEvent(Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;)V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 153
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognize$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognize;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->mService:Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognize;

    .line 154
    new-instance p1, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager$EventCallbackHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager$EventCallbackHandler;-><init>(Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onServerDisconnected()V
    .locals 0

    return-void
.end method

.method public onXUIConnected(Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "MusicRecognizeManager"

    if-nez p1, :cond_0

    const-string p1, "onXUIConnected,service binder is null"

    .line 292
    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 295
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->mService:Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognize;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognize;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 296
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

    .line 299
    :cond_1
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognize$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognize;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->mService:Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognize;

    return-void
.end method

.method public onXUIDisconnected()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager$MusicRecognizeEventListener;

    .line 279
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->unregisterListener(Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager$MusicRecognizeEventListener;)V
    :try_end_0
    .catch Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized registerListener(Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager$MusicRecognizeEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 178
    :try_start_1
    new-instance v0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager$MusicRecognizeEventListenerToService;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager$MusicRecognizeEventListenerToService;-><init>(Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->mListenerToService:Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager$MusicRecognizeEventListenerToService;

    .line 179
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->mService:Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognize;

    invoke-interface {v1, v0}, Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognize;->registerListener(Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 184
    :try_start_2
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->checkXUIServiceNotConnectedExceptionFromXUIService(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "MusicRecognizeManager"

    .line 181
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

    .line 182
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 187
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMinScore(F)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "MusicRecognizeManager"

    const-string v1, "setMinScore()"

    .line 383
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->mService:Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognize;

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognize;->setMinScore(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not setMinScore: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setMode(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "MusicRecognizeManager"

    const-string v1, "setMode()"

    .line 359
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->mService:Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognize;

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognize;->setMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not setMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0

    .line 307
    sput-object p1, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method public start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "MusicRecognizeManager"

    const-string v1, "start()"

    .line 323
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->mService:Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognize;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognize;->start()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not start: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public stop()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "MusicRecognizeManager"

    const-string v1, "stop()"

    .line 335
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->mService:Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognize;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognize;->stop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not stop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public stopAndRecognize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "MusicRecognizeManager"

    const-string v1, "stopAndRecognize()"

    .line 347
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->mService:Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognize;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognize;->stopAndRecognize()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not stopAndRecognize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public declared-synchronized unregisterListener(Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager$MusicRecognizeEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "MusicRecognizeManager"

    const-string v1, "unregisterListener"

    .line 198
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 201
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 203
    :try_start_1
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->mService:Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognize;

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->mListenerToService:Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager$MusicRecognizeEventListenerToService;

    invoke-interface {p1, v0}, Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognize;->unregisterListener(Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 208
    :try_start_2
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->mListenerToService:Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager$MusicRecognizeEventListenerToService;

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MusicRecognizeManager"

    .line 205
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

    .line 206
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
