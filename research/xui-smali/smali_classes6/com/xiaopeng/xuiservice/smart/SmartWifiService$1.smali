.class Lcom/xiaopeng/xuiservice/smart/SmartWifiService$1;
.super Ljava/lang/Object;
.source "SmartWifiService.java"

# interfaces
.implements Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartWifiService;->initCarListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartWifiService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartWifiService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartWifiService;

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartWifiService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartWifiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 60
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401018

    if-ne v0, v1, :cond_1

    .line 61
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 62
    const-string v0, "SmartWifiService"

    const-string v1, "Disconnect AVP Wifi"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWifiService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartWifiService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartWifiService;->access$100(Lcom/xiaopeng/xuiservice/smart/SmartWifiService;)Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartWifiService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartWifiService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartWifiService;->access$100(Lcom/xiaopeng/xuiservice/smart/SmartWifiService;)Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 65
    const-string v0, "SmartWifiService"

    const-string v2, "Open AVP Wifi"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWifiService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartWifiService;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/smart/SmartWifiService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->enableAVPWifi(Z)V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWifiService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartWifiService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartWifiService;->access$100(Lcom/xiaopeng/xuiservice/smart/SmartWifiService;)Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartWifiService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartWifiService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartWifiService;->access$100(Lcom/xiaopeng/xuiservice/smart/SmartWifiService;)Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 70
    :cond_1
    :goto_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 74
    return-void
.end method
