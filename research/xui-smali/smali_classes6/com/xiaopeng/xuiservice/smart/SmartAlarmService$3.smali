.class Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$3;
.super Ljava/lang/Object;
.source "SmartAlarmService.java"

# interfaces
.implements Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->addMcuManagerCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    .line 1104
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 5
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 1107
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    .line 1109
    .local v0, "signalId":I
    const-string v1, "SmartAlarmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMcuEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    const v1, 0x21401409

    if-ne v0, v1, :cond_2

    .line 1112
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1114
    .local v1, "signalVal":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$1702(Z)Z

    .line 1115
    const-string v2, "SmartAlarmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mcu onChangeEvent: hasIgOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$1700()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "true"

    goto :goto_1

    :cond_1
    const-string v4, "false"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$1700()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1118
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$1800(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)V

    .line 1121
    .end local v1    # "signalVal":I
    :cond_2
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 1125
    return-void
.end method
