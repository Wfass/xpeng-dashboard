.class Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$4;
.super Ljava/lang/Object;
.source "SmartTestDriveService.java"

# interfaces
.implements Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->addVcuManagerCallback()V
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

    .line 185
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$4;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 188
    const-string v0, "SmartTestDriveService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVcuEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401205

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$4;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$802(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;I)I

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$4;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$4;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$400(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;->STATE_READY:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$4;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$1000(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$902(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;Z)Z

    .line 195
    const-string v0, "SmartTestDriveService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$4;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$400(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": onChangeEvent, hasGearP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$4;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$1000(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasConditionGearP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$4;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    .line 196
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$900(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :goto_1
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 204
    return-void
.end method
