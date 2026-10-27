.class Lcom/xiaopeng/xuiservice/smart/SmartLluService$10;
.super Ljava/lang/Object;
.source "SmartLluService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/cv/SmartAvmManager$SmartAvmEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartLluService;->startAiLluMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartLluService;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    .line 1654
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$10;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    iput p2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$10;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionTrackingCallBack(I)V
    .locals 9
    .param p1, "position"    # I

    .line 1657
    const/4 v0, 0x0

    if-gez p1, :cond_0

    .line 1658
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$1902(I)I

    .line 1659
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$2000()Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluAiListener;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1660
    const-string v1, "SmartLluService"

    const-string v2, "onMotionTrackingCallBack, stop Llu"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$2000()Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluAiListener;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$10;->val$type:I

    invoke-interface {v1, v2, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluAiListener;->onAiLluEvent(II)V

    goto/16 :goto_3

    .line 1664
    :cond_0
    const/16 v1, 0x43

    mul-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x64

    add-int/lit8 v1, v1, 0x3

    .line 1665
    .local v1, "pos":I
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$10;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v2, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$2100(Lcom/xiaopeng/xuiservice/smart/SmartLluService;I)I

    move-result v2

    .line 1667
    .local v2, "number":I
    if-lez v2, :cond_1

    const/16 v3, 0xe

    if-ge v2, v3, :cond_1

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$2200()[I

    move-result-object v0

    add-int/lit8 v3, v2, -0x1

    aget v0, v0, v3

    nop

    .line 1668
    .local v0, "fTick":I
    :cond_1
    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    const/16 v3, 0x11

    :goto_0
    move v5, v3

    goto :goto_1

    :cond_2
    const/16 v3, 0x28

    goto :goto_0

    .line 1670
    .local v5, "fType":I
    :goto_1
    const-string v3, "SmartLluService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMotionTrackingCallBack, pos="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", fTick="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mumber="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$1900()I

    move-result v3

    if-eq v3, v0, :cond_4

    .line 1673
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$1902(I)I

    .line 1674
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$10;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$2300(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)Landroid/car/hardware/llu/CarLluManager;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1676
    :try_start_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$10;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$2300(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)Landroid/car/hardware/llu/CarLluManager;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v6, v0

    invoke-virtual/range {v3 .. v8}, Landroid/car/hardware/llu/CarLluManager;->setLluPrivateCtrl(ZIIII)V

    .line 1677
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$10;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$2600(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)Lcom/xiaopeng/xuiservice/utils/SoundPlayHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$10;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$2400(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)Lcom/xiaopeng/xuiservice/smart/SmartLluService$AiLluAudioTable;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$AiLluAudioTable;->access$2500(Lcom/xiaopeng/xuiservice/smart/SmartLluService$AiLluAudioTable;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuiservice/utils/SoundPlayHelper;->playNote(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1680
    goto :goto_2

    .line 1678
    :catch_0
    move-exception v3

    .line 1679
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$10;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-virtual {v4, v3}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleException(Ljava/lang/Exception;)V

    .line 1682
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$2000()Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluAiListener;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1683
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$2000()Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluAiListener;

    move-result-object v3

    iget v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$10;->val$type:I

    invoke-interface {v3, v4, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluAiListener;->onAiLluEvent(II)V

    .line 1687
    .end local v0    # "fTick":I
    .end local v1    # "pos":I
    .end local v2    # "number":I
    .end local v5    # "fType":I
    :cond_4
    :goto_3
    return-void
.end method
