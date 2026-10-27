.class Lcom/xiaopeng/xuiservice/smart/SmartShowService$2;
.super Ljava/lang/Object;
.source "SmartShowService.java"

# interfaces
.implements Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartShowService;->initCarListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartShowService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartShowService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartShowService;

    .line 85
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartShowService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartShowService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 88
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 108
    :sswitch_0
    goto :goto_0

    .line 112
    :sswitch_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartShowService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartShowService;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/smart/SmartShowService;->TAG:Ljava/lang/String;

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

    .line 117
    goto :goto_0

    .line 130
    :sswitch_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartShowService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartShowService;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/smart/SmartShowService;->TAG:Ljava/lang/String;

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

    .line 135
    goto :goto_0

    .line 121
    :sswitch_3
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartShowService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartShowService;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/smart/SmartShowService;->TAG:Ljava/lang/String;

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

    .line 126
    nop

    .line 141
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x21401c17 -> :sswitch_3
        0x21401c18 -> :sswitch_2
        0x21401c28 -> :sswitch_1
        0x21401ca0 -> :sswitch_0
    .end sparse-switch
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 145
    return-void
.end method
