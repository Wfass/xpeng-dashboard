.class Lcom/android/car/CarBluetoothUserService$1;
.super Ljava/lang/Object;
.source "CarBluetoothUserService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarBluetoothUserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/CarBluetoothUserService;


# direct methods
.method constructor <init>(Lcom/android/car/CarBluetoothUserService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/CarBluetoothUserService;

    .line 214
    iput-object p1, p0, Lcom/android/car/CarBluetoothUserService$1;->this$0:Lcom/android/car/CarBluetoothUserService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 217
    const-string v0, "CarBluetoothUsrSvc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnServiceConnected profile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 242
    const-string v0, "CarBluetoothUsrSvc"

    const-string v1, "Unhandled profile"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 233
    :pswitch_0
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService$1;->this$0:Lcom/android/car/CarBluetoothUserService;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothMapClient;

    invoke-static {v0, v1}, Lcom/android/car/CarBluetoothUserService;->access$302(Lcom/android/car/CarBluetoothUserService;Landroid/bluetooth/BluetoothMapClient;)Landroid/bluetooth/BluetoothMapClient;

    .line 234
    goto :goto_0

    .line 229
    :pswitch_1
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService$1;->this$0:Lcom/android/car/CarBluetoothUserService;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothPbapClient;

    invoke-static {v0, v1}, Lcom/android/car/CarBluetoothUserService;->access$202(Lcom/android/car/CarBluetoothUserService;Landroid/bluetooth/BluetoothPbapClient;)Landroid/bluetooth/BluetoothPbapClient;

    .line 230
    goto :goto_0

    .line 225
    :pswitch_2
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService$1;->this$0:Lcom/android/car/CarBluetoothUserService;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-static {v0, v1}, Lcom/android/car/CarBluetoothUserService;->access$102(Lcom/android/car/CarBluetoothUserService;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;

    .line 226
    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService$1;->this$0:Lcom/android/car/CarBluetoothUserService;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothA2dpSink;

    invoke-static {v0, v1}, Lcom/android/car/CarBluetoothUserService;->access$002(Lcom/android/car/CarBluetoothUserService;Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothA2dpSink;

    .line 222
    goto :goto_0

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService$1;->this$0:Lcom/android/car/CarBluetoothUserService;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    invoke-static {v0, v1}, Lcom/android/car/CarBluetoothUserService;->access$402(Lcom/android/car/CarBluetoothUserService;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 238
    nop

    .line 246
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onServiceDisconnected(I)V
    .locals 3
    .param p1, "profile"    # I

    .line 250
    const-string v0, "CarBluetoothUsrSvc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected profile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v0, 0x5

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 275
    const-string v0, "CarBluetoothUsrSvc"

    const-string v1, "Unhandled profile"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 266
    :pswitch_0
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService$1;->this$0:Lcom/android/car/CarBluetoothUserService;

    invoke-static {v0, v1}, Lcom/android/car/CarBluetoothUserService;->access$302(Lcom/android/car/CarBluetoothUserService;Landroid/bluetooth/BluetoothMapClient;)Landroid/bluetooth/BluetoothMapClient;

    .line 267
    goto :goto_0

    .line 262
    :pswitch_1
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService$1;->this$0:Lcom/android/car/CarBluetoothUserService;

    invoke-static {v0, v1}, Lcom/android/car/CarBluetoothUserService;->access$202(Lcom/android/car/CarBluetoothUserService;Landroid/bluetooth/BluetoothPbapClient;)Landroid/bluetooth/BluetoothPbapClient;

    .line 263
    goto :goto_0

    .line 258
    :pswitch_2
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService$1;->this$0:Lcom/android/car/CarBluetoothUserService;

    invoke-static {v0, v1}, Lcom/android/car/CarBluetoothUserService;->access$102(Lcom/android/car/CarBluetoothUserService;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;

    .line 259
    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService$1;->this$0:Lcom/android/car/CarBluetoothUserService;

    invoke-static {v0, v1}, Lcom/android/car/CarBluetoothUserService;->access$002(Lcom/android/car/CarBluetoothUserService;Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothA2dpSink;

    .line 255
    goto :goto_0

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService$1;->this$0:Lcom/android/car/CarBluetoothUserService;

    invoke-static {v0, v1}, Lcom/android/car/CarBluetoothUserService;->access$402(Lcom/android/car/CarBluetoothUserService;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 271
    nop

    .line 279
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
