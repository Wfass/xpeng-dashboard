.class public abstract Lcom/nforetek/bt/aidl/UiCallbackGattServer$Stub;
.super Landroid/os/Binder;
.source "UiCallbackGattServer.java"

# interfaces
.implements Lcom/nforetek/bt/aidl/UiCallbackGattServer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nforetek/bt/aidl/UiCallbackGattServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nforetek/bt/aidl/UiCallbackGattServer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.nforetek.bt.aidl.UiCallbackGattServer"

.field static final TRANSACTION_onGattServerCharacteristicReadRequest:I = 0x5

.field static final TRANSACTION_onGattServerCharacteristicWriteRequest:I = 0x6

.field static final TRANSACTION_onGattServerDescriptorReadRequest:I = 0x7

.field static final TRANSACTION_onGattServerDescriptorWriteRequest:I = 0x8

.field static final TRANSACTION_onGattServerExecuteWrite:I = 0x9

.field static final TRANSACTION_onGattServerServiceAdded:I = 0x3

.field static final TRANSACTION_onGattServerServiceDeleted:I = 0x4

.field static final TRANSACTION_onGattServerStateChanged:I = 0x2

.field static final TRANSACTION_onGattServiceReady:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 30
    const-string v0, "com.nforetek.bt.aidl.UiCallbackGattServer"

    invoke-virtual {p0, p0, v0}, Lcom/nforetek/bt/aidl/UiCallbackGattServer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/UiCallbackGattServer;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 38
    if-nez p0, :cond_0

    .line 39
    const/4 v0, 0x0

    return-object v0

    .line 41
    :cond_0
    const-string v0, "com.nforetek.bt.aidl.UiCallbackGattServer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 42
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/nforetek/bt/aidl/UiCallbackGattServer;

    if-eqz v1, :cond_1

    .line 43
    move-object v1, v0

    check-cast v1, Lcom/nforetek/bt/aidl/UiCallbackGattServer;

    return-object v1

    .line 45
    :cond_1
    new-instance v1, Lcom/nforetek/bt/aidl/UiCallbackGattServer$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/nforetek/bt/aidl/UiCallbackGattServer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 49
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v11, p0

    move/from16 v12, p1

    move-object/from16 v13, p2

    .line 53
    const-string v14, "com.nforetek.bt.aidl.UiCallbackGattServer"

    .line 54
    .local v14, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v15, 0x1

    if-eq v12, v0, :cond_13

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v12, :pswitch_data_0

    .line 276
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 263
    :pswitch_0
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 269
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v15

    nop

    .line 270
    .local v0, "_arg2":Z
    :cond_0
    invoke-virtual {v11, v1, v2, v0}, Lcom/nforetek/bt/aidl/UiCallbackGattServer$Stub;->onGattServerExecuteWrite(Ljava/lang/String;IZ)V

    .line 271
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    return v15

    .line 221
    .end local v0    # "_arg2":Z
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_1
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 225
    .local v16, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 227
    .local v17, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 229
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v4, v15

    goto :goto_0

    :cond_1
    move v4, v0

    .line 231
    .local v4, "_arg3":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v5, v15

    goto :goto_1

    :cond_2
    move v5, v0

    .line 233
    .local v5, "_arg4":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 235
    .local v19, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .line 239
    .local v0, "_arg6":Landroid/os/ParcelUuid;
    move-object v7, v0

    goto :goto_2

    .end local v0    # "_arg6":Landroid/os/ParcelUuid;
    :cond_3
    move-object v7, v1

    .line 242
    .local v7, "_arg6":Landroid/os/ParcelUuid;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 243
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .line 246
    .local v0, "_arg7":Landroid/os/ParcelUuid;
    move-object v8, v0

    goto :goto_3

    .end local v0    # "_arg7":Landroid/os/ParcelUuid;
    :cond_4
    move-object v8, v1

    .line 249
    .local v8, "_arg7":Landroid/os/ParcelUuid;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 250
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .line 253
    .local v0, "_arg8":Landroid/os/ParcelUuid;
    move-object v9, v0

    goto :goto_4

    .end local v0    # "_arg8":Landroid/os/ParcelUuid;
    :cond_5
    move-object v9, v1

    .line 256
    .local v9, "_arg8":Landroid/os/ParcelUuid;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v20

    .line 257
    .local v20, "_arg9":[B
    move-object v0, v11

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v6, v19

    move-object/from16 v10, v20

    invoke-virtual/range {v0 .. v10}, Lcom/nforetek/bt/aidl/UiCallbackGattServer$Stub;->onGattServerDescriptorWriteRequest(Ljava/lang/String;IIZZILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B)V

    .line 258
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    return v15

    .line 183
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    .end local v7    # "_arg6":Landroid/os/ParcelUuid;
    .end local v8    # "_arg7":Landroid/os/ParcelUuid;
    .end local v9    # "_arg8":Landroid/os/ParcelUuid;
    .end local v16    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":I
    .end local v19    # "_arg5":I
    .end local v20    # "_arg9":[B
    :pswitch_2
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 187
    .local v9, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 189
    .local v10, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 191
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    move v4, v15

    goto :goto_5

    :cond_6
    move v4, v0

    .line 193
    .restart local v4    # "_arg3":Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 195
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 196
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .line 199
    .local v0, "_arg5":Landroid/os/ParcelUuid;
    move-object v6, v0

    goto :goto_6

    .end local v0    # "_arg5":Landroid/os/ParcelUuid;
    :cond_7
    move-object v6, v1

    .line 202
    .local v6, "_arg5":Landroid/os/ParcelUuid;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 203
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .line 206
    .local v0, "_arg6":Landroid/os/ParcelUuid;
    move-object v7, v0

    goto :goto_7

    .end local v0    # "_arg6":Landroid/os/ParcelUuid;
    :cond_8
    move-object v7, v1

    .line 209
    .restart local v7    # "_arg6":Landroid/os/ParcelUuid;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 210
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .line 213
    .local v0, "_arg7":Landroid/os/ParcelUuid;
    move-object v8, v0

    goto :goto_8

    .end local v0    # "_arg7":Landroid/os/ParcelUuid;
    :cond_9
    move-object v8, v1

    .line 215
    .restart local v8    # "_arg7":Landroid/os/ParcelUuid;
    :goto_8
    move-object v0, v11

    move-object v1, v9

    move v2, v10

    move/from16 v3, v16

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v8}, Lcom/nforetek/bt/aidl/UiCallbackGattServer$Stub;->onGattServerDescriptorReadRequest(Ljava/lang/String;IIZILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)V

    .line 216
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    return v15

    .line 148
    .end local v4    # "_arg3":Z
    .end local v6    # "_arg5":Landroid/os/ParcelUuid;
    .end local v7    # "_arg6":Landroid/os/ParcelUuid;
    .end local v8    # "_arg7":Landroid/os/ParcelUuid;
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":I
    .end local v16    # "_arg2":I
    .end local v17    # "_arg4":I
    :pswitch_3
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 152
    .local v10, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 154
    .local v16, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 156
    .local v17, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    move v4, v15

    goto :goto_9

    :cond_a
    move v4, v0

    .line 158
    .restart local v4    # "_arg3":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    move v5, v15

    goto :goto_a

    :cond_b
    move v5, v0

    .line 160
    .restart local v5    # "_arg4":Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 162
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    .line 163
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .line 166
    .local v0, "_arg6":Landroid/os/ParcelUuid;
    move-object v7, v0

    goto :goto_b

    .end local v0    # "_arg6":Landroid/os/ParcelUuid;
    :cond_c
    move-object v7, v1

    .line 169
    .restart local v7    # "_arg6":Landroid/os/ParcelUuid;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    .line 170
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .line 173
    .local v0, "_arg7":Landroid/os/ParcelUuid;
    move-object v8, v0

    goto :goto_c

    .end local v0    # "_arg7":Landroid/os/ParcelUuid;
    :cond_d
    move-object v8, v1

    .line 176
    .restart local v8    # "_arg7":Landroid/os/ParcelUuid;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v19

    .line 177
    .local v19, "_arg8":[B
    move-object v0, v11

    move-object v1, v10

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v6, v18

    move-object/from16 v9, v19

    invoke-virtual/range {v0 .. v9}, Lcom/nforetek/bt/aidl/UiCallbackGattServer$Stub;->onGattServerCharacteristicWriteRequest(Ljava/lang/String;IIZZILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B)V

    .line 178
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    return v15

    .line 117
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    .end local v7    # "_arg6":Landroid/os/ParcelUuid;
    .end local v8    # "_arg7":Landroid/os/ParcelUuid;
    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":I
    .end local v18    # "_arg5":I
    .end local v19    # "_arg8":[B
    :pswitch_4
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 121
    .local v8, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 123
    .local v9, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 125
    .local v10, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e

    move v4, v15

    goto :goto_d

    :cond_e
    move v4, v0

    .line 127
    .restart local v4    # "_arg3":Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 129
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    .line 130
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .line 133
    .local v0, "_arg5":Landroid/os/ParcelUuid;
    move-object v6, v0

    goto :goto_e

    .end local v0    # "_arg5":Landroid/os/ParcelUuid;
    :cond_f
    move-object v6, v1

    .line 136
    .restart local v6    # "_arg5":Landroid/os/ParcelUuid;
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    .line 137
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .line 140
    .local v0, "_arg6":Landroid/os/ParcelUuid;
    move-object v7, v0

    goto :goto_f

    .end local v0    # "_arg6":Landroid/os/ParcelUuid;
    :cond_10
    move-object v7, v1

    .line 142
    .restart local v7    # "_arg6":Landroid/os/ParcelUuid;
    :goto_f
    move-object v0, v11

    move-object v1, v8

    move v2, v9

    move v3, v10

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v7}, Lcom/nforetek/bt/aidl/UiCallbackGattServer$Stub;->onGattServerCharacteristicReadRequest(Ljava/lang/String;IIZILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;)V

    .line 143
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    return v15

    .line 99
    .end local v4    # "_arg3":Z
    .end local v6    # "_arg5":Landroid/os/ParcelUuid;
    .end local v7    # "_arg6":Landroid/os/ParcelUuid;
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":I
    .end local v10    # "_arg2":I
    .end local v16    # "_arg4":I
    :pswitch_5
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 103
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 105
    .restart local v2    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    .line 106
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .local v1, "_arg2":Landroid/os/ParcelUuid;
    goto :goto_10

    .line 109
    .end local v1    # "_arg2":Landroid/os/ParcelUuid;
    :cond_11
    nop

    .line 111
    .restart local v1    # "_arg2":Landroid/os/ParcelUuid;
    :goto_10
    invoke-virtual {v11, v0, v2, v1}, Lcom/nforetek/bt/aidl/UiCallbackGattServer$Stub;->onGattServerServiceDeleted(IILandroid/os/ParcelUuid;)V

    .line 112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    return v15

    .line 81
    .end local v0    # "_arg0":I
    .end local v1    # "_arg2":Landroid/os/ParcelUuid;
    .end local v2    # "_arg1":I
    :pswitch_6
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 85
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 87
    .restart local v2    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_12

    .line 88
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .restart local v1    # "_arg2":Landroid/os/ParcelUuid;
    goto :goto_11

    .line 91
    .end local v1    # "_arg2":Landroid/os/ParcelUuid;
    :cond_12
    nop

    .line 93
    .restart local v1    # "_arg2":Landroid/os/ParcelUuid;
    :goto_11
    invoke-virtual {v11, v0, v2, v1}, Lcom/nforetek/bt/aidl/UiCallbackGattServer$Stub;->onGattServerServiceAdded(IILandroid/os/ParcelUuid;)V

    .line 94
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    return v15

    .line 70
    .end local v0    # "_arg0":I
    .end local v1    # "_arg2":Landroid/os/ParcelUuid;
    .end local v2    # "_arg1":I
    :pswitch_7
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 75
    .local v1, "_arg1":I
    invoke-virtual {v11, v0, v1}, Lcom/nforetek/bt/aidl/UiCallbackGattServer$Stub;->onGattServerStateChanged(Ljava/lang/String;I)V

    .line 76
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    return v15

    .line 63
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_8
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCallbackGattServer$Stub;->onGattServiceReady()V

    .line 65
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    return v15

    .line 58
    :cond_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return v15

    :pswitch_data_0
    .packed-switch 0x1
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
