.class Lcom/android/car/BluetoothDeviceConnectionPolicy$CarPropertyListener;
.super Landroid/car/hardware/property/ICarPropertyEventListener$Stub;
.source "BluetoothDeviceConnectionPolicy.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/BluetoothDeviceConnectionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CarPropertyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;


# direct methods
.method constructor <init>(Lcom/android/car/BluetoothDeviceConnectionPolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/BluetoothDeviceConnectionPolicy;

    .line 620
    iput-object p1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$CarPropertyListener;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-direct {p0}, Landroid/car/hardware/property/ICarPropertyEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/hardware/property/CarPropertyEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 623
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/property/CarPropertyEvent;

    .line 624
    .local v1, "event":Landroid/car/hardware/property/CarPropertyEvent;
    invoke-static {}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 625
    const-string v2, "BTDevConnectionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cabin change Event : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/car/hardware/property/CarPropertyEvent;->getEventType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_0
    invoke-virtual {v1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v2

    .line 628
    .local v2, "value":Landroid/car/hardware/CarPropertyValue;
    invoke-virtual {v2}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 630
    .local v3, "o":Ljava/lang/Object;
    invoke-virtual {v2}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v4

    const v5, 0x11400409

    if-eq v4, v5, :cond_4

    const v5, 0x16200b02

    if-eq v4, v5, :cond_1

    .end local v1    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    .end local v2    # "value":Landroid/car/hardware/CarPropertyValue;
    .end local v3    # "o":Ljava/lang/Object;
    goto :goto_1

    .line 632
    .restart local v1    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    .restart local v2    # "value":Landroid/car/hardware/CarPropertyValue;
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_6

    .line 633
    move-object v4, v3

    check-cast v4, Ljava/lang/Boolean;

    .line 634
    .local v4, "locked":Ljava/lang/Boolean;
    invoke-static {}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$100()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 635
    const-string v5, "BTDevConnectionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Door Lock: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_3

    .line 639
    iget-object v5, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$CarPropertyListener;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-static {v5}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$400(Lcom/android/car/BluetoothDeviceConnectionPolicy;)V

    .line 641
    .end local v4    # "locked":Ljava/lang/Boolean;
    :cond_3
    goto :goto_1

    .line 644
    :cond_4
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_6

    .line 645
    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    .line 646
    .local v4, "state":Ljava/lang/Integer;
    invoke-static {}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$100()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 647
    const-string v5, "BTDevConnectionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sensor value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_6

    .line 651
    iget-object v5, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$CarPropertyListener;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-static {v5}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$400(Lcom/android/car/BluetoothDeviceConnectionPolicy;)V

    .line 656
    .end local v1    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    .end local v2    # "value":Landroid/car/hardware/CarPropertyValue;
    .end local v3    # "o":Ljava/lang/Object;
    .end local v4    # "state":Ljava/lang/Integer;
    :cond_6
    :goto_1
    goto/16 :goto_0

    .line 657
    :cond_7
    return-void
.end method
