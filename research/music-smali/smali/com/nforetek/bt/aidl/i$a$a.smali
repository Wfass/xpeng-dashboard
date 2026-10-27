.class Lcom/nforetek/bt/aidl/i$a$a;
.super Ljava/lang/Object;
.source "UiCallbackPbap.java"

# interfaces
.implements Lcom/nforetek/bt/aidl/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nforetek/bt/aidl/i$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p1, p0, Lcom/nforetek/bt/aidl/i$a$a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 223
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackPbap"

    .line 225
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 226
    iget-object v2, p0, Lcom/nforetek/bt/aidl/i$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 227
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 230
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 232
    throw v2
.end method

.method public a(Lcom/nforetek/bt/aidl/NfPbapContact;)V
    .locals 4

    .line 296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 297
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackPbap"

    .line 299
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 301
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    invoke-virtual {p1, v0, v2}, Lcom/nforetek/bt/aidl/NfPbapContact;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 305
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    :goto_0
    iget-object p1, p0, Lcom/nforetek/bt/aidl/i$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x3

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 308
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 311
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 313
    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 469
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 470
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackPbap"

    .line 472
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 474
    iget-object p1, p0, Lcom/nforetek/bt/aidl/i$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 475
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 479
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 478
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 479
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 480
    throw p1
.end method

.method public a(Ljava/lang/String;III)V
    .locals 3

    .line 379
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 380
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackPbap"

    .line 382
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    iget-object p1, p0, Lcom/nforetek/bt/aidl/i$a$a;->a:Landroid/os/IBinder;

    const/4 p2, 0x5

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 388
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 391
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 393
    throw p1
.end method

.method public a(Ljava/lang/String;IIII)V
    .locals 3

    .line 259
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 260
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackPbap"

    .line 262
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    iget-object p1, p0, Lcom/nforetek/bt/aidl/i$a$a;->a:Landroid/os/IBinder;

    const/4 p2, 0x2

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 269
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 272
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 274
    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 333
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 334
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackPbap"

    .line 336
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 344
    iget-object p1, p0, Lcom/nforetek/bt/aidl/i$a$a;->a:Landroid/os/IBinder;

    const/4 p2, 0x4

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 345
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 348
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 350
    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 406
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 407
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackPbap"

    .line 409
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 410
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz p4, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, p1

    .line 413
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    iget-object p2, p0, Lcom/nforetek/bt/aidl/i$a$a;->a:Landroid/os/IBinder;

    const/4 p3, 0x6

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 415
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 419
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 418
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 419
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 420
    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 3

    .line 434
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 435
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackPbap"

    .line 437
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 438
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 440
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 441
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, p1

    .line 442
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 443
    iget-object p2, p0, Lcom/nforetek/bt/aidl/i$a$a;->a:Landroid/os/IBinder;

    const/4 p3, 0x7

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 444
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 447
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 449
    throw p1
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3

    .line 491
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 492
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackPbap"

    .line 494
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, p1

    .line 496
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    iget-object p2, p0, Lcom/nforetek/bt/aidl/i$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x9

    invoke-interface {p2, v2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 498
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 502
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 501
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 502
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 503
    throw p1
.end method

.method public a(Z)V
    .locals 4

    .line 513
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 514
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackPbap"

    .line 516
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 517
    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    iget-object p1, p0, Lcom/nforetek/bt/aidl/i$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xa

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 519
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 522
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 524
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/nforetek/bt/aidl/i$a$a;->a:Landroid/os/IBinder;

    return-object v0
.end method
