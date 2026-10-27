.class public Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;
.super Ljava/lang/Object;
.source "AmbientLightManager.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/XUIManagerBase;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListenerToService;,
        Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$EventCallbackHandler;,
        Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListener;,
        Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$SINGLETON_HOLDER;
    }
.end annotation


# static fields
.field public static final BRIGHT_SET_EVENT:I = 0x5

.field public static final DBG:Z = false

.field public static final DOUBLE_COLOR_ENABLE_EVENT:I = 0x2

.field public static final DOUBLE_COLOR_SET_EVENT:I = 0x4

.field public static final EFFECT_FOLLOW_SPEED:Ljava/lang/String; = "follow_speed"

.field public static final EFFECT_GENTLE_BREATHING:Ljava/lang/String; = "gentle_breathing"

.field public static final EFFECT_MUSIC:Ljava/lang/String; = "music"

.field public static final EFFECT_STABLE_EFFECT:Ljava/lang/String; = "stable_effect"

.field public static final EFFECT_TYPE_SET_EVENT:I = 0x1

.field public static final EFFECT_WELCOME:Ljava/lang/String; = "welcome_effect"

.field public static final EFFECT_WELCOME_5D_CINEMA:Ljava/lang/String; = "5d_cinema_welcome_effect"

.field public static final LIGHT_COLOR_1:I = 0x1

.field public static final LIGHT_COLOR_10:I = 0xa

.field public static final LIGHT_COLOR_11:I = 0xb

.field public static final LIGHT_COLOR_12:I = 0xc

.field public static final LIGHT_COLOR_13:I = 0xd

.field public static final LIGHT_COLOR_14:I = 0xe

.field public static final LIGHT_COLOR_15:I = 0xf

.field public static final LIGHT_COLOR_16:I = 0x10

.field public static final LIGHT_COLOR_17:I = 0x11

.field public static final LIGHT_COLOR_18:I = 0x12

.field public static final LIGHT_COLOR_19:I = 0x13

.field public static final LIGHT_COLOR_2:I = 0x2

.field public static final LIGHT_COLOR_20:I = 0x14

.field public static final LIGHT_COLOR_3:I = 0x3

.field public static final LIGHT_COLOR_4:I = 0x4

.field public static final LIGHT_COLOR_5:I = 0x5

.field public static final LIGHT_COLOR_6:I = 0x6

.field public static final LIGHT_COLOR_7:I = 0x7

.field public static final LIGHT_COLOR_8:I = 0x8

.field public static final LIGHT_COLOR_9:I = 0x9

.field public static final MONO_COLOR_SET_EVENT:I = 0x3

.field private static final MSG_AMBIENTLIGHT_BRIGHT_SET_EVENT:I = 0x5

.field private static final MSG_AMBIENTLIGHT_DOUBLE_COLOR_ENABLE_EVENT:I = 0x2

.field private static final MSG_AMBIENTLIGHT_DOUBLE_COLOR_SET_EVENT:I = 0x4

.field private static final MSG_AMBIENTLIGHT_EFFECT_TYPE_SET_EVENT:I = 0x1

.field private static final MSG_AMBIENTLIGHT_ERROR_EVENT:I = 0x0

.field private static final MSG_AMBIENTLIGHT_MONO_COLOR_SET_EVENT:I = 0x3

.field private static final MSG_AMBIENTLIGHT_SWITCH_SET_EVENT:I = 0x6

.field public static final SWITCH_SET_EVENT:I = 0x6

.field public static final TAG:Ljava/lang/String; = "AmbientLightManager"

