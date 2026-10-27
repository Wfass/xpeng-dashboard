.class Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$9;
.super Ljava/lang/Object;
.source "SmartVolumeService.java"

# interfaces
.implements Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;


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

    .line 288
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$9;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 10
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 291
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x2141267a

    if-ne v0, v1, :cond_4

    .line 292
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 293
    .local v0, "values":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 294
    .local v1, "result":[I
    if-eqz v0, :cond_4

    array-length v2, v0

    const/4 v3, 0x4

    if-lt v2, v3, :cond_4

    .line 295
    array-length v2, v0

    new-array v1, v2, [I

    .line 296
    const/4 v2, 0x2

    aget-object v3, v0, v2

    .line 297
    .local v3, "objValueEBA":Ljava/lang/Object;
    const/4 v4, 0x3

    aget-object v5, v0, v4

    .line 298
    .local v5, "objValueAEB":Ljava/lang/Object;
    instance-of v6, v3, Ljava/lang/Integer;

    if-eqz v6, :cond_0

    .line 299
    move-object v6, v3

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v1, v2

    .line 300
    :cond_0
    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_1

    .line 301
    move-object v6, v5

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v1, v4

    .line 303
    :cond_1
    const-string v6, "SmartVolumeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "objValueEBA:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v1, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "  objValueAEB:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v1, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    aget v6, v1, v4

    const/4 v7, 0x0

    const/16 v8, 0x80

    const/4 v9, 0x1

    if-eq v6, v9, :cond_3

    aget v6, v1, v4

    if-eq v6, v2, :cond_3

    aget v6, v1, v2

    if-eq v6, v9, :cond_3

    aget v6, v1, v2

    if-ne v6, v2, :cond_2

    goto :goto_0

    .line 309
    :cond_2
    aget v6, v1, v4

    if-nez v6, :cond_4

    aget v2, v1, v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 310
    const-string v2, "SmartVolumeService"

    const-string v6, "AEB_STATUS_INACTIVE  MUTE MUSIC!!"

    invoke-static {v2, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$9;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->access$800(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v4, v9, v8, v9}, Landroid/media/AudioManager;->temporaryChangeVolumeDown(IIIZ)V

    .line 312
    invoke-static {v7}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->access$1102(Z)Z

    .end local v0    # "values":[Ljava/lang/Object;
    .end local v1    # "result":[I
    .end local v3    # "objValueEBA":Ljava/lang/Object;
    .end local v5    # "objValueAEB":Ljava/lang/Object;
    goto :goto_1

    .line 306
    .restart local v0    # "values":[Ljava/lang/Object;
    .restart local v1    # "result":[I
    .restart local v3    # "objValueEBA":Ljava/lang/Object;
    .restart local v5    # "objValueAEB":Ljava/lang/Object;
    :cond_3
    :goto_0
    const-string v2, "SmartVolumeService"

    const-string v6, "AEB_STATUS_ACTIVE_TO_CAR  MUTE MUSIC!!"

    invoke-static {v2, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$9;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->access$800(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v4, v9, v8, v7}, Landroid/media/AudioManager;->temporaryChangeVolumeDown(IIIZ)V

    .line 308
    invoke-static {v9}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->access$1102(Z)Z

    .line 316
    .end local v0    # "values":[Ljava/lang/Object;
    .end local v1    # "result":[I
    .end local v3    # "objValueEBA":Ljava/lang/Object;
    .end local v5    # "objValueAEB":Ljava/lang/Object;
    :cond_4
    :goto_1
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 320
    return-void
.end method
