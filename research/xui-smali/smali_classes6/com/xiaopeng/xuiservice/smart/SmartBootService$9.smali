.class Lcom/xiaopeng/xuiservice/smart/SmartBootService$9;
.super Ljava/lang/Object;
.source "SmartBootService.java"

# interfaces
.implements Landroid/car/xpeng/remind/CarRemindManager$XpRemindEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartBootService;->initCarListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    .line 587
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$9;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 7
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 590
    const-string v0, "SmartBootService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onXpRemindChangeEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", hasPhoneMention: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$9;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$2900(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x2140a801

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$9;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$2900(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 594
    .local v0, "position":I
    packed-switch v0, :pswitch_data_0

    .line 607
    const-string v1, "SmartBootService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onXpRemindChangeEvent, invalid position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "position":I
    goto :goto_0

    .line 599
    .restart local v0    # "position":I
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 601
    .local v1, "now":J
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$9;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$3000(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)J

    move-result-wide v3

    sub-long v3, v1, v3

    const-wide/16 v5, 0x2710

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 602
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$9;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {v3, v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$3100(Lcom/xiaopeng/xuiservice/smart/SmartBootService;I)V

    .line 603
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$9;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {v3, v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$3002(Lcom/xiaopeng/xuiservice/smart/SmartBootService;J)J

    .line 611
    .end local v0    # "position":I
    .end local v1    # "now":J
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 615
    return-void
.end method
