.class Lcom/android/car/CarConditionService$1;
.super Landroid/car/hardware/property/ICarPropertyEventListener$Stub;
.source "CarConditionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarConditionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/CarConditionService;


# direct methods
.method constructor <init>(Lcom/android/car/CarConditionService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/CarConditionService;

    .line 50
    iput-object p1, p0, Lcom/android/car/CarConditionService$1;->this$0:Lcom/android/car/CarConditionService;

    invoke-direct {p0}, Landroid/car/hardware/property/ICarPropertyEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/util/List;)V
    .locals 1
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

    .line 53
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    iget-object v0, p0, Lcom/android/car/CarConditionService$1;->this$0:Lcom/android/car/CarConditionService;

    invoke-static {v0}, Lcom/android/car/CarConditionService;->access$000(Lcom/android/car/CarConditionService;)Lcom/android/car/CarConditionService$CarConditionHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/car/CarConditionService$CarConditionHandler;->sendHalEvents(Ljava/util/List;)V

    .line 54
    return-void
.end method
