.class final Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;
.super Lcom/alibaba/fastjson2/support/csv/CSVWriter;
.source "CSVWriterUTF16.java"


# static fields
.field static final BYTES_FALSE:[C

.field static final BYTES_TRUE:[C


# instance fields
.field final chars:[C

.field final out:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "true"

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->BYTES_TRUE:[C

    const-string v0, "false"

    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->BYTES_FALSE:[C

    return-void
.end method

.method varargs constructor <init>(Ljava/io/Writer;Ljava/time/ZoneId;[Lcom/alibaba/fastjson2/support/csv/CSVWriter$Feature;)V
    .locals 0

    .line 32
    invoke-direct {p0, p2, p3}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;-><init>(Ljava/time/ZoneId;[Lcom/alibaba/fastjson2/support/csv/CSVWriter$Feature;)V

    .line 33
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->out:Ljava/io/Writer;

    const/high16 p1, 0x10000

    new-array p1, p1, [C

    .line 34
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->chars:[C

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

    .line 281
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    if-lez v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->flush()V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    return-void
.end method

.method public flush()V
    .locals 4

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->out:Ljava/io/Writer;

    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->chars:[C

    iget v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    .line 196
    iput v3, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    .line 197
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 199
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo v2, "write csv error"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->out:Ljava/io/Writer;

    instance-of v0, v0, Ljava/io/StringWriter;

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->flush()V

    .line 291
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 293
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeBoolean(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 67
    sget-object p1, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->BYTES_TRUE:[C

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->BYTES_FALSE:[C

    .line 68
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->writeRaw([C)V

    return-void
.end method

.method public writeComma()V
    .locals 3

    .line 46
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->chars:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->flush()V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->chars:[C

    iget v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    const/16 v2, 0x2c

    aput-char v2, v0, v1

    return-void
.end method

.method public writeDateTime19(IIIIII)V
    .locals 5

    .line 95
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    add-int/lit8 v0, v0, 0x14

    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->chars:[C

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->flush()V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->chars:[C

    .line 100
    iget v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    .line 101
    invoke-static {v0, v1, p1, p2, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalDate([CIIII)I

    move-result p1

    const/16 p2, 0x20

    .line 102
    aput-char p2, v0, p1

    .line 103
    sget-object p2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    add-int/lit8 p3, p1, 0x1

    shl-int/lit8 p3, p3, 0x1

    int-to-long v3, p3

    add-long/2addr v1, v3

    sget-object p3, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    aget p3, p3, p4

    invoke-virtual {p2, v0, v1, v2, p3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 p2, p1, 0x3

    const/16 p3, 0x3a

    .line 104
    aput-char p3, v0, p2

    .line 105
    sget-object p2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    add-int/lit8 p4, p1, 0x4

    shl-int/lit8 p4, p4, 0x1

    int-to-long v3, p4

    add-long/2addr v1, v3

    sget-object p4, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    aget p4, p4, p5

    invoke-virtual {p2, v0, v1, v2, p4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 p2, p1, 0x6

    .line 106
    aput-char p3, v0, p2

    .line 107
    sget-object p2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide p3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    add-int/lit8 p5, p1, 0x7

    shl-int/lit8 p5, p5, 0x1

    int-to-long v1, p5

    add-long/2addr p3, v1

    sget-object p5, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    aget p5, p5, p6

    invoke-virtual {p2, v0, p3, p4, p5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 p1, p1, 0x9

    .line 108
    iput p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    return-void
.end method

.method public writeDateYYYMMDD10(III)V
    .locals 2

    .line 81
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    add-int/lit8 v0, v0, 0xb

    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->chars:[C

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->flush()V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->chars:[C

    iget v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    invoke-static {v0, v1, p1, p2, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalDate([CIIII)I

    move-result p1

    iput p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    return-void
.end method

.method public writeDecimal(JI)V
    .locals 2

    if-nez p3, :cond_0

    .line 225
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->writeInt64(J)V

    return-void

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-eqz v0, :cond_3

    const/16 v0, 0x14

    if-ge p3, v0, :cond_3

    if-gez p3, :cond_1

    goto :goto_0

    .line 234
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    add-int/lit8 v0, v0, 0x18

    .line 235
    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->chars:[C

    array-length v1, v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_2

    .line 236
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->flush()V

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->chars:[C

    iget v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    invoke-static {v0, v1, p1, p2, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->writeDecimal([CIJI)I

    move-result p1

    iput p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    return-void

    .line 230
    :cond_3
    :goto_0
    invoke-static {p1, p2, p3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->writeDecimal(Ljava/math/BigDecimal;)V

    return-void
.end method

.method public writeDecimal(Ljava/math/BigDecimal;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 217
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    .line 218
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 219
    iget-object v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->chars:[C

    iget v3, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    invoke-virtual {p1, v1, v0, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 220
    iget p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    return-void
.end method

.method writeDirect([CII)V
    .locals 1

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 41
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo p3, "write csv error"

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public writeDouble(D)V
    .locals 3

    .line 174
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    add-int/lit8 v0, v0, 0x18

    .line 175
    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->chars:[C

    array-length v1, v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->flush()V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->chars:[C

    iget v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    const/4 v2, 0x1

    invoke-static {p1, p2, v0, v1, v2}, Lcom/alibaba/fastjson2/util/DoubleToDecimal;->toString(D[CIZ)I

    move-result p1

    .line 180
    iget p2, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    return-void
.end method

.method public writeFloat(F)V
    .locals 3

    .line 184
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    add-int/lit8 v0, v0, 0xf

    .line 185
    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->chars:[C

    array-length v1, v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->flush()V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->chars:[C

    iget v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/alibaba/fastjson2/util/DoubleToDecimal;->toString(F[CIZ)I

    move-result p1

    .line 190
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    return-void
.end method

.method public writeInt32(I)V
    .locals 2

    .line 165
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    add-int/lit8 v0, v0, 0xb

    .line 166
    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->chars:[C

    array-length v1, v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->flush()V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->chars:[C

    iget v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([CII)I

    move-result p1

    iput p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    return-void
.end method

.method public writeInt64(J)V
    .locals 2

    .line 72
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    add-int/lit8 v0, v0, 0x15

    .line 73
    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->chars:[C

    array-length v1, v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->flush()V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->chars:[C

    iget v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    invoke-static {v0, v1, p1, p2}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt64([CIJ)I

    move-result p1

    iput p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    return-void
.end method

.method public writeLine()V
    .locals 3

    .line 60
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->chars:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->flush()V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->chars:[C

    iget v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    const/16 v2, 0xa

    aput-char v2, v0, v1

    return-void
.end method

.method public writeLocalDateTime(Ljava/time/LocalDateTime;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->chars:[C

    iget v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v2

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v3

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalDate([CIIII)I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    .line 263
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->chars:[C

    iget v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    const/16 v2, 0x20

    aput-char v2, v0, v1

    .line 264
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->chars:[C

    iget v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalTime([CILjava/time/LocalTime;)I

    move-result p1

    iput p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    return-void
.end method

.method protected writeQuote()V
    .locals 3

    .line 53
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->chars:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->flush()V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->chars:[C

    iget v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    const/16 v2, 0x22

    aput-char v2, v0, v1

    return-void
.end method

.method protected writeRaw(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 268
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->chars:[C

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 273
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->flush()V

    :cond_1
    const/4 v0, 0x0

    .line 275
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->chars:[C

    iget v3, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 276
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    :cond_2
    :goto_0
    return-void
.end method

.method writeRaw([C)V
    .locals 4

    .line 243
    array-length v0, p1

    iget v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->chars:[C

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    .line 244
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    array-length v2, p1

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->flush()V

    .line 248
    array-length v0, p1

    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->chars:[C

    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 249
    array-length v0, p1

    invoke-virtual {p0, p1, v3, v0}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->writeDirect([CII)V

    goto :goto_0

    .line 251
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    array-length v2, p1

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    :goto_0
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 8

    if-eqz p1, :cond_b

    .line 112
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 116
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 120
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_2

    move v2, v1

    move v4, v2

    :goto_0
    if-ge v2, v0, :cond_6

    .line 122
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    move v4, v2

    move v5, v4

    :goto_1
    if-ge v2, v0, :cond_5

    .line 129
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2c

    if-ne v6, v7, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    if-ne v6, v3, :cond_4

    add-int/lit8 v4, v4, 0x1

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    if-nez v5, :cond_6

    move v4, v1

    :cond_6
    if-nez v4, :cond_7

    .line 142
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->chars:[C

    iget v3, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    invoke-virtual {p1, v1, v0, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 143
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    return-void

    .line 147
    :cond_7
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, v4

    iget-object v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->chars:[C

    array-length v2, v2

    if-lt v0, v2, :cond_8

    .line 148
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->flush()V

    .line 151
    :cond_8
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->chars:[C

    iget v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    aput-char v3, v0, v2

    .line 152
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 153
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_9

    .line 155
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->chars:[C

    iget v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    aput-char v3, v0, v2

    .line 156
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->chars:[C

    iget v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    aput-char v3, v0, v2

    goto :goto_4

    .line 158
    :cond_9
    iget-object v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->chars:[C

    iget v4, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    aput-char v0, v2, v4

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 161
    :cond_a
    iget-object p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->chars:[C

    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->off:I

    aput-char v3, p1, v0

    :cond_b
    :goto_5
    return-void
.end method

.method public writeString([B)V
    .locals 4

    if-eqz p1, :cond_1

    .line 204
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 209
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;->writeString(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
