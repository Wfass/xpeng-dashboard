.class public abstract Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;
.super Landroid/os/Binder;
.source "IAfterSalesManager.java"

# interfaces
.implements Lcom/xiaopeng/aftersales/IAfterSalesManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aftersales/IAfterSalesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.aftersales.IAfterSalesManager"

.field static final TRANSACTION_disableAuthMode:I = 0x25

.field static final TRANSACTION_disableRepairMode:I = 0x10

.field static final TRANSACTION_enableAuthMode:I = 0x24

.field static final TRANSACTION_enableRepairMode:I = 0xd

.field static final TRANSACTION_enableRepairModeWithKey:I = 0xe

.field static final TRANSACTION_enableRepairModeWithKeyId:I = 0xf

.field static final TRANSACTION_executeEncryptSh:I = 0x21

.field static final TRANSACTION_executeShellCmd:I = 0x1d

.field static final TRANSACTION_executeShellCmdWithLimitLine:I = 0x1e

.field static final TRANSACTION_getAuthEndTime:I = 0x28

.field static final TRANSACTION_getAuthMode:I = 0x26

.field static final TRANSACTION_getAuthPass:I = 0x27

.field static final TRANSACTION_getRepairMode:I = 0x11

.field static final TRANSACTION_getRepairModeDisableTime:I = 0x13

.field static final TRANSACTION_getRepairModeEnableTime:I = 0x12

.field static final TRANSACTION_getRepairModeKeyId:I = 0x17

.field static final TRANSACTION_getSpeedLimitDisableTime:I = 0x16

.field static final TRANSACTION_getSpeedLimitEnableTime:I = 0x15

.field static final TRANSACTION_getSpeedLimitMode:I = 0x14

.field static final TRANSACTION_recordDiagnosisError:I = 0x1

.field static final TRANSACTION_recordLogicAction:I = 0x5

.field static final TRANSACTION_recordRepairmodeAction:I = 0x1c

.field static final TRANSACTION_recordSpeedLimitOff:I = 0x19

.field static final TRANSACTION_recordSpeedLimitOn:I = 0x18

.field static final TRANSACTION_registerAlertListener:I = 0x3

.field static final TRANSACTION_registerAuthModeListener:I = 0x29

.field static final TRANSACTION_registerEncryptShListener:I = 0x22

.field static final TRANSACTION_registerLogicActionListener:I = 0x9

.field static final TRANSACTION_registerLogicTreeUpgrader:I = 0xb

.field static final TRANSACTION_registerRepairModeListener:I = 0x1a

.field static final TRANSACTION_registerShellCmdListener:I = 0x1f

.field static final TRANSACTION_requestUpgradeLogicTree:I = 0x8

.field static final TRANSACTION_requestUploadLogicAction:I = 0x7

.field static final TRANSACTION_unregisterAlertListener:I = 0x4

.field static final TRANSACTION_unregisterAuthModeListener:I = 0x2a

.field static final TRANSACTION_unregisterEncryptShListener:I = 0x23

.field static final TRANSACTION_unregisterLogicActionListener:I = 0xa

.field static final TRANSACTION_unregisterLogicTreeUpgrader:I = 0xc

.field static final TRANSACTION_unregisterRepairModeListener:I = 0x1b

.field static final TRANSACTION_unregisterShellCmdListener:I = 0x20

.field static final TRANSACTION_updateDiagnosisUploadStatus:I = 0x2

