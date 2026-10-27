.class public abstract Lcom/xiaopeng/b/a/b$a;
.super Landroid/os/Binder;
.source "IBtA2DPControlService.java"

# interfaces
.implements Lcom/xiaopeng/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/b/a/b$a$a;
    }
.end annotation


# direct methods
.method public static e(Landroid/os/IBinder;)Lcom/xiaopeng/b/a/b;
    .locals 2

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 p0, 0x0

    return-object p0

    .line 29
    :cond_0
    const-string v0, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaopeng/b/a/b;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/xiaopeng/b/a/b;

    return-object v0

    .line 33
    :cond_1
    new-instance v0, Lcom/xiaopeng/b/a/b$a$a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/b/a/b$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 449
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 438
    :pswitch_0
    const-string p1, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 442
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    .line 443
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/b/a/b$a;->b(Ljava/lang/String;F)Z

    move-result p1

    .line 444
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    return v1

    .line 428
    :pswitch_1
    const-string p1, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 431
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/a/b$a;->ex(Ljava/lang/String;)I

    move-result p1

    .line 432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    return v1

    .line 416
    :pswitch_2
    const-string p1, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 421
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/b/a/b$a;->y(Ljava/lang/String;I)Z

    move-result p1

    .line 422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    return v1

    .line 406
    :pswitch_3
    const-string p1, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 409
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/a/b$a;->ew(Ljava/lang/String;)Z

    move-result p1

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    return v1

    .line 396
    :pswitch_4
    const-string p1, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 399
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/a/b$a;->ev(Ljava/lang/String;)Z

    move-result p1

    .line 400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    return v1

    .line 382
    :pswitch_5
    const-string p1, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 389
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/b/a/b$a;->b(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    .line 390
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    return v1

    .line 368
    :pswitch_6
    const-string p1, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 375
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/b/a/b$a;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    .line 376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    return v1

    .line 353
    :pswitch_7
    const-string p1, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 362
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/xiaopeng/b/a/b$a;->d(Ljava/lang/String;III)V

    .line 363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    return v1

    .line 340
    :pswitch_8
    const-string p1, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 347
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/b/a/b$a;->d(Ljava/lang/String;II)V

    .line 348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    return v1

    .line 321
    :pswitch_9
    const-string p1, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 334
    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/xiaopeng/b/a/b$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    return v1

    .line 304
    :pswitch_a
    const-string p1, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 315
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/b/a/b$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    return v1

    .line 287
    :pswitch_b
    const-string p1, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 298
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/b/a/b$a;->a(Ljava/lang/String;Ljava/lang/String;III)V

    .line 299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    return v1

    .line 272
    :pswitch_c
    const-string p1, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 281
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/xiaopeng/b/a/b$a;->c(Ljava/lang/String;Ljava/lang/String;II)V

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    return v1

    .line 249
    :pswitch_d
    const-string p1, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 256
    if-gez v0, :cond_0

    .line 257
    const/4 v0, 0x0

    goto :goto_0

    .line 260
    :cond_0
    new-array v0, v0, [I

    .line 263
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 264
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/xiaopeng/b/a/b$a;->a(Ljava/lang/String;I[II)Z

    move-result p1

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 268
    return v1

    .line 235
    :pswitch_e
    const-string p1, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 242
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/b/a/b$a;->c(Ljava/lang/String;II)Z

    move-result p1

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    return v1

    .line 223
    :pswitch_f
    const-string p1, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 228
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/b/a/b$a;->x(Ljava/lang/String;I)Z

    move-result p1

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    return v1

    .line 213
    :pswitch_10
    const-string p1, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 216
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/a/b$a;->eu(Ljava/lang/String;)Z

    move-result p1

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    return v1

    .line 203
    :pswitch_11
    const-string p1, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 206
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/a/b$a;->et(Ljava/lang/String;)Z

    move-result p1

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    return v1

    .line 192
    :pswitch_12
    const-string p1, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 197
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/b/a/b$a;->w(Ljava/lang/String;I)V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    return v1

    .line 182
    :pswitch_13
    const-string p1, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/a/b$a;->es(Ljava/lang/String;)I

    move-result p1

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    return v1

    .line 172
    :pswitch_14
    const-string p1, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 175
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/a/b$a;->er(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    return v1

    .line 162
    :pswitch_15
    const-string p1, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 165
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/a/b$a;->eq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    return v1

    .line 152
    :pswitch_16
    const-string p1, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/a/b$a;->ep(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    return v1

    .line 142
    :pswitch_17
    const-string p1, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 145
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/a/b$a;->eo(Ljava/lang/String;)Z

    move-result p1

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    return v1

    .line 128
    :pswitch_18
    const-string p1, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 135
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/b/a/b$a;->b(Ljava/lang/String;II)Z

    move-result p1

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    return v1

    .line 118
    :pswitch_19
    const-string p1, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 121
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/a/b$a;->en(Ljava/lang/String;)Z

    move-result p1

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    return v1

    .line 108
    :pswitch_1a
    const-string p1, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/a/b$a;->em(Ljava/lang/String;)Z

    move-result p1

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    return v1

    .line 98
    :pswitch_1b
    const-string p1, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/a/b$a;->el(Ljava/lang/String;)Z

    move-result p1

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    return v1

    .line 88
    :pswitch_1c
    const-string p1, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/a/b$a;->ek(Ljava/lang/String;)Z

    move-result p1

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    return v1

    .line 78
    :pswitch_1d
    const-string p1, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/a/b$a;->ej(Ljava/lang/String;)Z

    move-result p1

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    return v1

    .line 68
    :pswitch_1e
    const-string p1, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/a/b$a;->ei(Ljava/lang/String;)Z

    move-result p1

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    return v1

    .line 59
    :pswitch_1f
    const-string p1, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/b/a/a$a;->d(Landroid/os/IBinder;)Lcom/xiaopeng/b/a/a;

    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/a/b$a;->b(Lcom/xiaopeng/b/a/a;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    return v1

    .line 50
    :pswitch_20
    const-string p1, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/b/a/a$a;->d(Landroid/os/IBinder;)Lcom/xiaopeng/b/a/a;

    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/a/b$a;->a(Lcom/xiaopeng/b/a/a;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    return v1

    .line 45
    :cond_1
    const-string p1, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IBtA2DPControlService"

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
