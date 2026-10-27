.class Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$13;
.super Ljava/lang/Object;
.source "SmartVolumeService.java"

# interfaces
.implements Landroid/car/diagnostic/XpDiagnosticManager$XpDiagnosticEventCallback;


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

    .line 380
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 5
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 383
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401237

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->access$800(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 386
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->access$1400(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)Landroid/car/hardware/mcu/CarMcuManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/car/hardware/mcu/CarMcuManager;->getIgStatusFromMcu()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v0, :cond_0

    .line 387
    return-void

    .line 391
    :cond_0
    goto :goto_0

    .line 389
    :catch_0
    move-exception v1

    .line 390
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SmartVolumeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XpDiagnosticEventCallback e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v1, "SmartVolumeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XpDiagnosticManager.XpDiagnosticEventCallback onChangeEvent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->access$800(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, "IG_ON=true"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 399
    :cond_1
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 403
    return-void
.end method
