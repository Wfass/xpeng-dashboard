.class Landroid/car/xpeng/remind/CarRemindManager$CarRemindEventCallbacks;
.super Ljava/lang/Object;
.source "CarRemindManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpeng/remind/CarRemindManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarRemindEventCallbacks"
.end annotation


# instance fields
.field mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mLastUpdateTime:J

.field final synthetic this$0:Landroid/car/xpeng/remind/CarRemindManager;


# direct methods
.method private constructor <init>(Landroid/car/xpeng/remind/CarRemindManager;)V
    .locals 2

    .line 360
    iput-object p1, p0, Landroid/car/xpeng/remind/CarRemindManager$CarRemindEventCallbacks;->this$0:Landroid/car/xpeng/remind/CarRemindManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 361
    iput-wide v0, p0, Landroid/car/xpeng/remind/CarRemindManager$CarRemindEventCallbacks;->mLastUpdateTime:J

    .line 362
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Landroid/car/xpeng/remind/CarRemindManager$CarRemindEventCallbacks;->mCallbacks:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/xpeng/remind/CarRemindManager;Landroid/car/xpeng/remind/CarRemindManager$1;)V
    .locals 0

    .line 360
    invoke-direct {p0, p1}, Landroid/car/xpeng/remind/CarRemindManager$CarRemindEventCallbacks;-><init>(Landroid/car/xpeng/remind/CarRemindManager;)V

    return-void
.end method

.method static synthetic lambda$onErrorEvent$1(IILandroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    .locals 5

    .line 399
    sget-boolean v0, Landroid/car/XpDebugLog;->CAR_DEBUG:Z

    const-string v1, " callback: "

    const-string v2, " errorCode:"

    const-string v3, "CarRemindManager"

    if-eqz v0, :cond_0

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "++++onErrorEvent propertyId: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_0
    invoke-interface {p2, p0, p1}, Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;->onErrorEvent(II)V

    .line 403
    sget-boolean v0, Landroid/car/XpDebugLog;->CAR_DEBUG:Z

    if-eqz v0, :cond_1

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "----onErrorEvent propertyId: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method static synthetic lambda$onPropertyChanged$0(Landroid/car/hardware/CarPropertyValue;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    .locals 4

    .line 379
    sget-boolean v0, Landroid/car/XpDebugLog;->CAR_DEBUG:Z

    const-string v1, " callback:"

    const-string v2, "CarRemindManager"

    if-eqz v0, :cond_0

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "++++onPropertyChanged: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_0
    invoke-interface {p1, p0}, Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;->onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V

    .line 383
    sget-boolean v0, Landroid/car/XpDebugLog;->CAR_DEBUG:Z

    if-eqz v0, :cond_1

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----onPropertyChanged: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public add(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    .locals 1

    .line 417
    iget-object v0, p0, Landroid/car/xpeng/remind/CarRemindManager$CarRemindEventCallbacks;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public contains(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)Z
    .locals 1

    .line 413
    iget-object v0, p0, Landroid/car/xpeng/remind/CarRemindManager$CarRemindEventCallbacks;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 425
    iget-object v0, p0, Landroid/car/xpeng/remind/CarRemindManager$CarRemindEventCallbacks;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method onErrorEvent(II)V
    .locals 4

    .line 395
    sget-boolean v0, Landroid/car/XpDebugLog;->CAR_DEBUG:Z

    const-string v1, " errorCode:"

    const-string v2, "CarRemindManager"

    if-eqz v0, :cond_0

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "++onErrorEvent propertyId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_0
    iget-object v0, p0, Landroid/car/xpeng/remind/CarRemindManager$CarRemindEventCallbacks;->mCallbacks:Ljava/util/List;

    new-instance v3, Landroid/car/xpeng/remind/-$$Lambda$CarRemindManager$CarRemindEventCallbacks$z9nIDEpbmhASVfwT-WRtm1YxCHM;

    invoke-direct {v3, p1, p2}, Landroid/car/xpeng/remind/-$$Lambda$CarRemindManager$CarRemindEventCallbacks$z9nIDEpbmhASVfwT-WRtm1YxCHM;-><init>(II)V

    invoke-interface {v0, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 407
    sget-boolean v0, Landroid/car/XpDebugLog;->CAR_DEBUG:Z

    if-eqz v0, :cond_1

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--onErrorEvent propertyId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method onPropertyChanged(Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 6

    .line 366
    sget-boolean v0, Landroid/car/XpDebugLog;->CAR_DEBUG:Z

    const-string v1, "CarRemindManager"

    if-eqz v0, :cond_0

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "++onPropertyChanged: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_0
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getTimestamp()J

    move-result-wide v2

    .line 372
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 374
    iget-wide v4, p0, Landroid/car/xpeng/remind/CarRemindManager$CarRemindEventCallbacks;->mLastUpdateTime:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    const-string v0, "dropping old property data"

    .line 375
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 377
    :cond_1
    iput-wide v2, p0, Landroid/car/xpeng/remind/CarRemindManager$CarRemindEventCallbacks;->mLastUpdateTime:J

    .line 378
    iget-object v2, p0, Landroid/car/xpeng/remind/CarRemindManager$CarRemindEventCallbacks;->mCallbacks:Ljava/util/List;

    new-instance v3, Landroid/car/xpeng/remind/-$$Lambda$CarRemindManager$CarRemindEventCallbacks$sx5uncIPRWBTB16dn5cSSiwyWVI;

    invoke-direct {v3, v0}, Landroid/car/xpeng/remind/-$$Lambda$CarRemindManager$CarRemindEventCallbacks$sx5uncIPRWBTB16dn5cSSiwyWVI;-><init>(Landroid/car/hardware/CarPropertyValue;)V

    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 388
    :goto_0
    sget-boolean v0, Landroid/car/XpDebugLog;->CAR_DEBUG:Z

    if-eqz v0, :cond_2

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--onPropertyChanged: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public remove(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    .locals 1

    .line 421
    iget-object v0, p0, Landroid/car/xpeng/remind/CarRemindManager$CarRemindEventCallbacks;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
