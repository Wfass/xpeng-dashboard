.class Lcom/xiaopeng/xuiservice/smart/SmartAvasService$2;
.super Ljava/lang/Object;
.source "SmartAvasService.java"

# interfaces
.implements Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->initCarListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartAvasService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartAvasService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartAvasService;

    .line 100
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAvasService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 2
    .param p1, "val"    # Landroid/car/hardware/CarPropertyValue;

    .line 103
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401409

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 106
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->access$202(Z)Z

    goto :goto_0

    .line 107
    :cond_1
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 108
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->access$202(Z)Z

    .line 117
    :cond_2
    :goto_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 2
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAvasService;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->TAG:Ljava/lang/String;

    const-string v1, "CarMcuManager.CarMcuEventCallback onErrorEvent"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method
