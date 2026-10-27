.class final Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$NetworkLooperThread;
.super Ljava/lang/Thread;
.source "MobileNetworkModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NetworkLooperThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$NetworkLooperThread;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;
    .param p2, "x1"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$1;

    .line 82
    invoke-direct {p0, p1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$NetworkLooperThread;-><init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;)V

    return-void
.end method


# virtual methods
.method public kill()V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$NetworkLooperThread;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;

    invoke-static {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->access$400(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;)Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$NetworkLooperThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$NetworkLooperThread;->interrupt()V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$NetworkLooperThread;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;

    invoke-static {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->access$100(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;)Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$MyPhoneStateListener;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$NetworkLooperThread;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;

    invoke-static {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->access$300(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$NetworkLooperThread;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;

    invoke-static {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->access$300(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$NetworkLooperThread;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;

    invoke-static {v2}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->access$100(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;)Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$MyPhoneStateListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$NetworkLooperThread;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;

    invoke-static {v0, v1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->access$102(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$MyPhoneStateListener;)Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$MyPhoneStateListener;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$NetworkLooperThread;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;

    invoke-static {v0, v1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->access$402(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$NetworkLooperThread;)Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$NetworkLooperThread;

    .line 98
    return-void
.end method

.method public run()V
    .locals 4

    .line 85
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$NetworkLooperThread;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;

    new-instance v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$MyPhoneStateListener;

    iget-object v2, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$NetworkLooperThread;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$MyPhoneStateListener;-><init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$1;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->access$102(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$MyPhoneStateListener;)Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$MyPhoneStateListener;

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$NetworkLooperThread;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;

    invoke-static {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->access$300(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$NetworkLooperThread;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;

    invoke-static {v1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->access$100(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;)Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$MyPhoneStateListener;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 88
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 89
    return-void
.end method
