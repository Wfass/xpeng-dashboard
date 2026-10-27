.class public abstract Lcom/xiaopeng/musicradio/player/e$a;
.super Landroid/os/Binder;
.source "IPlayerServiceInterface.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/player/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/player/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/player/e$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 106
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.musicradio.player.IPlayerServiceInterface"

    .line 107
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/musicradio/player/e$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a()Lcom/xiaopeng/musicradio/player/e;
    .locals 1

    .line 983
    sget-object v0, Lcom/xiaopeng/musicradio/player/e$a$a;->a:Lcom/xiaopeng/musicradio/player/e;

    return-object v0
.end method

.method public static a(Landroid/os/IBinder;)Lcom/xiaopeng/musicradio/player/e;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.musicradio.player.IPlayerServiceInterface"

    .line 118
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 119
    instance-of v1, v0, Lcom/xiaopeng/musicradio/player/e;

    if-eqz v1, :cond_1

    .line 120
    check-cast v0, Lcom/xiaopeng/musicradio/player/e;

    return-object v0

    .line 122
    :cond_1
    new-instance v0, Lcom/xiaopeng/musicradio/player/e$a$a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/player/e$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.xiaopeng.musicradio.player.IPlayerServiceInterface"

    if-eq p1, v0, :cond_7

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 414
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 405
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/player/c$a;->a(Landroid/os/IBinder;)Lcom/xiaopeng/musicradio/player/c;

    move-result-object p1

    .line 408
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/player/e$a;->a(Lcom/xiaopeng/musicradio/player/c;)V

    .line 409
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 395
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 398
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/player/e$a;->m(I)I

    move-result p1

    .line 399
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 384
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 389
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/player/e$a;->c(ILjava/lang/String;)V

    .line 390
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 374
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 377
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/player/e$a;->l(I)I

    move-result p1

    .line 378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 364
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 367
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/player/e$a;->k(I)I

    move-result p1

    .line 368
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 354
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 357
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/player/e$a;->j(I)Z

    move-result p1

    .line 358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 344
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 347
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/player/e$a;->i(I)I

    move-result p1

    .line 348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 334
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 337
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/player/e$a;->h(I)I

    move-result p1

    .line 338
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 324
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 327
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/player/e$a;->g(I)Z

    move-result p1

    .line 328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 312
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 317
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/player/e$a;->b(ILjava/lang/String;)Z

    move-result p1

    .line 318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 301
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    .line 306
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/player/e$a;->b(IF)V

    .line 307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 290
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    .line 295
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/player/e$a;->a(IF)V

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 274
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_0

    .line 279
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 284
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/player/e$a;->a(ILandroid/os/Bundle;)V

    .line 285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 265
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 268
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/player/e$a;->f(I)V

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 256
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 259
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/player/e$a;->e(I)V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 247
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 250
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/player/e$a;->d(I)V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 234
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p4

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    .line 241
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/musicradio/player/e$a;->a(IFF)V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 223
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 228
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/player/e$a;->a(II)V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 206
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v0

    .line 214
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v6, v1

    goto :goto_2

    :cond_2
    move v6, v0

    .line 216
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v7, v1

    goto :goto_3

    :cond_3
    move v7, v0

    :goto_3
    move-object v2, p0

    .line 217
    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/musicradio/player/e$a;->a(ILjava/lang/String;ZZZ)V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 191
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    move v2, v0

    .line 199
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_5

    move v0, v1

    .line 200
    :cond_5
    invoke-virtual {p0, p1, p4, v2, v0}, Lcom/xiaopeng/musicradio/player/e$a;->a(ILjava/lang/String;ZZ)V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 178
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_6

    move v0, v1

    .line 185
    :cond_6
    invoke-virtual {p0, p1, p4, v0}, Lcom/xiaopeng/musicradio/player/e$a;->a(ILjava/lang/String;Z)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 167
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 172
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/player/e$a;->a(ILjava/lang/String;)V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 158
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 161
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/player/e$a;->c(I)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 149
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 152
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/player/e$a;->b(I)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 140
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 143
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/player/e$a;->a(I)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 135
    :cond_7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
