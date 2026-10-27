.class public Lcom/android/car/hal/VehicleHal$HalEvent;
.super Ljava/lang/Object;
.source "VehicleHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/hal/VehicleHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HalEvent"
.end annotation


# instance fields
.field private mHandler:Lcom/android/car/hal/VehicleHal$HalEventHandler;

.field private mListenerSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/car/hardware/property/ICarPropertyEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPid:I

.field private mPropValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/car/hardware/property/CarPropertyEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/car/hal/VehicleHal;


# direct methods
.method constructor <init>(Lcom/android/car/hal/VehicleHal;ILjava/util/ArrayList;Lcom/android/car/hal/VehicleHal$HalEventHandler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/car/hal/VehicleHal;
    .param p2, "pid"    # I
    .param p4, "handler"    # Lcom/android/car/hal/VehicleHal$HalEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/car/hardware/property/ICarPropertyEventListener;",
            ">;",
            "Lcom/android/car/hal/VehicleHal$HalEventHandler;",
            ")V"
        }
    .end annotation

    .line 555
    .local p3, "listenerSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/car/hardware/property/ICarPropertyEventListener;>;"
    iput-object p1, p0, Lcom/android/car/hal/VehicleHal$HalEvent;->this$0:Lcom/android/car/hal/VehicleHal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    iput p2, p0, Lcom/android/car/hal/VehicleHal$HalEvent;->mPid:I

    .line 557
    iput-object p3, p0, Lcom/android/car/hal/VehicleHal$HalEvent;->mListenerSet:Ljava/util/ArrayList;

    .line 558
    iput-object p4, p0, Lcom/android/car/hal/VehicleHal$HalEvent;->mHandler:Lcom/android/car/hal/VehicleHal$HalEventHandler;

    .line 559
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/VehicleHal$HalEvent;->mPropValues:Ljava/util/List;

    .line 560
    return-void
.end method


# virtual methods
.method public addProp(Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 1
    .param p1, "v"    # Landroid/car/hardware/property/CarPropertyEvent;

    .line 563
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal$HalEvent;->mPropValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    return-void
.end method

.method public dispatchEvent()V
    .locals 7

    .line 572
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal$HalEvent;->mListenerSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 574
    .local v1, "l":Landroid/car/hardware/property/ICarPropertyEventListener;
    :try_start_0
    iget-object v2, p0, Lcom/android/car/hal/VehicleHal$HalEvent;->mPropValues:Ljava/util/List;

    invoke-interface {v1, v2}, Landroid/car/hardware/property/ICarPropertyEventListener;->onEvent(Ljava/util/List;)V

    .line 575
    iget-object v2, p0, Lcom/android/car/hal/VehicleHal$HalEvent;->mPropValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/property/CarPropertyEvent;

    .line 576
    .local v3, "event":Landroid/car/hardware/property/CarPropertyEvent;
    const-string v4, "CAR.HAL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "event="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/car/hardware/property/CarPropertyEvent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    .end local v3    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    goto :goto_1

    .line 583
    :cond_0
    goto :goto_2

    .line 578
    :catch_0
    move-exception v2

    .line 581
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "CAR.HAL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchEvent calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/car/hal/VehicleHal$HalEvent;->mPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mPropValues="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/car/hal/VehicleHal$HalEvent;->mPropValues:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    .end local v1    # "l":Landroid/car/hardware/property/ICarPropertyEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_2
    goto :goto_0

    .line 585
    :cond_1
    return-void
.end method

.method public handleHalEvent()V
    .locals 3

    .line 567
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal$HalEvent;->mHandler:Lcom/android/car/hal/VehicleHal$HalEventHandler;

    iget-object v1, p0, Lcom/android/car/hal/VehicleHal$HalEvent;->mHandler:Lcom/android/car/hal/VehicleHal$HalEventHandler;

    const/4 v2, 0x2

    invoke-static {v1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/car/hal/VehicleHal$HalEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 569
    return-void
.end method
