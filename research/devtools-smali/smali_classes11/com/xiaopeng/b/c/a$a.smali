.class public abstract Lcom/xiaopeng/b/c/a$a;
.super Landroid/os/Binder;
.source "IBtPhoneControlService.java"

# interfaces
.implements Lcom/xiaopeng/b/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/b/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/b/c/a$a$a;
    }
.end annotation


# direct methods
.method public static h(Landroid/os/IBinder;)Lcom/xiaopeng/b/c/a;
    .locals 2

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 p0, 0x0

    return-object p0

    .line 29
    :cond_0
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaopeng/b/c/a;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/xiaopeng/b/c/a;

    return-object v0

    .line 33
    :cond_1
    new-instance v0, Lcom/xiaopeng/b/c/a$a$a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/b/c/a$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p3

    .line 41
    const v3, 0x5f4e5446

    const/4 v10, 0x1

    if-eq v1, v3, :cond_b

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 477
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 468
    :pswitch_0
    const-string v1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 471
    invoke-virtual {v0, v1}, Lcom/xiaopeng/b/c/a$a;->fi(Ljava/lang/String;)Z

    move-result v0

    .line 472
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    return v10

    .line 459
    :pswitch_1
    const-string v1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 462
    invoke-virtual {v0, v1}, Lcom/xiaopeng/b/c/a$a;->fh(Ljava/lang/String;)V

    .line 463
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    return v10

    .line 448
    :pswitch_2
    const-string v1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 453
    move v3, v10

    goto :goto_0

    .line 452
    :cond_0
    nop

    .line 453
    :goto_0
    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/b/c/a$a;->j(Ljava/lang/String;Z)V

    .line 454
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    return v10

    .line 438
    :pswitch_3
    const-string v1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 441
    invoke-virtual {v0, v1}, Lcom/xiaopeng/b/c/a$a;->fg(Ljava/lang/String;)I

    move-result v0

    .line 442
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    return v10

    .line 428
    :pswitch_4
    const-string v1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 431
    invoke-virtual {v0, v1}, Lcom/xiaopeng/b/c/a$a;->ff(Ljava/lang/String;)I

    move-result v0

    .line 432
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    return v10

    .line 418
    :pswitch_5
    const-string v1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 421
    invoke-virtual {v0, v1}, Lcom/xiaopeng/b/c/a$a;->fe(Ljava/lang/String;)I

    move-result v0

    .line 422
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    return v10

    .line 406
    :pswitch_6
    const-string v1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 411
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/b/c/a$a;->E(Ljava/lang/String;I)Z

    move-result v0

    .line 412
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    return v10

    .line 396
    :pswitch_7
    const-string v1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 399
    invoke-virtual {v0, v1}, Lcom/xiaopeng/b/c/a$a;->fd(Ljava/lang/String;)I

    move-result v0

    .line 400
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    return v10

    .line 384
    :pswitch_8
    const-string v1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 389
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/b/c/a$a;->D(Ljava/lang/String;I)Z

    move-result v0

    .line 390
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    return v10

    .line 370
    :pswitch_9
    const-string v1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 374
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 376
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 377
    invoke-virtual {v0, v1, v3, v2}, Lcom/xiaopeng/b/c/a$a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 378
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    return v10

    .line 361
    :pswitch_a
    const-string v1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-virtual {v0, v1}, Lcom/xiaopeng/b/c/a$a;->fc(Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    return v10

    .line 348
    :pswitch_b
    const-string v1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 354
    move v3, v10

    goto :goto_1

    .line 352
    :cond_1
    nop

    .line 354
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 355
    invoke-virtual {v0, v1, v3, v2}, Lcom/xiaopeng/b/c/a$a;->a(Ljava/lang/String;ZI)V

    .line 356
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    return v10

    .line 339
    :pswitch_c
    const-string v1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-virtual {v0, v1}, Lcom/xiaopeng/b/c/a$a;->fb(Ljava/lang/String;)V

    .line 343
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    return v10

    .line 318
    :pswitch_d
    const-string v1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 333
    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    invoke-virtual/range {v0 .. v7}, Lcom/xiaopeng/b/c/a$a;->a(Ljava/lang/String;IIIIII)V

    .line 334
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    return v10

    .line 306
    :pswitch_e
    const-string v1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 311
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/b/c/a$a;->as(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 312
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    return v10

    .line 284
    :pswitch_f
    const-string v1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 293
    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/xiaopeng/b/c/a$a;->d(Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 294
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    if-eqz v0, :cond_2

    .line 296
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    invoke-virtual {v0, v9, v10}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 300
    :cond_2
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    :goto_2
    return v10

    .line 272
    :pswitch_10
    const-string v1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 277
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/b/c/a$a;->C(Ljava/lang/String;I)Z

    move-result v0

    .line 278
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    return v10

    .line 263
    :pswitch_11
    const-string v1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-virtual {v0, v1}, Lcom/xiaopeng/b/c/a$a;->fa(Ljava/lang/String;)V

    .line 267
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    return v10

    .line 240
    :pswitch_12
    const-string v1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 246
    move v3, v10

    goto :goto_3

    .line 244
    :cond_3
    nop

    .line 246
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 257
    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v11

    invoke-virtual/range {v0 .. v8}, Lcom/xiaopeng/b/c/a$a;->a(Ljava/lang/String;ZIIIIII)V

    .line 258
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    return v10

    .line 230
    :pswitch_13
    const-string v1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-virtual {v0, v1}, Lcom/xiaopeng/b/c/a$a;->eZ(Ljava/lang/String;)I

    move-result v0

    .line 234
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    return v10

    .line 220
    :pswitch_14
    const-string v1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-virtual {v0, v1}, Lcom/xiaopeng/b/c/a$a;->eY(Ljava/lang/String;)Z

    move-result v0

    .line 224
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    return v10

    .line 208
    :pswitch_15
    const-string v1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 213
    move v3, v10

    goto :goto_4

    .line 212
    :cond_4
    nop

    .line 213
    :goto_4
    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/b/c/a$a;->i(Ljava/lang/String;Z)Z

    move-result v0

    .line 214
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    return v10

    .line 144
    :pswitch_16
    const-string v1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 149
    const/4 v4, 0x0

    if-gez v3, :cond_5

    .line 150
    nop

    .line 156
    move-object v8, v4

    goto :goto_5

    .line 153
    :cond_5
    new-array v3, v3, [Ljava/lang/String;

    .line 156
    move-object v8, v3

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 157
    if-gez v3, :cond_6

    .line 158
    nop

    .line 164
    move-object v11, v4

    goto :goto_6

    .line 161
    :cond_6
    new-array v3, v3, [Ljava/lang/String;

    .line 164
    move-object v11, v3

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 165
    if-gez v3, :cond_7

    .line 166
    nop

    .line 172
    move-object v12, v4

    goto :goto_7

    .line 169
    :cond_7
    new-array v3, v3, [I

    .line 172
    move-object v12, v3

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 173
    if-gez v3, :cond_8

    .line 174
    nop

    .line 180
    move-object v13, v4

    goto :goto_8

    .line 177
    :cond_8
    new-array v3, v3, [Ljava/lang/String;

    .line 180
    move-object v13, v3

    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 181
    if-gez v3, :cond_9

    .line 182
    nop

    .line 188
    move-object v14, v4

    goto :goto_9

    .line 185
    :cond_9
    new-array v3, v3, [Ljava/lang/String;

    .line 188
    move-object v14, v3

    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 189
    if-gez v2, :cond_a

    .line 190
    nop

    .line 195
    move-object v15, v4

    goto :goto_a

    .line 193
    :cond_a
    new-array v2, v2, [I

    .line 195
    move-object v15, v2

    :goto_a
    move-object v2, v8

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    invoke-virtual/range {v0 .. v7}, Lcom/xiaopeng/b/c/a$a;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;[Ljava/lang/String;[I)Z

    move-result v0

    .line 196
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    invoke-virtual {v9, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 199
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 200
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 201
    invoke-virtual {v9, v13}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 202
    invoke-virtual {v9, v14}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 203
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 204
    return v10

    .line 134
    :pswitch_17
    const-string v1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Lcom/xiaopeng/b/c/a$a;->eX(Ljava/lang/String;)Z

    move-result v0

    .line 138
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    return v10

    .line 122
    :pswitch_18
    const-string v1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 127
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/b/c/a$a;->B(Ljava/lang/String;I)Z

    move-result v0

    .line 128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    return v10

    .line 110
    :pswitch_19
    const-string v1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/b/c/a$a;->ar(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 116
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    return v10

    .line 98
    :pswitch_1a
    const-string v1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/b/c/a$a;->aq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 104
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    return v10

    .line 88
    :pswitch_1b
    const-string v1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Lcom/xiaopeng/b/c/a$a;->eW(Ljava/lang/String;)Z

    move-result v0

    .line 92
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    return v10

    .line 78
    :pswitch_1c
    const-string v1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Lcom/xiaopeng/b/c/a$a;->eV(Ljava/lang/String;)Z

    move-result v0

    .line 82
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    return v10

    .line 68
    :pswitch_1d
    const-string v1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Lcom/xiaopeng/b/c/a$a;->eU(Ljava/lang/String;)Z

    move-result v0

    .line 72
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    return v10

    .line 59
    :pswitch_1e
    const-string v1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/b/c/b$a;->i(Landroid/os/IBinder;)Lcom/xiaopeng/b/c/b;

    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Lcom/xiaopeng/b/c/a$a;->b(Lcom/xiaopeng/b/c/b;)V

    .line 63
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    return v10

    .line 50
    :pswitch_1f
    const-string v1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/b/c/b$a;->i(Landroid/os/IBinder;)Lcom/xiaopeng/b/c/b;

    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Lcom/xiaopeng/b/c/a$a;->a(Lcom/xiaopeng/b/c/b;)V

    .line 54
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    return v10

    .line 45
    :cond_b
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IBtPhoneControlService"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v10

    :pswitch_data_0
    .packed-switch 0x1
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
