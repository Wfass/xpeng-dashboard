.class Lcom/android/car/CarLocationService$CarPropertyEventListener;
.super Landroid/car/hardware/property/ICarPropertyEventListener$Stub;
.source "CarLocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarLocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarPropertyEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/CarLocationService;


# direct methods
.method private constructor <init>(Lcom/android/car/CarLocationService;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/android/car/CarLocationService$CarPropertyEventListener;->this$0:Lcom/android/car/CarLocationService;

    invoke-direct {p0}, Landroid/car/hardware/property/ICarPropertyEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/CarLocationService;Lcom/android/car/CarLocationService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/CarLocationService;
    .param p2, "x1"    # Lcom/android/car/CarLocationService$1;

    .line 324
    invoke-direct {p0, p1}, Lcom/android/car/CarLocationService$CarPropertyEventListener;-><init>(Lcom/android/car/CarLocationService;)V

    return-void
.end method

.method public static synthetic lambda$onEvent$0(Lcom/android/car/CarLocationService$CarPropertyEventListener;)V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/android/car/CarLocationService$CarPropertyEventListener;->this$0:Lcom/android/car/CarLocationService;

    invoke-static {v0}, Lcom/android/car/CarLocationService;->access$200(Lcom/android/car/CarLocationService;)V

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/util/List;)V
    .locals 6
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

    .line 327
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/property/CarPropertyEvent;

    .line 328
    .local v1, "event":Landroid/car/hardware/property/CarPropertyEvent;
    invoke-virtual {v1}, Landroid/car/hardware/property/CarPropertyEvent;->getEventType()I

    move-result v2

    if-nez v2, :cond_0

    .line 329
    invoke-virtual {v1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v2

    .line 330
    .local v2, "value":Landroid/car/hardware/CarPropertyValue;
    invoke-virtual {v2}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v3

    const v4, 0x11400409

    if-ne v3, v4, :cond_0

    .line 331
    invoke-virtual {v2}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 332
    .local v3, "ignitionState":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "property ignition value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/car/CarLocationService;->access$100(Ljava/lang/String;)V

    .line 333
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 334
    const-string v4, "ignition off"

    invoke-static {v4}, Lcom/android/car/CarLocationService;->access$100(Ljava/lang/String;)V

    .line 335
    iget-object v4, p0, Lcom/android/car/CarLocationService$CarPropertyEventListener;->this$0:Lcom/android/car/CarLocationService;

    new-instance v5, Lcom/android/car/-$$Lambda$CarLocationService$CarPropertyEventListener$kbDcCpFJgPoaKrzM-WdKaZpDstE;

    invoke-direct {v5, p0}, Lcom/android/car/-$$Lambda$CarLocationService$CarPropertyEventListener$kbDcCpFJgPoaKrzM-WdKaZpDstE;-><init>(Lcom/android/car/CarLocationService$CarPropertyEventListener;)V

    invoke-virtual {v4, v5}, Lcom/android/car/CarLocationService;->asyncOperation(Ljava/lang/Runnable;)V

    .line 339
    .end local v1    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    .end local v2    # "value":Landroid/car/hardware/CarPropertyValue;
    .end local v3    # "ignitionState":I
    :cond_0
    goto :goto_0

    .line 340
    :cond_1
    return-void
.end method
