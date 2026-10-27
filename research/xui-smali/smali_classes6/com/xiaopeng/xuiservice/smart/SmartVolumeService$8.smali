.class Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$8;
.super Ljava/lang/Object;
.source "SmartVolumeService.java"

# interfaces
.implements Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;


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

    .line 236
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 5
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 239
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401409

    if-ne v0, v1, :cond_3

    .line 241
    const-string v0, "SmartVolumeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarMcuManager.CarMcuEventCallback  :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 245
    const-string v0, "SmartVolumeService"

    const-string v2, "IG ON  set unmute!!"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->isEcallEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "XpNetECallEnable"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 249
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "XpNetECallEnable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->access$800(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    .line 253
    .local v0, "isMuted":Z
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->access$800(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)Landroid/media/AudioManager;

    move-result-object v2

    const/16 v3, 0x64

    const v4, 0x10028000

    invoke-virtual {v2, v1, v3, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 256
    if-eqz v0, :cond_1

    .line 257
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$8$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$8$1;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$8;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 271
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->access$600(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)Landroid/car/hardware/bcm/CarBcmManager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 272
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->access$600(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)Landroid/car/hardware/bcm/CarBcmManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/car/hardware/bcm/CarBcmManager;->getDoorsState()[I

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->access$700(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :cond_2
    goto :goto_0

    .line 274
    :catch_0
    move-exception v1

    .line 275
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SmartVolumeService"

    const-string v3, "handleCarDoorChanged error"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->access$900()I

    move-result v2

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->access$1000(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;II)V

    .line 281
    .end local v0    # "isMuted":Z
    :cond_3
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 285
    return-void
.end method
