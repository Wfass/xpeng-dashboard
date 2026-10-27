.class public Lcom/xiaopeng/xuimanager/condition/ConditionManager;
.super Ljava/lang/Object;
.source "ConditionManager.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/XUIManagerBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/condition/ConditionManager$EventCallbackHandler;,
        Lcom/xiaopeng/xuimanager/condition/ConditionManager$BrightnessLevelToService;,
        Lcom/xiaopeng/xuimanager/condition/ConditionManager$TwilightListenerToService;,
        Lcom/xiaopeng/xuimanager/condition/ConditionManager$ConditionManagerHolder;,
        Lcom/xiaopeng/xuimanager/condition/ConditionManager$ConditionListener;,
        Lcom/xiaopeng/xuimanager/condition/ConditionManager$BrightnessLevelListener;,
        Lcom/xiaopeng/xuimanager/condition/ConditionManager$TwilightStateListener;
    }
.end annotation


# static fields
.field private static final MSG_BRIGHTNESS_CHANGE_EVENT:I = 0x2

.field private static final MSG_TWILIGHT_CHANGE_EVENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ConditionManager"


# instance fields
.field private final mBrightnessLevelListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/xiaopeng/xuimanager/condition/ConditionManager$BrightnessLevelListener;",
            ">;"
        }
    .end annotation
.end field

.field private mBrightnessLevelToService:Lcom/xiaopeng/xuimanager/condition/ConditionManager$BrightnessLevelToService;

.field private mHandler:Landroid/os/Handler;

.field private mService:Lcom/xiaopeng/xuimanager/condition/ICondition;

.field private mServiceName:Ljava/lang/String;

.field private mTwilightListenerToService:Lcom/xiaopeng/xuimanager/condition/ConditionManager$TwilightListenerToService;

