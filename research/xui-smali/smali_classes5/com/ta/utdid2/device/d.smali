.class public Lcom/ta/utdid2/device/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/ta/utdid2/device/d;

.field private static final a:Ljava/lang/Object;

.field private static b:Ljava/util/regex/Pattern;

.field private static e:I

.field private static final f:Ljava/lang/String;

.field private static g:Ljava/lang/String;


# instance fields
.field private a:Lcom/ta/utdid2/b/a/a;

.field private d:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/ta/utdid2/device/d;->a:Lcom/ta/utdid2/device/d;

    .line 33
    const-string v0, "[^0-9a-zA-Z=/+]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ta/utdid2/device/d;->b:Ljava/util/regex/Pattern;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/device/d;->a:Ljava/lang/Object;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".UTSystemConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Global"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ta/utdid2/device/d;->f:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    sput v0, Lcom/ta/utdid2/device/d;->e:I

    .line 54
    const-string v0, ""

    sput-object v0, Lcom/ta/utdid2/device/d;->g:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ta/utdid2/device/d;->mContext:Landroid/content/Context;

    .line 31
    iput-object v0, p0, Lcom/ta/utdid2/device/d;->d:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/ta/utdid2/device/d;->a:Lcom/ta/utdid2/b/a/a;

    .line 61
    iput-object p1, p0, Lcom/ta/utdid2/device/d;->mContext:Landroid/content/Context;

    .line 62
    invoke-static {}, Lcom/ta/a/a;->a()Lcom/ta/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ta/a/a;->a(Landroid/content/Context;)V

    .line 63
    new-instance v0, Lcom/ta/utdid2/b/a/a;

    sget-object v1, Lcom/ta/utdid2/device/d;->f:Ljava/lang/String;

    const-string v2, "Alvin2"

    invoke-direct {v0, p1, v1, v2}, Lcom/ta/utdid2/b/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ta/utdid2/device/d;->a:Lcom/ta/utdid2/b/a/a;

    .line 64
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/ta/utdid2/device/d;
    .locals 2

    .line 70
    if-eqz p0, :cond_1

    .line 71
    sget-object v0, Lcom/ta/utdid2/device/d;->a:Lcom/ta/utdid2/device/d;

    if-nez v0, :cond_1

    .line 72
    sget-object v0, Lcom/ta/utdid2/device/d;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lcom/ta/utdid2/device/d;->a:Lcom/ta/utdid2/device/d;

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Lcom/ta/utdid2/device/d;

    invoke-direct {v1, p0}, Lcom/ta/utdid2/device/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/ta/utdid2/device/d;->a:Lcom/ta/utdid2/device/d;

    .line 76
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 79
    :cond_1
    :goto_0
    sget-object p0, Lcom/ta/utdid2/device/d;->a:Lcom/ta/utdid2/device/d;

    return-object p0
.end method

