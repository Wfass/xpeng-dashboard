.class public abstract Landroid/car/xpeng/imm/ICarImmSvc$Stub;
.super Landroid/os/Binder;
.source "ICarImmSvc.java"

# interfaces
.implements Landroid/car/xpeng/imm/ICarImmSvc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpeng/imm/ICarImmSvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/imm/ICarImmSvc$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.car.xpeng.imm.ICarImmSvc"

.field static final TRANSACTION_getImmAroundViewMonitorMode:I = 0x11

.field static final TRANSACTION_getImmDriverPriorityMode:I = 0x10

.field static final TRANSACTION_getImmOrientation:I = 0xc

.field static final TRANSACTION_getImmOrientationCoord:I = 0xb

.field static final TRANSACTION_getImmRacerMode:I = 0xe

.field static final TRANSACTION_getImmVoiceAwakenMode:I = 0xf

.field static final TRANSACTION_registerListener:I = 0x7

.field static final TRANSACTION_resetImmOrientationCoord:I = 0x16

.field static final TRANSACTION_setImmAiOrientation:I = 0xd

.field static final TRANSACTION_setImmAroundViewMonitorMode:I = 0x6

.field static final TRANSACTION_setImmDriverPriorityMode:I = 0x5

.field static final TRANSACTION_setImmMachZeroCalibrate:I = 0x15

.field static final TRANSACTION_setImmMovingDirection:I = 0x17

.field static final TRANSACTION_setImmMovingDirectionValue:I = 0x18

.field static final TRANSACTION_setImmOrientation:I = 0x1

.field static final TRANSACTION_setImmOrientationCoord:I = 0x2

.field static final TRANSACTION_setImmRacerMode:I = 0x3

.field static final TRANSACTION_setImmTouchVibPercentage:I = 0xa

.field static final TRANSACTION_setImmVoiceAwakenFinish:I = 0x14

.field static final TRANSACTION_setImmVoiceAwakenMode:I = 0x4

.field static final TRANSACTION_setImmVoiceAwakenRotation:I = 0x13

.field static final TRANSACTION_syncImmBaseOrientation:I = 0x12

.field static final TRANSACTION_triggerImmTouchVib:I = 0x9

.field static final TRANSACTION_unregisterListener:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 159
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.car.xpeng.imm.ICarImmSvc"

    .line 160
    invoke-virtual {p0, p0, v0}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/car/xpeng/imm/ICarImmSvc;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.xpeng.imm.ICarImmSvc"

    .line 171
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 172
    instance-of v1, v0, Landroid/car/xpeng/imm/ICarImmSvc;

    if-eqz v1, :cond_1

    .line 173
    check-cast v0, Landroid/car/xpeng/imm/ICarImmSvc;

    return-object v0

    .line 175
    :cond_1
    new-instance v0, Landroid/car/xpeng/imm/ICarImmSvc$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/xpeng/imm/ICarImmSvc$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;
    .locals 1

    .line 1064
    sget-object v0, Landroid/car/xpeng/imm/ICarImmSvc$Stub$Proxy;->sDefaultImpl:Landroid/car/xpeng/imm/ICarImmSvc;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/car/xpeng/imm/ICarImmSvc;)Z
    .locals 1

    .line 1057
    sget-object v0, Landroid/car/xpeng/imm/ICarImmSvc$Stub$Proxy;->sDefaultImpl:Landroid/car/xpeng/imm/ICarImmSvc;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 1058
    sput-object p0, Landroid/car/xpeng/imm/ICarImmSvc$Stub$Proxy;->sDefaultImpl:Landroid/car/xpeng/imm/ICarImmSvc;

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

    const-string v2, "android.car.xpeng.imm.ICarImmSvc"

    if-eq p1, v0, :cond_7

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 450
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 438
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 442
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    .line 443
    invoke-virtual {p0, p1, p2}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->setImmMovingDirectionValue(IF)I

    move-result p1

    .line 444
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 428
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 431
    invoke-virtual {p0, p1}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->setImmMovingDirection(I)I

    move-result p1

    .line 432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 420
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p0}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->resetImmOrientationCoord()I

    move-result p1

    .line 422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 410
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 413
    invoke-virtual {p0, p1}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->setImmMachZeroCalibrate(I)I

    move-result p1

    .line 414
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 402
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->setImmVoiceAwakenFinish()I

    move-result p1

    .line 404
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 392
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 395
    invoke-virtual {p0, p1}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->setImmVoiceAwakenRotation(I)I

    move-result p1

    .line 396
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 382
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 385
    invoke-virtual {p0, p1}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->syncImmBaseOrientation(I)I

    move-result p1

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 374
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getImmAroundViewMonitorMode()Z

    move-result p1

    .line 376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 366
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getImmDriverPriorityMode()Z

    move-result p1

    .line 368
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 358
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getImmVoiceAwakenMode()Z

    move-result p1

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 350
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getImmRacerMode()Z

    move-result p1

    .line 352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 338
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 343
    invoke-virtual {p0, p1, p2}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->setImmAiOrientation(II)I

    move-result p1

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 203
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getImmOrientation()I

    move-result p1

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 225
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 p4, 0x0

    if-gez p1, :cond_0

    move-object p1, p4

    goto :goto_0

    .line 232
    :cond_0
    new-array p1, p1, [F

    .line 235
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_1

    move-object v0, p4

    goto :goto_1

    .line 240
    :cond_1
    new-array v0, v0, [F

    .line 243
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-gez p2, :cond_2

    goto :goto_2

    .line 248
    :cond_2
    new-array p4, p2, [F

    .line 250
    :goto_2
    invoke-virtual {p0, p1, v0, p4}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getImmOrientationCoord([F[F[F)I

    move-result p2

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 254
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 255
    invoke-virtual {p3, p4}, Landroid/os/Parcel;->writeFloatArray([F)V

    return v1

    .line 328
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 331
    invoke-virtual {p0, p1}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->setImmTouchVibPercentage(I)I

    move-result p1

    .line 332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 318
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 321
    invoke-virtual {p0, p1}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->triggerImmTouchVib(I)I

    move-result p1

    .line 322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 309
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/xpeng/imm/ICarImmListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/xpeng/imm/ICarImmListener;

    move-result-object p1

    .line 312
    invoke-virtual {p0, p1}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->unregisterListener(Landroid/car/xpeng/imm/ICarImmListener;)V

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 300
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/xpeng/imm/ICarImmListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/xpeng/imm/ICarImmListener;

    move-result-object p1

    .line 303
    invoke-virtual {p0, p1}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->registerListener(Landroid/car/xpeng/imm/ICarImmListener;)V

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 290
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v0, v1

    .line 293
    :cond_3
    invoke-virtual {p0, v0}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->setImmAroundViewMonitorMode(Z)I

    move-result p1

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 280
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    move v0, v1

    .line 283
    :cond_4
    invoke-virtual {p0, v0}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->setImmDriverPriorityMode(Z)I

    move-result p1

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 270
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    move v0, v1

    .line 273
    :cond_5
    invoke-virtual {p0, v0}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->setImmVoiceAwakenMode(Z)I

    move-result p1

    .line 274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 260
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    move v0, v1

    .line 263
    :cond_6
    invoke-virtual {p0, v0}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->setImmRacerMode(Z)I

    move-result p1

    .line 264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 211
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p1

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p4

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p2

    .line 218
    invoke-virtual {p0, p1, p4, p2}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->setImmOrientationCoord([F[F[F)I

    move-result p1

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 193
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 196
    invoke-virtual {p0, p1}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->setImmOrientation(I)I

    move-result p1

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 188
    :cond_7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
