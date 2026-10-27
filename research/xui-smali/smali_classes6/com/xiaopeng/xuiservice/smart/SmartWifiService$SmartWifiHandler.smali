.class public Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;
.super Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;
.source "SmartWifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartWifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmartWifiHandler"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartWifiService;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartWifiService;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartWifiService;
    .param p2, "context"    # Landroid/content/Context;

    .line 144
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartWifiService;

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;-><init>()V

    .line 145
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;->context:Landroid/content/Context;

    .line 146
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 150
    invoke-super {p0, p1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->handleMessage(Landroid/os/Message;)V

    .line 151
    const-string v0, "SmartWifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: msg.what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x64

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 173
    :pswitch_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->init()V

    .line 174
    goto/16 :goto_0

    .line 169
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->disconnectWifi()V

    .line 170
    goto/16 :goto_0

    .line 166
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->createAVPWifiInfo()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->connect(Landroid/net/wifi/WifiConfiguration;)Z

    .line 167
    goto :goto_0

    .line 162
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->createAVPWifiInfo()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->addNetWork(Landroid/net/wifi/WifiConfiguration;)Z

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartWifiService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartWifiService;->access$100(Lcom/xiaopeng/xuiservice/smart/SmartWifiService;)Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartWifiService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartWifiService;->access$100(Lcom/xiaopeng/xuiservice/smart/SmartWifiService;)Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 164
    goto :goto_0

    .line 155
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->openWifi()Z

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartWifiService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartWifiService;->access$100(Lcom/xiaopeng/xuiservice/smart/SmartWifiService;)Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartWifiService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartWifiService;->access$100(Lcom/xiaopeng/xuiservice/smart/SmartWifiService;)Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 158
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->startScan()V

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartWifiService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartWifiService;->access$100(Lcom/xiaopeng/xuiservice/smart/SmartWifiService;)Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartWifiService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartWifiService;->access$100(Lcom/xiaopeng/xuiservice/smart/SmartWifiService;)Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/smart/SmartWifiService$SmartWifiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 160
    nop

    .line 178
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
