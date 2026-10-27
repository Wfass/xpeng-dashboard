.class public Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;
.super Ljava/lang/Object;
.source "MakeupLightManager.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/XUIManagerBase;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$EventCallbackHandler;,
        Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$MakeupLightListenerToService;,
        Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$EventListener;,
        Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;,
        Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$SingletonHolder;
    }
.end annotation


# static fields
.field public static final ERROR:I = 0x2

.field public static final MSG_AVAILABLE:I = 0x0

.field public static final MSG_COLORTEMP:I = 0x1

.field public static final MSG_EFFECT:I = 0x3

.field public static final MSG_LUMINANCE:I = 0x2

.field public static final START:I = 0x0

.field public static final STOP:I = 0x1

.field public static final TAG:Ljava/lang/String; = "MakeupLightManager"

.field private static mServiceName:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mListenerToService:Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$MakeupLightListenerToService;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mListeners:Ljava/util/Set;

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mListenerToService:Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$MakeupLightListenerToService;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    invoke-static {p2}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mListeners:Ljava/util/Set;

    const/4 p2, 0x0

    .line 50
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mListenerToService:Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$MakeupLightListenerToService;

    .line 545
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mService:Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;

    .line 546
    new-instance p1, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$EventCallbackHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$EventCallbackHandler;-><init>(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$1;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->handleAvailableEvent(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;II)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->handleColorTemperatureEvent(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->handleLuminanceEvent(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;Ljava/lang/String;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->handleEffectEvent(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->dispatchAvailableToClient(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;II)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->dispatchColorTempToClient(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->dispatchLuminanceToClient(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;Ljava/lang/String;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->dispatchEffectToClient(Ljava/lang/String;I)V

    return-void
.end method

.method private dispatchAvailableToClient(Z)V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mListeners:Ljava/util/Set;

    monitor-enter v0

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mListeners:Ljava/util/Set;

    new-instance v2, Lcom/xiaopeng/xuimanager/makeuplight/-$$Lambda$MakeupLightManager$9ZO4TfXPx0GQmfdpYEBTYEO51Mo;

    invoke-direct {v2, p1}, Lcom/xiaopeng/xuimanager/makeuplight/-$$Lambda$MakeupLightManager$9ZO4TfXPx0GQmfdpYEBTYEO51Mo;-><init>(Z)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 115
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private dispatchColorTempToClient(II)V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mListeners:Ljava/util/Set;

    monitor-enter v0

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mListeners:Ljava/util/Set;

    new-instance v2, Lcom/xiaopeng/xuimanager/makeuplight/-$$Lambda$MakeupLightManager$d-a8dugtZi8Mb-eKsFPnDGkTnSI;

    invoke-direct {v2, p1, p2}, Lcom/xiaopeng/xuimanager/makeuplight/-$$Lambda$MakeupLightManager$d-a8dugtZi8Mb-eKsFPnDGkTnSI;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 121
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private dispatchEffectToClient(Ljava/lang/String;I)V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mListeners:Ljava/util/Set;

    monitor-enter v0

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mListeners:Ljava/util/Set;

    new-instance v2, Lcom/xiaopeng/xuimanager/makeuplight/-$$Lambda$MakeupLightManager$BZIX_hPthtOzRONGE93bGvKnyfk;

    invoke-direct {v2, p2, p1}, Lcom/xiaopeng/xuimanager/makeuplight/-$$Lambda$MakeupLightManager$BZIX_hPthtOzRONGE93bGvKnyfk;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 141
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private dispatchLuminanceToClient(I)V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mListeners:Ljava/util/Set;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mListeners:Ljava/util/Set;

    new-instance v2, Lcom/xiaopeng/xuimanager/makeuplight/-$$Lambda$MakeupLightManager$P3e9UhUr_S_g3p9aL0xovdDmRTU;

    invoke-direct {v2, p1}, Lcom/xiaopeng/xuimanager/makeuplight/-$$Lambda$MakeupLightManager$P3e9UhUr_S_g3p9aL0xovdDmRTU;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 127
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static getInstance()Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;
    .locals 1

    .line 62
    invoke-static {}, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$SingletonHolder;->access$100()Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;

    move-result-object v0

    return-object v0
.end method

.method private handleAvailableEvent(Z)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 146
    iput v1, v0, Landroid/os/Message;->what:I

    .line 147
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 148
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleColorTemperatureEvent(II)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 153
    iput v1, v0, Landroid/os/Message;->what:I

    .line 154
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 155
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 156
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleEffectEvent(Ljava/lang/String;I)V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 168
    iput v1, v0, Landroid/os/Message;->what:I

    .line 169
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 170
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 171
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleLuminanceEvent(I)V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 161
    iput v1, v0, Landroid/os/Message;->what:I

    .line 162
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 163
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static synthetic lambda$Igo2_uSZRCxpiknzZ5VtqFp77VI(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$dispatchAvailableToClient$0(ZLcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$EventListener;)V
    .locals 0

    .line 114
    invoke-interface {p1, p0}, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$EventListener;->onAvailable(Z)V

    return-void
.end method

.method static synthetic lambda$dispatchColorTempToClient$1(IILcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$EventListener;)V
    .locals 1

    .line 120
    new-instance v0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;-><init>(II)V

    invoke-interface {p2, v0}, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$EventListener;->onColorTemperature(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;)V

    return-void
.end method

.method static synthetic lambda$dispatchEffectToClient$3(ILjava/lang/String;Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$EventListener;)V
    .locals 1

    if-nez p0, :cond_0

    .line 134
    invoke-interface {p2, p1}, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$EventListener;->onStartEffect(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 136
    invoke-interface {p2, p1}, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$EventListener;->onStopEffect(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 138
    invoke-interface {p2, p1}, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$EventListener;->onErrorEffect(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic lambda$dispatchLuminanceToClient$2(ILcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$EventListener;)V
    .locals 0

    .line 126
    invoke-interface {p1, p0}, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$EventListener;->onLuminance(I)V

    return-void
.end method


# virtual methods
.method public getColorTemperature()Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 427
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mService:Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;->getColorTemperature()Ljava/util/List;

    move-result-object v0

    .line 428
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuimanager/makeuplight/-$$Lambda$MakeupLightManager$Igo2_uSZRCxpiknzZ5VtqFp77VI;->INSTANCE:Lcom/xiaopeng/xuimanager/makeuplight/-$$Lambda$MakeupLightManager$Igo2_uSZRCxpiknzZ5VtqFp77VI;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 430
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 431
    new-instance v1, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;-><init>(II)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;

    const/4 v0, -0x1

    invoke-direct {v1, v0, v0}, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;-><init>(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not getColorTemperature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MakeupLightManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getLuminance()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 464
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mService:Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;->getLuminance()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not getLuminance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MakeupLightManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getMakeupAvailable()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mService:Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;->getMakeupAvailable()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not getMakeupAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MakeupLightManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 267
    sget-object v0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mServiceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 268
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mServiceName:Ljava/lang/String;

    .line 271
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 72
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mService:Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;

    .line 73
    new-instance p1, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$EventCallbackHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$EventCallbackHandler;-><init>(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public loadMakeupEffect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mService:Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;->loadMakeupEffect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not loadMakeupEffect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MakeupLightManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public onServerDisconnected()V
    .locals 0

    return-void
.end method

.method public onXUIConnected(Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "MakeupLightManager"

    if-nez p1, :cond_0

    const-string p1, "onXUIConnected,service binder is null"

    .line 236
    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mService:Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 240
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

    .line 243
    :cond_1
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mService:Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;

    .line 244
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 246
    :try_start_0
    new-instance p1, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$MakeupLightListenerToService;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$MakeupLightListenerToService;-><init>(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mListenerToService:Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$MakeupLightListenerToService;

    .line 247
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mService:Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;->registerListener(Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not connect to XUI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public onXUIDisconnected()V
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mService:Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mListenerToService:Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$MakeupLightListenerToService;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;->unregisterListener(Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;)V

    const/4 v0, 0x0

    .line 223
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mListenerToService:Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$MakeupLightListenerToService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not connect to XUI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MakeupLightManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public declared-synchronized registerListener(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$EventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "MakeupLightManager"

    const-string v1, "registerListener"

    .line 282
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 286
    :try_start_1
    new-instance v0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$MakeupLightListenerToService;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$MakeupLightListenerToService;-><init>(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mListenerToService:Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$MakeupLightListenerToService;

    .line 287
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mService:Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;

    invoke-interface {v1, v0}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;->registerListener(Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 292
    :try_start_2
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->checkXUIServiceNotConnectedExceptionFromXUIService(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "MakeupLightManager"

    .line 289
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

    .line 290
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 296
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 297
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public runEffect(Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 484
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mService:Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;->runEffect(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 486
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not runEffect: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MakeupLightManager"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public setColorTemperature(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mService:Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;

    iget v1, p1, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;->rgb:I

    iget p1, p1, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;->white:I

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;->setColorTemperature(II)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not setColorTemperature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MakeupLightManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setColorTemperature(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 412
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mService:Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;->setAliasColorTemperature(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not setAliasColorTemperature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MakeupLightManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setLuminance(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 449
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mService:Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;->setLuminance(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not setLuminance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MakeupLightManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0

    .line 259
    sput-object p1, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method public showAliasColorTemperature()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 358
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mService:Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;->showAliasColorTemperature()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not showAliasColorTemperature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MakeupLightManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public showMakeupEffect()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 343
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mService:Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;->showMakeupEffect()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not showMakeupEffect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MakeupLightManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public stopEffect()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 501
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mService:Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;->stopEffect()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not stopEffect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MakeupLightManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public declared-synchronized unregisterListener(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$EventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "MakeupLightManager"

    const-string v1, "unregisterListener"

    .line 307
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 310
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 312
    :try_start_1
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mService:Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mListenerToService:Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$MakeupLightListenerToService;

    invoke-interface {p1, v0}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;->unregisterListener(Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 317
    :try_start_2
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->mListenerToService:Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$MakeupLightListenerToService;

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MakeupLightManager"

    .line 314
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

    .line 315
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 319
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
