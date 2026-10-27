.class public abstract Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;
.super Landroid/os/Binder;
.source "ISeatMassager.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_doVibrate:I = 0x11

.field static final TRANSACTION_getMassagerArea:I = 0x1a

.field static final TRANSACTION_getMassagerEffect:I = 0x8

.field static final TRANSACTION_getMassagerIntensity:I = 0xa

.field static final TRANSACTION_getMassagerStatus:I = 0xb

.field static final TRANSACTION_getRhythmEnable:I = 0x10

.field static final TRANSACTION_getRhythmIntensity:I = 0x16

.field static final TRANSACTION_getRhythmPattern:I = 0x18

.field static final TRANSACTION_getVibrateIntensity:I = 0x14

.field static final TRANSACTION_loadMassagerEffect:I = 0x3

.field static final TRANSACTION_loadVibrate:I = 0xd

.field static final TRANSACTION_loadVibrateEffect:I = 0xc

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_setMassagerArea:I = 0x19

.field static final TRANSACTION_setMassagerEffect:I = 0x7

.field static final TRANSACTION_setMassagerIntensity:I = 0x9

.field static final TRANSACTION_setRhythmEnable:I = 0xf

.field static final TRANSACTION_setRhythmIntensity:I = 0x15

.field static final TRANSACTION_setRhythmPattern:I = 0x17

.field static final TRANSACTION_setVibrateIntensity:I = 0x13

.field static final TRANSACTION_showMassagerArea:I = 0x1b

.field static final TRANSACTION_showMassagerEffect:I = 0x4

.field static final TRANSACTION_showVibrateEffect:I = 0xe

.field static final TRANSACTION_startMassager:I = 0x5

.field static final TRANSACTION_stopMassager:I = 0x6

.field static final TRANSACTION_stopVibrate:I = 0x12

.field static final TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 127
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.xuimanager.seatmassager.ISeatMassager"

    .line 128
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.xuimanager.seatmassager.ISeatMassager"

    .line 139
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 140
    instance-of v1, v0, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    if-eqz v1, :cond_1

    .line 141
    check-cast v0, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    return-object v0

    .line 143
    :cond_1
    new-instance v0, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;
    .locals 1

    .line 1131
    sget-object v0, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;)Z
    .locals 1

    .line 1121
    sget-object v0, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 1125
    sput-object p0, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1122
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
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

    const/4 v0, 0x1

    const-string v1, "com.xiaopeng.xuimanager.seatmassager.ISeatMassager"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 445
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 437
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->showMassagerArea()Ljava/util/List;

    move-result-object p1

    .line 439
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v0

    .line 427
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 430
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getMassagerArea(I)Ljava/lang/String;

    move-result-object p1

    .line 431
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 415
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 419
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 420
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->setMassagerArea(Ljava/util/List;Ljava/lang/String;)I

    move-result p1

    .line 421
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 407
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getRhythmPattern()I

    move-result p1

    .line 409
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 397
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 400
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->setRhythmPattern(I)I

    move-result p1

    .line 401
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 387
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 390
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getRhythmIntensity(I)I

    move-result p1

    .line 391
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 375
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 380
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->setRhythmIntensity(Ljava/util/List;I)I

    move-result p1

    .line 381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 365
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 368
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getVibrateIntensity(I)I

    move-result p1

    .line 369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 353
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 358
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->setVibrateIntensity(Ljava/util/List;I)I

    move-result p1

    .line 359
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 345
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->stopVibrate()I

    move-result p1

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 329
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    sget-object p1, Lcom/xiaopeng/xuimanager/seatmassager/Seat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 338
    invoke-virtual {p0, p1, p4, v1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->doVibrate(Ljava/util/List;Ljava/lang/String;II)I

    move-result p1

    .line 339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 319
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 322
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getRhythmEnable(I)I

    move-result p1

    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 307
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 312
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->setRhythmEnable(Ljava/util/List;Z)I

    move-result p1

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 299
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->showVibrateEffect()Ljava/util/List;

    move-result-object p1

    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v0

    .line 282
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 285
    sget-object p1, Landroid/content/res/AssetFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/AssetFileDescriptor;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 291
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 292
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->loadVibrate(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)I

    move-result p1

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 275
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->loadVibrateEffect()V

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 265
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 268
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getMassagerStatus(I)I

    move-result p1

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 253
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 258
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getMassagerIntensity(ILjava/lang/String;)I

    move-result p1

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 241
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 246
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->setMassagerIntensity(Ljava/util/List;I)I

    move-result p1

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 231
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 234
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getMassagerEffect(I)Ljava/lang/String;

    move-result-object p1

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 219
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 224
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->setMassagerEffect(Ljava/util/List;Ljava/lang/String;)I

    move-result p1

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 209
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 212
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->stopMassager(Ljava/util/List;)I

    move-result p1

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 197
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    sget-object p1, Lcom/xiaopeng/xuimanager/seatmassager/Seat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 202
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->startMassager(Ljava/util/List;Ljava/lang/String;)I

    move-result p1

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 189
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->showMassagerEffect()Ljava/util/List;

    move-result-object p1

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v0

    .line 182
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->loadMassagerEffect()V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 173
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassagerEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassagerEventListener;

    move-result-object p1

    .line 176
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->unregisterListener(Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassagerEventListener;)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 164
    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassagerEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassagerEventListener;

    move-result-object p1

    .line 167
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->registerListener(Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassagerEventListener;)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 156
    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

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
