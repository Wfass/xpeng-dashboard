.class public abstract Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;
.super Ljava/lang/Object;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BluetoothConnectionCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback$DisconnectReason;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disconnectReasonText(I)Ljava/lang/String;
    .locals 2

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 4503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized disconnect reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "Bad parameters"

    return-object p0

    :pswitch_1
    const-string p0, "Connection already exists"

    return-object p0

    :pswitch_2
    const-string p0, "Resource constrained"

    return-object p0

    :pswitch_3
    const-string p0, "System policy"

    return-object p0

    :pswitch_4
    const-string p0, "Security"

    return-object p0

    :pswitch_5
    const-string p0, "Timeout"

    return-object p0

    :pswitch_6
    const-string p0, "Remote error"

    return-object p0

    :pswitch_7
    const-string p0, "Local error"

    return-object p0

    :pswitch_8
    const-string p0, "Remote request"

    return-object p0

    :pswitch_9
    const-string p0, "Local request"

    return-object p0

    :cond_0
    const-string p0, "Reason unknown"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x44c
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public onDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    return-void
.end method
