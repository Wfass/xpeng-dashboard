.class public abstract Lcom/nforetek/bt/aidl/UiCallbackBluetooth$Stub;
.super Landroid/os/Binder;
.source "UiCallbackBluetooth.java"

# interfaces
.implements Lcom/nforetek/bt/aidl/UiCallbackBluetooth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nforetek/bt/aidl/UiCallbackBluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nforetek/bt/aidl/UiCallbackBluetooth$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.nforetek.bt.aidl.UiCallbackBluetooth"

.field static final TRANSACTION_onA2dpStateChanged:I = 0x10

.field static final TRANSACTION_onAdapterDiscoverableModeChanged:I = 0x3

.field static final TRANSACTION_onAdapterDiscoveryFinished:I = 0x5

.field static final TRANSACTION_onAdapterDiscoveryStarted:I = 0x4

.field static final TRANSACTION_onAdapterStateChanged:I = 0x2

.field static final TRANSACTION_onAvrcpStateChanged:I = 0x11

.field static final TRANSACTION_onBluetoothServiceReady:I = 0x1

.field static final TRANSACTION_onBtAutoConnectStateChanged:I = 0xe

.field static final TRANSACTION_onBtRoleModeChanged:I = 0xd

.field static final TRANSACTION_onDeviceAclDisconnected:I = 0xc

.field static final TRANSACTION_onDeviceBondStateChanged:I = 0x8

.field static final TRANSACTION_onDeviceFound:I = 0x7

.field static final TRANSACTION_onDeviceOutOfRange:I = 0xb

.field static final TRANSACTION_onDeviceUuidsUpdated:I = 0x9

.field static final TRANSACTION_onHfpStateChanged:I = 0xf

.field static final TRANSACTION_onLocalAdapterNameChanged:I = 0xa

.field static final TRANSACTION_retPairedDevices:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 30
    const-string v0, "com.nforetek.bt.aidl.UiCallbackBluetooth"

    invoke-virtual {p0, p0, v0}, Lcom/nforetek/bt/aidl/UiCallbackBluetooth$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/UiCallbackBluetooth;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 38
    if-nez p0, :cond_0

    .line 39
    const/4 v0, 0x0

    return-object v0

    .line 41
    :cond_0
    const-string v0, "com.nforetek.bt.aidl.UiCallbackBluetooth"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 42
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/nforetek/bt/aidl/UiCallbackBluetooth;

    if-eqz v1, :cond_1

    .line 43
    move-object v1, v0

    check-cast v1, Lcom/nforetek/bt/aidl/UiCallbackBluetooth;

    return-object v1

    .line 45
    :cond_1
    new-instance v1, Lcom/nforetek/bt/aidl/UiCallbackBluetooth$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/nforetek/bt/aidl/UiCallbackBluetooth$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 49
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    .line 53
    const-string v9, "com.nforetek.bt.aidl.UiCallbackBluetooth"

    .line 54
    .local v9, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v10, 0x1

    if-eq v7, v0, :cond_0

    packed-switch v7, :pswitch_data_0

    .line 252
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 239
    :pswitch_0
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 245
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 246
    .local v2, "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Lcom/nforetek/bt/aidl/UiCallbackBluetooth$Stub;->onAvrcpStateChanged(Ljava/lang/String;II)V

    .line 247
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    return v10

    .line 226
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_1
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 230
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 232
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 233
    .restart local v2    # "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Lcom/nforetek/bt/aidl/UiCallbackBluetooth$Stub;->onA2dpStateChanged(Ljava/lang/String;II)V

    .line 234
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    return v10

    .line 213
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_2
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 217
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 219
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 220
    .restart local v2    # "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Lcom/nforetek/bt/aidl/UiCallbackBluetooth$Stub;->onHfpStateChanged(Ljava/lang/String;II)V

    .line 221
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    return v10

    .line 200
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_3
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 204
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 206
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 207
    .restart local v2    # "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Lcom/nforetek/bt/aidl/UiCallbackBluetooth$Stub;->onBtAutoConnectStateChanged(Ljava/lang/String;II)V

    .line 208
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    return v10

    .line 191
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_4
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 194
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Lcom/nforetek/bt/aidl/UiCallbackBluetooth$Stub;->onBtRoleModeChanged(I)V

    .line 195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    return v10

    .line 182
    .end local v0    # "_arg0":I
    :pswitch_5
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/nforetek/bt/aidl/UiCallbackBluetooth$Stub;->onDeviceAclDisconnected(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    return v10

    .line 173
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/nforetek/bt/aidl/UiCallbackBluetooth$Stub;->onDeviceOutOfRange(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    return v10

    .line 164
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/nforetek/bt/aidl/UiCallbackBluetooth$Stub;->onLocalAdapterNameChanged(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    return v10

    .line 151
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_8
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 155
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 158
    .restart local v2    # "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Lcom/nforetek/bt/aidl/UiCallbackBluetooth$Stub;->onDeviceUuidsUpdated(Ljava/lang/String;Ljava/lang/String;I)V

    .line 159
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    return v10

    .line 136
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_9
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 140
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 142
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 144
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 145
    .local v3, "_arg3":I
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/nforetek/bt/aidl/UiCallbackBluetooth$Stub;->onDeviceBondStateChanged(Ljava/lang/String;Ljava/lang/String;II)V

    .line 146
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    return v10

    .line 123
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_a
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 127
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 129
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 130
    .local v2, "_arg2":B
    invoke-virtual {v6, v0, v1, v2}, Lcom/nforetek/bt/aidl/UiCallbackBluetooth$Stub;->onDeviceFound(Ljava/lang/String;Ljava/lang/String;B)V

    .line 131
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    return v10

    .line 106
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":B
    :pswitch_b
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 110
    .local v11, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v12

    .line 112
    .local v12, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v13

    .line 114
    .local v13, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v14

    .line 116
    .local v14, "_arg3":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .line 117
    .local v15, "_arg4":[B
    move-object v0, v6

    move v1, v11

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/nforetek/bt/aidl/UiCallbackBluetooth$Stub;->retPairedDevices(I[Ljava/lang/String;[Ljava/lang/String;[I[B)V

    .line 118
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    return v10

    .line 99
    .end local v11    # "_arg0":I
    .end local v12    # "_arg1":[Ljava/lang/String;
    .end local v13    # "_arg2":[Ljava/lang/String;
    .end local v14    # "_arg3":[I
    .end local v15    # "_arg4":[B
    :pswitch_c
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCallbackBluetooth$Stub;->onAdapterDiscoveryFinished()V

    .line 101
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    return v10

    .line 92
    :pswitch_d
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCallbackBluetooth$Stub;->onAdapterDiscoveryStarted()V

    .line 94
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    return v10

    .line 81
    :pswitch_e
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 85
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 86
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Lcom/nforetek/bt/aidl/UiCallbackBluetooth$Stub;->onAdapterDiscoverableModeChanged(II)V

    .line 87
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    return v10

    .line 70
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_f
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 74
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 75
    .restart local v1    # "_arg1":I
    invoke-virtual {v6, v0, v1}, Lcom/nforetek/bt/aidl/UiCallbackBluetooth$Stub;->onAdapterStateChanged(II)V

    .line 76
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    return v10

    .line 63
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_10
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCallbackBluetooth$Stub;->onBluetoothServiceReady()V

    .line 65
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    return v10

    .line 58
    :cond_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return v10

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
