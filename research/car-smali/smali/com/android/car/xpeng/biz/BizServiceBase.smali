.class public abstract Lcom/android/car/xpeng/biz/BizServiceBase;
.super Ljava/lang/Object;
.source "BizServiceBase.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "BizServiceBase"


# instance fields
.field protected final mBizProxy:Lcom/android/car/xpeng/biz/XpCarBizProxy;

.field protected final mHal:Lcom/android/car/hal/PropertyHalService;

.field protected final mTaskMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/car/xpeng/biz/CarBizTaskBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/car/hal/PropertyHalService;Lcom/android/car/xpeng/biz/XpCarBizProxy;)V
    .locals 1
    .param p1, "hal"    # Lcom/android/car/hal/PropertyHalService;
    .param p2, "bizProxy"    # Lcom/android/car/xpeng/biz/XpCarBizProxy;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/xpeng/biz/BizServiceBase;->mTaskMap:Ljava/util/Map;

    .line 25
    iput-object p1, p0, Lcom/android/car/xpeng/biz/BizServiceBase;->mHal:Lcom/android/car/hal/PropertyHalService;

    .line 26
    iput-object p2, p0, Lcom/android/car/xpeng/biz/BizServiceBase;->mBizProxy:Lcom/android/car/xpeng/biz/XpCarBizProxy;

    .line 27
    return-void
.end method


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract getCarBizTasks()[Lcom/android/car/xpeng/biz/CarBizTaskBase;
.end method

.method protected getTask(I)Lcom/android/car/xpeng/biz/CarBizTaskBase;
    .locals 2
    .param p1, "propId"    # I

    .line 44
    iget-object v0, p0, Lcom/android/car/xpeng/biz/BizServiceBase;->mTaskMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/xpeng/biz/CarBizTaskBase;

    return-object v0
.end method

.method public init()V
    .locals 6

    .line 30
    invoke-virtual {p0}, Lcom/android/car/xpeng/biz/BizServiceBase;->getCarBizTasks()[Lcom/android/car/xpeng/biz/CarBizTaskBase;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 31
    .local v3, "task":Lcom/android/car/xpeng/biz/CarBizTaskBase;
    iget-object v4, p0, Lcom/android/car/xpeng/biz/BizServiceBase;->mTaskMap:Ljava/util/Map;

    invoke-interface {v3}, Lcom/android/car/xpeng/biz/CarBizTaskBase;->getPropertyId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .end local v3    # "task":Lcom/android/car/xpeng/biz/CarBizTaskBase;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method public isInterceptedPropertyId(I)Z
    .locals 2
    .param p1, "propId"    # I

    .line 40
    iget-object v0, p0, Lcom/android/car/xpeng/biz/BizServiceBase;->mTaskMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onHandleEvent(Landroid/car/hardware/property/CarPropertyEvent;)Landroid/car/hardware/property/CarPropertyEvent;
    .locals 3
    .param p1, "event"    # Landroid/car/hardware/property/CarPropertyEvent;

    .line 53
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    .line 54
    .local v0, "propId":I
    invoke-virtual {p0, v0}, Lcom/android/car/xpeng/biz/BizServiceBase;->getTask(I)Lcom/android/car/xpeng/biz/CarBizTaskBase;

    move-result-object v1

    .line 55
    .local v1, "task":Lcom/android/car/xpeng/biz/CarBizTaskBase;
    if-eqz v1, :cond_0

    .line 56
    invoke-interface {v1, p1}, Lcom/android/car/xpeng/biz/CarBizTaskBase;->onHandleEvent(Landroid/car/hardware/property/CarPropertyEvent;)Landroid/car/hardware/property/CarPropertyEvent;

    move-result-object v2

    return-object v2

    .line 59
    :cond_0
    return-object p1
.end method

.method public release()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/android/car/xpeng/biz/BizServiceBase;->mTaskMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 37
    return-void
.end method

.method public setProperty(Landroid/car/hardware/CarPropertyValue;)I
    .locals 5
    .param p1, "prop"    # Landroid/car/hardware/CarPropertyValue;

    .line 63
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    .line 64
    .local v0, "propId":I
    invoke-virtual {p0, v0}, Lcom/android/car/xpeng/biz/BizServiceBase;->getTask(I)Lcom/android/car/xpeng/biz/CarBizTaskBase;

    move-result-object v1

    .line 65
    .local v1, "task":Lcom/android/car/xpeng/biz/CarBizTaskBase;
    if-eqz v1, :cond_0

    .line 66
    invoke-interface {v1, p1}, Lcom/android/car/xpeng/biz/CarBizTaskBase;->setProperty(Landroid/car/hardware/CarPropertyValue;)I

    move-result v2

    return v2

    .line 68
    :cond_0
    const-string v2, "BizServiceBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setProperty: no task for propId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v2, -0x1

    return v2
.end method
