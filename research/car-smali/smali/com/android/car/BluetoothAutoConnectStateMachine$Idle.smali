.class Lcom/android/car/BluetoothAutoConnectStateMachine$Idle;
.super Lcom/android/internal/util/State;
.source "BluetoothAutoConnectStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/BluetoothAutoConnectStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Idle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/BluetoothAutoConnectStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/car/BluetoothAutoConnectStateMachine;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/android/car/BluetoothAutoConnectStateMachine$Idle;->this$0:Lcom/android/car/BluetoothAutoConnectStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/BluetoothAutoConnectStateMachine;Lcom/android/car/BluetoothAutoConnectStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/BluetoothAutoConnectStateMachine;
    .param p2, "x1"    # Lcom/android/car/BluetoothAutoConnectStateMachine$1;

    .line 91
    invoke-direct {p0, p1}, Lcom/android/car/BluetoothAutoConnectStateMachine$Idle;-><init>(Lcom/android/car/BluetoothAutoConnectStateMachine;)V

    return-void
.end method

.method private connectToBluetoothDevice()V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/android/car/BluetoothAutoConnectStateMachine$Idle;->this$0:Lcom/android/car/BluetoothAutoConnectStateMachine;

    invoke-static {v0}, Lcom/android/car/BluetoothAutoConnectStateMachine;->access$400(Lcom/android/car/BluetoothAutoConnectStateMachine;)Lcom/android/car/BluetoothDeviceConnectionPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->findDeviceToConnect()Z

    move-result v0

    .line 165
    .local v0, "deviceToConnectFound":Z
    if-eqz v0, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/car/BluetoothAutoConnectStateMachine$Idle;->this$0:Lcom/android/car/BluetoothAutoConnectStateMachine;

    iget-object v2, p0, Lcom/android/car/BluetoothAutoConnectStateMachine$Idle;->this$0:Lcom/android/car/BluetoothAutoConnectStateMachine;

    invoke-static {v2}, Lcom/android/car/BluetoothAutoConnectStateMachine;->access$500(Lcom/android/car/BluetoothAutoConnectStateMachine;)Lcom/android/car/BluetoothAutoConnectStateMachine$Processing;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/car/BluetoothAutoConnectStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 169
    :cond_0
    invoke-static {}, Lcom/android/car/BluetoothAutoConnectStateMachine;->access$200()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    const-string v1, "BTAutoConnStateMachine"

    const-string v2, "Idle->No device to connect"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 94
    invoke-static {}, Lcom/android/car/BluetoothAutoConnectStateMachine;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "BTAutoConnStateMachine"

    const-string v1, "Enter Idle"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/android/car/BluetoothAutoConnectStateMachine$Idle;->connectToBluetoothDevice()V

    .line 98
    return-void
.end method

.method public exit()V
    .locals 2

    .line 177
    invoke-static {}, Lcom/android/car/BluetoothAutoConnectStateMachine;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const-string v0, "BTAutoConnStateMachine"

    const-string v1, "Exit Idle"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 102
    invoke-static {}, Lcom/android/car/BluetoothAutoConnectStateMachine;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "BTAutoConnStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Idle processMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_6

    const/16 v1, 0x68

    if-eq v0, v1, :cond_5

    const/16 v1, 0x3ee

    if-eq v0, v1, :cond_2

    .line 148
    invoke-static {}, Lcom/android/car/BluetoothAutoConnectStateMachine;->access$200()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    const-string v0, "BTAutoConnStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Idle->Unhandled Msg; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/android/car/BluetoothAutoConnectStateMachine$Idle;->this$0:Lcom/android/car/BluetoothAutoConnectStateMachine;

    invoke-static {v0, v1}, Lcom/android/car/BluetoothAutoConnectStateMachine;->access$300(Lcom/android/car/BluetoothAutoConnectStateMachine;I)V

    .line 123
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;

    .line 125
    .local v0, "params":Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;
    invoke-virtual {v0}, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 127
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/car/BluetoothAutoConnectStateMachine$Idle;->this$0:Lcom/android/car/BluetoothAutoConnectStateMachine;

    invoke-static {v2}, Lcom/android/car/BluetoothAutoConnectStateMachine;->access$400(Lcom/android/car/BluetoothAutoConnectStateMachine;)Lcom/android/car/BluetoothDeviceConnectionPolicy;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->getBluetoothDevicesInfo(I)Lcom/android/car/BluetoothDevicesInfo;

    move-result-object v2

    .line 128
    .local v2, "info":Lcom/android/car/BluetoothDevicesInfo;
    invoke-virtual {v2, v1}, Lcom/android/car/BluetoothDevicesInfo;->getCurrentConnectionStateLocked(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 129
    .local v3, "state":I
    if-nez v3, :cond_3

    .line 130
    invoke-static {}, Lcom/android/car/BluetoothAutoConnectStateMachine;->access$200()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 131
    const-string v4, "BTAutoConnStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no action due to device disconnected"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-static {v1}, Lcom/android/car/Utils;->getDeviceDebugInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 131
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    :cond_3
    invoke-static {}, Lcom/android/car/BluetoothAutoConnectStateMachine;->access$200()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 139
    const-string v4, "BTAutoConnStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "try to connect to PBAP/MAP after pairing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-static {v1}, Lcom/android/car/Utils;->getDeviceDebugInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 139
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_4
    iget-object v4, p0, Lcom/android/car/BluetoothAutoConnectStateMachine$Idle;->this$0:Lcom/android/car/BluetoothAutoConnectStateMachine;

    invoke-static {v4}, Lcom/android/car/BluetoothAutoConnectStateMachine;->access$400(Lcom/android/car/BluetoothAutoConnectStateMachine;)Lcom/android/car/BluetoothDeviceConnectionPolicy;

    move-result-object v4

    const/16 v5, 0x11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->connectToDeviceOnProfile(Ljava/lang/Integer;Landroid/bluetooth/BluetoothDevice;)Z

    .line 143
    iget-object v4, p0, Lcom/android/car/BluetoothAutoConnectStateMachine$Idle;->this$0:Lcom/android/car/BluetoothAutoConnectStateMachine;

    invoke-static {v4}, Lcom/android/car/BluetoothAutoConnectStateMachine;->access$400(Lcom/android/car/BluetoothAutoConnectStateMachine;)Lcom/android/car/BluetoothDeviceConnectionPolicy;

    move-result-object v4

    const/16 v5, 0x12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->connectToDeviceOnProfile(Ljava/lang/Integer;Landroid/bluetooth/BluetoothDevice;)Z

    .line 144
    goto :goto_0

    .line 115
    .end local v0    # "params":Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "info":Lcom/android/car/BluetoothDevicesInfo;
    .end local v3    # "state":I
    :cond_5
    invoke-static {}, Lcom/android/car/BluetoothAutoConnectStateMachine;->access$200()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 116
    const-string v0, "BTAutoConnStateMachine"

    const-string v1, "Idle->DeviceConnected: Ignored"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    :cond_6
    invoke-static {}, Lcom/android/car/BluetoothAutoConnectStateMachine;->access$200()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 108
    const-string v0, "BTAutoConnStateMachine"

    const-string v1, "Idle->Connect:"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_7
    invoke-direct {p0}, Lcom/android/car/BluetoothAutoConnectStateMachine$Idle;->connectToBluetoothDevice()V

    .line 111
    nop

    .line 154
    :cond_8
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
