.class public abstract Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IPhoneServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IPhoneServiceCallback.java"

# interfaces
.implements Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IPhoneServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IPhoneServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IPhoneServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xpbluetoothservice.phonecontrol.IPhoneServiceCallback"

.field static final TRANSACTION_onCallRecordCallback:I = 0x5

.field static final TRANSACTION_onMessageCallback:I = 0x1

.field static final TRANSACTION_onPBAPCallback:I = 0x3

.field static final TRANSACTION_onPhoneCallback:I = 0x2

.field static final TRANSACTION_onSmsCallback:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IPhoneServiceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IPhoneServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IPhoneServiceCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    return-object v0

    .line 28
    :cond_0
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IPhoneServiceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IPhoneServiceCallback;

    if-eqz v1, :cond_1

    .line 30
    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IPhoneServiceCallback;

    return-object v1

    .line 32
    :cond_1
    new-instance v1, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IPhoneServiceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IPhoneServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 22
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    .line 40
    const v0, 0x5f4e5446

    const/4 v13, 0x1

    if-eq v10, v0, :cond_2

    packed-switch v10, :pswitch_data_0

    .line 149
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 139
    :pswitch_0
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IPhoneServiceCallback"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 143
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IPhoneServiceCallback$Stub;->onCallRecordCallback(ILjava/lang/String;)V

    .line 145
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    return v13

    .line 118
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_1
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IPhoneServiceCallback"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 122
    .local v8, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 124
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 126
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 128
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 130
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 132
    .local v18, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 133
    .local v19, "_arg6":Ljava/lang/String;
    move-object v0, v9

    move v1, v8

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IPhoneServiceCallback$Stub;->onSmsCallback(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    return v13

    .line 95
    .end local v8    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":Ljava/lang/String;
    .end local v19    # "_arg6":Ljava/lang/String;
    :pswitch_2
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IPhoneServiceCallback"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 99
    .local v14, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 101
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 103
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 105
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 107
    .local v18, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 109
    .local v19, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 111
    .local v20, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 112
    .local v21, "_arg7":Ljava/lang/String;
    move-object v0, v9

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    invoke-virtual/range {v0 .. v8}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IPhoneServiceCallback$Stub;->onPBAPCallback(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    return v13

    .line 72
    .end local v14    # "_arg0":I
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":Ljava/lang/String;
    .end local v20    # "_arg6":Ljava/lang/String;
    .end local v21    # "_arg7":Ljava/lang/String;
    :pswitch_3
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IPhoneServiceCallback"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 76
    .restart local v14    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 78
    .restart local v15    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 80
    .restart local v16    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 82
    .restart local v17    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 84
    .restart local v18    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 86
    .restart local v19    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 88
    .restart local v20    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 89
    .restart local v21    # "_arg7":Ljava/lang/String;
    move-object v0, v9

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    invoke-virtual/range {v0 .. v8}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IPhoneServiceCallback$Stub;->onPhoneCallback(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    return v13

    .line 49
    .end local v14    # "_arg0":I
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":Ljava/lang/String;
    .end local v20    # "_arg6":Ljava/lang/String;
    .end local v21    # "_arg7":Ljava/lang/String;
    :pswitch_4
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IPhoneServiceCallback"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 53
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg1":Landroid/os/Bundle;
    goto :goto_0

    .line 57
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_0
    const/4 v1, 0x0

    .line 59
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v9, v0, v1}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IPhoneServiceCallback$Stub;->onMessageCallback(ILandroid/os/Bundle;)V

    .line 60
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v1, :cond_1

    .line 62
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 66
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    :goto_1
    return v13

    .line 44
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_2
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IPhoneServiceCallback"

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
