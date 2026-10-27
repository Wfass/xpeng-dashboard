.class Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController$1;
.super Ljava/lang/Object;
.source "CdcController.java"

# interfaces
.implements Landroid/car/hardware/cdc/CarCdcManager$CarCdcEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController$1;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;

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

    .line 29
    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangeEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController$1;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;->access$000(Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;Landroid/car/hardware/CarPropertyValue;)V

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
