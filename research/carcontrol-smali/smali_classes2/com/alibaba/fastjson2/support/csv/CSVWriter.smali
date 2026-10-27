.class public abstract Lcom/alibaba/fastjson2/support/csv/CSVWriter;
.super Ljava/lang/Object;
.source "CSVWriter.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/support/csv/CSVWriter$Feature;
    }
.end annotation


# instance fields
.field private features:J

.field off:I

.field final zoneId:Ljava/time/ZoneId;


# direct methods
.method varargs constructor <init>(Ljava/time/ZoneId;[Lcom/alibaba/fastjson2/support/csv/CSVWriter$Feature;)V
    .locals 7

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 35
    iget-wide v3, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->features:J

    iget-wide v5, v2, Lcom/alibaba/fastjson2/support/csv/CSVWriter$Feature;->mask:J

    or-long v2, v3, v5

    iput-wide v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->features:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->zoneId:Ljava/time/ZoneId;

    return-void
.end method

.method public static of()Lcom/alibaba/fastjson2/support/csv/CSVWriter;
    .locals 2

    .line 42
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/alibaba/fastjson2/support/csv/CSVWriter$Feature;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->of(Ljava/io/OutputStream;[Lcom/alibaba/fastjson2/support/csv/CSVWriter$Feature;)Lcom/alibaba/fastjson2/support/csv/CSVWriter;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/io/File;)Lcom/alibaba/fastjson2/support/csv/CSVWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->of(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Lcom/alibaba/fastjson2/support/csv/CSVWriter;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/alibaba/fastjson2/support/csv/CSVWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->of(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Lcom/alibaba/fastjson2/support/csv/CSVWriter;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Lcom/alibaba/fastjson2/support/csv/CSVWriter;
    .locals 1

    .line 353
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->of(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/time/ZoneId;)Lcom/alibaba/fastjson2/support/csv/CSVWriter;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/time/ZoneId;)Lcom/alibaba/fastjson2/support/csv/CSVWriter;
    .locals 2

    .line 357
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    if-eq p1, v0, :cond_2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    if-eq p1, v0, :cond_2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 365
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 368
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/alibaba/fastjson2/support/csv/CSVWriter$Feature;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/time/ZoneId;[Lcom/alibaba/fastjson2/support/csv/CSVWriter$Feature;)V

    return-object v0

    .line 361
    :cond_2
    :goto_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0, p2}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->of(Ljava/io/Writer;Ljava/time/ZoneId;)Lcom/alibaba/fastjson2/support/csv/CSVWriter;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of(Ljava/io/OutputStream;[Lcom/alibaba/fastjson2/support/csv/CSVWriter$Feature;)Lcom/alibaba/fastjson2/support/csv/CSVWriter;
    .locals 3

    .line 349
    new-instance v0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sget-object v2, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF8;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/time/ZoneId;[Lcom/alibaba/fastjson2/support/csv/CSVWriter$Feature;)V

    return-object v0
.end method

.method public static of(Ljava/io/Writer;)Lcom/alibaba/fastjson2/support/csv/CSVWriter;
    .locals 3

    .line 372
    new-instance v0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;

    sget-object v1, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/alibaba/fastjson2/support/csv/CSVWriter$Feature;

    invoke-direct {v0, p0, v1, v2}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;-><init>(Ljava/io/Writer;Ljava/time/ZoneId;[Lcom/alibaba/fastjson2/support/csv/CSVWriter$Feature;)V

    return-object v0
.end method

.method public static of(Ljava/io/Writer;Ljava/time/ZoneId;)Lcom/alibaba/fastjson2/support/csv/CSVWriter;
    .locals 2

    .line 376
    new-instance v0, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/alibaba/fastjson2/support/csv/CSVWriter$Feature;

    invoke-direct {v0, p0, p1, v1}, Lcom/alibaba/fastjson2/support/csv/CSVWriterUTF16;-><init>(Ljava/io/Writer;Ljava/time/ZoneId;[Lcom/alibaba/fastjson2/support/csv/CSVWriter$Feature;)V

    return-object v0
.end method


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract flush()V
.end method

.method public writeBigInteger(Ljava/math/BigInteger;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 218
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p1

    .line 219
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeRaw(Ljava/lang/String;)V

    return-void
.end method

.method public abstract writeBoolean(Z)V
.end method

.method public abstract writeComma()V
.end method

.method public final writeDate(J)V
    .locals 30

    move-object/from16 v7, p0

    move-wide/from16 v0, p1

    .line 227
    iget-object v2, v7, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->zoneId:Ljava/time/ZoneId;

    const-wide/16 v3, 0x3e8

    .line 230
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v5

    .line 232
    sget-object v8, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_ID:Ljava/time/ZoneId;

    if-eq v2, v8, :cond_1

    invoke-virtual {v2}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v8

    sget-object v9, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_RULES:Ljava/time/zone/ZoneRules;

    if-ne v8, v9, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    invoke-static/range {p1 .. p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v8

    .line 236
    invoke-virtual {v2}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v8

    goto :goto_1

    .line 233
    :cond_1
    :goto_0
    invoke-static {v5, v6}, Lcom/alibaba/fastjson2/util/DateUtils;->getShanghaiZoneOffsetTotalSeconds(J)I

    move-result v8

    :goto_1
    int-to-long v8, v8

    add-long/2addr v5, v8

    const-wide/32 v8, 0x15180

    .line 240
    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v10

    .line 241
    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    const-wide/32 v8, 0xafaa8

    add-long/2addr v10, v8

    const-wide/16 v8, 0x3c

    sub-long/2addr v10, v8

    const-wide/16 v12, 0x0

    cmp-long v6, v10, v12

    const-wide/16 v14, 0x1

    const-wide/32 v16, 0x23ab1

    const-wide/16 v18, 0x190

    if-gez v6, :cond_2

    add-long v20, v10, v14

    .line 253
    div-long v20, v20, v16

    sub-long v3, v20, v14

    mul-long v20, v3, v18

    neg-long v3, v3

    mul-long v3, v3, v16

    add-long/2addr v10, v3

    goto :goto_2

    :cond_2
    move-wide/from16 v20, v12

    :goto_2
    mul-long v3, v10, v18

    const-wide/16 v22, 0x24f

    add-long v3, v3, v22

    .line 257
    div-long v3, v3, v16

    const-wide/16 v16, 0x16d

    mul-long v22, v3, v16

    const-wide/16 v24, 0x4

    .line 258
    div-long v26, v3, v24

    add-long v22, v22, v26

    const-wide/16 v26, 0x64

    div-long v28, v3, v26

    sub-long v22, v22, v28

    div-long v28, v3, v18

    add-long v22, v22, v28

    sub-long v22, v10, v22

    cmp-long v6, v22, v12

    if-gez v6, :cond_3

    sub-long/2addr v3, v14

    mul-long v16, v16, v3

    .line 262
    div-long v14, v3, v24

    add-long v16, v16, v14

    div-long v14, v3, v26

    sub-long v16, v16, v14

    div-long v14, v3, v18

    add-long v16, v16, v14

    sub-long v22, v10, v16

    :cond_3
    move-wide/from16 v10, v22

    add-long v3, v3, v20

    long-to-int v6, v10

    mul-int/lit8 v10, v6, 0x5

    add-int/lit8 v10, v10, 0x2

    .line 268
    div-int/lit16 v10, v10, 0x99

    add-int/lit8 v11, v10, 0x2

    .line 269
    rem-int/lit8 v11, v11, 0xc

    add-int/lit8 v11, v11, 0x1

    mul-int/lit16 v14, v10, 0x132

    add-int/lit8 v14, v14, 0x5

    .line 270
    div-int/lit8 v14, v14, 0xa

    sub-int/2addr v6, v14

    add-int/lit8 v6, v6, 0x1

    .line 271
    div-int/lit8 v10, v10, 0xa

    int-to-long v14, v10

    add-long/2addr v3, v14

    const-wide/32 v14, -0x3b9ac9ff

    cmp-long v10, v3, v14

    if-ltz v10, :cond_7

    const-wide/32 v14, 0x3b9ac9ff

    cmp-long v10, v3, v14

    if-gtz v10, :cond_7

    long-to-int v3, v3

    int-to-long v4, v5

    cmp-long v10, v4, v12

    if-ltz v10, :cond_6

    const-wide/32 v12, 0x1517f

    cmp-long v10, v4, v12

    if-gtz v10, :cond_6

    const-wide/16 v12, 0xe10

    .line 291
    div-long v12, v4, v12

    long-to-int v10, v12

    mul-int/lit16 v12, v10, 0xe10

    int-to-long v12, v12

    sub-long/2addr v4, v12

    .line 293
    div-long v8, v4, v8

    long-to-int v8, v8

    mul-int/lit8 v9, v8, 0x3c

    int-to-long v12, v9

    sub-long/2addr v4, v12

    long-to-int v9, v4

    if-ltz v3, :cond_5

    const/16 v4, 0x270f

    if-gt v3, v4, :cond_5

    const-wide/16 v4, 0x3e8

    .line 302
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    if-nez v4, :cond_5

    if-nez v10, :cond_4

    if-nez v8, :cond_4

    if-nez v9, :cond_4

    .line 305
    invoke-virtual {v7, v3, v11, v6}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeDateYYYMMDD10(III)V

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    move v1, v3

    move v2, v11

    move v3, v6

    move v4, v10

    move v5, v8

    move v6, v9

    .line 307
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeDateTime19(IIIIII)V

    :goto_3
    return-void

    :cond_5
    const/4 v3, 0x0

    .line 313
    invoke-static {v0, v1, v3, v2}, Lcom/alibaba/fastjson2/util/DateUtils;->toString(JZLjava/time/ZoneId;)Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeRaw(Ljava/lang/String;)V

    return-void

    .line 289
    :cond_6
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid secondOfDay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_7
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid year "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final writeDate(Ljava/util/Date;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 85
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeDate(J)V

    return-void
.end method

.method public abstract writeDateTime19(IIIIII)V
.end method

.method public abstract writeDateYYYMMDD10(III)V
.end method

.method public abstract writeDecimal(JI)V
.end method

.method public abstract writeDecimal(Ljava/math/BigDecimal;)V
.end method

.method public abstract writeDouble(D)V
.end method

.method public abstract writeFloat(F)V
.end method

.method public final writeInstant(Ljava/time/Instant;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 93
    :cond_0
    invoke-virtual {p1}, Ljava/time/Instant;->getNano()I

    move-result v0

    const v1, 0xf4240

    .line 94
    rem-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 95
    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    .line 96
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeDate(J)V

    return-void

    .line 100
    :cond_1
    iget-wide v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/support/csv/CSVWriter$Feature;->AlwaysQuoteStrings:Lcom/alibaba/fastjson2/support/csv/CSVWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/support/csv/CSVWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 101
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeQuote()V

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->zoneId:Ljava/time/ZoneId;

    invoke-virtual {p1, v0}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object p1

    .line 105
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeLocalDateTime(Ljava/time/LocalDateTime;)V

    return-void
.end method

.method public abstract writeInt32(I)V
.end method

.method public abstract writeInt64(J)V
.end method

.method public abstract writeLine()V
.end method

.method public final writeLine(ILjava/util/function/IntFunction;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 122
    invoke-interface {p2, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeComma()V

    .line 128
    :cond_0
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeValue(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeLine()V

    return-void
.end method

.method public final writeLine(Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x0

    .line 135
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeComma()V

    .line 140
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeValue(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeLine()V

    return-void
.end method

.method public final varargs writeLine([Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    .line 147
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeComma()V

    .line 152
    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeValue(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeLine()V

    return-void
.end method

.method public final writeLineObject(Ljava/lang/Object;)V
    .locals 6

    if-nez p1, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeLine()V

    return-void

    .line 58
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectWriterProvider()Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    move-result-object v0

    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v0

    .line 61
    instance-of v1, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 62
    check-cast v0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    .line 63
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->getFieldWriters()Ljava/util/List;

    move-result-object v0

    .line 64
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    const-wide/high16 v4, 0x1000000000000L

    and-long/2addr v1, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-eqz v1, :cond_1

    .line 65
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 66
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeLineObject(Ljava/lang/Object;)V

    return-void

    .line 70
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    .line 71
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_2

    .line 72
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeLine([Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 76
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeLine([Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public writeLocalDate(Ljava/time/LocalDate;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 112
    :cond_0
    sget-object v0, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v0, p1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeRaw(Ljava/lang/String;)V

    return-void
.end method

.method public abstract writeLocalDateTime(Ljava/time/LocalDateTime;)V
.end method

.method protected abstract writeQuote()V
.end method

.method protected abstract writeRaw(Ljava/lang/String;)V
.end method

.method public abstract writeString(Ljava/lang/String;)V
.end method

.method public abstract writeString([B)V
.end method

.method public writeValue(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 169
    :cond_0
    instance-of v0, p1, Ljava/util/Optional;

    if-eqz v0, :cond_2

    .line 170
    check-cast p1, Ljava/util/Optional;

    .line 171
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 174
    :cond_1
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    .line 177
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 178
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeInt32(I)V

    goto/16 :goto_0

    .line 179
    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 180
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeInt64(J)V

    goto/16 :goto_0

    .line 181
    :cond_4
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 182
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 183
    :cond_5
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 184
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 185
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 186
    :cond_6
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_7

    .line 187
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 188
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeFloat(F)V

    goto/16 :goto_0

    .line 189
    :cond_7
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_8

    .line 190
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeDouble(D)V

    goto :goto_0

    .line 191
    :cond_8
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_9

    .line 192
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeInt32(I)V

    goto :goto_0

    .line 193
    :cond_9
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_a

    .line 194
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeInt32(I)V

    goto :goto_0

    .line 195
    :cond_a
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_b

    .line 196
    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeDecimal(Ljava/math/BigDecimal;)V

    goto :goto_0

    .line 197
    :cond_b
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_c

    .line 198
    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeBigInteger(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 199
    :cond_c
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_d

    .line 200
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeDate(Ljava/util/Date;)V

    goto :goto_0

    .line 201
    :cond_d
    instance-of v0, p1, Ljava/time/Instant;

    if-eqz v0, :cond_e

    .line 202
    check-cast p1, Ljava/time/Instant;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeInstant(Ljava/time/Instant;)V

    goto :goto_0

    .line 203
    :cond_e
    instance-of v0, p1, Ljava/time/LocalDate;

    if-eqz v0, :cond_f

    .line 204
    check-cast p1, Ljava/time/LocalDate;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeLocalDate(Ljava/time/LocalDate;)V

    goto :goto_0

    .line 205
    :cond_f
    instance-of v0, p1, Ljava/time/LocalDateTime;

    if-eqz v0, :cond_10

    .line 206
    check-cast p1, Ljava/time/LocalDateTime;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeLocalDateTime(Ljava/time/LocalDateTime;)V

    goto :goto_0

    .line 208
    :cond_10
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 209
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
