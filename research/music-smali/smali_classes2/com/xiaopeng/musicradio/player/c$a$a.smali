.class Lcom/xiaopeng/musicradio/player/c$a$a;
.super Ljava/lang/Object;
.source "IPlayerClientInterface.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/player/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/player/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/xiaopeng/musicradio/player/c;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/c$a$a;->b:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 5

    .line 296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.musicradio.player.IPlayerClientInterface"

    .line 298
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Lcom/xiaopeng/musicradio/player/c$a$a;->b:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 302
    invoke-static {}, Lcom/xiaopeng/musicradio/player/c$a;->a()Lcom/xiaopeng/musicradio/player/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 303
    invoke-static {}, Lcom/xiaopeng/musicradio/player/c$a;->a()Lcom/xiaopeng/musicradio/player/c;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/musicradio/player/c;->a(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 309
    throw p1
.end method

.method public a(ILjava/lang/String;I)V
    .locals 4

    .line 222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.musicradio.player.IPlayerClientInterface"

    .line 224
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    iget-object v1, p0, Lcom/xiaopeng/musicradio/player/c$a$a;->b:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    invoke-static {}, Lcom/xiaopeng/musicradio/player/c$a;->a()Lcom/xiaopeng/musicradio/player/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 230
    invoke-static {}, Lcom/xiaopeng/musicradio/player/c$a;->a()Lcom/xiaopeng/musicradio/player/c;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/xiaopeng/musicradio/player/c;->a(ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 236
    throw p1
.end method

.method public a(ILjava/lang/String;IIZ)V
    .locals 8

    .line 258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.musicradio.player.IPlayerClientInterface"

    .line 260
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    if-eqz p5, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 265
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/c$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 267
    invoke-static {}, Lcom/xiaopeng/musicradio/player/c$a;->a()Lcom/xiaopeng/musicradio/player/c;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 268
    invoke-static {}, Lcom/xiaopeng/musicradio/player/c$a;->a()Lcom/xiaopeng/musicradio/player/c;

    move-result-object v2

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/xiaopeng/musicradio/player/c;->a(ILjava/lang/String;IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 274
    throw p1
.end method

.method public a(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    .line 332
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.musicradio.player.IPlayerClientInterface"

    .line 334
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 338
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 342
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/c$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 345
    invoke-static {}, Lcom/xiaopeng/musicradio/player/c$a;->a()Lcom/xiaopeng/musicradio/player/c;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 346
    invoke-static {}, Lcom/xiaopeng/musicradio/player/c$a;->a()Lcom/xiaopeng/musicradio/player/c;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/xiaopeng/musicradio/player/c;->a(ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 352
    throw p1
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 8

    .line 313
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.musicradio.player.IPlayerClientInterface"

    .line 315
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 320
    iget-object v1, p0, Lcom/xiaopeng/musicradio/player/c$a$a;->b:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 321
    invoke-static {}, Lcom/xiaopeng/musicradio/player/c$a;->a()Lcom/xiaopeng/musicradio/player/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 322
    invoke-static {}, Lcom/xiaopeng/musicradio/player/c$a;->a()Lcom/xiaopeng/musicradio/player/c;

    move-result-object v2

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/xiaopeng/musicradio/player/c;->a(ILjava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 328
    throw p1
.end method

.method public a(ILjava/lang/String;Z)V
    .locals 5

    .line 278
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.musicradio.player.IPlayerClientInterface"

    .line 280
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 283
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/c$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 285
    invoke-static {}, Lcom/xiaopeng/musicradio/player/c$a;->a()Lcom/xiaopeng/musicradio/player/c;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 286
    invoke-static {}, Lcom/xiaopeng/musicradio/player/c$a;->a()Lcom/xiaopeng/musicradio/player/c;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/xiaopeng/musicradio/player/c;->a(ILjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 292
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/c$a$a;->b:Landroid/os/IBinder;

    return-object v0
.end method

.method public b(ILjava/lang/String;I)V
    .locals 5

    .line 240
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.musicradio.player.IPlayerClientInterface"

    .line 242
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    iget-object v1, p0, Lcom/xiaopeng/musicradio/player/c$a$a;->b:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    invoke-static {}, Lcom/xiaopeng/musicradio/player/c$a;->a()Lcom/xiaopeng/musicradio/player/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 248
    invoke-static {}, Lcom/xiaopeng/musicradio/player/c$a;->a()Lcom/xiaopeng/musicradio/player/c;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/xiaopeng/musicradio/player/c;->b(ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 254
    throw p1
.end method

.method public c(ILjava/lang/String;I)V
    .locals 5

    .line 356
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.musicradio.player.IPlayerClientInterface"

    .line 358
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    iget-object v1, p0, Lcom/xiaopeng/musicradio/player/c$a$a;->b:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 363
    invoke-static {}, Lcom/xiaopeng/musicradio/player/c$a;->a()Lcom/xiaopeng/musicradio/player/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 364
    invoke-static {}, Lcom/xiaopeng/musicradio/player/c$a;->a()Lcom/xiaopeng/musicradio/player/c;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/xiaopeng/musicradio/player/c;->c(ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 370
    throw p1
.end method

.method public d(ILjava/lang/String;I)V
    .locals 5

    .line 374
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.musicradio.player.IPlayerClientInterface"

    .line 376
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    iget-object v1, p0, Lcom/xiaopeng/musicradio/player/c$a$a;->b:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 381
    invoke-static {}, Lcom/xiaopeng/musicradio/player/c$a;->a()Lcom/xiaopeng/musicradio/player/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 382
    invoke-static {}, Lcom/xiaopeng/musicradio/player/c$a;->a()Lcom/xiaopeng/musicradio/player/c;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/xiaopeng/musicradio/player/c;->d(ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 388
    throw p1
.end method
