.class public abstract Lcom/xiaopeng/ota/IOTAService$Stub;
.super Landroid/os/Binder;
.source "IOTAService.java"

# interfaces
.implements Lcom/xiaopeng/ota/IOTAService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/ota/IOTAService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/ota/IOTAService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.ota.IOTAService"

.field static final TRANSACTION_checkCampaign:I = 0x5

.field static final TRANSACTION_getCduVersion:I = 0x1

.field static final TRANSACTION_getECUSVersion:I = 0x4

.field static final TRANSACTION_getInstallProgress:I = 0x9

.field static final TRANSACTION_getInstallState:I = 0x8

.field static final TRANSACTION_getPsuVersion:I = 0x17

.field static final TRANSACTION_getText:I = 0x7

.field static final TRANSACTION_getUpgradeTime:I = 0x19

.field static final TRANSACTION_hasCduFileFromUsb:I = 0xe

.field static final TRANSACTION_hasMcuFileFromUsb:I = 0xa

.field static final TRANSACTION_hasMeterFileFromUsb:I = 0xc

.field static final TRANSACTION_hasPsuFileFromUsb:I = 0x15

.field static final TRANSACTION_hasScuFileFromUsb:I = 0x10

.field static final TRANSACTION_isCarTypeD10:I = 0x1a

.field static final TRANSACTION_onScreenHide:I = 0x13

.field static final TRANSACTION_onScreenShow:I = 0x12

.field static final TRANSACTION_registerListener:I = 0x2

.field static final TRANSACTION_resetPsuKey:I = 0x16

.field static final TRANSACTION_setUpgradeTime:I = 0x18

.field static final TRANSACTION_unregisterListener:I = 0x3

.field static final TRANSACTION_updateCduFromUsb:I = 0xf

.field static final TRANSACTION_updateEcuComplete:I = 0x1b

.field static final TRANSACTION_updateMcuFromUsb:I = 0xb

.field static final TRANSACTION_updateMeterFromUsb:I = 0xd

.field static final TRANSACTION_updatePsuFromUsb:I = 0x14

.field static final TRANSACTION_updateScuFromUsb:I = 0x11

.field static final TRANSACTION_upgradeNow:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.xiaopeng.ota.IOTAService"

    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/ota/IOTAService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/ota/IOTAService;
    .locals 2

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 p0, 0x0

    return-object p0

    .line 26
    :cond_0
    const-string v0, "com.xiaopeng.ota.IOTAService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaopeng/ota/IOTAService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/xiaopeng/ota/IOTAService;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/xiaopeng/ota/IOTAService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/ota/IOTAService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    const-string v0, "com.xiaopeng.ota.IOTAService"

    .line 39
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 262
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 251
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_0

    .line 256
    move p2, v2

    goto :goto_0

    .line 255
    :cond_0
    const/4 p2, 0x0

    .line 256
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/ota/IOTAService$Stub;->updateEcuComplete(Ljava/lang/String;Z)V

    .line 257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    return v2

    .line 243
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcom/xiaopeng/ota/IOTAService$Stub;->isCarTypeD10()Z

    move-result p1

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    return v2

    .line 235
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/xiaopeng/ota/IOTAService$Stub;->getUpgradeTime()Ljava/lang/String;

    move-result-object p1

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    return v2

    .line 228
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/xiaopeng/ota/IOTAService$Stub;->setUpgradeTime()V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    return v2

    .line 220
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/xiaopeng/ota/IOTAService$Stub;->getPsuVersion()Ljava/lang/String;

    move-result-object p1

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    return v2

    .line 210
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 213
    invoke-virtual {p0, p1}, Lcom/xiaopeng/ota/IOTAService$Stub;->resetPsuKey([B)Z

    move-result p1

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    return v2

    .line 202
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/xiaopeng/ota/IOTAService$Stub;->hasPsuFileFromUsb()Z

    move-result p1

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    return v2

    .line 195
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/xiaopeng/ota/IOTAService$Stub;->updatePsuFromUsb()V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    return v2

    .line 188
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/xiaopeng/ota/IOTAService$Stub;->onScreenHide()V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    return v2

    .line 181
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/xiaopeng/ota/IOTAService$Stub;->onScreenShow()V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    return v2

    .line 174
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/xiaopeng/ota/IOTAService$Stub;->updateScuFromUsb()V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    return v2

    .line 166
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/xiaopeng/ota/IOTAService$Stub;->hasScuFileFromUsb()Z

    move-result p1

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    return v2

    .line 159
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/xiaopeng/ota/IOTAService$Stub;->updateCduFromUsb()V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    return v2

    .line 151
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/xiaopeng/ota/IOTAService$Stub;->hasCduFileFromUsb()Z

    move-result p1

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    return v2

    .line 144
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/xiaopeng/ota/IOTAService$Stub;->updateMeterFromUsb()V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    return v2

    .line 136
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/xiaopeng/ota/IOTAService$Stub;->hasMeterFileFromUsb()Z

    move-result p1

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    return v2

    .line 129
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/xiaopeng/ota/IOTAService$Stub;->updateMcuFromUsb()V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    return v2

    .line 121
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/xiaopeng/ota/IOTAService$Stub;->hasMcuFileFromUsb()Z

    move-result p1

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    return v2

    .line 113
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/xiaopeng/ota/IOTAService$Stub;->getInstallProgress()D

    move-result-wide p1

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 117
    return v2

    .line 105
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/xiaopeng/ota/IOTAService$Stub;->getInstallState()I

    move-result p1

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    return v2

    .line 95
    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-virtual {p0, p1}, Lcom/xiaopeng/ota/IOTAService$Stub;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return v2

    .line 88
    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/xiaopeng/ota/IOTAService$Stub;->upgradeNow()V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    return v2

    .line 81
    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/xiaopeng/ota/IOTAService$Stub;->checkCampaign()V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    return v2

    .line 74
    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/xiaopeng/ota/IOTAService$Stub;->getECUSVersion()V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    return v2

    .line 65
    :pswitch_18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/ota/IOTAListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/ota/IOTAListener;

    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Lcom/xiaopeng/ota/IOTAService$Stub;->unregisterListener(Lcom/xiaopeng/ota/IOTAListener;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    return v2

    .line 56
    :pswitch_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/ota/IOTAListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/ota/IOTAListener;

    move-result-object p1

    .line 59
    invoke-virtual {p0, p1}, Lcom/xiaopeng/ota/IOTAService$Stub;->registerListener(Lcom/xiaopeng/ota/IOTAListener;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    return v2

    .line 48
    :pswitch_1a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/ota/IOTAService$Stub;->getCduVersion()Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    return v2

    .line 43
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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
