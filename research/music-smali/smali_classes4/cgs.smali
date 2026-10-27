.class public abstract Lcgs;
.super Ljava/lang/Object;
.source "MqttWireMessage.java"


# static fields
.field private static final c:[Ljava/lang/String;


# instance fields
.field protected a:I

.field protected b:Z

.field private d:B


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const-string v0, "reserved"

    const-string v1, "CONNECT"

    const-string v2, "CONNACK"

    const-string v3, "PUBLISH"

    const-string v4, "PUBACK"

    const-string v5, "PUBREC"

    const-string v6, "PUBREL"

    const-string v7, "PUBCOMP"

    const-string v8, "SUBSCRIBE"

    const-string v9, "SUBACK"

    const-string v10, "UNSUBSCRIBE"

    const-string v11, "UNSUBACK"

    const-string v12, "PINGREQ"

    const-string v13, "PINGRESP"

    const-string v14, "DISCONNECT"

    .line 54
    filled-new-array/range {v0 .. v14}, [Ljava/lang/String;

    move-result-object v0

    .line 52
    sput-object v0, Lcgs;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(B)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcgs;->b:Z

    .line 65
    iput-byte p1, p0, Lcgs;->d:B

    .line 68
    iput v0, p0, Lcgs;->a:I

    return-void
.end method

.method public static a(Lceq;)Lcgs;
    .locals 8

    .line 148
    invoke-interface {p0}, Lceq;->d()[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 153
    new-array v0, v0, [B

    :cond_0
    move-object v5, v0

    .line 155
    new-instance v0, Lcgt;

    .line 156
    invoke-interface {p0}, Lceq;->a()[B

    move-result-object v2

    .line 157
    invoke-interface {p0}, Lceq;->c()I

    move-result v3

    .line 158
    invoke-interface {p0}, Lceq;->b()I

    move-result v4

    .line 160
    invoke-interface {p0}, Lceq;->f()I

    move-result v6

    .line 161
    invoke-interface {p0}, Lceq;->x_()I

    move-result v7

    move-object v1, v0

    .line 155
    invoke-direct/range {v1 .. v7}, Lcgt;-><init>([BII[BII)V

    .line 162
    invoke-static {v0}, Lcgs;->a(Ljava/io/InputStream;)Lcgs;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/io/InputStream;)Lcgs;
    .locals 9

    .line 172
    :try_start_0
    new-instance v0, Lcfy;

    invoke-direct {v0, p0}, Lcfy;-><init>(Ljava/io/InputStream;)V

    .line 173
    new-instance p0, Ljava/io/DataInputStream;

    invoke-direct {p0, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 174
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    shr-int/lit8 v2, v1, 0x4

    int-to-byte v2, v2

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    .line 177
    invoke-static {p0}, Lcgs;->a(Ljava/io/DataInputStream;)Lcgu;

    move-result-object v3

    invoke-virtual {v3}, Lcgu;->a()J

    move-result-wide v3

    .line 178
    invoke-virtual {v0}, Lcfy;->a()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v5, v3

    .line 181
    invoke-virtual {v0}, Lcfy;->a()I

    move-result v0

    int-to-long v3, v0

    sub-long/2addr v5, v3

    const/4 v0, 0x0

    .line 182
    new-array v3, v0, [B

    const-wide/16 v7, 0x0

    cmp-long v4, v5, v7

    if-lez v4, :cond_0

    long-to-int v3, v5

    .line 185
    new-array v3, v3, [B

    .line 186
    array-length v4, v3

    invoke-virtual {p0, v3, v0, v4}, Ljava/io/DataInputStream;->readFully([BII)V

    :cond_0
    const/4 p0, 0x1

    if-ne v2, p0, :cond_1

    .line 190
    new-instance p0, Lcgb;

    invoke-direct {p0, v1, v3}, Lcgb;-><init>(B[B)V

    goto/16 :goto_0

    :cond_1
    const/4 p0, 0x3

    if-ne v2, p0, :cond_2

    .line 193
    new-instance p0, Lcgm;

    invoke-direct {p0, v1, v3}, Lcgm;-><init>(B[B)V

    goto/16 :goto_0

    :cond_2
    const/4 p0, 0x4

    if-ne v2, p0, :cond_3

    .line 196
    new-instance p0, Lcgi;

    invoke-direct {p0, v1, v3}, Lcgi;-><init>(B[B)V

    goto/16 :goto_0

    :cond_3
    const/4 p0, 0x7

    if-ne v2, p0, :cond_4

    .line 199
    new-instance p0, Lcgj;

    invoke-direct {p0, v1, v3}, Lcgj;-><init>(B[B)V

    goto :goto_0

    :cond_4
    const/4 p0, 0x2

    if-ne v2, p0, :cond_5

    .line 202
    new-instance p0, Lcga;

    invoke-direct {p0, v1, v3}, Lcga;-><init>(B[B)V

    goto :goto_0

    :cond_5
    const/16 p0, 0xc

    if-ne v2, p0, :cond_6

    .line 205
    new-instance p0, Lcgg;

    invoke-direct {p0, v1, v3}, Lcgg;-><init>(B[B)V

    goto :goto_0

    :cond_6
    const/16 p0, 0xd

    if-ne v2, p0, :cond_7

    .line 208
    new-instance p0, Lcgh;

    invoke-direct {p0, v1, v3}, Lcgh;-><init>(B[B)V

    goto :goto_0

    :cond_7
    const/16 p0, 0x8

    if-ne v2, p0, :cond_8

    .line 211
    new-instance p0, Lcgp;

    invoke-direct {p0, v1, v3}, Lcgp;-><init>(B[B)V

    goto :goto_0

    :cond_8
    const/16 p0, 0x9

    if-ne v2, p0, :cond_9

    .line 214
    new-instance p0, Lcgo;

    invoke-direct {p0, v1, v3}, Lcgo;-><init>(B[B)V

    goto :goto_0

    :cond_9
    const/16 p0, 0xa

    if-ne v2, p0, :cond_a

    .line 217
    new-instance p0, Lcgr;

    invoke-direct {p0, v1, v3}, Lcgr;-><init>(B[B)V

    goto :goto_0

    :cond_a
    const/16 p0, 0xb

    if-ne v2, p0, :cond_b

    .line 220
    new-instance p0, Lcgq;

    invoke-direct {p0, v1, v3}, Lcgq;-><init>(B[B)V

    goto :goto_0

    :cond_b
    const/4 p0, 0x6

    if-ne v2, p0, :cond_c

    .line 223
    new-instance p0, Lcgl;

    invoke-direct {p0, v1, v3}, Lcgl;-><init>(B[B)V

    goto :goto_0

    :cond_c
    const/4 v0, 0x5

    if-ne v2, v0, :cond_d

    .line 226
    new-instance p0, Lcgk;

    invoke-direct {p0, v1, v3}, Lcgk;-><init>(B[B)V

    goto :goto_0

    :cond_d
    const/16 v0, 0xe

    if-ne v2, v0, :cond_e

    .line 229
    new-instance p0, Lcgc;

    invoke-direct {p0, v1, v3}, Lcgc;-><init>(B[B)V

    :goto_0
    return-object p0

    .line 232
    :cond_e
    invoke-static {p0}, Lcfe;->a(I)Lceo;

    move-result-object p0

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 236
    new-instance v0, Lceo;

    invoke-direct {v0, p0}, Lceo;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a([B)Lcgs;
    .locals 1

    .line 166
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 167
    invoke-static {v0}, Lcgs;->a(Ljava/io/InputStream;)Lcgs;

    move-result-object p0

    return-object p0
.end method

.method protected static a(Ljava/io/DataInputStream;)Lcgu;
    .locals 8

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move v4, v0

    .line 271
    :cond_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    add-int/2addr v3, v0

    and-int/lit8 v6, v5, 0x7f

    mul-int/2addr v6, v4

    int-to-long v6, v6

    add-long/2addr v1, v6

    mul-int/lit16 v4, v4, 0x80

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_0

    .line 277
    new-instance p0, Lcgu;

    invoke-direct {p0, v1, v2, v3}, Lcgu;-><init>(JI)V

    return-object p0
.end method

.method protected static a(J)[B
    .locals 6

    .line 243
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :cond_0
    const-wide/16 v2, 0x80

    .line 246
    rem-long v4, p0, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 247
    div-long/2addr p0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-lez v2, :cond_1

    or-int/lit16 v3, v4, 0x80

    int-to-byte v4, v3

    .line 251
    :cond_1
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    if-lez v2, :cond_2

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 255
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected abstract A_()[B
.end method

.method public B_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 106
    iput p1, p0, Lcgs;->a:I

    return-void
.end method

.method protected a(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "UTF-8"

    .line 314
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 315
    array-length v0, p2

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 316
    array-length v1, p2

    ushr-int/lit8 v1, v1, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 319
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 320
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 321
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 327
    new-instance p2, Lceo;

    invoke-direct {p2, p1}, Lceo;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 325
    new-instance p2, Lceo;

    invoke-direct {p2, p1}, Lceo;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public a(Z)V
    .locals 0

    .line 298
    iput-boolean p1, p0, Lcgs;->b:Z

    return-void
.end method

.method protected b(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 2

    .line 344
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 346
    new-array v0, v0, [B

    .line 347
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 349
    new-instance p1, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 351
    new-instance v0, Lceo;

    invoke-direct {v0, p1}, Lceo;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcgs;->j()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()B
    .locals 1

    .line 91
    iget-byte v0, p0, Lcgs;->d:B

    return v0
.end method

.method public j()I
    .locals 1

    .line 98
    iget v0, p0, Lcgs;->a:I

    return v0
.end method

.method public k()[B
    .locals 7

    .line 121
    :try_start_0
    invoke-virtual {p0}, Lcgs;->i()B

    move-result v0

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0x4

    invoke-virtual {p0}, Lcgs;->y_()B

    move-result v1

    and-int/lit8 v1, v1, 0xf

    xor-int/2addr v0, v1

    .line 122
    invoke-virtual {p0}, Lcgs;->A_()[B

    move-result-object v1

    .line 123
    array-length v2, v1

    invoke-virtual {p0}, Lcgs;->z_()[B

    move-result-object v3

    array-length v3, v3

    add-int/2addr v2, v3

    .line 125
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 126
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 127
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    int-to-long v5, v2

    .line 128
    invoke-static {v5, v6}, Lcgs;->a(J)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 129
    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 130
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 131
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 133
    new-instance v1, Lceo;

    invoke-direct {v1, v0}, Lceo;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected l()[B
    .locals 3

    .line 282
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 283
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 284
    iget v2, p0, Lcgs;->a:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 285
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 286
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 289
    new-instance v1, Lceo;

    invoke-direct {v1, v0}, Lceo;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 356
    sget-object v0, Lcgs;->c:[Ljava/lang/String;

    iget-byte v1, p0, Lcgs;->d:B

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected abstract y_()B
.end method

.method public z_()[B
    .locals 1

    const/4 v0, 0x0

    .line 84
    new-array v0, v0, [B

    return-object v0
.end method
