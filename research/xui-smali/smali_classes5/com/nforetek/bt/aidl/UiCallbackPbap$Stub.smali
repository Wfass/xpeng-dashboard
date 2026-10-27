.class public abstract Lcom/nforetek/bt/aidl/UiCallbackPbap$Stub;
.super Landroid/os/Binder;
.source "UiCallbackPbap.java"

# interfaces
.implements Lcom/nforetek/bt/aidl/UiCallbackPbap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nforetek/bt/aidl/UiCallbackPbap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nforetek/bt/aidl/UiCallbackPbap$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.nforetek.bt.aidl.UiCallbackPbap"

.field static final TRANSACTION_onPbapDownloadNotify:I = 0x5

.field static final TRANSACTION_onPbapServiceReady:I = 0x1

.field static final TRANSACTION_onPbapStateChanged:I = 0x2

.field static final TRANSACTION_retPbapCleanDatabaseCompleted:I = 0xa

.field static final TRANSACTION_retPbapDatabaseAvailable:I = 0x8

.field static final TRANSACTION_retPbapDatabaseQueryNameByNumber:I = 0x6

.field static final TRANSACTION_retPbapDatabaseQueryNameByPartialNumber:I = 0x7

.field static final TRANSACTION_retPbapDeleteDatabaseByAddressCompleted:I = 0x9

.field static final TRANSACTION_retPbapDownloadedCallLog:I = 0x4

.field static final TRANSACTION_retPbapDownloadedContact:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 30
    const-string v0, "com.nforetek.bt.aidl.UiCallbackPbap"

    invoke-virtual {p0, p0, v0}, Lcom/nforetek/bt/aidl/UiCallbackPbap$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/UiCallbackPbap;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 38
    if-nez p0, :cond_0

    .line 39
    const/4 v0, 0x0

    return-object v0

    .line 41
    :cond_0
    const-string v0, "com.nforetek.bt.aidl.UiCallbackPbap"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 42
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/nforetek/bt/aidl/UiCallbackPbap;

    if-eqz v1, :cond_1

    .line 43
    move-object v1, v0

    check-cast v1, Lcom/nforetek/bt/aidl/UiCallbackPbap;

    return-object v1

    .line 45
    :cond_1
    new-instance v1, Lcom/nforetek/bt/aidl/UiCallbackPbap$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/nforetek/bt/aidl/UiCallbackPbap$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 49
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 20
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    .line 53
    const-string v11, "com.nforetek.bt.aidl.UiCallbackPbap"

    .line 54
    .local v11, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v12, 0x1

    if-eq v9, v0, :cond_5

    const/4 v0, 0x0

    packed-switch v9, :pswitch_data_0

    .line 198
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 189
    :pswitch_0
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v0, v12

    nop

    .line 192
    .local v0, "_arg0":Z
    :cond_0
    invoke-virtual {v8, v0}, Lcom/nforetek/bt/aidl/UiCallbackPbap$Stub;->retPbapCleanDatabaseCompleted(Z)V

    .line 193
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    return v12

    .line 178
    .end local v0    # "_arg0":Z
    :pswitch_1
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v12

    nop

    .line 183
    .local v0, "_arg1":Z
    :cond_1
    invoke-virtual {v8, v1, v0}, Lcom/nforetek/bt/aidl/UiCallbackPbap$Stub;->retPbapDeleteDatabaseByAddressCompleted(Ljava/lang/String;Z)V

    .line 184
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    return v12

    .line 169
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v8, v0}, Lcom/nforetek/bt/aidl/UiCallbackPbap$Stub;->retPbapDatabaseAvailable(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    return v12

    .line 152
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 156
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 158
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v13

    .line 160
    .local v13, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v14

    .line 162
    .local v14, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v5, v12

    goto :goto_0

    :cond_2
    move v5, v0

    .line 163
    .local v5, "_arg4":Z
    :goto_0
    move-object v0, v8

    move-object v1, v6

    move-object v2, v7

    move-object v3, v13

    move-object v4, v14

    invoke-virtual/range {v0 .. v5}, Lcom/nforetek/bt/aidl/UiCallbackPbap$Stub;->retPbapDatabaseQueryNameByPartialNumber(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 164
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    return v12

    .line 137
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v13    # "_arg2":[Ljava/lang/String;
    .end local v14    # "_arg3":[Ljava/lang/String;
    :pswitch_4
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 141
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    move v0, v12

    nop

    .line 146
    .local v0, "_arg3":Z
    :cond_3
    invoke-virtual {v8, v1, v2, v3, v0}, Lcom/nforetek/bt/aidl/UiCallbackPbap$Stub;->retPbapDatabaseQueryNameByNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 147
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    return v12

    .line 122
    .end local v0    # "_arg3":Z
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 128
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 130
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 131
    .local v3, "_arg3":I
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/nforetek/bt/aidl/UiCallbackPbap$Stub;->onPbapDownloadNotify(Ljava/lang/String;III)V

    .line 132
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    return v12

    .line 101
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_6
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 105
    .local v13, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 107
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 109
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 111
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 113
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 115
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 116
    .local v19, "_arg6":Ljava/lang/String;
    move-object v0, v8

    move-object v1, v13

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    move-object/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Lcom/nforetek/bt/aidl/UiCallbackPbap$Stub;->retPbapDownloadedCallLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 117
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    return v12

    .line 87
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":I
    .end local v19    # "_arg6":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 90
    sget-object v0, Lcom/nforetek/bt/aidl/NfPbapContact;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nforetek/bt/aidl/NfPbapContact;

    .local v0, "_arg0":Lcom/nforetek/bt/aidl/NfPbapContact;
    goto :goto_1

    .line 93
    .end local v0    # "_arg0":Lcom/nforetek/bt/aidl/NfPbapContact;
    :cond_4
    const/4 v0, 0x0

    .line 95
    .restart local v0    # "_arg0":Lcom/nforetek/bt/aidl/NfPbapContact;
    :goto_1
    invoke-virtual {v8, v0}, Lcom/nforetek/bt/aidl/UiCallbackPbap$Stub;->retPbapDownloadedContact(Lcom/nforetek/bt/aidl/NfPbapContact;)V

    .line 96
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    return v12

    .line 70
    .end local v0    # "_arg0":Lcom/nforetek/bt/aidl/NfPbapContact;
    :pswitch_8
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 74
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 76
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 78
    .local v13, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 80
    .local v14, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 81
    .local v15, "_arg4":I
    move-object v0, v8

    move-object v1, v6

    move v2, v7

    move v3, v13

    move v4, v14

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/nforetek/bt/aidl/UiCallbackPbap$Stub;->onPbapStateChanged(Ljava/lang/String;IIII)V

    .line 82
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    return v12

    .line 63
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v13    # "_arg2":I
    .end local v14    # "_arg3":I
    .end local v15    # "_arg4":I
    :pswitch_9
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCallbackPbap$Stub;->onPbapServiceReady()V

    .line 65
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    return v12

    .line 58
    :cond_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
