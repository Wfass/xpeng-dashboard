.class Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$5;
.super Ljava/lang/Object;
.source "SmartAlarmService.java"

# interfaces
.implements Landroid/car/hardware/vpm/CarVpmManager$CarVpmEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->addVpmManagerCallback()V
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

    .line 1180
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$5;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$5;->val$signals:Landroid/util/ArrayMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 5
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 1183
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    .line 1185
    .local v0, "signalId":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$5;->val$signals:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1186
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1188
    .local v1, "signalVal":I
    const-string v2, "SmartAlarmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onVpmEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$5;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$5;->val$signals:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;

    invoke-static {v2, v3, v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$1600(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;II)V

    .line 1191
    .end local v1    # "signalVal":I
    goto :goto_0

    .line 1192
    :cond_0
    const-string v1, "SmartAlarmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unhandle onVpmEvent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    :goto_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 1198
    return-void
.end method