.field private final mTwilightStateListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/xiaopeng/xuimanager/condition/ConditionManager$TwilightStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mTwilightStateListeners:Landroid/util/ArraySet;

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mTwilightListenerToService:Lcom/xiaopeng/xuimanager/condition/ConditionManager$TwilightListenerToService;

    .line 86
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mBrightnessLevelListeners:Landroid/util/ArraySet;

    .line 87
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mBrightnessLevelToService:Lcom/xiaopeng/xuimanager/condition/ConditionManager$BrightnessLevelToService;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/condition/ConditionManager$1;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/condition/ConditionManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuimanager/condition/ConditionManager;Lcom/xiaopeng/xuimanager/condition/TwilightState;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->handleTwilightChanged(Lcom/xiaopeng/xuimanager/condition/TwilightState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuimanager/condition/ConditionManager;II)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->handleBrightnessLevelChanged(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuimanager/condition/ConditionManager;Lcom/xiaopeng/xuimanager/condition/TwilightState;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->dispatchTwilightChangedToClient(Lcom/xiaopeng/xuimanager/condition/TwilightState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuimanager/condition/ConditionManager;II)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->dispatchBrightnessLevelChangedToClient(II)V

    return-void
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private dispatchBrightnessLevelChangedToClient(II)V
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mBrightnessLevelListeners:Landroid/util/ArraySet;

    new-instance v1, Lcom/xiaopeng/xuimanager/condition/-$$Lambda$ConditionManager$uf_QCHqYNYZPG4CS8XGdwf5C4Lk;

    invoke-direct {v1, p1, p2}, Lcom/xiaopeng/xuimanager/condition/-$$Lambda$ConditionManager$uf_QCHqYNYZPG4CS8XGdwf5C4Lk;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private dispatchTwilightChangedToClient(Lcom/xiaopeng/xuimanager/condition/TwilightState;)V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mTwilightStateListeners:Landroid/util/ArraySet;

    new-instance v1, Lcom/xiaopeng/xuimanager/condition/-$$Lambda$ConditionManager$oKDbgreIpvgTa5lMueFH5zj53n0;

    invoke-direct {v1, p1}, Lcom/xiaopeng/xuimanager/condition/-$$Lambda$ConditionManager$oKDbgreIpvgTa5lMueFH5zj53n0;-><init>(Lcom/xiaopeng/xuimanager/condition/TwilightState;)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuimanager/condition/ConditionManager;
    .locals 1

    .line 94
    invoke-static {}, Lcom/xiaopeng/xuimanager/condition/ConditionManager$ConditionManagerHolder;->access$300()Lcom/xiaopeng/xuimanager/condition/ConditionManager;

    move-result-object v0

    return-object v0
.end method

.method private handleBrightnessLevelChanged(II)V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 296
    iput v1, v0, Landroid/os/Message;->what:I

    .line 297
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 298
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 299
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleTwilightChanged(Lcom/xiaopeng/xuimanager/condition/TwilightState;)V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 175
    iput v1, v0, Landroid/os/Message;->what:I

    .line 176
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 177
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private initBrightnessLevelRegisterListener()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mBrightnessLevelListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    :try_start_0
    new-instance v0, Lcom/xiaopeng/xuimanager/condition/ConditionManager$BrightnessLevelToService;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/condition/ConditionManager$BrightnessLevelToService;-><init>(Lcom/xiaopeng/xuimanager/condition/ConditionManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mBrightnessLevelToService:Lcom/xiaopeng/xuimanager/condition/ConditionManager$BrightnessLevelToService;

    .line 327
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mService:Lcom/xiaopeng/xuimanager/condition/ICondition;

    invoke-interface {v1, v0}, Lcom/xiaopeng/xuimanager/condition/ICondition;->registerBrightnessLevelListener(Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 334
    sget-object v1, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    .line 332
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->checkXUIServiceNotConnectedExceptionFromXUIService(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 329
    sget-object v1, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not connect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method private initBrightnessLevelUnregisterListener()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mBrightnessLevelListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mBrightnessLevelToService:Lcom/xiaopeng/xuimanager/condition/ConditionManager$BrightnessLevelToService;

    if-eqz v0, :cond_0

    .line 343
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mService:Lcom/xiaopeng/xuimanager/condition/ICondition;

    invoke-interface {v1, v0}, Lcom/xiaopeng/xuimanager/condition/ICondition;->unregisterBrightnessLevelListener(Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 348
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mBrightnessLevelToService:Lcom/xiaopeng/xuimanager/condition/ConditionManager$BrightnessLevelToService;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 345
    sget-object v1, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not unregister: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method private initTwilightStateRegisterListener()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mTwilightStateListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    :try_start_0
    new-instance v0, Lcom/xiaopeng/xuimanager/condition/ConditionManager$TwilightListenerToService;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/condition/ConditionManager$TwilightListenerToService;-><init>(Lcom/xiaopeng/xuimanager/condition/ConditionManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mTwilightListenerToService:Lcom/xiaopeng/xuimanager/condition/ConditionManager$TwilightListenerToService;

    .line 257
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mService:Lcom/xiaopeng/xuimanager/condition/ICondition;

    invoke-interface {v1, v0}, Lcom/xiaopeng/xuimanager/condition/ICondition;->registerTwilightStateListener(Lcom/xiaopeng/xuimanager/condition/ITwilightStateListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 264
    sget-object v1, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    .line 262
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->checkXUIServiceNotConnectedExceptionFromXUIService(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 259
    sget-object v1, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not connect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method private initTwilightStateUnregisterListener()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mTwilightStateListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mTwilightListenerToService:Lcom/xiaopeng/xuimanager/condition/ConditionManager$TwilightListenerToService;

    if-eqz v0, :cond_0

    .line 273
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mService:Lcom/xiaopeng/xuimanager/condition/ICondition;

    invoke-interface {v1, v0}, Lcom/xiaopeng/xuimanager/condition/ICondition;->unregisterTwilightStateListener(Lcom/xiaopeng/xuimanager/condition/ITwilightStateListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 278
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mTwilightListenerToService:Lcom/xiaopeng/xuimanager/condition/ConditionManager$TwilightListenerToService;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 275
    sget-object v1, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not unregister: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$dispatchBrightnessLevelChangedToClient$2(IILcom/xiaopeng/xuimanager/condition/ConditionManager$BrightnessLevelListener;)V
    .locals 1

    .line 306
    :try_start_0
    invoke-interface {p2, p0, p1}, Lcom/xiaopeng/xuimanager/condition/ConditionManager$BrightnessLevelListener;->onBrightnessLevelChanged(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 308
    sget-object p1, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "client error in onBrightnessLevelChanged callback, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$dispatchTwilightChangedToClient$0(Lcom/xiaopeng/xuimanager/condition/TwilightState;Lcom/xiaopeng/xuimanager/condition/ConditionManager$TwilightStateListener;)V
    .locals 2

    .line 183
    :try_start_0
    invoke-interface {p1, p0}, Lcom/xiaopeng/xuimanager/condition/ConditionManager$TwilightStateListener;->onTwilightStateChanged(Lcom/xiaopeng/xuimanager/condition/TwilightState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 185
    sget-object p1, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "client error in onTwilightStateChanged callback, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addConditionListener(ILcom/xiaopeng/xuimanager/condition/IConditionListener;)V
    .locals 0

    return-void
.end method

.method public createCondition(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getBrightnessLevel()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mService:Lcom/xiaopeng/xuimanager/condition/ICondition;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/condition/ICondition;->getBrightnessLevel()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 317
    sget-object v1, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBrightnessLevel error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mServiceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mServiceName:Ljava/lang/String;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getTwilightState()Lcom/xiaopeng/xuimanager/condition/TwilightState;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mService:Lcom/xiaopeng/xuimanager/condition/ICondition;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/condition/ICondition;->getTwilightState()Lcom/xiaopeng/xuimanager/condition/TwilightState;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 156
    sget-object v1, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTwilightState error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 99
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/condition/ICondition;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mService:Lcom/xiaopeng/xuimanager/condition/ICondition;

    .line 100
    new-instance p1, Lcom/xiaopeng/xuimanager/condition/ConditionManager$EventCallbackHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/xuimanager/condition/ConditionManager$EventCallbackHandler;-><init>(Lcom/xiaopeng/xuimanager/condition/ConditionManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public isConditionMatch(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$onXUIDisconnected$1$ConditionManager(Lcom/xiaopeng/xuimanager/condition/ConditionManager$TwilightStateListener;)V
    .locals 3

    .line 194
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->unregisterTwilightStateListener(Lcom/xiaopeng/xuimanager/condition/ConditionManager$TwilightStateListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 196
    sget-object v0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterTwilightStateListener, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onXUIConnected(Landroid/os/IBinder;)V
    .locals 3

    if-nez p1, :cond_0

    .line 204
    sget-object p1, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->TAG:Ljava/lang/String;

    const-string v0, "onXUIConnected,service binder is null"

    invoke-static {p1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mService:Lcom/xiaopeng/xuimanager/condition/ICondition;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/condition/ICondition;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 208
    sget-object v0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->TAG:Ljava/lang/String;

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

    .line 211
    :cond_1
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/condition/ICondition;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mService:Lcom/xiaopeng/xuimanager/condition/ICondition;

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mTwilightListenerToService:Lcom/xiaopeng/xuimanager/condition/ConditionManager$TwilightListenerToService;

    if-eqz v0, :cond_2

    .line 214
    invoke-interface {p1, v0}, Lcom/xiaopeng/xuimanager/condition/ICondition;->registerTwilightStateListener(Lcom/xiaopeng/xuimanager/condition/ITwilightStateListener;)V

    .line 216
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mBrightnessLevelToService:Lcom/xiaopeng/xuimanager/condition/ConditionManager$BrightnessLevelToService;

    if-eqz p1, :cond_3

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mService:Lcom/xiaopeng/xuimanager/condition/ICondition;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/condition/ICondition;->registerBrightnessLevelListener(Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 220
    sget-object v0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onXUIConnected error e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onXUIDisconnected()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mTwilightStateListeners:Landroid/util/ArraySet;

    new-instance v1, Lcom/xiaopeng/xuimanager/condition/-$$Lambda$ConditionManager$iceXYNeIa0V91w5MSgCw3_0tKN8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuimanager/condition/-$$Lambda$ConditionManager$iceXYNeIa0V91w5MSgCw3_0tKN8;-><init>(Lcom/xiaopeng/xuimanager/condition/ConditionManager;)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public registerBrightnessLevelListener(Lcom/xiaopeng/xuimanager/condition/ConditionManager$BrightnessLevelListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 284
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->initBrightnessLevelRegisterListener()V

    .line 285
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mBrightnessLevelListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerTwilightStateListener(Lcom/xiaopeng/xuimanager/condition/ConditionManager$TwilightStateListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 163
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->initTwilightStateRegisterListener()V

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mTwilightStateListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public releaseCondition(I)V
    .locals 0

    return-void
.end method

.method public removeConditionListener(ILcom/xiaopeng/xuimanager/condition/IConditionListener;)V
    .locals 0

    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method public startWatchCondition(I)V
    .locals 0

    return-void
.end method

.method public stopWatchCondition(I)V
    .locals 0

    return-void
.end method

.method public unregisterBrightnessLevelListener(Lcom/xiaopeng/xuimanager/condition/ConditionManager$BrightnessLevelListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mBrightnessLevelListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 291
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->initBrightnessLevelUnregisterListener()V

    return-void
.end method

.method public unregisterTwilightStateListener(Lcom/xiaopeng/xuimanager/condition/ConditionManager$TwilightStateListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->mTwilightStateListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 170
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->initTwilightStateUnregisterListener()V

    return-void
.end method
