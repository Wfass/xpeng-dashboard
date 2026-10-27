.class Lcom/xiaopeng/xuiservice/smart/SmartIcmService$4;
.super Ljava/lang/Object;
.source "SmartIcmService.java"

# interfaces
.implements Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->initCarListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    .line 212
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$4;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3
    .param p1, "val"    # Landroid/car/hardware/CarPropertyValue;

    .line 215
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 225
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$4;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->access$1102(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;I)I

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$4;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarVcuManager.CarVcuEventCallback CHARGE_GUN onChangeEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$4;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->access$1000(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)V

    .line 230
    goto :goto_0

    .line 218
    :cond_0
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$4;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->access$902(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;I)I

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$4;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarVcuManager.CarVcuEventCallback CHARGE onChangeEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$4;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->access$1000(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)V

    .line 223
    nop

    .line 236
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x21401228
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onErrorEvent(II)V
    .locals 2
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$4;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->TAG:Ljava/lang/String;

    const-string v1, "CarVcuManager.CarVcuEventCallback onErrorEvent"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void
.end method
