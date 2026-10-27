.class Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$3;
.super Ljava/lang/Object;
.source "CarRebootManager.java"

# interfaces
.implements Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    .line 102
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$3;->this$0:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 5
    .param p1, "carPropertyValue"    # Landroid/car/hardware/CarPropertyValue;

    .line 105
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    .line 106
    .local v0, "id":I
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 107
    .local v1, "propertyValue":Ljava/lang/Object;
    const v2, 0x21401229

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    const-string v2, "CarRebootManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get ID_VCU_CHARGE_STATUS,val:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$3;->this$0:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    move-object v3, v1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->access$400(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;I)V

    .line 112
    nop

    .line 116
    :goto_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 120
    return-void
.end method
