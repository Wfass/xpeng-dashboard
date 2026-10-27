.class final Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$MyPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "MobileNetworkModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$MyPhoneStateListener;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;
    .param p2, "x1"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$1;

    .line 101
    invoke-direct {p0, p1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$MyPhoneStateListener;-><init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;)V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 5
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 104
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 106
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "signalInfo":Ljava/lang/String;
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "params":[Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$MyPhoneStateListener;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;

    const/16 v3, 0x9

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->access$502(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;I)I

    .line 109
    const-string v2, "MobileNetworkModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSignalStrengthsChanged lteSignalStrength = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$MyPhoneStateListener;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;

    invoke-static {v4}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->access$500(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    return-void
.end method