.field static final TRANSACTION_updateLogicActionUploadStatus:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.xiaopeng.aftersales.IAfterSalesManager"

    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/aftersales/IAfterSalesManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.xiaopeng.aftersales.IAfterSalesManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaopeng/aftersales/IAfterSalesManager;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/aftersales/IAfterSalesManager;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
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

    .line 38
    const-string v13, "com.xiaopeng.aftersales.IAfterSalesManager"

    .line 39
    .local v13, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v14, 0x1

    if-eq v10, v0, :cond_6

    const/4 v0, 0x0

    packed-switch v10, :pswitch_data_0

    .line 464
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 455
    :pswitch_0
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/aftersales/IAuthModeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/aftersales/IAuthModeListener;

    move-result-object v0

    .line 458
    .local v0, "_arg0":Lcom/xiaopeng/aftersales/IAuthModeListener;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->unregisterAuthModeListener(Lcom/xiaopeng/aftersales/IAuthModeListener;)V

    .line 459
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    return v14

    .line 446
    .end local v0    # "_arg0":Lcom/xiaopeng/aftersales/IAuthModeListener;
    :pswitch_1
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/aftersales/IAuthModeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/aftersales/IAuthModeListener;

    move-result-object v0

    .line 449
    .restart local v0    # "_arg0":Lcom/xiaopeng/aftersales/IAuthModeListener;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->registerAuthModeListener(Lcom/xiaopeng/aftersales/IAuthModeListener;)V

    .line 450
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    return v14

    .line 438
    .end local v0    # "_arg0":Lcom/xiaopeng/aftersales/IAuthModeListener;
    :pswitch_2
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->getAuthEndTime()J

    move-result-wide v0

    .line 440
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    invoke-virtual {v12, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 442
    return v14

    .line 430
    .end local v0    # "_result":J
    :pswitch_3
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->getAuthPass()Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 434
    return v14

    .line 422
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->getAuthMode()Z

    move-result v0

    .line 424
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    return v14

    .line 415
    .end local v0    # "_result":Z
    :pswitch_5
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->disableAuthMode()V

    .line 417
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    return v14

    .line 404
    :pswitch_6
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 409
    .local v1, "_arg1":J
    invoke-virtual {v9, v0, v1, v2}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->enableAuthMode(Ljava/lang/String;J)V

    .line 410
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    return v14

    .line 395
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    :pswitch_7
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/aftersales/IEncryptShListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/aftersales/IEncryptShListener;

    move-result-object v0

    .line 398
    .local v0, "_arg0":Lcom/xiaopeng/aftersales/IEncryptShListener;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->unregisterEncryptShListener(Lcom/xiaopeng/aftersales/IEncryptShListener;)V

    .line 399
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    return v14

    .line 386
    .end local v0    # "_arg0":Lcom/xiaopeng/aftersales/IEncryptShListener;
    :pswitch_8
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/aftersales/IEncryptShListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/aftersales/IEncryptShListener;

    move-result-object v0

    .line 389
    .restart local v0    # "_arg0":Lcom/xiaopeng/aftersales/IEncryptShListener;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->registerEncryptShListener(Lcom/xiaopeng/aftersales/IEncryptShListener;)V

    .line 390
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    return v14

    .line 375
    .end local v0    # "_arg0":Lcom/xiaopeng/aftersales/IEncryptShListener;
    :pswitch_9
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v14

    nop

    .line 380
    .local v0, "_arg1":Z
    :cond_0
    invoke-virtual {v9, v1, v0}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->executeEncryptSh(Ljava/lang/String;Z)V

    .line 381
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    return v14

    .line 366
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/aftersales/IShellCmdListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/aftersales/IShellCmdListener;

    move-result-object v0

    .line 369
    .local v0, "_arg0":Lcom/xiaopeng/aftersales/IShellCmdListener;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->unregisterShellCmdListener(Lcom/xiaopeng/aftersales/IShellCmdListener;)V

    .line 370
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    return v14

    .line 357
    .end local v0    # "_arg0":Lcom/xiaopeng/aftersales/IShellCmdListener;
    :pswitch_b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/aftersales/IShellCmdListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/aftersales/IShellCmdListener;

    move-result-object v0

    .line 360
    .restart local v0    # "_arg0":Lcom/xiaopeng/aftersales/IShellCmdListener;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->registerShellCmdListener(Lcom/xiaopeng/aftersales/IShellCmdListener;)V

    .line 361
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    return v14

    .line 340
    .end local v0    # "_arg0":Lcom/xiaopeng/aftersales/IShellCmdListener;
    :pswitch_c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 344
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 346
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 348
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 350
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v5, v14

    goto :goto_0

    :cond_1
    move v5, v0

    .line 351
    .local v5, "_arg4":Z
    :goto_0
    move-object v0, v9

    move v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->executeShellCmdWithLimitLine(ILjava/lang/String;ILjava/lang/String;Z)V

    .line 352
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    return v14

    .line 327
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v15    # "_arg3":Ljava/lang/String;
    :pswitch_d
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 331
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v14

    nop

    .line 334
    .local v0, "_arg2":Z
    :cond_2
    invoke-virtual {v9, v1, v2, v0}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->executeShellCmd(ILjava/lang/String;Z)V

    .line 335
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    return v14

    .line 316
    .end local v0    # "_arg2":Z
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->recordRepairmodeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    return v14

    .line 307
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/aftersales/IRepairModeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/aftersales/IRepairModeListener;

    move-result-object v0

    .line 310
    .local v0, "_arg0":Lcom/xiaopeng/aftersales/IRepairModeListener;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->unregisterRepairModeListener(Lcom/xiaopeng/aftersales/IRepairModeListener;)V

    .line 311
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    return v14

    .line 298
    .end local v0    # "_arg0":Lcom/xiaopeng/aftersales/IRepairModeListener;
    :pswitch_10
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/aftersales/IRepairModeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/aftersales/IRepairModeListener;

    move-result-object v0

    .line 301
    .restart local v0    # "_arg0":Lcom/xiaopeng/aftersales/IRepairModeListener;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->registerRepairModeListener(Lcom/xiaopeng/aftersales/IRepairModeListener;)V

    .line 302
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    return v14

    .line 291
    .end local v0    # "_arg0":Lcom/xiaopeng/aftersales/IRepairModeListener;
    :pswitch_11
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->recordSpeedLimitOff()V

    .line 293
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    return v14

    .line 284
    :pswitch_12
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->recordSpeedLimitOn()V

    .line 286
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    return v14

    .line 276
    :pswitch_13
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->getRepairModeKeyId()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 280
    return v14

    .line 268
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_14
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->getSpeedLimitDisableTime()Ljava/lang/String;

    move-result-object v0

    .line 270
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    return v14

    .line 260
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_15
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->getSpeedLimitEnableTime()Ljava/lang/String;

    move-result-object v0

    .line 262
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    return v14

    .line 252
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_16
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->getSpeedLimitMode()Z

    move-result v0

    .line 254
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    return v14

    .line 244
    .end local v0    # "_result":Z
    :pswitch_17
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->getRepairModeDisableTime()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    return v14

    .line 236
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_18
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->getRepairModeEnableTime()Ljava/lang/String;

    move-result-object v0

    .line 238
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    return v14

    .line 228
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_19
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->getRepairMode()Z

    move-result v0

    .line 230
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    return v14

    .line 221
    .end local v0    # "_result":Z
    :pswitch_1a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->disableRepairMode()V

    .line 223
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    return v14

    .line 212
    :pswitch_1b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->enableRepairModeWithKeyId(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    return v14

    .line 203
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_1c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->enableRepairModeWithKey(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    return v14

    .line 196
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_1d
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->enableRepairMode()V

    .line 198
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    return v14

    .line 187
    :pswitch_1e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/aftersales/ILogicTreeUpgrader$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/aftersales/ILogicTreeUpgrader;

    move-result-object v0

    .line 190
    .local v0, "_arg0":Lcom/xiaopeng/aftersales/ILogicTreeUpgrader;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->unregisterLogicTreeUpgrader(Lcom/xiaopeng/aftersales/ILogicTreeUpgrader;)V

    .line 191
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    return v14

    .line 178
    .end local v0    # "_arg0":Lcom/xiaopeng/aftersales/ILogicTreeUpgrader;
    :pswitch_1f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/aftersales/ILogicTreeUpgrader$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/aftersales/ILogicTreeUpgrader;

    move-result-object v0

    .line 181
    .restart local v0    # "_arg0":Lcom/xiaopeng/aftersales/ILogicTreeUpgrader;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->registerLogicTreeUpgrader(Lcom/xiaopeng/aftersales/ILogicTreeUpgrader;)V

    .line 182
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    return v14

    .line 169
    .end local v0    # "_arg0":Lcom/xiaopeng/aftersales/ILogicTreeUpgrader;
    :pswitch_20
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/aftersales/ILogicActionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/aftersales/ILogicActionListener;

    move-result-object v0

    .line 172
    .local v0, "_arg0":Lcom/xiaopeng/aftersales/ILogicActionListener;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->unregisterLogicActionListener(Lcom/xiaopeng/aftersales/ILogicActionListener;)V

    .line 173
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    return v14

    .line 160
    .end local v0    # "_arg0":Lcom/xiaopeng/aftersales/ILogicActionListener;
    :pswitch_21
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/aftersales/ILogicActionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/aftersales/ILogicActionListener;

    move-result-object v0

    .line 163
    .restart local v0    # "_arg0":Lcom/xiaopeng/aftersales/ILogicActionListener;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->registerLogicActionListener(Lcom/xiaopeng/aftersales/ILogicActionListener;)V

    .line 164
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    return v14

    .line 151
    .end local v0    # "_arg0":Lcom/xiaopeng/aftersales/ILogicActionListener;
    :pswitch_22
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->requestUpgradeLogicTree(Ljava/lang/String;)V

    .line 155
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    return v14

    .line 144
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_23
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->requestUploadLogicAction()V

    .line 146
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    return v14

    .line 121
    :pswitch_24
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v14

    goto :goto_1

    :cond_3
    move v1, v0

    .line 125
    .local v1, "_arg0":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 127
    .local v15, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 129
    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 131
    .local v17, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 133
    .local v18, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 135
    .local v19, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 137
    .local v20, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 138
    .local v21, "_arg7":Ljava/lang/String;
    move-object v0, v9

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    invoke-virtual/range {v0 .. v8}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->updateLogicActionUploadStatus(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    return v14

    .line 100
    .end local v1    # "_arg0":Z
    .end local v15    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":Ljava/lang/String;
    .end local v18    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg5":Ljava/lang/String;
    .end local v20    # "_arg6":Ljava/lang/String;
    .end local v21    # "_arg7":Ljava/lang/String;
    :pswitch_25
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 104
    .local v8, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 106
    .restart local v15    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 108
    .restart local v16    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 110
    .restart local v17    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 112
    .restart local v18    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 114
    .restart local v19    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 115
    .restart local v20    # "_arg6":Ljava/lang/String;
    move-object v0, v9

    move-object v1, v8

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->recordLogicAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    return v14

    .line 91
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v15    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":Ljava/lang/String;
    .end local v18    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg5":Ljava/lang/String;
    .end local v20    # "_arg6":Ljava/lang/String;
    :pswitch_26
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/aftersales/IAlertListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/aftersales/IAlertListener;

    move-result-object v0

    .line 94
    .local v0, "_arg0":Lcom/xiaopeng/aftersales/IAlertListener;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->unregisterAlertListener(Lcom/xiaopeng/aftersales/IAlertListener;)V

    .line 95
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    return v14

    .line 82
    .end local v0    # "_arg0":Lcom/xiaopeng/aftersales/IAlertListener;
    :pswitch_27
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/aftersales/IAlertListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/aftersales/IAlertListener;

    move-result-object v0

    .line 85
    .restart local v0    # "_arg0":Lcom/xiaopeng/aftersales/IAlertListener;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->registerAlertListener(Lcom/xiaopeng/aftersales/IAlertListener;)V

    .line 86
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    return v14

    .line 65
    .end local v0    # "_arg0":Lcom/xiaopeng/aftersales/IAlertListener;
    :pswitch_28
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 69
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    move v2, v14

    goto :goto_2

    :cond_4
    move v2, v0

    .line 71
    .local v2, "_arg1":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 73
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 75
    .local v15, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 76
    .local v17, "_arg4":Ljava/lang/String;
    move-object v0, v9

    move v1, v7

    move v3, v8

    move-wide v4, v15

    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->updateDiagnosisUploadStatus(IZIJLjava/lang/String;)V

    .line 77
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    return v14

    .line 48
    .end local v2    # "_arg1":Z
    .end local v7    # "_arg0":I
    .end local v8    # "_arg2":I
    .end local v15    # "_arg3":J
    .end local v17    # "_arg4":Ljava/lang/String;
    :pswitch_29
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 52
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 54
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 56
    .local v15, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 58
    .local v17, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    move v6, v14

    goto :goto_3

    :cond_5
    move v6, v0

    .line 59
    .local v6, "_arg4":Z
    :goto_3
    move-object v0, v9

    move v1, v7

    move v2, v8

    move-wide v3, v15

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/aftersales/IAfterSalesManager$Stub;->recordDiagnosisError(IIJLjava/lang/String;Z)V

    .line 60
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    return v14

    .line 43
    .end local v6    # "_arg4":Z
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v15    # "_arg2":J
    .end local v17    # "_arg3":Ljava/lang/String;
    :cond_6
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v14

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
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
