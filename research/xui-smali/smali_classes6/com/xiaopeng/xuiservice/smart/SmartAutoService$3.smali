.class Lcom/xiaopeng/xuiservice/smart/SmartAutoService$3;
.super Ljava/lang/Object;
.source "SmartAutoService.java"

# interfaces
.implements Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->initCarListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartAutoService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartAutoService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartAutoService;

    .line 107
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAutoService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3
    .param p1, "carPropertyValue"    # Landroid/car/hardware/CarPropertyValue;

    .line 111
    if-nez p1, :cond_0

    .line 112
    return-void

    .line 114
    :cond_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401453

    if-ne v0, v1, :cond_2

    .line 116
    const-string v0, "SmartAutoService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarMcuEventCallback CarPropertyValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 119
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 120
    .local v0, "value":I
    if-eqz v0, :cond_1

    .end local v0    # "value":I
    goto :goto_0

    .line 122
    .restart local v0    # "value":I
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAutoService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->access$200(Lcom/xiaopeng/xuiservice/smart/SmartAutoService;)V

    .line 123
    nop

    .line 129
    .end local v0    # "value":I
    :cond_2
    :goto_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 133
    return-void
.end method
