.class public Lcom/android/car/xpeng/biz/XpCarBizProxy;
.super Ljava/lang/Object;
.source "XpCarBizProxy.java"

# interfaces
.implements Lcom/android/car/hal/PropertyHalService$PropertyHalListener;


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "XpCarBizController"


# instance fields
.field private interceptedAddEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/car/hardware/property/CarPropertyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private interceptedRemoveEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/car/hardware/property/CarPropertyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mBizServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/car/xpeng/biz/BizServiceBase;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHal:Lcom/android/car/hal/PropertyHalService;

.field private mListener:Lcom/android/car/hal/PropertyHalService$PropertyHalListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/car/hal/PropertyHalService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hal"    # Lcom/android/car/hal/PropertyHalService;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/xpeng/biz/XpCarBizProxy;->mBizServices:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/xpeng/biz/XpCarBizProxy;->interceptedRemoveEvents:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/xpeng/biz/XpCarBizProxy;->interceptedAddEvents:Ljava/util/List;

    .line 28
    iput-object p2, p0, Lcom/android/car/xpeng/biz/XpCarBizProxy;->mHal:Lcom/android/car/hal/PropertyHalService;

    .line 29
    iput-object p1, p0, Lcom/android/car/xpeng/biz/XpCarBizProxy;->mContext:Landroid/content/Context;

    .line 30
    new-instance v0, Lcom/android/car/xpeng/biz/XpCarBodyBizService;

    iget-object v1, p0, Lcom/android/car/xpeng/biz/XpCarBizProxy;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-direct {v0, v1, p0}, Lcom/android/car/xpeng/biz/XpCarBodyBizService;-><init>(Lcom/android/car/hal/PropertyHalService;Lcom/android/car/xpeng/biz/XpCarBizProxy;)V

    .line 31
    .local v0, "bodyBizService":Lcom/android/car/xpeng/biz/XpCarBodyBizService;
    iget-object v1, p0, Lcom/android/car/xpeng/biz/XpCarBizProxy;->mBizServices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/android/car/xpeng/biz/XpCarBizProxy;->mBizServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/xpeng/biz/BizServiceBase;

    .line 36
    .local v1, "service":Lcom/android/car/xpeng/biz/BizServiceBase;
    invoke-virtual {v1}, Lcom/android/car/xpeng/biz/BizServiceBase;->init()V

    .line 37
    .end local v1    # "service":Lcom/android/car/xpeng/biz/BizServiceBase;
    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/car/xpeng/biz/XpCarBizProxy;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v0, p0}, Lcom/android/car/hal/PropertyHalService;->setListener(Lcom/android/car/hal/PropertyHalService$PropertyHalListener;)V

    .line 39
    return-void
.end method

.method public onPropertyChange(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/hardware/property/CarPropertyEvent;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/property/CarPropertyEvent;

    .line 65
    .local v1, "event":Landroid/car/hardware/property/CarPropertyEvent;
    iget-object v2, p0, Lcom/android/car/xpeng/biz/XpCarBizProxy;->mBizServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/xpeng/biz/BizServiceBase;

    .line 66
    .local v3, "service":Lcom/android/car/xpeng/biz/BizServiceBase;
    invoke-virtual {v1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v4

    invoke-virtual {v4}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/car/xpeng/biz/BizServiceBase;->isInterceptedPropertyId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    invoke-virtual {v3, v1}, Lcom/android/car/xpeng/biz/BizServiceBase;->onHandleEvent(Landroid/car/hardware/property/CarPropertyEvent;)Landroid/car/hardware/property/CarPropertyEvent;

    .line 70
    .end local v3    # "service":Lcom/android/car/xpeng/biz/BizServiceBase;
    :cond_0
    goto :goto_1

    .line 71
    .end local v1    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    :cond_1
    goto :goto_0

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/android/car/xpeng/biz/XpCarBizProxy;->mListener:Lcom/android/car/hal/PropertyHalService$PropertyHalListener;

    invoke-interface {v0, p1}, Lcom/android/car/hal/PropertyHalService$PropertyHalListener;->onPropertyChange(Ljava/util/List;)V

    .line 73
    return-void
.end method

.method public onPropertyChange(Ljava/util/List;Ljava/io/FileDescriptor;)V
    .locals 1
    .param p2, "fDescriptor"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/hardware/property/CarPropertyEvent;",
            ">;",
            "Ljava/io/FileDescriptor;",
            ")V"
        }
    .end annotation

    .line 55
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    if-nez p2, :cond_0

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/car/xpeng/biz/XpCarBizProxy;->onPropertyChange(Ljava/util/List;)V

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/car/xpeng/biz/XpCarBizProxy;->mListener:Lcom/android/car/hal/PropertyHalService$PropertyHalListener;

    invoke-interface {v0, p1, p2}, Lcom/android/car/hal/PropertyHalService$PropertyHalListener;->onPropertyChange(Ljava/util/List;Ljava/io/FileDescriptor;)V

    .line 60
    :goto_0
    return-void
.end method

.method public onPropertySetError(III)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "propId"    # I
    .param p3, "area"    # I

    .line 77
    iget-object v0, p0, Lcom/android/car/xpeng/biz/XpCarBizProxy;->mListener:Lcom/android/car/hal/PropertyHalService$PropertyHalListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/car/hal/PropertyHalService$PropertyHalListener;->onPropertySetError(III)V

    .line 78
    return-void
.end method

.method public release()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/android/car/xpeng/biz/XpCarBizProxy;->mBizServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/xpeng/biz/BizServiceBase;

    .line 43
    .local v1, "service":Lcom/android/car/xpeng/biz/BizServiceBase;
    invoke-virtual {v1}, Lcom/android/car/xpeng/biz/BizServiceBase;->release()V

    .line 44
    .end local v1    # "service":Lcom/android/car/xpeng/biz/BizServiceBase;
    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/car/xpeng/biz/XpCarBizProxy;->mHal:Lcom/android/car/hal/PropertyHalService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/car/hal/PropertyHalService;->setListener(Lcom/android/car/hal/PropertyHalService$PropertyHalListener;)V

    .line 46
    return-void
.end method

.method public setListener(Lcom/android/car/hal/PropertyHalService$PropertyHalListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/car/hal/PropertyHalService$PropertyHalListener;

    .line 49
    iput-object p1, p0, Lcom/android/car/xpeng/biz/XpCarBizProxy;->mListener:Lcom/android/car/hal/PropertyHalService$PropertyHalListener;

    .line 50
    return-void
.end method

.method public setProperty(Landroid/car/hardware/CarPropertyValue;)I
    .locals 3
    .param p1, "prop"    # Landroid/car/hardware/CarPropertyValue;

    .line 81
    iget-object v0, p0, Lcom/android/car/xpeng/biz/XpCarBizProxy;->mBizServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/xpeng/biz/BizServiceBase;

    .line 82
    .local v1, "service":Lcom/android/car/xpeng/biz/BizServiceBase;
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/car/xpeng/biz/BizServiceBase;->isInterceptedPropertyId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    invoke-virtual {v1, p1}, Lcom/android/car/xpeng/biz/BizServiceBase;->setProperty(Landroid/car/hardware/CarPropertyValue;)I

    move-result v0

    return v0

    .line 85
    .end local v1    # "service":Lcom/android/car/xpeng/biz/BizServiceBase;
    :cond_0
    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/android/car/xpeng/biz/XpCarBizProxy;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v0, p1}, Lcom/android/car/hal/PropertyHalService;->setProperty(Landroid/car/hardware/CarPropertyValue;)V

    .line 87
    const/4 v0, 0x0

    return v0
.end method
