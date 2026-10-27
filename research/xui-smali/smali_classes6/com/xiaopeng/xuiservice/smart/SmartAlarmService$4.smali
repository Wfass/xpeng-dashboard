.class Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$4;
.super Ljava/lang/Object;
.source "SmartAlarmService.java"

# interfaces
.implements Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->addVcuManagerCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

.field final synthetic val$signals:Landroid/util/ArrayMap;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;Landroid/util/ArrayMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    .line 1138
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$4;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$4;->val$signals:Landroid/util/ArrayMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 5
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 1141
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    .line 1143
    .local v0, "signalId":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$4;->val$signals:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1144
    const-string v1, "SmartAlarmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVcuEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    const v1, 0x21601225

    if-ne v0, v1, :cond_2

    .line 1147
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const v2, 0x3f866666    # 1.05f

    mul-float/2addr v1, v2

    .line 1149
    .local v1, "carSpeed":F
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$4;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$1900(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ModeIndex;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ModeIndex;->getStatus()I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$4;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$1900(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ModeIndex;

    if-eqz v2, :cond_0

    const/high16 v2, 0x42f20000    # 121.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    const/high16 v2, 0x42fa0000    # 125.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    .line 1152
    const-string v2, "SmartAlarmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current carSpeed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " km/h"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$4;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$4;->val$signals:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;

    const/4 v4, 0x1

    invoke-static {v2, v3, v0, v4}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$1600(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;II)V

    .line 1156
    .end local v1    # "carSpeed":F
    :cond_0
    goto :goto_0

    .line 1158
    :cond_1
    const-string v1, "SmartAlarmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unhandle onVcuEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    :cond_2
    :goto_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 1164
    return-void
.end method
