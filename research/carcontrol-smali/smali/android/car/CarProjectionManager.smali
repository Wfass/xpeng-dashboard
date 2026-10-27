.class public final Landroid/car/CarProjectionManager;
.super Landroid/car/CarManagerBase;
.source "CarProjectionManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/CarProjectionManager$CarProjectionStatusListenerImpl;,
        Landroid/car/CarProjectionManager$KeyEventHandlerRecord;,
        Landroid/car/CarProjectionManager$ICarProjectionKeyEventHandlerImpl;,
        Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy;,
        Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;,
        Landroid/car/CarProjectionManager$ProjectionStatusListener;,
        Landroid/car/CarProjectionManager$KeyEventNum;,
        Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;,
        Landroid/car/CarProjectionManager$CarProjectionListener;
    }
.end annotation


# static fields
.field public static final KEY_EVENT_CALL_KEY_DOWN:I = 0x4

.field public static final KEY_EVENT_CALL_LONG_PRESS_KEY_DOWN:I = 0x6

.field public static final KEY_EVENT_CALL_LONG_PRESS_KEY_UP:I = 0x7

.field public static final KEY_EVENT_CALL_SHORT_PRESS_KEY_UP:I = 0x5

.field public static final KEY_EVENT_VOICE_SEARCH_KEY_DOWN:I = 0x0

.field public static final KEY_EVENT_VOICE_SEARCH_LONG_PRESS_KEY_DOWN:I = 0x2

.field public static final KEY_EVENT_VOICE_SEARCH_LONG_PRESS_KEY_UP:I = 0x3

.field public static final KEY_EVENT_VOICE_SEARCH_SHORT_PRESS_KEY_UP:I = 0x1

.field public static final NUM_KEY_EVENTS:I = 0x8

.field public static final PROJECTION_AP_FAILED:I = 0x2

.field public static final PROJECTION_AP_STARTED:I = 0x0

.field public static final PROJECTION_AP_STOPPED:I = 0x1

.field public static final PROJECTION_LONG_PRESS_VOICE_SEARCH:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROJECTION_VOICE_SEARCH:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CarProjectionManager"

.field private static final mAccessPointProxyToken:Landroid/os/IBinder;


# instance fields
.field private final mBinderHandler:Landroid/car/CarProjectionManager$ICarProjectionKeyEventHandlerImpl;

.field private mCarProjectionStatusListener:Landroid/car/CarProjectionManager$CarProjectionStatusListenerImpl;

.field private mHandledEvents:Ljava/util/BitSet;

.field private final mHandlerExecutor:Ljava/util/concurrent/Executor;

.field private final mKeyEventHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;",
            "Landroid/car/CarProjectionManager$KeyEventHandlerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mLegacyListenerTranslator:Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;

.field private mListener:Landroid/car/CarProjectionManager$CarProjectionListener;

.field private final mLock:Ljava/lang/Object;

.field private mProjectionAccessPointCallbackProxy:Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy;

.field private final mProjectionStatusListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/car/CarProjectionManager$ProjectionStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/car/ICarProjection;

.field private final mToken:Landroid/os/Binder;

