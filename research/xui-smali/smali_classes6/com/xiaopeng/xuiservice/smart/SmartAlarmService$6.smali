.class Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$6;
.super Ljava/lang/Object;
.source "SmartAlarmService.java"

# interfaces
.implements Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->addScuManagerCallback()V
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

    .line 1232
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$6;->val$signals:Landroid/util/ArrayMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 7
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 1235
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    .line 1238
    .local v0, "signalId":I
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1239
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$2000(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;II)V

    .line 1242
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$6;->val$signals:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1243
    const-string v1, "SmartAlarmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScuEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    const v1, 0x2140264b

    if-eq v0, v1, :cond_6

    const v1, 0x21412654

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_4

    const v1, 0x21412656

    if-eq v0, v1, :cond_1

    .line 1262
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$6;->val$signals:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$1600(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;II)V

    goto/16 :goto_0

    .line 1251
    :cond_1
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    .line 1253
    .local v1, "signalVal":[Ljava/lang/Integer;
    aget-object v6, v1, v4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v3, :cond_3

    aget-object v3, v1, v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v5, :cond_2

    aget-object v3, v1, v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_3

    :cond_2
    move v4, v5

    nop

    :cond_3
    move v2, v4

    .line 1254
    .local v2, "ldw_mapping":I
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$6;->val$signals:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;

    invoke-static {v3, v4, v0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$1600(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;II)V

    .line 1255
    goto :goto_0

    .line 1257
    .end local v1    # "signalVal":[Ljava/lang/Integer;
    .end local v2    # "ldw_mapping":I
    :cond_4
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    .line 1258
    .restart local v1    # "signalVal":[Ljava/lang/Integer;
    aget-object v6, v1, v4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v3, :cond_5

    aget-object v3, v1, v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_5

    move v4, v5

    nop

    :cond_5
    move v2, v4

    .line 1259
    .local v2, "rcta_mapping":I
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$6;->val$signals:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;

    invoke-static {v3, v4, v0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$1600(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;II)V

    .line 1260
    goto :goto_0

    .line 1247
    .end local v1    # "signalVal":[Ljava/lang/Integer;
    .end local v2    # "rcta_mapping":I
    :cond_6
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$6;->val$signals:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$2102(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;)Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;

    .line 1248
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$2200(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;I)V

    .line 1249
    goto :goto_0

    .line 1265
    :cond_7
    const-string v1, "SmartAlarmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unhandle onScuEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    :goto_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 1271
    return-void
.end method
