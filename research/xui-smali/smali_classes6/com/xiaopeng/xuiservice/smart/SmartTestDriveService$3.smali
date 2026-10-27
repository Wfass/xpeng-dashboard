.class Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$3;
.super Ljava/lang/Object;
.source "SmartTestDriveService.java"

# interfaces
.implements Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->addMcuManagerCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    .line 151
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 6
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 154
    const-string v0, "SmartTestDriveService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMcuEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401409

    if-ne v0, v1, :cond_2

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$502(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;Z)Z

    .line 159
    const-string v0, "SmartTestDriveService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangeEvent, hasIgOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$500(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$300(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$400(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;->STATE_IDLE:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$300(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "timestamp"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x708

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 164
    const-string v0, "SmartTestDriveService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "passengerInfo timeout("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    .line 165
    invoke-static {v4}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$300(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "timestamp"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    mul-long/2addr v4, v2

    invoke-static {v4, v5}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$600(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), clear it"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$302(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$500(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$702(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;J)J

    .line 174
    :cond_2
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 178
    return-void
.end method
