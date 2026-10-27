.class Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$2;
.super Ljava/lang/Object;
.source "SmartAlarmService.java"

# interfaces
.implements Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->addXpuManagerCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

.field final synthetic val$signalId:I

.field final synthetic val$signals:Landroid/util/ArrayMap;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;ILandroid/util/ArrayMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    .line 1054
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    iput p2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$2;->val$signalId:I

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$2;->val$signals:Landroid/util/ArrayMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 5
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 1057
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$2;->val$signalId:I

    if-ne v0, v1, :cond_1

    .line 1058
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1060
    .local v0, "values":[B
    const-string v1, "SmartAlarmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onXpuEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$1500(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$NgpPackage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$NgpPackage;->hasValid([B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1063
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$2;->val$signals:Landroid/util/ArrayMap;

    iget v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$2;->val$signalId:I

    add-int/lit8 v3, v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;

    iget v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$2;->val$signalId:I

    add-int/lit8 v3, v3, 0xb

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$1500(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$NgpPackage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$NgpPackage;->getRd11Data()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$1600(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;II)V

    .line 1064
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$2;->val$signals:Landroid/util/ArrayMap;

    iget v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$2;->val$signalId:I

    add-int/lit8 v3, v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;

    iget v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$2;->val$signalId:I

    add-int/lit8 v3, v3, 0xd

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$1500(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$NgpPackage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$NgpPackage;->getRd13Data()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$1600(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;II)V

    .line 1066
    .end local v0    # "values":[B
    :cond_0
    goto :goto_0

    .line 1067
    :cond_1
    const-string v0, "SmartAlarmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unhandle onXpuEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$2;->val$signalId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    :goto_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 1073
    return-void
.end method