.field private mVoiceSearchFilter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 221
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Landroid/car/CarProjectionManager;->mAccessPointProxyToken:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 1

    .line 244
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 75
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Landroid/car/CarProjectionManager;->mToken:Landroid/os/Binder;

    .line 76
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/CarProjectionManager;->mLock:Ljava/lang/Object;

    .line 203
    new-instance p1, Landroid/car/-$$Lambda$CarProjectionManager$Jd_nLIhNaQPyVBtXf8qp9HIusSE;

    invoke-direct {p1, p0}, Landroid/car/-$$Lambda$CarProjectionManager$Jd_nLIhNaQPyVBtXf8qp9HIusSE;-><init>(Landroid/car/CarProjectionManager;)V

    iput-object p1, p0, Landroid/car/CarProjectionManager;->mLegacyListenerTranslator:Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;

    .line 206
    new-instance p1, Landroid/car/CarProjectionManager$ICarProjectionKeyEventHandlerImpl;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/car/CarProjectionManager$ICarProjectionKeyEventHandlerImpl;-><init>(Landroid/car/CarProjectionManager;Landroid/car/CarProjectionManager$1;)V

    iput-object p1, p0, Landroid/car/CarProjectionManager;->mBinderHandler:Landroid/car/CarProjectionManager$ICarProjectionKeyEventHandlerImpl;

    .line 209
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/car/CarProjectionManager;->mKeyEventHandlers:Ljava/util/Map;

    .line 212
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Landroid/car/CarProjectionManager;->mHandledEvents:Ljava/util/BitSet;

    .line 217
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Landroid/car/CarProjectionManager;->mProjectionStatusListeners:Ljava/util/Set;

    .line 245
    invoke-static {p2}, Landroid/car/ICarProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/ICarProjection;

    move-result-object p1

    iput-object p1, p0, Landroid/car/CarProjectionManager;->mService:Landroid/car/ICarProjection;

    .line 246
    invoke-virtual {p0}, Landroid/car/CarProjectionManager;->getEventHandler()Landroid/os/Handler;

    move-result-object p1

    .line 247
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Landroid/car/-$$Lambda$CarProjectionManager$xMC8M6LLEeW997bBmO6BCC6GGAM;

    invoke-direct {p2, p1}, Landroid/car/-$$Lambda$CarProjectionManager$xMC8M6LLEeW997bBmO6BCC6GGAM;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Landroid/car/CarProjectionManager;->mHandlerExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 72
    sget-object v0, Landroid/car/CarProjectionManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Landroid/car/CarProjectionManager;)Ljava/lang/Object;
    .locals 0

    .line 72
    iget-object p0, p0, Landroid/car/CarProjectionManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$600(Landroid/car/CarProjectionManager;)Ljava/util/Map;
    .locals 0

    .line 72
    iget-object p0, p0, Landroid/car/CarProjectionManager;->mKeyEventHandlers:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$700(Landroid/car/CarProjectionManager;ILjava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/car/CarProjectionManager;->handleProjectionStatusChanged(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "projection"

    return-object v0
.end method

.method private handleProjectionStatusChanged(ILjava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/car/projection/ProjectionStatus;",
            ">;)V"
        }
    .end annotation

    .line 695
    iget-object v0, p0, Landroid/car/CarProjectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 696
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/car/CarProjectionManager;->mProjectionStatusListeners:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 697
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 698
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/CarProjectionManager$ProjectionStatusListener;

    .line 699
    invoke-interface {v1, p1, p2, p3}, Landroid/car/CarProjectionManager$ProjectionStatusListener;->onProjectionStatusChanged(ILjava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 697
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static synthetic lambda$Jd_nLIhNaQPyVBtXf8qp9HIusSE(Landroid/car/CarProjectionManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/car/CarProjectionManager;->translateKeyEventToLegacyListener(I)V

    return-void
.end method

.method public static synthetic lambda$xMC8M6LLEeW997bBmO6BCC6GGAM(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method private translateKeyEventToLegacyListener(I)V
    .locals 4

    .line 326
    iget-object v0, p0, Landroid/car/CarProjectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 327
    :try_start_0
    iget-object v1, p0, Landroid/car/CarProjectionManager;->mListener:Landroid/car/CarProjectionManager$CarProjectionListener;

    if-nez v1, :cond_0

    .line 328
    monitor-exit v0

    return-void

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    .line 340
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    sget-object p1, Landroid/car/CarProjectionManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Voice assistant request, long-press = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-interface {v1, v2}, Landroid/car/CarProjectionManager$CarProjectionListener;->onVoiceAssistantRequest(Z)V

    return-void

    .line 337
    :cond_2
    :try_start_1
    sget-object v1, Landroid/car/CarProjectionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected key event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 340
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static translateVoiceSearchFilter(I)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 311
    new-instance v0, Landroid/util/ArraySet;

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 314
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x2

    and-int/2addr p0, v1

    if-eqz p0, :cond_1

    .line 317
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private unregisterProjectionStatusListenerFromCarServiceLocked()V
    .locals 2

    .line 685
    :try_start_0
    iget-object v0, p0, Landroid/car/CarProjectionManager;->mService:Landroid/car/ICarProjection;

    iget-object v1, p0, Landroid/car/CarProjectionManager;->mCarProjectionStatusListener:Landroid/car/CarProjectionManager$CarProjectionStatusListenerImpl;

    invoke-interface {v0, v1}, Landroid/car/ICarProjection;->unregisterProjectionStatusListener(Landroid/car/ICarProjectionStatusListener;)V

    const/4 v0, 0x0

    .line 686
    iput-object v0, p0, Landroid/car/CarProjectionManager;->mCarProjectionStatusListener:Landroid/car/CarProjectionManager$CarProjectionStatusListenerImpl;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 688
    invoke-virtual {p0, v0}, Landroid/car/CarProjectionManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method private updateHandledEventsLocked()V
    .locals 4

    .line 440
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 442
    iget-object v1, p0, Landroid/car/CarProjectionManager;->mKeyEventHandlers:Ljava/util/Map;

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

    check-cast v2, Landroid/car/CarProjectionManager$KeyEventHandlerRecord;

    .line 443
    iget-object v2, v2, Landroid/car/CarProjectionManager$KeyEventHandlerRecord;->mSubscribedEvents:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    goto :goto_0

    .line 446
    :cond_0
    iget-object v1, p0, Landroid/car/CarProjectionManager;->mHandledEvents:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 452
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 453
    sget-object v1, Landroid/car/CarProjectionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registering handler with system for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-virtual {v0}, Ljava/util/BitSet;->toByteArray()[B

    move-result-object v1

    .line 455
    iget-object v2, p0, Landroid/car/CarProjectionManager;->mService:Landroid/car/ICarProjection;

    iget-object v3, p0, Landroid/car/CarProjectionManager;->mBinderHandler:Landroid/car/CarProjectionManager$ICarProjectionKeyEventHandlerImpl;

    invoke-interface {v2, v3, v1}, Landroid/car/ICarProjection;->registerKeyEventHandler(Landroid/car/ICarProjectionKeyEventHandler;[B)V

    goto :goto_1

    .line 457
    :cond_2
    sget-object v1, Landroid/car/CarProjectionManager;->TAG:Ljava/lang/String;

    const-string v2, "Unregistering handler with system"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v1, p0, Landroid/car/CarProjectionManager;->mService:Landroid/car/ICarProjection;

    iget-object v2, p0, Landroid/car/CarProjectionManager;->mBinderHandler:Landroid/car/CarProjectionManager$ICarProjectionKeyEventHandlerImpl;

    invoke-interface {v1, v2}, Landroid/car/ICarProjection;->unregisterKeyEventHandler(Landroid/car/ICarProjectionKeyEventHandler;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    :goto_1
    iput-object v0, p0, Landroid/car/CarProjectionManager;->mHandledEvents:Ljava/util/BitSet;

    return-void

    :catch_0
    move-exception v0

    .line 461
    invoke-virtual {p0, v0}, Landroid/car/CarProjectionManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    return-void
.end method


# virtual methods
.method public addKeyEventHandler(Ljava/util/Set;Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 368
    invoke-virtual {p0, p1, v0, p2}, Landroid/car/CarProjectionManager;->addKeyEventHandler(Ljava/util/Set;Ljava/util/concurrent/Executor;Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;)V

    return-void
.end method

.method public addKeyEventHandler(Ljava/util/Set;Ljava/util/concurrent/Executor;Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;",
            ")V"
        }
    .end annotation

    .line 394
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 395
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const-string v3, "Invalid key event"

    .line 396
    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 397
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 400
    :cond_1
    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 401
    invoke-virtual {p0, p3}, Landroid/car/CarProjectionManager;->removeKeyEventHandler(Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;)V

    return-void

    :cond_2
    if-nez p2, :cond_3

    .line 406
    iget-object p2, p0, Landroid/car/CarProjectionManager;->mHandlerExecutor:Ljava/util/concurrent/Executor;

    .line 409
    :cond_3
    iget-object p1, p0, Landroid/car/CarProjectionManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 410
    :try_start_0
    iget-object v1, p0, Landroid/car/CarProjectionManager;->mKeyEventHandlers:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/CarProjectionManager$KeyEventHandlerRecord;

    if-nez v1, :cond_4

    .line 412
    new-instance v1, Landroid/car/CarProjectionManager$KeyEventHandlerRecord;

    invoke-direct {v1, p2, v0}, Landroid/car/CarProjectionManager$KeyEventHandlerRecord;-><init>(Ljava/util/concurrent/Executor;Ljava/util/BitSet;)V

    .line 413
    iget-object p2, p0, Landroid/car/CarProjectionManager;->mKeyEventHandlers:Ljava/util/Map;

    invoke-interface {p2, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 415
    :cond_4
    iput-object p2, v1, Landroid/car/CarProjectionManager$KeyEventHandlerRecord;->mExecutor:Ljava/util/concurrent/Executor;

    .line 416
    iput-object v0, v1, Landroid/car/CarProjectionManager$KeyEventHandlerRecord;->mSubscribedEvents:Ljava/util/BitSet;

    .line 419
    :goto_2
    invoke-direct {p0}, Landroid/car/CarProjectionManager;->updateHandledEventsLocked()V

    .line 420
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public getAvailableWifiChannels(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 545
    :try_start_0
    iget-object v0, p0, Landroid/car/CarProjectionManager;->mService:Landroid/car/ICarProjection;

    invoke-interface {v0, p1}, Landroid/car/ICarProjection;->getAvailableWifiChannels(I)[I

    move-result-object p1

    .line 546
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 547
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 548
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    .line 552
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/car/CarProjectionManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getProjectionOptions()Landroid/os/Bundle;
    .locals 2

    .line 710
    :try_start_0
    iget-object v0, p0, Landroid/car/CarProjectionManager;->mService:Landroid/car/ICarProjection;

    invoke-interface {v0}, Landroid/car/ICarProjection;->getProjectionOptions()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 712
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Landroid/car/CarProjectionManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public synthetic lambda$registerProjectionStatusListener$0$CarProjectionManager(Landroid/car/CarProjectionManager$ProjectionStatusListener;)V
    .locals 3

    .line 657
    iget-object v0, p0, Landroid/car/CarProjectionManager;->mCarProjectionStatusListener:Landroid/car/CarProjectionManager$CarProjectionStatusListenerImpl;

    .line 658
    invoke-static {v0}, Landroid/car/CarProjectionManager$CarProjectionStatusListenerImpl;->access$800(Landroid/car/CarProjectionManager$CarProjectionStatusListenerImpl;)I

    move-result v0

    iget-object v1, p0, Landroid/car/CarProjectionManager;->mCarProjectionStatusListener:Landroid/car/CarProjectionManager$CarProjectionStatusListenerImpl;

    .line 659
    invoke-static {v1}, Landroid/car/CarProjectionManager$CarProjectionStatusListenerImpl;->access$900(Landroid/car/CarProjectionManager$CarProjectionStatusListenerImpl;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/car/CarProjectionManager;->mCarProjectionStatusListener:Landroid/car/CarProjectionManager$CarProjectionStatusListenerImpl;

    .line 660
    invoke-static {v2}, Landroid/car/CarProjectionManager$CarProjectionStatusListenerImpl;->access$1000(Landroid/car/CarProjectionManager$CarProjectionStatusListenerImpl;)Ljava/util/List;

    move-result-object v2

    .line 657
    invoke-interface {p1, v0, v1, v2}, Landroid/car/CarProjectionManager$ProjectionStatusListener;->onProjectionStatusChanged(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onCarDisconnected()V
    .locals 0

    return-void
.end method

.method public onConnected()V
    .locals 2

    .line 252
    invoke-super {p0}, Landroid/car/CarManagerBase;->onConnected()V

    .line 254
    :try_start_0
    invoke-virtual {p0}, Landroid/car/CarProjectionManager;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v0

    const-string v1, "projection"

    invoke-interface {v0, v1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/car/ICarProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/ICarProjection;

    move-result-object v0

    iput-object v0, p0, Landroid/car/CarProjectionManager;->mService:Landroid/car/ICarProjection;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 256
    invoke-virtual {p0, v0}, Landroid/car/CarProjectionManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public registerProjectionListener(Landroid/car/CarProjectionManager$CarProjectionListener;I)V
    .locals 3

    const-string v0, "listener cannot be null"

    .line 277
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v0, p0, Landroid/car/CarProjectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_0
    iget-object v1, p0, Landroid/car/CarProjectionManager;->mListener:Landroid/car/CarProjectionManager$CarProjectionListener;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/car/CarProjectionManager;->mVoiceSearchFilter:I

    if-eq v1, p2, :cond_1

    .line 281
    :cond_0
    invoke-static {p2}, Landroid/car/CarProjectionManager;->translateVoiceSearchFilter(I)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Landroid/car/CarProjectionManager;->mLegacyListenerTranslator:Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;

    .line 280
    invoke-virtual {p0, v1, v2}, Landroid/car/CarProjectionManager;->addKeyEventHandler(Ljava/util/Set;Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;)V

    .line 284
    :cond_1
    iput-object p1, p0, Landroid/car/CarProjectionManager;->mListener:Landroid/car/CarProjectionManager$CarProjectionListener;

    .line 285
    iput p2, p0, Landroid/car/CarProjectionManager;->mVoiceSearchFilter:I

    .line 286
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerProjectionRunner(Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "serviceIntent cannot be null"

    .line 475
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    iget-object v0, p0, Landroid/car/CarProjectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 478
    :try_start_0
    iget-object v1, p0, Landroid/car/CarProjectionManager;->mService:Landroid/car/ICarProjection;

    invoke-interface {v1, p1}, Landroid/car/ICarProjection;->registerProjectionRunner(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 480
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/car/CarProjectionManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    .line 482
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public registerProjectionStatusListener(Landroid/car/CarProjectionManager$ProjectionStatusListener;)V
    .locals 3

    const-string v0, "listener cannot be null"

    .line 642
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    iget-object v0, p0, Landroid/car/CarProjectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 644
    :try_start_0
    iget-object v1, p0, Landroid/car/CarProjectionManager;->mProjectionStatusListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 646
    iget-object v1, p0, Landroid/car/CarProjectionManager;->mCarProjectionStatusListener:Landroid/car/CarProjectionManager$CarProjectionStatusListenerImpl;

    if-nez v1, :cond_0

    .line 647
    new-instance p1, Landroid/car/CarProjectionManager$CarProjectionStatusListenerImpl;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Landroid/car/CarProjectionManager$CarProjectionStatusListenerImpl;-><init>(Landroid/car/CarProjectionManager;Landroid/car/CarProjectionManager$1;)V

    iput-object p1, p0, Landroid/car/CarProjectionManager;->mCarProjectionStatusListener:Landroid/car/CarProjectionManager$CarProjectionStatusListenerImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    :try_start_1
    iget-object v1, p0, Landroid/car/CarProjectionManager;->mService:Landroid/car/ICarProjection;

    invoke-interface {v1, p1}, Landroid/car/ICarProjection;->registerProjectionStatusListener(Landroid/car/ICarProjectionStatusListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 651
    :try_start_2
    invoke-virtual {p0, p1}, Landroid/car/CarProjectionManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    goto :goto_0

    .line 656
    :cond_0
    invoke-virtual {p0}, Landroid/car/CarProjectionManager;->getEventHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/car/-$$Lambda$CarProjectionManager$jZjnlnLCFF7ZIIfTH1XRTbAnUtY;

    invoke-direct {v2, p0, p1}, Landroid/car/-$$Lambda$CarProjectionManager$jZjnlnLCFF7ZIIfTH1XRTbAnUtY;-><init>(Landroid/car/CarProjectionManager;Landroid/car/CarProjectionManager$ProjectionStatusListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 662
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

.method public regsiterProjectionListener(Landroid/car/CarProjectionManager$CarProjectionListener;I)V
    .locals 0

    .line 265
    invoke-virtual {p0, p1, p2}, Landroid/car/CarProjectionManager;->registerProjectionListener(Landroid/car/CarProjectionManager$CarProjectionListener;I)V

    return-void
.end method

.method public releaseBluetoothProfileInhibit(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2

    const-string v0, "device cannot be null"

    .line 606
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    :try_start_0
    iget-object v0, p0, Landroid/car/CarProjectionManager;->mService:Landroid/car/ICarProjection;

    iget-object v1, p0, Landroid/car/CarProjectionManager;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, p2, v1}, Landroid/car/ICarProjection;->releaseBluetoothProfileInhibit(Landroid/bluetooth/BluetoothDevice;ILandroid/os/IBinder;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 610
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/car/CarProjectionManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public removeKeyEventHandler(Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;)V
    .locals 2

    .line 430
    iget-object v0, p0, Landroid/car/CarProjectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 431
    :try_start_0
    iget-object v1, p0, Landroid/car/CarProjectionManager;->mKeyEventHandlers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/CarProjectionManager$KeyEventHandlerRecord;

    if-eqz p1, :cond_0

    .line 433
    invoke-direct {p0}, Landroid/car/CarProjectionManager;->updateHandledEventsLocked()V

    .line 435
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

.method public requestBluetoothProfileInhibit(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2

    const-string v0, "device cannot be null"

    .line 588
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    :try_start_0
    iget-object v0, p0, Landroid/car/CarProjectionManager;->mService:Landroid/car/ICarProjection;

    iget-object v1, p0, Landroid/car/CarProjectionManager;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, p2, v1}, Landroid/car/ICarProjection;->requestBluetoothProfileInhibit(Landroid/bluetooth/BluetoothDevice;ILandroid/os/IBinder;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 592
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/car/CarProjectionManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public startProjectionAccessPoint(Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;)V
    .locals 4

    const-string v0, "callback cannot be null"

    .line 522
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    iget-object v0, p0, Landroid/car/CarProjectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 524
    :try_start_0
    invoke-virtual {p0}, Landroid/car/CarProjectionManager;->getEventHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 525
    new-instance v2, Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy;

    invoke-direct {v2, p0, v1, p1}, Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy;-><init>(Landroid/car/CarProjectionManager;Landroid/os/Looper;Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    :try_start_1
    iget-object p1, p0, Landroid/car/CarProjectionManager;->mService:Landroid/car/ICarProjection;

    invoke-virtual {v2}, Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    sget-object v3, Landroid/car/CarProjectionManager;->mAccessPointProxyToken:Landroid/os/IBinder;

    invoke-interface {p1, v1, v3}, Landroid/car/ICarProjection;->startProjectionAccessPoint(Landroid/os/Messenger;Landroid/os/IBinder;)V

    .line 529
    iput-object v2, p0, Landroid/car/CarProjectionManager;->mProjectionAccessPointCallbackProxy:Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 531
    :try_start_2
    invoke-virtual {p0, p1}, Landroid/car/CarProjectionManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    .line 533
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

.method public stopProjectionAccessPoint()V
    .locals 3

    .line 562
    iget-object v0, p0, Landroid/car/CarProjectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 563
    :try_start_0
    iget-object v1, p0, Landroid/car/CarProjectionManager;->mProjectionAccessPointCallbackProxy:Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy;

    const/4 v2, 0x0

    .line 564
    iput-object v2, p0, Landroid/car/CarProjectionManager;->mProjectionAccessPointCallbackProxy:Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy;

    .line 565
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    return-void

    .line 571
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/car/CarProjectionManager;->mService:Landroid/car/ICarProjection;

    sget-object v1, Landroid/car/CarProjectionManager;->mAccessPointProxyToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/car/ICarProjection;->stopProjectionAccessPoint(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 573
    invoke-virtual {p0, v0}, Landroid/car/CarProjectionManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 565
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public unregisterProjectionListener()V
    .locals 2

    .line 302
    iget-object v0, p0, Landroid/car/CarProjectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 303
    :try_start_0
    iget-object v1, p0, Landroid/car/CarProjectionManager;->mLegacyListenerTranslator:Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;

    invoke-virtual {p0, v1}, Landroid/car/CarProjectionManager;->removeKeyEventHandler(Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;)V

    const/4 v1, 0x0

    .line 304
    iput-object v1, p0, Landroid/car/CarProjectionManager;->mListener:Landroid/car/CarProjectionManager$CarProjectionListener;

    const/4 v1, 0x0

    .line 305
    iput v1, p0, Landroid/car/CarProjectionManager;->mVoiceSearchFilter:I

    .line 306
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterProjectionRunner(Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "serviceIntent cannot be null"

    .line 492
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    iget-object v0, p0, Landroid/car/CarProjectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 495
    :try_start_0
    iget-object v1, p0, Landroid/car/CarProjectionManager;->mService:Landroid/car/ICarProjection;

    invoke-interface {v1, p1}, Landroid/car/ICarProjection;->unregisterProjectionRunner(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 497
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/car/CarProjectionManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    .line 499
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public unregisterProjectionStatusListener(Landroid/car/CarProjectionManager$ProjectionStatusListener;)V
    .locals 2

    const-string v0, "listener cannot be null"

    .line 673
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    iget-object v0, p0, Landroid/car/CarProjectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 675
    :try_start_0
    iget-object v1, p0, Landroid/car/CarProjectionManager;->mProjectionStatusListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/car/CarProjectionManager;->mProjectionStatusListeners:Ljava/util/Set;

    .line 676
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 679
    :cond_0
    invoke-direct {p0}, Landroid/car/CarProjectionManager;->unregisterProjectionStatusListenerFromCarServiceLocked()V

    .line 680
    monitor-exit v0

    return-void

    .line 677
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 680
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregsiterProjectionListener()V
    .locals 0

    .line 294
    invoke-virtual {p0}, Landroid/car/CarProjectionManager;->unregisterProjectionListener()V

    return-void
.end method

.method public updateProjectionStatus(Landroid/car/projection/ProjectionStatus;)V
    .locals 2

    const-string/jumbo v0, "status cannot be null"

    .line 624
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    :try_start_0
    iget-object v0, p0, Landroid/car/CarProjectionManager;->mService:Landroid/car/ICarProjection;

    iget-object v1, p0, Landroid/car/CarProjectionManager;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, v1}, Landroid/car/ICarProjection;->updateProjectionStatus(Landroid/car/projection/ProjectionStatus;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 628
    invoke-virtual {p0, p1}, Landroid/car/CarProjectionManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method
