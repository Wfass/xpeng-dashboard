.class public abstract Lcom/android/car/xpeng/remind/CarRemindBase;
.super Ljava/lang/Object;
.source "CarRemindBase.java"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mEventHandler:Landroid/os/Handler;

.field private final mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

.field private mListener:Landroid/car/hardware/property/ICarPropertyEventListener;

.field private final mPropertyService:Lcom/android/car/CarPropertyService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/car/CarPropertyService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "propertyService"    # Lcom/android/car/CarPropertyService;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/android/car/xpeng/remind/CarRemindBase$1;

    invoke-direct {v0, p0}, Lcom/android/car/xpeng/remind/CarRemindBase$1;-><init>(Lcom/android/car/xpeng/remind/CarRemindBase;)V

    iput-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindBase;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 28
    iput-object p1, p0, Lcom/android/car/xpeng/remind/CarRemindBase;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/android/car/xpeng/remind/CarRemindBase;->mEventHandler:Landroid/os/Handler;

    .line 30
    iput-object p3, p0, Lcom/android/car/xpeng/remind/CarRemindBase;->mPropertyService:Lcom/android/car/CarPropertyService;

    .line 31
    return-void
.end method

.method private subscribeToProperties()V
    .locals 7

    .line 107
    invoke-virtual {p0}, Lcom/android/car/xpeng/remind/CarRemindBase;->getRequiredProperties()[I

    move-result-object v0

    .line 108
    .local v0, "properties":[I
    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 111
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 112
    .local v3, "propId":I
    iget-object v4, p0, Lcom/android/car/xpeng/remind/CarRemindBase;->mPropertyService:Lcom/android/car/CarPropertyService;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/car/xpeng/remind/CarRemindBase;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/car/CarPropertyService;->registerListener(IFLandroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 111
    .end local v3    # "propId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    :cond_1
    return-void

    .line 109
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method protected dispatchEvent(Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/car/hardware/property/CarPropertyEvent;

    .line 77
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/car/hardware/property/CarPropertyEvent;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/car/xpeng/remind/CarRemindBase;->dispatchEvents(Ljava/util/List;)V

    .line 78
    return-void
.end method

.method protected dispatchEvents(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/hardware/property/CarPropertyEvent;",
            ">;)V"
        }
    .end annotation

    .line 66
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    iget-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindBase;->mListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    if-eqz v0, :cond_0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindBase;->mListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    invoke-interface {v0, p1}, Landroid/car/hardware/property/ICarPropertyEventListener;->onEvent(Ljava/util/List;)V

    .line 69
    const-string v0, "CarRemindBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchEvents:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method protected getCarPropertyEvent(ILjava/lang/Object;)Landroid/car/hardware/property/CarPropertyEvent;
    .locals 11
    .param p1, "propertyId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)",
            "Landroid/car/hardware/property/CarPropertyEvent;"
        }
    .end annotation

    .line 81
    .local p2, "value":Ljava/lang/Object;, "TE;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    .line 82
    .local v0, "timestamp":J
    new-instance v2, Landroid/car/hardware/CarPropertyValue;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, v2

    move v5, p1

    move-wide v8, v0

    move-object v10, p2

    invoke-direct/range {v4 .. v10}, Landroid/car/hardware/CarPropertyValue;-><init>(IIIJLjava/lang/Object;)V

    .line 83
    .local v2, "propValue":Landroid/car/hardware/CarPropertyValue;, "Landroid/car/hardware/CarPropertyValue<TE;>;"
    new-instance v3, Landroid/car/hardware/property/CarPropertyEvent;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2}, Landroid/car/hardware/property/CarPropertyEvent;-><init>(ILandroid/car/hardware/CarPropertyValue;)V

    .line 84
    .local v3, "event":Landroid/car/hardware/property/CarPropertyEvent;
    return-object v3
.end method

.method protected abstract getRemindPropertyId()[I
.end method

.method protected abstract getRequiredProperties()[I
.end method

.method protected abstract handlePropertyEvent(Landroid/car/hardware/property/CarPropertyEvent;)V
.end method

.method public init()V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/CarRemindBase;->subscribeToProperties()V

    .line 89
    return-void
.end method

.method public release()V
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/android/car/xpeng/remind/CarRemindBase;->unsubscribeToProperties()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindBase;->mListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 94
    return-void
.end method

.method public setListener(Landroid/car/hardware/property/ICarPropertyEventListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 56
    iput-object p1, p0, Lcom/android/car/xpeng/remind/CarRemindBase;->mListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 57
    return-void
.end method

.method public unsubscribeToProperties()V
    .locals 6

    .line 97
    invoke-virtual {p0}, Lcom/android/car/xpeng/remind/CarRemindBase;->getRequiredProperties()[I

    move-result-object v0

    .line 98
    .local v0, "properties":[I
    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 101
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 102
    .local v3, "propId":I
    iget-object v4, p0, Lcom/android/car/xpeng/remind/CarRemindBase;->mPropertyService:Lcom/android/car/CarPropertyService;

    iget-object v5, p0, Lcom/android/car/xpeng/remind/CarRemindBase;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    invoke-virtual {v4, v3, v5}, Lcom/android/car/CarPropertyService;->unregisterListener(ILandroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 101
    .end local v3    # "propId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :cond_1
    return-void

    .line 99
    :cond_2
    :goto_1
    return-void
.end method
