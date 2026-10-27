.class public abstract Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IGeneralServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IGeneralServiceCallback.java"

# interfaces
.implements Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IGeneralServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IGeneralServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IGeneralServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xpbluetoothservice.generalcontrol.IGeneralServiceCallback"

.field static final TRANSACTION_onMessageCallback:I = 0x1

.field static final TRANSACTION_onScanCallback:I = 0x2

.field static final TRANSACTION_onSppDataCallback:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IGeneralServiceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IGeneralServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IGeneralServiceCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    return-object v0

    .line 28
    :cond_0
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IGeneralServiceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IGeneralServiceCallback;

    if-eqz v1, :cond_1

    .line 30
    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IGeneralServiceCallback;

    return-object v1

    .line 32
    :cond_1
    new-instance v1, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IGeneralServiceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IGeneralServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 40
    const v0, 0x5f4e5446

    const/4 v10, 0x1

    if-eq v7, v0, :cond_3

    const/4 v0, 0x0

    packed-switch v7, :pswitch_data_0

    .line 102
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 89
    :pswitch_0
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IGeneralServiceCallback"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 93
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 95
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 96
    .local v2, "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IGeneralServiceCallback$Stub;->onSppDataCallback(I[BI)V

    .line 97
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 99
    return v10

    .line 72
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":I
    :pswitch_1
    const-string v1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IGeneralServiceCallback"

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 76
    .local v11, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 78
    .local v12, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 80
    .local v13, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 82
    .local v14, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v5, v10

    goto :goto_0

    :cond_0
    move v5, v0

    .line 83
    .local v5, "_arg4":Z
    :goto_0
    move-object v0, v6

    move-object v1, v11

    move-object v2, v12

    move v3, v13

    move v4, v14

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IGeneralServiceCallback$Stub;->onScanCallback(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 84
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    return v10

    .line 49
    .end local v5    # "_arg4":Z
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v13    # "_arg2":I
    .end local v14    # "_arg3":I
    :pswitch_2
    const-string v1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IGeneralServiceCallback"

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 53
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .local v2, "_arg1":Landroid/os/Bundle;
    goto :goto_1

    .line 57
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_1
    const/4 v2, 0x0

    .line 59
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {v6, v1, v2}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IGeneralServiceCallback$Stub;->onMessageCallback(ILandroid/os/Bundle;)V

    .line 60
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v2, :cond_2

    .line 62
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    invoke-virtual {v2, v9, v10}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 66
    :cond_2
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    :goto_2
    return v10

    .line 44
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_3
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IGeneralServiceCallback"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
