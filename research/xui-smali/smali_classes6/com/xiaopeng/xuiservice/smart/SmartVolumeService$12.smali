.class Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$12;
.super Ljava/lang/Object;
.source "SmartVolumeService.java"

# interfaces
.implements Landroid/car/hardware/amp/CarAmpManager$CarAmpEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->initCarListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    .line 349
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$12;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 4
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 352
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21402019

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$12;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->access$800(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 353
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$12;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->access$1400(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)Landroid/car/hardware/mcu/CarMcuManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$12;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$12;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    const-string/jumbo v3, "xp_mcu"

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/mcu/CarMcuManager;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->access$1402(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;Landroid/car/hardware/mcu/CarMcuManager;)Landroid/car/hardware/mcu/CarMcuManager;

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$12;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->access$1500(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)Landroid/car/diagnostic/XpDiagnosticManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$12;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$12;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    const-string/jumbo v3, "xp_diagnostic"

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/diagnostic/XpDiagnosticManager;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->access$1502(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;Landroid/car/diagnostic/XpDiagnosticManager;)Landroid/car/diagnostic/XpDiagnosticManager;

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$12;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->access$1400(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)Landroid/car/hardware/mcu/CarMcuManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/mcu/CarMcuManager;->getIgStatusFromMcu()I

    move-result v0

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$12;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    .line 360
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->access$1500(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)Landroid/car/diagnostic/XpDiagnosticManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getThermalRunawayState()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 361
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$12;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->access$800(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, "IG_ON=true"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 363
    :cond_2
    const-string v0, "SmartVolumeService"

    const-string v1, "A2B_CMD=reconnect!!"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$12;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->access$800(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, "A2B_CMD=reconnect;"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 368
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 369
    :cond_3
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 370
    const-string v0, "SmartVolumeService"

    const-string v1, "A2B_CMD=connected!!"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$12;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->access$800(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, "A2B_CMD=connected;"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 374
    :cond_4
    :goto_1
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 378
    return-void
.end method