.method private a()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 197
    const-string v0, "UTUtdid"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "generateUtdid"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    const-string v0, "UTUtdid"

    const-string v1, "generateUtdid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v4, 0x3e8

    div-long/2addr v1, v4

    long-to-int v1, v1

    .line 202
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    .line 203
    nop

    .line 204
    nop

    .line 205
    invoke-static {v1}, Lcom/ta/utdid2/a/a/b;->getBytes(I)[B

    move-result-object v1

    .line 206
    invoke-static {v2}, Lcom/ta/utdid2/a/a/b;->getBytes(I)[B

    move-result-object v2

    .line 207
    const/4 v4, 0x4

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 208
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 209
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 210
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 213
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ta/utdid2/device/d;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ta/utdid2/device/d;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/ta/utdid2/a/a/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    goto :goto_0

    .line 214
    :catch_0
    move-exception v1

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ta/utdid2/device/d;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    :goto_0
    invoke-static {v1}, Lcom/ta/utdid2/a/a/d;->a(Ljava/lang/String;)I

    move-result v1

    .line 218
    invoke-static {v1}, Lcom/ta/utdid2/a/a/b;->getBytes(I)[B

    move-result-object v1

    .line 219
    invoke-virtual {v0, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 220
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/ta/utdid2/device/d;->b([B)Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-static {v1}, Lcom/ta/utdid2/a/a/d;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/ta/utdid2/a/a/b;->getBytes(I)[B

    move-result-object v1

    .line 222
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 223
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static b([B)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 230
    const/16 v0, 0x2c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 234
    const-string v1, "HmacSHA1"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 235
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {v0}, Lcom/ta/a/c/e;->b([B)[B

    move-result-object v0

    invoke-virtual {v1}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 236
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 237
    invoke-virtual {v1, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    .line 238
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/ta/utdid2/a/a/a;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 1
        0x45t
        0x72t
        0x74t
        -0x21t
        0x7dt
        -0x36t
        -0x1ft
        0x56t
        -0xbt
        0xbt
        -0x4et
        -0x60t
        -0x11t
        -0x63t
        0x40t
        0x17t
        -0x5ft
        -0x7et
        -0x52t
        -0x40t
        0x71t
        0x74t
        -0x10t
        -0x67t
        0x31t
        -0x1et
        0x9t
        -0x27t
        0x21t
        -0x50t
        -0x44t
        -0x4et
        -0x75t
        0x35t
        0x1et
        -0x7at
        0x40t
        -0x68t
        0x4at
        -0x31t
        0x6at
        0x55t
        -0x26t
        -0x5dt
    .end array-data
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    .line 141
    invoke-static {p1}, Lcom/ta/utdid2/device/d;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x6

    sput v0, Lcom/ta/utdid2/device/d;->e:I

    .line 143
    const-string v0, "UTUtdid"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "utdid type:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget v3, Lcom/ta/utdid2/device/d;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->a:Lcom/ta/utdid2/b/a/a;

    sget v1, Lcom/ta/utdid2/device/d;->e:I

    invoke-virtual {v0, p1, v1}, Lcom/ta/utdid2/b/a/a;->a(Ljava/lang/String;I)V

    .line 148
    :cond_0
    return-void
.end method

.method static c(Ljava/lang/String;)Z
    .locals 3

    .line 176
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 177
    return v1

    .line 181
    :cond_0
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 184
    :cond_1
    const/16 v0, 0x18

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 185
    sget-object v0, Lcom/ta/utdid2/device/d;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 187
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 190
    :cond_2
    return v1
.end method

.method private p()Ljava/lang/String;
    .locals 3

    .line 104
    invoke-direct {p0}, Lcom/ta/utdid2/device/d;->q()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-static {v0}, Lcom/ta/utdid2/device/d;->c(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 108
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/device/d;->d:Ljava/lang/String;

    goto :goto_0

    .line 111
    :cond_0
    iput-object v0, p0, Lcom/ta/utdid2/device/d;->d:Ljava/lang/String;

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->d:Ljava/lang/String;

    return-object v0

    .line 120
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/ta/utdid2/device/d;->a()[B

    move-result-object v0

    .line 121
    if-eqz v0, :cond_2

    .line 123
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/ta/utdid2/a/a/a;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/device/d;->d:Ljava/lang/String;

    .line 125
    const/4 v0, 0x6

    sput v0, Lcom/ta/utdid2/device/d;->e:I

    .line 126
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/d;->c(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 132
    :cond_2
    goto :goto_1

    .line 130
    :catch_0
    move-exception v0

    .line 131
    const-string v1, ""

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/ta/a/c/f;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 133
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private q()Ljava/lang/String;
    .locals 6

    .line 155
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->a:Lcom/ta/utdid2/b/a/a;

    invoke-virtual {v0}, Lcom/ta/utdid2/b/a/a;->k()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-static {v0}, Lcom/ta/utdid2/device/d;->c(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/ta/utdid2/device/d;->a:Lcom/ta/utdid2/b/a/a;

    invoke-virtual {v1}, Lcom/ta/utdid2/b/a/a;->a()I

    move-result v1

    .line 158
    if-nez v1, :cond_0

    .line 159
    sput v3, Lcom/ta/utdid2/device/d;->e:I

    goto :goto_0

    .line 161
    :cond_0
    sput v1, Lcom/ta/utdid2/device/d;->e:I

    .line 163
    :goto_0
    const-string v1, "UTUtdid"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "get utdid from sp. type"

    aput-object v5, v4, v2

    sget v2, Lcom/ta/utdid2/device/d;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-static {v1, v4}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    return-object v0

    .line 167
    :cond_1
    const-string v0, "UTUtdid"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "read utdid is null"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    const-string v0, "UTUtdid"

    const-string v1, "read utdid is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method public static setExtendFactor(Ljava/lang/String;)V
    .locals 0
    .param p0, "extendFactor"    # Ljava/lang/String;

    .line 57
    sput-object p0, Lcom/ta/utdid2/device/d;->g:Ljava/lang/String;

    .line 58
    return-void
.end method

.method static setType(I)V
    .locals 0
    .param p0, "type"    # I

    .line 87
    sput p0, Lcom/ta/utdid2/device/d;->e:I

    .line 88
    return-void
.end method


# virtual methods
.method public declared-synchronized getValue()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/ta/utdid2/device/d;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 97
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/ta/utdid2/device/d;->p()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
