.class Lcom/xiaopeng/xuiservice/smart/SmartLluService$5;
.super Ljava/lang/Object;
.source "SmartLluService.java"

# interfaces
.implements Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartLluService;->initCarListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    .line 333
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$5;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 336
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 340
    :sswitch_0
    const-string v0, "SmartLluService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarBcmManager.CarBcmEventCallback onChangeEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$5;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$1000(Lcom/xiaopeng/xuiservice/smart/SmartLluService;I)V

    .line 343
    goto :goto_0

    .line 353
    :sswitch_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$5;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$1200(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V

    .line 354
    goto :goto_0

    .line 349
    :sswitch_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$5;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$1200(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V

    .line 350
    goto :goto_0

    .line 345
    :sswitch_3
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$5;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$1100(Lcom/xiaopeng/xuiservice/smart/SmartLluService;I)V

    .line 346
    nop

    .line 361
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x21401c02 -> :sswitch_3
        0x21401c17 -> :sswitch_2
        0x21401c18 -> :sswitch_1
        0x21401c28 -> :sswitch_0
    .end sparse-switch
.end method

.method public onErrorEvent(II)V
    .locals 2
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 365
    const-string v0, "SmartLluService"

    const-string v1, "CarBcmManager.CarBcmEventCallback onErrorEvent"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    return-void
.end method
