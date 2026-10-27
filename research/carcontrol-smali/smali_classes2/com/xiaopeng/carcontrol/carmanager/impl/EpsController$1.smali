.class Lcom/xiaopeng/carcontrol/carmanager/impl/EpsController$1;
.super Ljava/lang/Object;
.source "EpsController.java"

# interfaces
.implements Landroid/car/hardware/eps/CarEpsManager$CarEpsEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/carmanager/impl/EpsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/EpsController;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/impl/EpsController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EpsController$1;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/EpsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carPropertyValue"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EpsController$1;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/EpsController;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EpsController;->access$000(Lcom/xiaopeng/carcontrol/carmanager/impl/EpsController;Landroid/car/hardware/CarPropertyValue;)V

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
