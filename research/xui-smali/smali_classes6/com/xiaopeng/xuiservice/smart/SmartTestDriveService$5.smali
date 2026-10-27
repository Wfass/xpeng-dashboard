.class Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$5;
.super Ljava/lang/Object;
.source "SmartTestDriveService.java"

# interfaces
.implements Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->addBcmManagerCallback()V
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

    .line 211
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$5;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onChangeEvent$0(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$5;)V
    .locals 5

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaopeng/util/LocaleStrings;->getInstance()Lcom/xiaopeng/util/LocaleStrings;

    move-result-object v1

    const-string v2, "test_drive_prepare_prefix"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/util/LocaleStrings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$1300()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/util/LocaleStrings;->getInstance()Lcom/xiaopeng/util/LocaleStrings;

    move-result-object v1

    const-string v2, "test_drive_prepare_suffix"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/util/LocaleStrings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "context":Ljava/lang/String;
    const-string v1, "SmartTestDriveService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter STATE_CHANGE_HANDS, speak: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0xa

    const/4 v4, 0x7

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->speakByUrgent(Ljava/lang/String;ZII)Ljava/lang/String;

    .line 236
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$5;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$1400(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)V

    .line 237
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$5;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    sget-object v2, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;->STATE_CHANGE_HANDS:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$402(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;)Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;

    .line 238
    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 5
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 214
    const-string v0, "SmartTestDriveService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBcmEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401c07

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    const v1, 0x21411c19

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 242
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 243
    .local v0, "stats":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$5;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$1200(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Z

    move-result v1

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_1

    move v2, v3

    nop

    :cond_1
    move v1, v2

    .line 245
    .local v1, "hasDriverDoorOpen":Z
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$5;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$400(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;

    move-result-object v2

    sget-object v4, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;->STATE_READY:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;

    invoke-virtual {v2, v4}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 246
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$5;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$1102(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;Z)Z

    .line 248
    :cond_2
    const-string v2, "SmartTestDriveService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$5;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$400(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": onChangeEvent, hasDriverDoorOpen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", hasConditionDoorOpen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$5;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    .line 249
    invoke-static {v4}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$1100(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 248
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "stats":[Ljava/lang/Object;
    .end local v1    # "hasDriverDoorOpen":Z
    goto/16 :goto_0

    .line 218
    :cond_3
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_4

    move v2, v3

    nop

    :cond_4
    move v0, v2

    .line 220
    .local v0, "hasDriverOnSeat":Z
    const-string v1, "SmartTestDriveService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$5;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$400(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": onChangeEvent, hasDriverOnSeat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", hasConditionDoorOpen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$5;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    .line 221
    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$1100(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", hasConditionGearP="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$5;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$900(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 220
    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$5;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$400(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;->STATE_READY:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$5;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    .line 225
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$1100(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$5;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$900(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 227
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartTestDriveService$5$40DprHLyVbgeUA5oJZiI6gjQzzc;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartTestDriveService$5$40DprHLyVbgeUA5oJZiI6gjQzzc;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$5;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 253
    .end local v0    # "hasDriverOnSeat":Z
    :cond_5
    :goto_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 257
    return-void
.end method