.field private static mServiceName:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mListenerToService:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListenerToService;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mListeners:Ljava/util/Set;

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mListenerToService:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListenerToService;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mListeners:Ljava/util/Set;

    const/4 p2, 0x0

    .line 87
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mListenerToService:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListenerToService;

    .line 121
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mService:Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;

    .line 122
    new-instance p1, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$EventCallbackHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$EventCallbackHandler;-><init>(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$1;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->handleLightEffectTypeSetEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;Ljava/lang/String;Z)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->handleLightDoubleColorEnableEvent(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;Ljava/lang/String;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->handleLightMonoColorSetEvent(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;Ljava/lang/String;II)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->handleLightDoubleColorSetEvent(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;Ljava/lang/String;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->handleLightBrightSetEvent(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;Ljava/lang/String;Z)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->handleLightSwitchSetEvent(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;II)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->dispatchErrorEventToClient(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->dispatchLightEffectTypeSetEventToClient(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;Ljava/lang/String;Z)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->dispatchLightDoubleColorEnableEventToClient(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;Ljava/lang/String;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->dispatchLightMonoColorSetEventToClient(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;Ljava/lang/String;II)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->dispatchLightDoubleColorSetEventToClient(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;Ljava/lang/String;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->dispatchLightBrightSetEventToClient(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;Ljava/lang/String;Z)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->dispatchLightSwitchSetEventToClient(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;II)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->handleErrorEvent(II)V

    return-void
.end method

.method private dispatchErrorEventToClient(II)V
    .locals 2

    .line 170
    monitor-enter p0

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mListeners:Ljava/util/Set;

    .line 172
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListener;

    .line 175
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListener;->onErrorEvent(II)V

    goto :goto_0

    :cond_0
    const-string p1, "AmbientLightManager"

    const-string p2, "Listener is null, not dispatching event."

    .line 178
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 172
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private dispatchLightBrightSetEventToClient(Ljava/lang/String;I)V
    .locals 2

    .line 226
    monitor-enter p0

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mListeners:Ljava/util/Set;

    .line 228
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListener;

    .line 231
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListener;->onLightBrightSetEvent(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string p1, "AmbientLightManager"

    const-string p2, "Listener is null, not dispatching event."

    .line 234
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 228
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private dispatchLightDoubleColorEnableEventToClient(Ljava/lang/String;Z)V
    .locals 2

    .line 198
    monitor-enter p0

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mListeners:Ljava/util/Set;

    .line 200
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListener;

    .line 203
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListener;->onLightDoubleColorEnableEvent(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string p1, "AmbientLightManager"

    const-string p2, "Listener is null, not dispatching event."

    .line 206
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 200
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private dispatchLightDoubleColorSetEventToClient(Ljava/lang/String;II)V
    .locals 2

    .line 240
    monitor-enter p0

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mListeners:Ljava/util/Set;

    .line 242
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListener;

    .line 245
    invoke-interface {v1, p1, p2, p3}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListener;->onLightDoubleColorSetEvent(Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    const-string p1, "AmbientLightManager"

    const-string p2, "Listener is null, not dispatching event."

    .line 248
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 242
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private dispatchLightEffectTypeSetEventToClient(Ljava/lang/String;)V
    .locals 2

    .line 184
    monitor-enter p0

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mListeners:Ljava/util/Set;

    .line 186
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListener;

    .line 189
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListener;->onLightEffectTypeSetEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "AmbientLightManager"

    const-string v0, "Listener is null, not dispatching event."

    .line 192
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 186
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private dispatchLightMonoColorSetEventToClient(Ljava/lang/String;I)V
    .locals 2

    .line 212
    monitor-enter p0

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mListeners:Ljava/util/Set;

    .line 214
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListener;

    .line 217
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListener;->onLightMonoColorSetEvent(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string p1, "AmbientLightManager"

    const-string p2, "Listener is null, not dispatching event."

    .line 220
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 214
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private dispatchLightSwitchSetEventToClient(Ljava/lang/String;Z)V
    .locals 2

    .line 254
    monitor-enter p0

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mListeners:Ljava/util/Set;

    .line 256
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 258
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListener;

    .line 259
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListener;->onLightSwitchSetEvent(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string p1, "AmbientLightManager"

    const-string p2, "Listener is null, not dispatching event."

    .line 262
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 256
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static getInstance()Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;
    .locals 1

    .line 99
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$SINGLETON_HOLDER;->access$100()Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    move-result-object v0

    return-object v0
.end method

.method private handleErrorEvent(II)V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 268
    iput v1, v0, Landroid/os/Message;->what:I

    .line 269
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 270
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 271
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleLightBrightSetEvent(Ljava/lang/String;I)V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    .line 310
    iput v1, v0, Landroid/os/Message;->what:I

    .line 311
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 312
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 313
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleLightDoubleColorEnableEvent(Ljava/lang/String;Z)V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 283
    iput v1, v0, Landroid/os/Message;->what:I

    .line 284
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 285
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "enable"

    .line 286
    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 287
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 288
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleLightDoubleColorSetEvent(Ljava/lang/String;II)V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    .line 301
    iput v1, v0, Landroid/os/Message;->what:I

    .line 302
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 303
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 304
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 305
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleLightEffectTypeSetEvent(Ljava/lang/String;)V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 276
    iput v1, v0, Landroid/os/Message;->what:I

    .line 277
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 278
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleLightMonoColorSetEvent(Ljava/lang/String;I)V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 293
    iput v1, v0, Landroid/os/Message;->what:I

    .line 294
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 295
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 296
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleLightSwitchSetEvent(Ljava/lang/String;Z)V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    .line 318
    iput v1, v0, Landroid/os/Message;->what:I

    .line 319
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 320
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 321
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public getAmbientLightBright()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "AmbientLightManager"

    const-string v1, "getAmbientLightBright() "

    .line 522
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mService:Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;->getAmbientLightBright()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 526
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not getAmbientLightBright: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getAmbientLightDoubleFirstColor(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 491
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mService:Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;->getAmbientLightDoubleFirstColor(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not getAmbientLightDoubleFirstColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AmbientLightManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getAmbientLightDoubleSecondColor(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 509
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mService:Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;->getAmbientLightDoubleSecondColor(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not getAmbientLightDoubleSecondColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AmbientLightManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getAmbientLightEffectType()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 626
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mService:Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not getAmbientLightEffectType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AmbientLightManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getAmbientLightEffectTypeList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 696
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mService:Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;->getAmbientLightEffectTypeList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 698
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not getAmbientLightEffectTypeList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AmbientLightManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getAmbientLightMonoColor(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mService:Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;->getAmbientLightMonoColor(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not getAmbientLightMonoColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AmbientLightManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getAmbientLightOpen()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 660
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mService:Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;->getAmbientLightOpen()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not getAmbientLightOpen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AmbientLightManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getDoubleThemeColorEnable(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 591
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mService:Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;->getDoubleThemeColorEnable(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not getDoubleThemeColorEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AmbientLightManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getMusicSpectrumEnable()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mService:Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;->getMusicSpectrumEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not getMusicSpectrumEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AmbientLightManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 384
    sget-object v0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mServiceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 385
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mServiceName:Ljava/lang/String;

    .line 387
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 104
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mService:Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;

    .line 105
    new-instance p1, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$EventCallbackHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$EventCallbackHandler;-><init>(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public isSupportDoubleThemeColor(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 715
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mService:Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;->isSupportDoubleThemeColor(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not isSupportDoubleThemeColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AmbientLightManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public onServerDisconnected()V
    .locals 0

    return-void
.end method

.method public onXUIConnected(Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "AmbientLightManager"

    const-string v1, "onXUIConnected"

    .line 346
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string p1, "onXUIConnected,service binder is null"

    .line 349
    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 352
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mService:Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 353
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

    .line 357
    :cond_1
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mService:Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;

    .line 359
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 361
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mListenerToService:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListenerToService;

    if-nez p1, :cond_2

    .line 362
    new-instance p1, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListenerToService;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListenerToService;-><init>(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mListenerToService:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListenerToService;

    .line 364
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mService:Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mListenerToService:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListenerToService;

    invoke-interface {p1, v1}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;->registerListener(Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLightEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onXUIConnected failed, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public onXUIDisconnected()V
    .locals 4

    const-string v0, "AmbientLightManager"

    const-string v1, "onXUIDisconnected"

    .line 329
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 333
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mService:Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mListenerToService:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListenerToService;

    invoke-interface {v1, v2}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;->unregisterListener(Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLightEventListener;)V

    const/4 v1, 0x0

    .line 334
    iput-object v1, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mListenerToService:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListenerToService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onXUIConnected failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public pausePlay()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 768
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mService:Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;->pausePlay()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 770
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not pausePlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AmbientLightManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public declared-synchronized registerListener(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 134
    :try_start_1
    new-instance v0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListenerToService;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListenerToService;-><init>(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mListenerToService:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListenerToService;

    .line 135
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mService:Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;

    invoke-interface {v1, v0}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;->registerListener(Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLightEventListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 140
    :try_start_2
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->checkXUIServiceNotConnectedExceptionFromXUIService(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "AmbientLightManager"

    .line 137
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

    .line 138
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 143
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public requestPermission(Z)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 734
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mService:Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;->requestPermission(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not requestPermission: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AmbientLightManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setAmbientLightBright(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAmbientLightBright() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AmbientLightManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mService:Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;->setAmbientLightBright(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not setAmbientLightBright: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setAmbientLightDoubleColor(Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAmbientLightDoubleColor() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AmbientLightManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mService:Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;->setAmbientLightDoubleColor(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 545
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not setAmbientLightDoubleColor: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public setAmbientLightEffectType(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAmbientLightEffectType() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AmbientLightManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mService:Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;->setAmbientLightEffectType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not setAmbientLightEffectType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setAmbientLightMemoryBright(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAmbientLightMemoryBright() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AmbientLightManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mService:Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;->setAmbientLightMemoryBright(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not setAmbientLightMemoryBright: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setAmbientLightMonoColor(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAmbientLightMonoColor(), effectType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " color:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AmbientLightManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mService:Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;->setAmbientLightMonoColor(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 475
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not setAmbientLightMonoColor: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public setAmbientLightOpen(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAmbientLightOpen() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AmbientLightManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mService:Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;->setAmbientLightOpen(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not setAmbientLightOpen: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setDoubleThemeColorEnable(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDoubleThemeColorEnable() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AmbientLightManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mService:Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;->setDoubleThemeColorEnable(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 611
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not setDoubleThemeColorEnable: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public setMusicRhythmMode(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMusicRhythmMode()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AmbientLightManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mService:Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;->setMusicRhythmMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not setMusicRhythmMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setMusicSpectrumEnable(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMusicSpectrumEnable() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AmbientLightManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mService:Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;->setMusicSpectrumEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not setMusicSpectrumEnable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0

    .line 376
    sput-object p1, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method public startPlay([Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 752
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mService:Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;->startPlay([Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not startPlay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AmbientLightManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public stopPlay()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 784
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mService:Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;->stopPlay()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 786
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not stopPlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AmbientLightManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public declared-synchronized unregisterListener(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 157
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 159
    :try_start_1
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mService:Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mListenerToService:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListenerToService;

    invoke-interface {p1, v0}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;->unregisterListener(Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLightEventListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 164
    :try_start_2
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->mListenerToService:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListenerToService;

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "AmbientLightManager"

    .line 161
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

    .line 162
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
