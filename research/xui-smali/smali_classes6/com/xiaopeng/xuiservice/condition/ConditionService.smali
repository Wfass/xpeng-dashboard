.class public Lcom/xiaopeng/xuiservice/condition/ConditionService;
.super Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;
.source "ConditionService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/XUIServiceBase;
.implements Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/condition/ConditionService$ConditionObserver;
    }
.end annotation


# static fields
.field public static final LIGHT_DAY_NIGHT_KEY:Ljava/lang/String; = "autoDayNight"

.field public static final LIGHT_INTENSITY_KEY:Ljava/lang/String; = "autolight"

.field private static final TAG:Ljava/lang/String; = "CONDITION.SERVICE.ConditionService"

.field public static final URI_LIGHT_DAY_NIGHT:Landroid/net/Uri;

.field public static final URI_LIGHT_INTENSITY:Landroid/net/Uri;


# instance fields
.field private final brightnessListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
            "Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener;",
            ">;"
        }
    .end annotation
.end field

.field private conditionLocation:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation;

.field private final context:Landroid/content/Context;

.field private final locationManager:Landroid/location/LocationManager;

.field private mBrightnessLevel:I

.field private final mConditionObserver:Lcom/xiaopeng/xuiservice/condition/ConditionService$ConditionObserver;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final twilightListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
            "Lcom/xiaopeng/xuimanager/condition/ITwilightStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-string v0, "autolight"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->URI_LIGHT_INTENSITY:Landroid/net/Uri;

    .line 45
    const-string v0, "autoDayNight"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->URI_LIGHT_DAY_NIGHT:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 73
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;-><init>()V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->mBrightnessLevel:I

    .line 56
    new-instance v1, Lcom/xiaopeng/xuiservice/condition/ConditionService$1;

    const-string v2, "CONDITION.SERVICE.ConditionService"

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/xuiservice/condition/ConditionService$1;-><init>(Lcom/xiaopeng/xuiservice/condition/ConditionService;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->twilightListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    .line 71
    new-instance v1, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    const-string v2, "CONDITION.SERVICE.ConditionService"

    invoke-direct {v1, v2}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->brightnessListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    .line 74
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->context:Landroid/content/Context;

    .line 75
    const-string v1, "location"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->locationManager:Landroid/location/LocationManager;

    .line 76
    const-string v1, "condition"

    new-instance v2, Lcom/xiaopeng/xuiservice/condition/-$$Lambda$ConditionService$YsLYEdM2bvrXXC-3P67fDO-v6Z8;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/condition/-$$Lambda$ConditionService$YsLYEdM2bvrXXC-3P67fDO-v6Z8;-><init>(Lcom/xiaopeng/xuiservice/condition/ConditionService;)V

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->registerDump(Ljava/lang/String;Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;)V

    .line 79
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ConditionhandlerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 80
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 81
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->mHandler:Landroid/os/Handler;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->mResolver:Landroid/content/ContentResolver;

    .line 83
    new-instance v1, Lcom/xiaopeng/xuiservice/condition/ConditionService$ConditionObserver;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/xuiservice/condition/ConditionService$ConditionObserver;-><init>(Lcom/xiaopeng/xuiservice/condition/ConditionService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->mConditionObserver:Lcom/xiaopeng/xuiservice/condition/ConditionService$ConditionObserver;

    .line 84
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/xiaopeng/xuiservice/condition/ConditionService;->URI_LIGHT_INTENSITY:Landroid/net/Uri;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->mConditionObserver:Lcom/xiaopeng/xuiservice/condition/ConditionService$ConditionObserver;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 85
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/xiaopeng/xuiservice/condition/ConditionService;->URI_LIGHT_DAY_NIGHT:Landroid/net/Uri;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->mConditionObserver:Lcom/xiaopeng/xuiservice/condition/ConditionService$ConditionObserver;

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/condition/ConditionService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/condition/ConditionService;

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/condition/ConditionService;->prepareLocation()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/condition/ConditionService;)Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/condition/ConditionService;

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->conditionLocation:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation;

    return-object v0
.end method

.method static synthetic access$102(Lcom/xiaopeng/xuiservice/condition/ConditionService;Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation;)Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/condition/ConditionService;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation;

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->conditionLocation:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation;

    return-object p1
.end method

.method private brightnessToLevel(I)I
    .locals 5
    .param p1, "brightness"    # I

    .line 288
    const/4 v0, -0x1

    .line 289
    .local v0, "level":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "autoDayNight"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 291
    .local v1, "autodaynight":I
    if-ltz p1, :cond_4

    if-gtz v1, :cond_0

    goto :goto_0

    .line 293
    :cond_0
    const/4 v2, 0x7

    if-gt p1, v2, :cond_1

    .line 294
    const/4 v0, 0x0

    goto :goto_1

    .line 295
    :cond_1
    const/16 v2, 0xf

    if-gt p1, v2, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 296
    const/4 v0, 0x1

    goto :goto_1

    .line 297
    :cond_2
    const/16 v2, 0x12

    if-gt p1, v2, :cond_3

    .line 298
    const/4 v0, 0x2

    goto :goto_1

    .line 299
    :cond_3
    const/16 v2, 0x64

    if-gt p1, v2, :cond_5

    .line 300
    const/4 v0, 0x3

    goto :goto_1

    .line 292
    :cond_4
    :goto_0
    const/4 v0, -0x1

    .line 303
    :cond_5
    :goto_1
    return v0
.end method

.method private getTwilightState(Z)Lcom/xiaopeng/xuimanager/condition/TwilightState;
    .locals 8
    .param p1, "fromClient"    # Z

    .line 148
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/condition/ConditionService;->prepareLocation()V

    .line 149
    if-eqz p1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->conditionLocation:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation;->prepare()V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->conditionLocation:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation;->getCurrentValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 154
    .local v0, "location":Landroid/location/Location;
    const-string v1, "CONDITION.SERVICE.ConditionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTwilightState, location = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 156
    return-object v1

    .line 159
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->context:Landroid/content/Context;

    const-string v3, "uimode"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/UiModeManager;

    .line 160
    .local v2, "uiModeManager":Landroid/app/UiModeManager;
    if-nez v2, :cond_2

    .line 161
    const-string v3, "CONDITION.SERVICE.ConditionService"

    const-string v4, "getTwilightState, error: uiModeManager = null"

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-object v1

    .line 165
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/app/UiModeManager;->getTwilightState(Landroid/location/Location;J)[J

    move-result-object v1

    .line 166
    .local v1, "twoMs":[J
    new-instance v3, Lcom/xiaopeng/xuimanager/condition/TwilightState;

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    const/4 v6, 0x1

    aget-wide v6, v1, v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/xiaopeng/xuimanager/condition/TwilightState;-><init>(JJ)V

    return-object v3
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xuiservice/condition/ConditionService;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 77
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/condition/ConditionService;->dump(Ljava/io/PrintWriter;)V

    .line 78
    return-void
.end method

.method private prepareLocation()V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->conditionLocation:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation;

    new-instance v1, Landroid/location/Location;

    const-string v2, "gps"

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->conditionLocation:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation;

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->conditionLocation:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation;->addConditionChangeListener(Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;)V

    .line 174
    :cond_0
    return-void
.end method


# virtual methods
.method public addConditionListener(ILcom/xiaopeng/xuimanager/condition/IConditionListener;)V
    .locals 0
    .param p1, "conditionId"    # I
    .param p2, "listener"    # Lcom/xiaopeng/xuimanager/condition/IConditionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    return-void
.end method

.method public createCondition(Ljava/lang/String;)I
    .locals 1
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 205
    const-string v0, "dump-CONDITION.SERVICE.ConditionService"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    const-string v0, "TODO"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    const-string v0, "dump-CONDITION.SERVICE.ConditionService,end"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public getBrightnessLevel()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    const-string v0, "CONDITION.SERVICE.ConditionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBrightnessLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->mBrightnessLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget v0, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->mBrightnessLevel:I

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 212
    const-string v0, "ConditionService"

    return-object v0
.end method

.method public getTwilightState()Lcom/xiaopeng/xuimanager/condition/TwilightState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/condition/ConditionService;->getTwilightState(Z)Lcom/xiaopeng/xuimanager/condition/TwilightState;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 0

    .line 190
    return-void
.end method

.method public isConditionMatch(I)Z
    .locals 1
    .param p1, "conditionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public onConditionChange(Lcom/xiaopeng/xuiservice/smart/condition/Condition;Z)V
    .locals 7
    .param p1, "condition"    # Lcom/xiaopeng/xuiservice/smart/condition/Condition;
    .param p2, "match"    # Z

    .line 217
    instance-of v0, p1, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation;

    if-eqz v0, :cond_1

    .line 220
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/condition/ConditionService;->getTwilightState(Z)Lcom/xiaopeng/xuimanager/condition/TwilightState;

    move-result-object v0

    .line 221
    .local v0, "twilightState":Lcom/xiaopeng/xuimanager/condition/TwilightState;
    if-eqz v0, :cond_0

    .line 222
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->twilightListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/condition/ITwilightStateListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 224
    .local v2, "l":Lcom/xiaopeng/xuimanager/condition/ITwilightStateListener;
    :try_start_1
    invoke-interface {v2, v0}, Lcom/xiaopeng/xuimanager/condition/ITwilightStateListener;->onTwilightStateChanged(Lcom/xiaopeng/xuimanager/condition/TwilightState;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 227
    goto :goto_1

    .line 225
    :catch_0
    move-exception v3

    .line 226
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "CONDITION.SERVICE.ConditionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTwilightStateChanged error, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 228
    .end local v2    # "l":Lcom/xiaopeng/xuimanager/condition/ITwilightStateListener;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 232
    .end local v0    # "twilightState":Lcom/xiaopeng/xuimanager/condition/TwilightState;
    :cond_0
    goto :goto_2

    .line 230
    :catch_1
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CONDITION.SERVICE.ConditionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify twilight state update error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-void
.end method

.method public declared-synchronized onLightIntensityChanged(Z)V
    .locals 9
    .param p1, "selfChange"    # Z

    monitor-enter p0

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "autolight"

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 270
    .local v0, "brightness":I
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/condition/ConditionService;->brightnessToLevel(I)I

    move-result v1

    .line 272
    .local v1, "brightnessLevel":I
    const-string v2, "CONDITION.SERVICE.ConditionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLightIntensityChanged brightness "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " currentLevel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " lastLevel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->mBrightnessLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "listener num "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->brightnessListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->brightnessListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget v2, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->mBrightnessLevel:I

    if-eq v2, v1, :cond_1

    .line 274
    iget v2, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->mBrightnessLevel:I

    .line 275
    .local v2, "lastLevel":I
    iput v1, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->mBrightnessLevel:I

    .line 276
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->brightnessListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    .local v4, "l":Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener;
    :try_start_1
    iget v5, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->mBrightnessLevel:I

    invoke-interface {v4, v2, v5}, Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener;->onBrightnessLevelChanged(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    goto :goto_2

    .line 279
    :catch_0
    move-exception v5

    .line 280
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "CONDITION.SERVICE.ConditionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onBrightnessLevelChanged error, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 282
    .end local v4    # "l":Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_1

    .line 284
    .end local v2    # "lastLevel":I
    :cond_1
    monitor-exit p0

    return-void

    .line 268
    .end local v0    # "brightness":I
    .end local v1    # "brightnessLevel":I
    .end local p1    # "selfChange":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/condition/ConditionService;
    throw p1
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

    .line 90
    const-string v0, "ConditionService"

    .line 91
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

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "info":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderEnter(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v2, 0x1

    .line 96
    .local v2, "ret":Z
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 101
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderLeave(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    nop

    .line 104
    return v2

    .line 101
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 97
    :catch_0
    move-exception v3

    .line 98
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "CONDITION.SERVICE.ConditionService"

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

    .line 99
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderLeave(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method

.method public registerBrightnessLevelListener(Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 251
    const-string v0, "CONDITION.SERVICE.ConditionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerBrightnessLevelListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->brightnessListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->registerListener(Landroid/os/IInterface;)Z

    .line 253
    return-void
.end method

.method public registerTwilightStateListener(Lcom/xiaopeng/xuimanager/condition/ITwilightStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/condition/ITwilightStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->twilightListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->registerListener(Landroid/os/IInterface;)Z

    .line 180
    return-void
.end method

.method public release()V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->conditionLocation:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->conditionLocation:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation;->removeConditionChangeListener(Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;)V

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->conditionLocation:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation;->stopWatch()V

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->conditionLocation:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation;

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->twilightListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->clear()V

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->brightnessListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->clear()V

    .line 201
    return-void
.end method

.method public releaseCondition(I)V
    .locals 0
    .param p1, "conditionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    return-void
.end method

.method public removeConditionListener(ILcom/xiaopeng/xuimanager/condition/IConditionListener;)V
    .locals 0
    .param p1, "conditionId"    # I
    .param p2, "listener"    # Lcom/xiaopeng/xuimanager/condition/IConditionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    return-void
.end method

.method public startWatchCondition(I)V
    .locals 0
    .param p1, "conditionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    return-void
.end method

.method public stopWatchCondition(I)V
    .locals 0
    .param p1, "conditionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    return-void
.end method

.method public unregisterBrightnessLevelListener(Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 245
    const-string v0, "CONDITION.SERVICE.ConditionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterBrightnessLevelListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->brightnessListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->unregisterListener(Landroid/os/IInterface;)Z

    .line 247
    return-void
.end method

.method public unregisterTwilightStateListener(Lcom/xiaopeng/xuimanager/condition/ITwilightStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/condition/ITwilightStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService;->twilightListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->unregisterListener(Landroid/os/IInterface;)Z

    .line 185
    return-void
.end method
