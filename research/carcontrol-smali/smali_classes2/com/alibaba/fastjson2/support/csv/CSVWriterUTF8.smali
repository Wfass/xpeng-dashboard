.class final Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;
.super Lcom/alibaba/fastjson2/support/csv/CSVWriter;
.source "CSVWriterUTF8.java"


# static fields
.field static final BYTES_FALSE:[B

.field static final BYTES_LONG_MIN:[B

.field static final BYTES_TRUE:[B


# instance fields
.field final bytes:[B

.field final charset:Ljava/nio/charset/Charset;

.field final out:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "true"

    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->BYTES_TRUE:[B

    const-string v0, "false"

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->BYTES_FALSE:[B

    const-string v0, "-9223372036854775808"

    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->BYTES_LONG_MIN:[B

    return-void
.end method

.method varargs constructor <init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/time/ZoneId;[Lcom/alibaba/fastjson2/support/csv/CSVWriter$Feature;)V
    .locals 0

    .line 34
    invoke-direct {p0, p3, p4}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;-><init>(Ljava/time/ZoneId;[Lcom/alibaba/fastjson2/support/csv/CSVWriter$Feature;)V

    .line 35
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->out:Ljava/io/OutputStream;

    .line 36
    iput-object p2, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->charset:Ljava/nio/charset/Charset;

    const/high16 p1, 0x10000

    new-array p1, p1, [B

    .line 37
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->bytes:[B

    return-void
.end method

.method private writeRaw([B)V
    .locals 4

    .line 246
    array-length v0, p1

    iget v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->bytes:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    .line 247
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    array-length v2, p1

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->flush()V

    .line 251
    array-length v0, p1

    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->bytes:[B

    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 252
    array-length v0, p1

    invoke-virtual {p0, p1, v3, v0}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->writeDirect([BII)V

    goto :goto_0

    .line 254
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    array-length v2, p1

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    if-lez v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->flush()V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 4

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 159
    iput v3, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    .line 160
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 162
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo v2, "write csv error"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 300
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->out:Ljava/io/OutputStream;

    instance-of v0, v0, Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->flush()V

    .line 302
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->out:Ljava/io/OutputStream;

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 303
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    .line 305
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeBoolean(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 70
    sget-object p1, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->BYTES_TRUE:[B

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->BYTES_FALSE:[B

    .line 71
    :goto_0
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->writeRaw([B)V

    return-void
.end method

.method public writeComma()V
    .locals 3

    .line 49
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->bytes:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->flush()V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    return-void
.end method

.method public writeDateTime19(IIIIII)V
    .locals 7

    .line 99
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    add-int/lit8 v0, v0, 0x14

    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->bytes:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->flush()V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->bytes:[B

    .line 104
    iget v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    .line 105
    invoke-static {v0, v1, p1, p2, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalDate([BIIII)I

    move-result p1

    const/16 p2, 0x20

    .line 106
    aput-byte p2, v0, p1

    .line 107
    sget-object p2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    sget-object p3, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS:[S

    aget-short p3, p3, p4

    invoke-virtual {p2, v0, v1, v2, p3}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    add-int/lit8 p2, p1, 0x3

    const/16 p3, 0x3a

    .line 108
    aput-byte p3, v0, p2

    .line 109
    sget-object p2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v1, v3

    const-wide/16 v5, 0x4

    add-long/2addr v1, v5

    sget-object p4, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS:[S

    aget-short p4, p4, p5

    invoke-virtual {p2, v0, v1, v2, p4}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    add-int/lit8 p2, p1, 0x6

    .line 110
    aput-byte p3, v0, p2

    .line 111
    sget-object p2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide p3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr p3, v3

    const-wide/16 v1, 0x7

    add-long/2addr p3, v1

    sget-object p5, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS:[S

    aget-short p5, p5, p6

    invoke-virtual {p2, v0, p3, p4, p5}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    add-int/lit8 p1, p1, 0x9

    .line 112
    iput p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    return-void
.end method

.method public writeDateYYYMMDD10(III)V
    .locals 2

    .line 84
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    add-int/lit8 v0, v0, 0xb

    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->bytes:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->flush()V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    invoke-static {v0, v1, p1, p2, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalDate([BIIII)I

    move-result p1

    iput p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    return-void
.end method

.method public writeDecimal(JI)V
    .locals 2

    if-nez p3, :cond_0

    .line 228
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->writeInt64(J)V

    return-void

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-eqz v0, :cond_3

    const/16 v0, 0x14

    if-ge p3, v0, :cond_3

    if-gez p3, :cond_1

    goto :goto_0

    .line 237
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    add-int/lit8 v0, v0, 0x18

    .line 238
    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->bytes:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_2

    .line 239
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->flush()V

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    invoke-static {v0, v1, p1, p2, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->writeDecimal([BIJI)I

    move-result p1

    iput p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    return-void

    .line 233
    :cond_3
    :goto_0
    invoke-static {p1, p2, p3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->writeDecimal(Ljava/math/BigDecimal;)V

    return-void
.end method

.method public writeDecimal(Ljava/math/BigDecimal;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 220
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    .line 221
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 222
    iget-object v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->bytes:[B

    iget v3, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    invoke-virtual {p1, v1, v0, v2, v3}, Ljava/lang/String;->getBytes(II[BI)V

    .line 223
    iget p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    return-void
.end method

.method writeDirect([BII)V
    .locals 1

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 44
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo p3, "write csv error"

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public writeDouble(D)V
    .locals 3

    .line 137
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    add-int/lit8 v0, v0, 0x18

    .line 138
    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->bytes:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->flush()V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    const/4 v2, 0x1

    invoke-static {p1, p2, v0, v1, v2}, Lcom/alibaba/fastjson2/util/DoubleToDecimal;->toString(D[BIZ)I

    move-result p1

    .line 143
    iget p2, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    return-void
.end method

.method public writeFloat(F)V
    .locals 3

    .line 147
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    add-int/lit8 v0, v0, 0xf

    .line 148
    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->bytes:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->flush()V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/alibaba/fastjson2/util/DoubleToDecimal;->toString(F[BIZ)I

    move-result p1

    .line 153
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    return-void
.end method

.method public writeInt32(I)V
    .locals 2

    .line 128
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    add-int/lit8 v0, v0, 0xb

    .line 129
    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->bytes:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->flush()V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([BII)I

    move-result p1

    iput p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    return-void
.end method

.method public writeInt64(J)V
    .locals 2

    .line 75
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    add-int/lit8 v0, v0, 0x15

    .line 76
    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->bytes:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->flush()V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    invoke-static {v0, v1, p1, p2}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt64([BIJ)I

    move-result p1

    iput p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    return-void
.end method

.method public writeLine()V
    .locals 3

    .line 63
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->bytes:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->flush()V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    return-void
.end method

.method public writeLocalDateTime(Ljava/time/LocalDateTime;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v2

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v3

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalDate([BIIII)I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    .line 286
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    .line 287
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalTime([BILjava/time/LocalTime;)I

    move-result p1

    iput p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    return-void
.end method

.method protected writeQuote()V
    .locals 3

    .line 56
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->bytes:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->flush()V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    return-void
.end method

.method protected writeRaw(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 261
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 266
    array-length v0, p1

    iget v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->bytes:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    .line 267
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    array-length v2, p1

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    goto :goto_0

    .line 270
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->flush()V

    .line 271
    array-length v0, p1

    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->bytes:[B

    array-length v2, v1

    if-lt v0, v2, :cond_2

    .line 272
    array-length v0, p1

    invoke-virtual {p0, p1, v3, v0}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->writeDirect([BII)V

    goto :goto_0

    .line 274
    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    array-length v2, p1

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    :cond_3
    :goto_0
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 2

    .line 117
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CODER:Ljava/util/function/ToIntFunction;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_VALUE:Ljava/util/function/Function;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CODER:Ljava/util/function/ToIntFunction;

    .line 119
    invoke-interface {v0, p1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->LATIN1:Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    if-ne v0, v1, :cond_0

    .line 120
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_VALUE:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 124
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->writeString([B)V

    return-void
.end method

.method public writeString([B)V
    .locals 8

    if-eqz p1, :cond_b

    .line 167
    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 171
    :cond_0
    array-length v0, p1

    const/4 v0, 0x0

    .line 175
    aget-byte v1, p1, v0

    const/16 v2, 0x22

    if-ne v1, v2, :cond_2

    .line 176
    array-length v1, p1

    move v3, v0

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_6

    aget-byte v5, p1, v3

    if-ne v5, v2, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 182
    :cond_2
    array-length v1, p1

    move v3, v0

    move v4, v3

    move v5, v4

    :goto_1
    if-ge v3, v1, :cond_5

    aget-byte v6, p1, v3

    const/16 v7, 0x2c

    if-ne v6, v7, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    if-ne v6, v2, :cond_4

    add-int/lit8 v4, v4, 0x1

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    if-nez v5, :cond_6

    move v4, v0

    :cond_6
    if-nez v4, :cond_7

    .line 195
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->writeRaw([B)V

    return-void

    .line 199
    :cond_7
    iget v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    add-int/lit8 v1, v1, 0x2

    array-length v3, p1

    add-int/2addr v1, v3

    add-int/2addr v1, v4

    iget-object v3, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->bytes:[B

    array-length v3, v3

    if-lt v1, v3, :cond_8

    .line 200
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->flush()V

    .line 203
    :cond_8
    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->bytes:[B

    iget v3, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    aput-byte v2, v1, v3

    .line 204
    array-length v1, p1

    :goto_3
    if-ge v0, v1, :cond_a

    aget-byte v3, p1, v0

    if-ne v3, v2, :cond_9

    .line 206
    iget-object v3, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->bytes:[B

    iget v4, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    aput-byte v2, v3, v4

    .line 207
    iget-object v3, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->bytes:[B

    iget v4, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    aput-byte v2, v3, v4

    goto :goto_4

    .line 209
    :cond_9
    iget-object v4, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->bytes:[B

    iget v5, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    aput-byte v3, v4, v5

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 212
    :cond_a
    iget-object p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->bytes:[B

    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;->off:I

    aput-byte v2, p1, v0

    :cond_b
    :goto_5
    return-void
.end method
