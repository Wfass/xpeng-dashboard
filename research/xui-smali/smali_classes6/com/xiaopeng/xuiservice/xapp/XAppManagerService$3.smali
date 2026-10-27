.class Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$3;
.super Ljava/lang/Object;
.source "XAppManagerService.java"

# interfaces
.implements Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->addIgOnStatusListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    .line 176
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$3;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 179
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401409

    if-ne v0, v1, :cond_1

    .line 180
    const-string v0, "XAppManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID_MCU_IG_STATUS event :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 182
    .local v0, "igStatus":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 183
    .local v1, "newIgOnStatus":Z
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$3;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->setIgOnStatus(Z)V

    .line 185
    .end local v0    # "igStatus":I
    .end local v1    # "newIgOnStatus":Z
    :cond_1
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 188
    return-void
.end method
