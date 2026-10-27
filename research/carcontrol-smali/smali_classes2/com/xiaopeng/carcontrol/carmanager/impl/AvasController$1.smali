.class Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController$1;
.super Ljava/lang/Object;
.source "AvasController.java"

# interfaces
.implements Landroid/car/hardware/avas/CarAvasManager$CarAvasEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController$1;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;

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

    .line 53
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21403208

    if-eq v0, v1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAvasChangeEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "AvasController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController$1;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->access$000(Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;Landroid/car/hardware/CarPropertyValue;)V

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
