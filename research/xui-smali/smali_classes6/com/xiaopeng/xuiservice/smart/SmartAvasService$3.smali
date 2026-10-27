.class Lcom/xiaopeng/xuiservice/smart/SmartAvasService$3;
.super Ljava/lang/Object;
.source "SmartAvasService.java"

# interfaces
.implements Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;


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

    .line 125
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAvasService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 2
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 128
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401205

    if-ne v0, v1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAvasService;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->access$300(Lcom/xiaopeng/xuiservice/smart/SmartAvasService;I)V

    .line 131
    :cond_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 2
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAvasService;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->TAG:Ljava/lang/String;

    const-string v1, "CarVcuManager.CarVcuEventCallback onErrorEvent"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method
