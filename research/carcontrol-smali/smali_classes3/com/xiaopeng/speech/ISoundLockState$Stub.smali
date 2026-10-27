.class public abstract Lcom/xiaopeng/speech/ISoundLockState$Stub;
.super Landroid/os/Binder;
.source "ISoundLockState.java"

# interfaces
.implements Lcom/xiaopeng/speech/ISoundLockState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/ISoundLockState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/ISoundLockState$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.speech.ISoundLockState"

.field static final TRANSACTION_getDriveSoundLocation:I = 0x1

.field static final TRANSACTION_getDspMode:I = 0xc

.field static final TRANSACTION_getMode:I = 0x13

.field static final TRANSACTION_getSoundLocationAngle:I = 0x4

.field static final TRANSACTION_getSoundSourceAngle:I = 0x9

.field static final TRANSACTION_initSoundConfig:I = 0x16

.field static final TRANSACTION_isDefaultEnableSoundLocation:I = 0x5

.field static final TRANSACTION_isDefaultEnableSoundLock:I = 0xf

.field static final TRANSACTION_isSupportSoundLock:I = 0x8

.field static final TRANSACTION_isVoicePositionSet:I = 0x15

.field static final TRANSACTION_lockSoundLocation:I = 0x10

.field static final TRANSACTION_lockSoundLocationByWakeup:I = 0x11

.field static final TRANSACTION_setData:I = 0xd

.field static final TRANSACTION_setDefaultSoundLocationEnabled:I = 0x6

.field static final TRANSACTION_setDefaultSoundLockEnabled:I = 0xe

.field static final TRANSACTION_setDriveSoundLocation:I = 0x2

.field static final TRANSACTION_setDspMode:I = 0xb

.field static final TRANSACTION_setIsNeedResetSoundLock:I = 0x14

.field static final TRANSACTION_setMode:I = 0x12

.field static final TRANSACTION_setSoundLocationAngle:I = 0x3

.field static final TRANSACTION_setSupportSoundLock:I = 0x7

.field static final TRANSACTION_setVoiceLockAngle:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.speech.ISoundLockState"

    .line 16
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/speech/ISoundLockState$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/speech/ISoundLockState;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.speech.ISoundLockState"

    .line 27
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 28
    instance-of v1, v0, Lcom/xiaopeng/speech/ISoundLockState;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/xiaopeng/speech/ISoundLockState;

    return-object v0

    .line 31
    :cond_1
    new-instance v0, Lcom/xiaopeng/speech/ISoundLockState$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/speech/ISoundLockState$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.xiaopeng.speech.ISoundLockState"

    if-eq p1, v0, :cond_4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 242
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 235
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISoundLockState$Stub;->initSoundConfig()V

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 227
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISoundLockState$Stub;->isVoicePositionSet()Z

    move-result p1

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 218
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v0, v1

    .line 221
    :cond_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/ISoundLockState$Stub;->setIsNeedResetSoundLock(Z)V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 210
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISoundLockState$Stub;->getMode()I

    move-result p1

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 201
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 204
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/ISoundLockState$Stub;->setMode(I)V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 192
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 195
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/ISoundLockState$Stub;->lockSoundLocationByWakeup(I)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 183
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 186
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/ISoundLockState$Stub;->lockSoundLocation(I)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 175
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISoundLockState$Stub;->isDefaultEnableSoundLock()Z

    move-result p1

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 166
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    .line 169
    :cond_1
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/ISoundLockState$Stub;->setDefaultSoundLockEnabled(Z)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 153
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 160
    invoke-virtual {p0, p1, v2, v3, p2}, Lcom/xiaopeng/speech/ISoundLockState$Stub;->setData(IJI)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 145
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISoundLockState$Stub;->getDspMode()I

    move-result p1

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 136
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 139
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/ISoundLockState$Stub;->setDspMode(I)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 125
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/ISoundLockState$Stub;->setVoiceLockAngle(II)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 117
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISoundLockState$Stub;->getSoundSourceAngle()I

    move-result p1

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 109
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISoundLockState$Stub;->isSupportSoundLock()Z

    move-result p1

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 100
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v0, v1

    .line 103
    :cond_2
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/ISoundLockState$Stub;->setSupportSoundLock(Z)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 91
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v0, v1

    .line 94
    :cond_3
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/ISoundLockState$Stub;->setDefaultSoundLocationEnabled(Z)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 83
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISoundLockState$Stub;->isDefaultEnableSoundLocation()Z

    move-result p1

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 75
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISoundLockState$Stub;->getSoundLocationAngle()I

    move-result p1

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 66
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 69
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/ISoundLockState$Stub;->setSoundLocationAngle(I)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 57
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 60
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/ISoundLockState$Stub;->setDriveSoundLocation(I)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 49
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISoundLockState$Stub;->getDriveSoundLocation()I

    move-result p1

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 44
    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
