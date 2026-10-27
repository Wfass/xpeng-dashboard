.class public abstract Landroid/car/media/ICarAudio$Stub;
.super Landroid/os/Binder;
.source "ICarAudio.java"

# interfaces
.implements Landroid/car/media/ICarAudio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/media/ICarAudio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/media/ICarAudio$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.car.media.ICarAudio"

.field static final TRANSACTION_clearZoneIdForUid:I = 0x12

.field static final TRANSACTION_createAudioPatch:I = 0x9

.field static final TRANSACTION_getAudioZoneIds:I = 0xf

.field static final TRANSACTION_getExternalSources:I = 0x8

.field static final TRANSACTION_getGroupMaxVolume:I = 0x3

.field static final TRANSACTION_getGroupMinVolume:I = 0x4

.field static final TRANSACTION_getGroupVolume:I = 0x5

.field static final TRANSACTION_getUsagesForVolumeGroupId:I = 0xd

.field static final TRANSACTION_getVolumeGroupCount:I = 0xb

.field static final TRANSACTION_getVolumeGroupIdForStreamType:I = 0xe

.field static final TRANSACTION_getVolumeGroupIdForUsage:I = 0xc

.field static final TRANSACTION_getZoneIdForDisplayPortId:I = 0x13

.field static final TRANSACTION_getZoneIdForUid:I = 0x10

.field static final TRANSACTION_isDynamicRoutingEnabled:I = 0x1

.field static final TRANSACTION_registerVolumeCallback:I = 0x14

.field static final TRANSACTION_releaseAudioPatch:I = 0xa

.field static final TRANSACTION_setBalanceTowardRight:I = 0x7

.field static final TRANSACTION_setFadeTowardFront:I = 0x6

.field static final TRANSACTION_setGroupVolume:I = 0x2

.field static final TRANSACTION_setZoneIdForUid:I = 0x11

.field static final TRANSACTION_unregisterVolumeCallback:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.car.media.ICarAudio"

    .line 109
    invoke-virtual {p0, p0, v0}, Landroid/car/media/ICarAudio$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/car/media/ICarAudio;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.media.ICarAudio"

    .line 120
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 121
    instance-of v1, v0, Landroid/car/media/ICarAudio;

    if-eqz v1, :cond_1

    .line 122
    check-cast v0, Landroid/car/media/ICarAudio;

    return-object v0

    .line 124
    :cond_1
    new-instance v0, Landroid/car/media/ICarAudio$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/media/ICarAudio$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/media/ICarAudio;
    .locals 1

    .line 874
    sget-object v0, Landroid/car/media/ICarAudio$Stub$Proxy;->sDefaultImpl:Landroid/car/media/ICarAudio;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/car/media/ICarAudio;)Z
    .locals 1

    .line 867
    sget-object v0, Landroid/car/media/ICarAudio$Stub$Proxy;->sDefaultImpl:Landroid/car/media/ICarAudio;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 868
    sput-object p0, Landroid/car/media/ICarAudio$Stub$Proxy;->sDefaultImpl:Landroid/car/media/ICarAudio;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "android.car.media.ICarAudio"

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 373
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 364
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 367
    invoke-virtual {p0, p1}, Landroid/car/media/ICarAudio$Stub;->unregisterVolumeCallback(Landroid/os/IBinder;)V

    .line 368
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 355
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 358
    invoke-virtual {p0, p1}, Landroid/car/media/ICarAudio$Stub;->registerVolumeCallback(Landroid/os/IBinder;)V

    .line 359
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 345
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 348
    invoke-virtual {p0, p1}, Landroid/car/media/ICarAudio$Stub;->getZoneIdForDisplayPortId(B)I

    move-result p1

    .line 349
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 335
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 338
    invoke-virtual {p0, p1}, Landroid/car/media/ICarAudio$Stub;->clearZoneIdForUid(I)Z

    move-result p1

    .line 339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 323
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 328
    invoke-virtual {p0, p1, p2}, Landroid/car/media/ICarAudio$Stub;->setZoneIdForUid(II)Z

    move-result p1

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 313
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 316
    invoke-virtual {p0, p1}, Landroid/car/media/ICarAudio$Stub;->getZoneIdForUid(I)I

    move-result p1

    .line 317
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 305
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Landroid/car/media/ICarAudio$Stub;->getAudioZoneIds()[I

    move-result-object p1

    .line 307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    return v1

    .line 295
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 298
    invoke-virtual {p0, p1}, Landroid/car/media/ICarAudio$Stub;->getVolumeGroupIdForStreamType(I)I

    move-result p1

    .line 299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 283
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 288
    invoke-virtual {p0, p1, p2}, Landroid/car/media/ICarAudio$Stub;->getUsagesForVolumeGroupId(II)[I

    move-result-object p1

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    return v1

    .line 271
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 276
    invoke-virtual {p0, p1, p2}, Landroid/car/media/ICarAudio$Stub;->getVolumeGroupIdForUsage(II)I

    move-result p1

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 261
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 264
    invoke-virtual {p0, p1}, Landroid/car/media/ICarAudio$Stub;->getVolumeGroupCount(I)I

    move-result p1

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 247
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 250
    sget-object p1, Landroid/car/media/CarAudioPatchHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/media/CarAudioPatchHandle;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 255
    :goto_0
    invoke-virtual {p0, p1}, Landroid/car/media/ICarAudio$Stub;->releaseAudioPatch(Landroid/car/media/CarAudioPatchHandle;)V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 227
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 234
    invoke-virtual {p0, p1, p4, p2}, Landroid/car/media/ICarAudio$Stub;->createAudioPatch(Ljava/lang/String;II)Landroid/car/media/CarAudioPatchHandle;

    move-result-object p1

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1

    .line 237
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    invoke-virtual {p1, p3, v1}, Landroid/car/media/CarAudioPatchHandle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 241
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    .line 219
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Landroid/car/media/ICarAudio$Stub;->getExternalSources()[Ljava/lang/String;

    move-result-object p1

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v1

    .line 210
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 213
    invoke-virtual {p0, p1}, Landroid/car/media/ICarAudio$Stub;->setBalanceTowardRight(F)V

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 201
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 204
    invoke-virtual {p0, p1}, Landroid/car/media/ICarAudio$Stub;->setFadeTowardFront(F)V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 189
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 194
    invoke-virtual {p0, p1, p2}, Landroid/car/media/ICarAudio$Stub;->getGroupVolume(II)I

    move-result p1

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 177
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 182
    invoke-virtual {p0, p1, p2}, Landroid/car/media/ICarAudio$Stub;->getGroupMinVolume(II)I

    move-result p1

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 165
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 170
    invoke-virtual {p0, p1, p2}, Landroid/car/media/ICarAudio$Stub;->getGroupMaxVolume(II)I

    move-result p1

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 150
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 159
    invoke-virtual {p0, p1, p4, v0, p2}, Landroid/car/media/ICarAudio$Stub;->setGroupVolume(IIII)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 142
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Landroid/car/media/ICarAudio$Stub;->isDynamicRoutingEnabled()Z

    move-result p1

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 137
    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
