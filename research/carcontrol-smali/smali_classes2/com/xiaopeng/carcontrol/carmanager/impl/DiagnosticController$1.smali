.class Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController$1;
.super Ljava/lang/Object;
.source "DiagnosticController.java"

# interfaces
.implements Landroid/car/diagnostic/XpDiagnosticManager$XpDiagnosticEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController$1;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carPropertyValue"
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChangeEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DiagnosticController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController$1;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController;->access$000(Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController;Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "propertyId",
            "zone"
        }
    .end annotation

    return-void
.end method
