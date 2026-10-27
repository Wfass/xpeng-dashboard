.class public abstract Lcom/nforetek/bt/aidl/b$a;
.super Landroid/os/Binder;
.source "UiCallbackAvrcp.java"

# interfaces
.implements Lcom/nforetek/bt/aidl/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nforetek/bt/aidl/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nforetek/bt/aidl/b$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.nforetek.bt.aidl.UiCallbackAvrcp"

    .line 33
    invoke-virtual {p0, p0, v0}, Lcom/nforetek/bt/aidl/b$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/b;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.nforetek.bt.aidl.UiCallbackAvrcp"

    .line 44
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    instance-of v1, v0, Lcom/nforetek/bt/aidl/b;

    if-eqz v1, :cond_1

    .line 46
    check-cast v0, Lcom/nforetek/bt/aidl/b;

    return-object v0

    .line 48
    :cond_1
    new-instance v0, Lcom/nforetek/bt/aidl/b$a$a;

    invoke-direct {v0, p0}, Lcom/nforetek/bt/aidl/b$a$a;-><init>(Landroid/os/IBinder;)V

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

    const-string v2, "com.nforetek.bt.aidl.UiCallbackAvrcp"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 410
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 397
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 404
    invoke-virtual {p0, p1, p4, p2}, Lcom/nforetek/bt/aidl/b$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 384
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 391
    invoke-virtual {p0, p1, p4, p2}, Lcom/nforetek/bt/aidl/b$a;->a(IIB)V

    .line 392
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 375
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 378
    invoke-virtual {p0, p1}, Lcom/nforetek/bt/aidl/b$a;->g(B)V

    .line 379
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 368
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Lcom/nforetek/bt/aidl/b$a;->i()V

    .line 370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 357
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 362
    invoke-virtual {p0, p1, v2, v3}, Lcom/nforetek/bt/aidl/b$a;->c(IJ)V

    .line 363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 350
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0}, Lcom/nforetek/bt/aidl/b$a;->h()V

    .line 352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 339
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 344
    invoke-virtual {p0, p1, p2}, Lcom/nforetek/bt/aidl/b$a;->b([I[Ljava/lang/String;)V

    .line 345
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 330
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 333
    invoke-virtual {p0, p1, p2}, Lcom/nforetek/bt/aidl/b$a;->c(J)V

    .line 334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 319
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 324
    invoke-virtual {p0, p1, v2, v3}, Lcom/nforetek/bt/aidl/b$a;->b(IJ)V

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 308
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 313
    invoke-virtual {p0, p1, v2, v3}, Lcom/nforetek/bt/aidl/b$a;->a(IJ)V

    .line 314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 295
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 302
    invoke-virtual {p0, p1, p4, v2, v3}, Lcom/nforetek/bt/aidl/b$a;->a([Ljava/lang/String;IJ)V

    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 288
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lcom/nforetek/bt/aidl/b$a;->g()V

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 279
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 282
    invoke-virtual {p0, p1}, Lcom/nforetek/bt/aidl/b$a;->f(B)V

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 270
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 273
    invoke-virtual {p0, p1}, Lcom/nforetek/bt/aidl/b$a;->a(I)V

    .line 274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 259
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 264
    invoke-virtual {p0, p1, p2}, Lcom/nforetek/bt/aidl/b$a;->a(II)V

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 252
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lcom/nforetek/bt/aidl/b$a;->f()V

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 245
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/nforetek/bt/aidl/b$a;->e()V

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 234
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 239
    invoke-virtual {p0, p1, p2}, Lcom/nforetek/bt/aidl/b$a;->b([B[B)V

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 225
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 228
    invoke-virtual {p0, p1}, Lcom/nforetek/bt/aidl/b$a;->e(B)V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 216
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 219
    invoke-virtual {p0, p1}, Lcom/nforetek/bt/aidl/b$a;->d(B)V

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 207
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 210
    invoke-virtual {p0, p1, p2}, Lcom/nforetek/bt/aidl/b$a;->b(J)V

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 200
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/nforetek/bt/aidl/b$a;->d()V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 193
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/nforetek/bt/aidl/b$a;->c()V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 184
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 187
    invoke-virtual {p0, p1, p2}, Lcom/nforetek/bt/aidl/b$a;->a(J)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 175
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 178
    invoke-virtual {p0, p1}, Lcom/nforetek/bt/aidl/b$a;->c(B)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 166
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 169
    invoke-virtual {p0, p1}, Lcom/nforetek/bt/aidl/b$a;->b(B)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 157
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 160
    invoke-virtual {p0, p1}, Lcom/nforetek/bt/aidl/b$a;->a(B)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 144
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v7

    move-object v2, p0

    .line 151
    invoke-virtual/range {v2 .. v7}, Lcom/nforetek/bt/aidl/b$a;->a(JJB)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 133
    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/nforetek/bt/aidl/b$a;->a([I[Ljava/lang/String;)V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 126
    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/nforetek/bt/aidl/b$a;->b()V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 115
    :pswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 120
    invoke-virtual {p0, p1, p2}, Lcom/nforetek/bt/aidl/b$a;->a([B[B)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 104
    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/nforetek/bt/aidl/b$a;->a(B[B)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 95
    :pswitch_20
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 98
    invoke-virtual {p0, p1}, Lcom/nforetek/bt/aidl/b$a;->b([B)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 86
    :pswitch_21
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 89
    invoke-virtual {p0, p1}, Lcom/nforetek/bt/aidl/b$a;->a([B)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 73
    :pswitch_22
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 80
    invoke-virtual {p0, p1, p4, p2}, Lcom/nforetek/bt/aidl/b$a;->a(Ljava/lang/String;II)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 66
    :pswitch_23
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/nforetek/bt/aidl/b$a;->a()V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 61
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
