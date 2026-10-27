.class Lcom/android/car/XpDiagnosticService$1;
.super Landroid/car/hardware/property/ICarPropertyEventListener$Stub;
.source "XpDiagnosticService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/XpDiagnosticService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/XpDiagnosticService;


# direct methods
.method constructor <init>(Lcom/android/car/XpDiagnosticService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/XpDiagnosticService;

    .line 376
    iput-object p1, p0, Lcom/android/car/XpDiagnosticService$1;->this$0:Lcom/android/car/XpDiagnosticService;

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

    .line 379
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService$1;->this$0:Lcom/android/car/XpDiagnosticService;

    invoke-static {v0}, Lcom/android/car/XpDiagnosticService;->access$000(Lcom/android/car/XpDiagnosticService;)Lcom/android/car/XpDiagnosticService$DiagHandler;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/car/XpDiagnosticService$DiagHandler;->access$100(Lcom/android/car/XpDiagnosticService$DiagHandler;Ljava/util/List;)V

    .line 380
    return-void
.end method
