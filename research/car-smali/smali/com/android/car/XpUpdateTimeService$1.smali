.class Lcom/android/car/XpUpdateTimeService$1;
.super Landroid/car/hardware/property/ICarPropertyEventListener$Stub;
.source "XpUpdateTimeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/XpUpdateTimeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/XpUpdateTimeService;


# direct methods
.method constructor <init>(Lcom/android/car/XpUpdateTimeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/XpUpdateTimeService;

    .line 78
    iput-object p1, p0, Lcom/android/car/XpUpdateTimeService$1;->this$0:Lcom/android/car/XpUpdateTimeService;

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

    .line 81
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    iget-object v0, p0, Lcom/android/car/XpUpdateTimeService$1;->this$0:Lcom/android/car/XpUpdateTimeService;

    invoke-static {v0}, Lcom/android/car/XpUpdateTimeService;->access$000(Lcom/android/car/XpUpdateTimeService;)Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;->sendVhalEvents(Ljava/util/List;)V

    .line 82
    return-void
.end method
