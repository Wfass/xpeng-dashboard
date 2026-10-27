.class public abstract Lcom/nforetek/bt/aidl/UiCallbackHfp$Stub;
.super Landroid/os/Binder;
.source "UiCallbackHfp.java"

# interfaces
.implements Lcom/nforetek/bt/aidl/UiCallbackHfp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nforetek/bt/aidl/UiCallbackHfp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nforetek/bt/aidl/UiCallbackHfp$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.nforetek.bt.aidl.UiCallbackHfp"

.field static final TRANSACTION_onHfpAudioStateChanged:I = 0x3

.field static final TRANSACTION_onHfpCallChanged:I = 0xa

.field static final TRANSACTION_onHfpErrorResponse:I = 0x5

.field static final TRANSACTION_onHfpRemoteBatteryIndicator:I = 0x8

.field static final TRANSACTION_onHfpRemoteRoamingStatus:I = 0x7

.field static final TRANSACTION_onHfpRemoteSignalStrength:I = 0x9

.field static final TRANSACTION_onHfpRemoteTelecomService:I = 0x6

.field static final TRANSACTION_onHfpServiceReady:I = 0x1

.field static final TRANSACTION_onHfpStateChanged:I = 0x2

.field static final TRANSACTION_onHfpVoiceDial:I = 0x4

.field static final TRANSACTION_retPbapDatabaseQueryNameByNumber:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 30
    const-string v0, "com.nforetek.bt.aidl.UiCallbackHfp"

    invoke-virtual {p0, p0, v0}, Lcom/nforetek/bt/aidl/UiCallbackHfp$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/UiCallbackHfp;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 38
    if-nez p0, :cond_0

    .line 39
    const/4 v0, 0x0

    return-object v0

    .line 41
    :cond_0
    const-string v0, "com.nforetek.bt.aidl.UiCallbackHfp"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 42
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/nforetek/bt/aidl/UiCallbackHfp;

    if-eqz v1, :cond_1

    .line 43
    move-object v1, v0

    check-cast v1, Lcom/nforetek/bt/aidl/UiCallbackHfp;

    return-object v1

    .line 45
    :cond_1
    new-instance v1, Lcom/nforetek/bt/aidl/UiCallbackHfp$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/nforetek/bt/aidl/UiCallbackHfp$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 49
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    const-string v0, "com.nforetek.bt.aidl.UiCallbackHfp"

    .line 54
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 201
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 186
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 194
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    move v1, v2

    nop

    .line 195
    .local v1, "_arg3":Z
    :cond_0
    invoke-virtual {p0, v3, v4, v5, v1}, Lcom/nforetek/bt/aidl/UiCallbackHfp$Stub;->retPbapDatabaseQueryNameByNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    return v2

    .line 170
    .end local v1    # "_arg3":Z
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 175
    sget-object v3, Lcom/nforetek/bt/aidl/NfHfpClientCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nforetek/bt/aidl/NfHfpClientCall;

    .local v3, "_arg1":Lcom/nforetek/bt/aidl/NfHfpClientCall;
    goto :goto_0

    .line 178
    .end local v3    # "_arg1":Lcom/nforetek/bt/aidl/NfHfpClientCall;
    :cond_1
    const/4 v3, 0x0

    .line 180
    .restart local v3    # "_arg1":Lcom/nforetek/bt/aidl/NfHfpClientCall;
    :goto_0
    invoke-virtual {p0, v1, v3}, Lcom/nforetek/bt/aidl/UiCallbackHfp$Stub;->onHfpCallChanged(Ljava/lang/String;Lcom/nforetek/bt/aidl/NfHfpClientCall;)V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    return v2

    .line 155
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/nforetek/bt/aidl/NfHfpClientCall;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 159
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 161
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 163
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 164
    .local v5, "_arg3":I
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/nforetek/bt/aidl/UiCallbackHfp$Stub;->onHfpRemoteSignalStrength(Ljava/lang/String;III)V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    return v2

    .line 140
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 144
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 146
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 148
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 149
    .restart local v5    # "_arg3":I
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/nforetek/bt/aidl/UiCallbackHfp$Stub;->onHfpRemoteBatteryIndicator(Ljava/lang/String;III)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    return v2

    .line 129
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    nop

    .line 134
    .local v1, "_arg1":Z
    :cond_2
    invoke-virtual {p0, v3, v1}, Lcom/nforetek/bt/aidl/UiCallbackHfp$Stub;->onHfpRemoteRoamingStatus(Ljava/lang/String;Z)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    return v2

    .line 118
    .end local v1    # "_arg1":Z
    .end local v3    # "_arg0":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 122
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    move v1, v2

    nop

    .line 123
    .restart local v1    # "_arg1":Z
    :cond_3
    invoke-virtual {p0, v3, v1}, Lcom/nforetek/bt/aidl/UiCallbackHfp$Stub;->onHfpRemoteTelecomService(Ljava/lang/String;Z)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    return v2

    .line 107
    .end local v1    # "_arg1":Z
    .end local v3    # "_arg0":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 112
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/nforetek/bt/aidl/UiCallbackHfp$Stub;->onHfpErrorResponse(Ljava/lang/String;I)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    return v2

    .line 96
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    nop

    .line 101
    .local v1, "_arg1":Z
    :cond_4
    invoke-virtual {p0, v3, v1}, Lcom/nforetek/bt/aidl/UiCallbackHfp$Stub;->onHfpVoiceDial(Ljava/lang/String;Z)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    return v2

    .line 83
    .end local v1    # "_arg1":Z
    .end local v3    # "_arg0":Ljava/lang/String;
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 89
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 90
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Lcom/nforetek/bt/aidl/UiCallbackHfp$Stub;->onHfpAudioStateChanged(Ljava/lang/String;II)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    return v2

    .line 70
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 74
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 76
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 77
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Lcom/nforetek/bt/aidl/UiCallbackHfp$Stub;->onHfpStateChanged(Ljava/lang/String;II)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    return v2

    .line 63
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/nforetek/bt/aidl/UiCallbackHfp$Stub;->onHfpServiceReady()V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    return v2

    .line 58
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
