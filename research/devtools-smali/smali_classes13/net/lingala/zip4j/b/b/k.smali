.class public Lnet/lingala/zip4j/b/b/k;
.super Ljava/io/OutputStream;
.source "ZipOutputStream.java"


# instance fields
.field private alm:Lnet/lingala/zip4j/model/p;

.field private alp:[C

.field private alq:Lnet/lingala/zip4j/headers/d;

.field private amT:Z

.field private amU:Lnet/lingala/zip4j/b/b/d;

.field private amV:Lnet/lingala/zip4j/b/b/c;

.field private amW:Lnet/lingala/zip4j/model/i;

.field private amX:Lnet/lingala/zip4j/model/j;

.field private amY:Lnet/lingala/zip4j/headers/a;

.field private amZ:Ljava/util/zip/CRC32;

.field private amc:Lnet/lingala/zip4j/d/e;

.field private ana:J

.field private anb:Lnet/lingala/zip4j/model/k;

.field private anc:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;[CLnet/lingala/zip4j/model/k;Lnet/lingala/zip4j/model/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 35
    new-instance v0, Lnet/lingala/zip4j/headers/a;

    invoke-direct {v0}, Lnet/lingala/zip4j/headers/a;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/b/b/k;->amY:Lnet/lingala/zip4j/headers/a;

    .line 36
    new-instance v0, Lnet/lingala/zip4j/headers/d;

    invoke-direct {v0}, Lnet/lingala/zip4j/headers/d;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/b/b/k;->alq:Lnet/lingala/zip4j/headers/d;

    .line 37
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/b/b/k;->amZ:Ljava/util/zip/CRC32;

    .line 38
    new-instance v0, Lnet/lingala/zip4j/d/e;

    invoke-direct {v0}, Lnet/lingala/zip4j/d/e;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/b/b/k;->amc:Lnet/lingala/zip4j/d/e;

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/lingala/zip4j/b/b/k;->ana:J

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/lingala/zip4j/b/b/k;->amT:Z

    .line 62
    invoke-virtual {p3}, Lnet/lingala/zip4j/model/k;->tn()I

    move-result v0

    const/16 v1, 0x200

    if-lt v0, v1, :cond_0

    .line 66
    new-instance v0, Lnet/lingala/zip4j/b/b/d;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/b/b/d;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lnet/lingala/zip4j/b/b/k;->amU:Lnet/lingala/zip4j/b/b/d;

    .line 67
    iput-object p2, p0, Lnet/lingala/zip4j/b/b/k;->alp:[C

    .line 68
    iput-object p3, p0, Lnet/lingala/zip4j/b/b/k;->anb:Lnet/lingala/zip4j/model/k;

    .line 69
    iget-object p1, p0, Lnet/lingala/zip4j/b/b/k;->amU:Lnet/lingala/zip4j/b/b/d;

    invoke-direct {p0, p4, p1}, Lnet/lingala/zip4j/b/b/k;->a(Lnet/lingala/zip4j/model/p;Lnet/lingala/zip4j/b/b/d;)Lnet/lingala/zip4j/model/p;

    move-result-object p1

    iput-object p1, p0, Lnet/lingala/zip4j/b/b/k;->alm:Lnet/lingala/zip4j/model/p;

    .line 70
    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/lingala/zip4j/b/b/k;->anc:Z

    .line 71
    invoke-direct {p0}, Lnet/lingala/zip4j/b/b/k;->sH()V

    .line 72
    return-void

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Buffer size cannot be less than 512 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lnet/lingala/zip4j/b/b/j;Lnet/lingala/zip4j/model/ZipParameters;)Lnet/lingala/zip4j/b/b/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->tH()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lnet/lingala/zip4j/b/b/f;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lnet/lingala/zip4j/b/b/f;-><init>(Lnet/lingala/zip4j/b/b/j;Lnet/lingala/zip4j/model/ZipParameters;[C)V

    return-object v0

    .line 204
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/k;->alp:[C

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/lingala/zip4j/b/b/k;->alp:[C

    array-length v0, v0

    if-eqz v0, :cond_4

    .line 208
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->sR()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->apb:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne v0, v1, :cond_1

    .line 209
    new-instance v0, Lnet/lingala/zip4j/b/b/a;

    iget-object v1, p0, Lnet/lingala/zip4j/b/b/k;->alp:[C

    invoke-direct {v0, p1, p2, v1}, Lnet/lingala/zip4j/b/b/a;-><init>(Lnet/lingala/zip4j/b/b/j;Lnet/lingala/zip4j/model/ZipParameters;[C)V

    return-object v0

    .line 210
    :cond_1
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->sR()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->aoZ:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne v0, v1, :cond_2

    .line 211
    new-instance v0, Lnet/lingala/zip4j/b/b/l;

    iget-object v1, p0, Lnet/lingala/zip4j/b/b/k;->alp:[C

    invoke-direct {v0, p1, p2, v1}, Lnet/lingala/zip4j/b/b/l;-><init>(Lnet/lingala/zip4j/b/b/j;Lnet/lingala/zip4j/model/ZipParameters;[C)V

    return-object v0

    .line 212
    :cond_2
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->sR()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object p1

    sget-object p2, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->apa:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne p1, p2, :cond_3

    .line 213
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->apa:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " encryption method is not supported"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 215
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Invalid encryption method"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 205
    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "password not set"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lnet/lingala/zip4j/b/b/b;Lnet/lingala/zip4j/model/ZipParameters;)Lnet/lingala/zip4j/b/b/c;
    .locals 2

    .line 221
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->sL()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionMethod;->aoV:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    if-ne v0, v1, :cond_0

    .line 222
    new-instance v0, Lnet/lingala/zip4j/b/b/e;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->tI()Lnet/lingala/zip4j/model/enums/CompressionLevel;

    move-result-object p2

    iget-object v1, p0, Lnet/lingala/zip4j/b/b/k;->anb:Lnet/lingala/zip4j/model/k;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/k;->tn()I

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lnet/lingala/zip4j/b/b/e;-><init>(Lnet/lingala/zip4j/b/b/b;Lnet/lingala/zip4j/model/enums/CompressionLevel;I)V

    return-object v0

    .line 225
    :cond_0
    new-instance p2, Lnet/lingala/zip4j/b/b/i;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/b/b/i;-><init>(Lnet/lingala/zip4j/b/b/b;)V

    return-object p2
.end method

.method private a(Lnet/lingala/zip4j/model/p;Lnet/lingala/zip4j/b/b/d;)Lnet/lingala/zip4j/model/p;
    .locals 2

    .line 157
    if-nez p1, :cond_0

    .line 158
    new-instance p1, Lnet/lingala/zip4j/model/p;

    invoke-direct {p1}, Lnet/lingala/zip4j/model/p;-><init>()V

    .line 161
    :cond_0
    invoke-virtual {p2}, Lnet/lingala/zip4j/b/b/d;->sC()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/p;->by(Z)V

    .line 163
    invoke-virtual {p2}, Lnet/lingala/zip4j/b/b/d;->sB()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnet/lingala/zip4j/model/p;->F(J)V

    .line 166
    :cond_1
    return-object p1
.end method

.method private c(Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/k;->amY:Lnet/lingala/zip4j/headers/a;

    iget-object v1, p0, Lnet/lingala/zip4j/b/b/k;->amU:Lnet/lingala/zip4j/b/b/d;

    invoke-virtual {v1}, Lnet/lingala/zip4j/b/b/d;->sC()Z

    move-result v2

    iget-object v1, p0, Lnet/lingala/zip4j/b/b/k;->amU:Lnet/lingala/zip4j/b/b/d;

    .line 171
    invoke-virtual {v1}, Lnet/lingala/zip4j/b/b/d;->sz()I

    move-result v3

    iget-object v1, p0, Lnet/lingala/zip4j/b/b/k;->anb:Lnet/lingala/zip4j/model/k;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/k;->tm()Ljava/nio/charset/Charset;

    move-result-object v4

    iget-object v5, p0, Lnet/lingala/zip4j/b/b/k;->amc:Lnet/lingala/zip4j/d/e;

    .line 170
    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lnet/lingala/zip4j/headers/a;->a(Lnet/lingala/zip4j/model/ZipParameters;ZILjava/nio/charset/Charset;Lnet/lingala/zip4j/d/e;)Lnet/lingala/zip4j/model/i;

    move-result-object p1

    iput-object p1, p0, Lnet/lingala/zip4j/b/b/k;->amW:Lnet/lingala/zip4j/model/i;

    .line 172
    iget-object p1, p0, Lnet/lingala/zip4j/b/b/k;->amW:Lnet/lingala/zip4j/model/i;

    iget-object v0, p0, Lnet/lingala/zip4j/b/b/k;->amU:Lnet/lingala/zip4j/b/b/d;

    invoke-virtual {v0}, Lnet/lingala/zip4j/b/b/d;->sA()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnet/lingala/zip4j/model/i;->y(J)V

    .line 174
    iget-object p1, p0, Lnet/lingala/zip4j/b/b/k;->amY:Lnet/lingala/zip4j/headers/a;

    iget-object v0, p0, Lnet/lingala/zip4j/b/b/k;->amW:Lnet/lingala/zip4j/model/i;

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/headers/a;->a(Lnet/lingala/zip4j/model/i;)Lnet/lingala/zip4j/model/j;

    move-result-object p1

    iput-object p1, p0, Lnet/lingala/zip4j/b/b/k;->amX:Lnet/lingala/zip4j/model/j;

    .line 175
    iget-object p1, p0, Lnet/lingala/zip4j/b/b/k;->alq:Lnet/lingala/zip4j/headers/d;

    iget-object v0, p0, Lnet/lingala/zip4j/b/b/k;->alm:Lnet/lingala/zip4j/model/p;

    iget-object v1, p0, Lnet/lingala/zip4j/b/b/k;->amX:Lnet/lingala/zip4j/model/j;

    iget-object v2, p0, Lnet/lingala/zip4j/b/b/k;->amU:Lnet/lingala/zip4j/b/b/d;

    iget-object v3, p0, Lnet/lingala/zip4j/b/b/k;->anb:Lnet/lingala/zip4j/model/k;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/k;->tm()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lnet/lingala/zip4j/headers/d;->a(Lnet/lingala/zip4j/model/p;Lnet/lingala/zip4j/model/j;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 176
    return-void
.end method

.method private c(Lnet/lingala/zip4j/model/i;)Z
    .locals 3

    .line 238
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->isEncrypted()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->sR()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v0

    sget-object v2, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->apb:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    move v0, v1

    goto :goto_0

    .line 238
    :cond_0
    const/4 v0, 0x0

    .line 240
    :goto_0
    if-nez v0, :cond_1

    .line 241
    return v1

    .line 244
    :cond_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->sU()Lnet/lingala/zip4j/model/a;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/a;->sI()Lnet/lingala/zip4j/model/enums/AesVersion;

    move-result-object p1

    sget-object v0, Lnet/lingala/zip4j/model/enums/AesVersion;->aoH:Lnet/lingala/zip4j/model/enums/AesVersion;

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/enums/AesVersion;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private d(Lnet/lingala/zip4j/model/ZipParameters;)Lnet/lingala/zip4j/b/b/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    new-instance v0, Lnet/lingala/zip4j/b/b/j;

    iget-object v1, p0, Lnet/lingala/zip4j/b/b/k;->amU:Lnet/lingala/zip4j/b/b/d;

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/b/b/j;-><init>(Ljava/io/OutputStream;)V

    .line 194
    invoke-direct {p0, v0, p1}, Lnet/lingala/zip4j/b/b/k;->a(Lnet/lingala/zip4j/b/b/j;Lnet/lingala/zip4j/model/ZipParameters;)Lnet/lingala/zip4j/b/b/b;

    move-result-object v0

    .line 195
    invoke-direct {p0, v0, p1}, Lnet/lingala/zip4j/b/b/k;->a(Lnet/lingala/zip4j/b/b/b;Lnet/lingala/zip4j/model/ZipParameters;)Lnet/lingala/zip4j/b/b/c;

    move-result-object p1

    return-object p1
.end method

.method private e(Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 4

    .line 229
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->sL()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionMethod;->aoU:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    if-ne v0, v1, :cond_1

    .line 230
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tQ()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 231
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tO()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lingala/zip4j/d/c;->fz(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tR()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "uncompressed size should be set for zip entries of compression type store"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 235
    :cond_1
    :goto_0
    return-void
.end method

.method private reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/lingala/zip4j/b/b/k;->ana:J

    .line 180
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/k;->amZ:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 181
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/k;->amV:Lnet/lingala/zip4j/b/b/c;

    invoke-virtual {v0}, Lnet/lingala/zip4j/b/b/c;->close()V

    .line 182
    return-void
.end method

.method private sG()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    iget-boolean v0, p0, Lnet/lingala/zip4j/b/b/k;->anc:Z

    if-nez v0, :cond_0

    .line 154
    return-void

    .line 152
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private sH()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/k;->amU:Lnet/lingala/zip4j/b/b/d;

    invoke-virtual {v0}, Lnet/lingala/zip4j/b/b/d;->sC()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/k;->amc:Lnet/lingala/zip4j/d/e;

    iget-object v1, p0, Lnet/lingala/zip4j/b/b/k;->amU:Lnet/lingala/zip4j/b/b/d;

    sget-object v2, Lnet/lingala/zip4j/headers/HeaderSignature;->aml:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v2}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/d/e;->b(Ljava/io/OutputStream;I)V

    .line 190
    return-void
.end method


# virtual methods
.method public b(Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/b/b/k;->e(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 77
    new-instance v0, Lnet/lingala/zip4j/model/ZipParameters;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/model/ZipParameters;-><init>(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 78
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tO()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/lingala/zip4j/d/c;->fz(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipParameters;->bB(Z)V

    .line 80
    sget-object p1, Lnet/lingala/zip4j/model/enums/CompressionMethod;->aoU:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/model/ZipParameters;->a(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V

    .line 81
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipParameters;->bA(Z)V

    .line 83
    :cond_0
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/b/b/k;->c(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 88
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/b/b/k;->d(Lnet/lingala/zip4j/model/ZipParameters;)Lnet/lingala/zip4j/b/b/c;

    move-result-object p1

    iput-object p1, p0, Lnet/lingala/zip4j/b/b/k;->amV:Lnet/lingala/zip4j/b/b/c;

    .line 89
    iput-boolean v1, p0, Lnet/lingala/zip4j/b/b/k;->amT:Z

    .line 90
    return-void
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-boolean v0, p0, Lnet/lingala/zip4j/b/b/k;->amT:Z

    if-nez v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lnet/lingala/zip4j/b/b/k;->sF()Lnet/lingala/zip4j/model/i;

    .line 139
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/k;->alm:Lnet/lingala/zip4j/model/p;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/p;->tB()Lnet/lingala/zip4j/model/f;

    move-result-object v0

    iget-object v1, p0, Lnet/lingala/zip4j/b/b/k;->amU:Lnet/lingala/zip4j/b/b/d;

    invoke-virtual {v1}, Lnet/lingala/zip4j/b/b/d;->sD()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/f;->v(J)V

    .line 140
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/k;->alq:Lnet/lingala/zip4j/headers/d;

    iget-object v1, p0, Lnet/lingala/zip4j/b/b/k;->alm:Lnet/lingala/zip4j/model/p;

    iget-object v2, p0, Lnet/lingala/zip4j/b/b/k;->amU:Lnet/lingala/zip4j/b/b/d;

    iget-object v3, p0, Lnet/lingala/zip4j/b/b/k;->anb:Lnet/lingala/zip4j/model/k;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/k;->tm()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lnet/lingala/zip4j/headers/d;->a(Lnet/lingala/zip4j/model/p;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 141
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/k;->amU:Lnet/lingala/zip4j/b/b/d;

    invoke-virtual {v0}, Lnet/lingala/zip4j/b/b/d;->close()V

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/lingala/zip4j/b/b/k;->anc:Z

    .line 143
    return-void
.end method

.method public sF()Lnet/lingala/zip4j/model/i;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/k;->amV:Lnet/lingala/zip4j/b/b/c;

    invoke-virtual {v0}, Lnet/lingala/zip4j/b/b/c;->closeEntry()V

    .line 110
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/k;->amV:Lnet/lingala/zip4j/b/b/c;

    invoke-virtual {v0}, Lnet/lingala/zip4j/b/b/c;->getCompressedSize()J

    move-result-wide v0

    .line 111
    iget-object v2, p0, Lnet/lingala/zip4j/b/b/k;->amW:Lnet/lingala/zip4j/model/i;

    invoke-virtual {v2, v0, v1}, Lnet/lingala/zip4j/model/i;->setCompressedSize(J)V

    .line 112
    iget-object v2, p0, Lnet/lingala/zip4j/b/b/k;->amX:Lnet/lingala/zip4j/model/j;

    invoke-virtual {v2, v0, v1}, Lnet/lingala/zip4j/model/j;->setCompressedSize(J)V

    .line 114
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/k;->amW:Lnet/lingala/zip4j/model/i;

    iget-wide v1, p0, Lnet/lingala/zip4j/b/b/k;->ana:J

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/i;->u(J)V

    .line 115
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/k;->amX:Lnet/lingala/zip4j/model/j;

    iget-wide v1, p0, Lnet/lingala/zip4j/b/b/k;->ana:J

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/j;->u(J)V

    .line 117
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/k;->amW:Lnet/lingala/zip4j/model/i;

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/b/b/k;->c(Lnet/lingala/zip4j/model/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/k;->amW:Lnet/lingala/zip4j/model/i;

    iget-object v1, p0, Lnet/lingala/zip4j/b/b/k;->amZ:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/i;->setCrc(J)V

    .line 119
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/k;->amX:Lnet/lingala/zip4j/model/j;

    iget-object v1, p0, Lnet/lingala/zip4j/b/b/k;->amZ:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/j;->setCrc(J)V

    .line 122
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/k;->alm:Lnet/lingala/zip4j/model/p;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/p;->tz()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lnet/lingala/zip4j/b/b/k;->amX:Lnet/lingala/zip4j/model/j;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/k;->alm:Lnet/lingala/zip4j/model/p;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/p;->tA()Lnet/lingala/zip4j/model/d;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/d;->sX()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lnet/lingala/zip4j/b/b/k;->amW:Lnet/lingala/zip4j/model/i;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/k;->amX:Lnet/lingala/zip4j/model/j;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/j;->sS()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/k;->alq:Lnet/lingala/zip4j/headers/d;

    iget-object v1, p0, Lnet/lingala/zip4j/b/b/k;->amX:Lnet/lingala/zip4j/model/j;

    iget-object v2, p0, Lnet/lingala/zip4j/b/b/k;->amU:Lnet/lingala/zip4j/b/b/d;

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/headers/d;->a(Lnet/lingala/zip4j/model/j;Ljava/io/OutputStream;)V

    .line 128
    :cond_1
    invoke-direct {p0}, Lnet/lingala/zip4j/b/b/k;->reset()V

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/lingala/zip4j/b/b/k;->amT:Z

    .line 130
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/k;->amW:Lnet/lingala/zip4j/model/i;

    return-object v0
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/b/b/k;->write([B)V

    .line 94
    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/lingala/zip4j/b/b/k;->write([BII)V

    .line 98
    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Lnet/lingala/zip4j/b/b/k;->sG()V

    .line 102
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/k;->amZ:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 103
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/k;->amV:Lnet/lingala/zip4j/b/b/c;

    invoke-virtual {v0, p1, p2, p3}, Lnet/lingala/zip4j/b/b/c;->write([BII)V

    .line 104
    iget-wide p1, p0, Lnet/lingala/zip4j/b/b/k;->ana:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lnet/lingala/zip4j/b/b/k;->ana:J

    .line 105
    return-void
.end method
