.class Lcom/android/car/BluetoothAutoConnectStateMachine$Processing;
.super Lcom/android/internal/util/State;
.source "BluetoothAutoConnectStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/BluetoothAutoConnectStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Processing"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/BluetoothAutoConnectStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/car/BluetoothAutoConnectStateMachine;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/android/car/BluetoothAutoConnectStateMachine$Processing;->this$0:Lcom/android/car/BluetoothAutoConnectStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/BluetoothAutoConnectStateMachine;Lcom/android/car/BluetoothAutoConnectStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/BluetoothAutoConnectStateMachine;
    .param p2, "x1"    # Lcom/android/car/BluetoothAutoConnectStateMachine$1;

    .line 188
    invoke-direct {p0, p1}, Lcom/android/car/BluetoothAutoConnectStateMachine$Processing;-><init>(Lcom/android/car/BluetoothAutoConnectStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 191
    invoke-static {}, Lcom/android/car/BluetoothAutoConnectStateMachine;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    const-string v0, "BTAutoConnStateMachine"

    const-string v1, "Enter Processing"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 2

    .line 233
    invoke-static {}, Lcom/android/car/BluetoothAutoConnectStateMachine;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    const-string v0, "BTAutoConnStateMachine"

    const-string v1, "Exit Processing"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 199
    invoke-static {}, Lcom/android/car/BluetoothAutoConnectStateMachine;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    const-string v0, "BTAutoConnStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processing processMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 223
    invoke-static {}, Lcom/android/car/BluetoothAutoConnectStateMachine;->access$200()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    const-string v0, "BTAutoConnStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing->Unhandled Msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 217
    :pswitch_0
    iget-object v0, p0, Lcom/android/car/BluetoothAutoConnectStateMachine$Processing;->this$0:Lcom/android/car/BluetoothAutoConnectStateMachine;

    const/16 v1, 0x67

    invoke-static {v0, v1}, Lcom/android/car/BluetoothAutoConnectStateMachine;->access$700(Lcom/android/car/BluetoothAutoConnectStateMachine;I)V

    .line 218
    iget-object v0, p0, Lcom/android/car/BluetoothAutoConnectStateMachine$Processing;->this$0:Lcom/android/car/BluetoothAutoConnectStateMachine;

    iget-object v1, p0, Lcom/android/car/BluetoothAutoConnectStateMachine$Processing;->this$0:Lcom/android/car/BluetoothAutoConnectStateMachine;

    invoke-static {v1}, Lcom/android/car/BluetoothAutoConnectStateMachine;->access$600(Lcom/android/car/BluetoothAutoConnectStateMachine;)Lcom/android/car/BluetoothAutoConnectStateMachine$Idle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/car/BluetoothAutoConnectStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 219
    goto :goto_0

    .line 205
    :pswitch_1
    invoke-static {}, Lcom/android/car/BluetoothAutoConnectStateMachine;->access$200()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    const-string v0, "BTAutoConnStateMachine"

    const-string v2, "Connection Timeout"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;

    .line 209
    .local v0, "params":Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;
    iget-object v2, p0, Lcom/android/car/BluetoothAutoConnectStateMachine$Processing;->this$0:Lcom/android/car/BluetoothAutoConnectStateMachine;

    invoke-static {v2}, Lcom/android/car/BluetoothAutoConnectStateMachine;->access$400(Lcom/android/car/BluetoothAutoConnectStateMachine;)Lcom/android/car/BluetoothDeviceConnectionPolicy;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->updateDeviceConnectionStatus(Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;Z)Z

    .line 210
    iget-object v1, p0, Lcom/android/car/BluetoothAutoConnectStateMachine$Processing;->this$0:Lcom/android/car/BluetoothAutoConnectStateMachine;

    iget-object v2, p0, Lcom/android/car/BluetoothAutoConnectStateMachine$Processing;->this$0:Lcom/android/car/BluetoothAutoConnectStateMachine;

    invoke-static {v2}, Lcom/android/car/BluetoothAutoConnectStateMachine;->access$600(Lcom/android/car/BluetoothAutoConnectStateMachine;)Lcom/android/car/BluetoothAutoConnectStateMachine$Idle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/car/BluetoothAutoConnectStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 211
    nop

    .line 228
    .end local v0    # "params":Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 226
    :cond_2
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
