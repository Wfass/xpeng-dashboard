.class public Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;
.super Ljava/lang/Object;
.source "StreamReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/stream/StreamReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColumnStat"
.end annotation


# instance fields
.field public arrays:I

.field public booleans:I

.field public dates:I

.field public doubles:I

.field public errors:I

.field public integers:I

.field public maps:I

.field public final name:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        ordinal = -0x1
    .end annotation
.end field

.field public nonAsciiStrings:I

.field public nulls:I

.field public numbers:I

.field public precision:I

.field public scale:I

.field public values:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getInferSQLType()Ljava/lang/String;
    .locals 5

    .line 464
    iget v0, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->nonAsciiStrings:I

    const-string v1, "STRING"

    if-gtz v0, :cond_9

    iget v0, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->nulls:I

    iget v2, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->values:I

    if-ne v0, v2, :cond_0

    goto/16 :goto_1

    .line 468
    :cond_0
    iget v3, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->dates:I

    add-int/2addr v3, v0

    if-ne v2, v3, :cond_2

    .line 469
    iget v0, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->precision:I

    if-eqz v0, :cond_1

    const-string v0, "TIMESTAMP"

    return-object v0

    :cond_1
    const-string v0, "DATETIME"

    return-object v0

    .line 475
    :cond_2
    iget v3, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->integers:I

    add-int/2addr v3, v0

    const-string v4, "DECIMAL("

    if-ne v2, v3, :cond_5

    .line 476
    iget v0, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->precision:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_3

    const-string v0, "INT"

    return-object v0

    :cond_3
    const/16 v1, 0x14

    if-ge v0, v1, :cond_4

    const-string v0, "BIGINT"

    return-object v0

    .line 482
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->precision:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", 0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 485
    :cond_5
    iget v3, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->numbers:I

    add-int/2addr v3, v0

    if-ne v2, v3, :cond_9

    .line 486
    iget v0, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->doubles:I

    if-gtz v0, :cond_8

    iget v0, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->scale:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_6

    goto :goto_0

    .line 490
    :cond_6
    iget v0, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->precision:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_7

    move v0, v1

    .line 494
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->scale:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8
    :goto_0
    const-string v0, "DOUBLE"

    return-object v0

    :cond_9
    :goto_1
    return-object v1
.end method

.method public getInferType()Ljava/lang/reflect/Type;
    .locals 3

    .line 501
    iget v0, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->nonAsciiStrings:I

    if-gtz v0, :cond_b

    iget v0, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->nulls:I

    iget v1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->values:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 505
    :cond_0
    iget v2, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->booleans:I

    add-int/2addr v2, v0

    if-ne v1, v2, :cond_1

    .line 506
    const-class v0, Ljava/lang/Boolean;

    return-object v0

    .line 509
    :cond_1
    iget v2, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->dates:I

    add-int/2addr v2, v0

    if-ne v1, v2, :cond_3

    .line 510
    iget v0, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->precision:I

    if-eqz v0, :cond_2

    .line 511
    const-class v0, Ljava/time/Instant;

    return-object v0

    .line 513
    :cond_2
    const-class v0, Ljava/util/Date;

    return-object v0

    .line 516
    :cond_3
    iget v2, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->doubles:I

    if-lez v2, :cond_4

    .line 517
    const-class v0, Ljava/lang/Double;

    return-object v0

    .line 520
    :cond_4
    iget v2, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->integers:I

    add-int/2addr v2, v0

    if-ne v1, v2, :cond_7

    .line 521
    iget v0, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->precision:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_5

    .line 522
    const-class v0, Ljava/lang/Integer;

    return-object v0

    :cond_5
    const/16 v1, 0x14

    if-ge v0, v1, :cond_6

    .line 525
    const-class v0, Ljava/lang/Long;

    return-object v0

    .line 527
    :cond_6
    const-class v0, Ljava/math/BigInteger;

    return-object v0

    .line 530
    :cond_7
    iget v2, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->numbers:I

    add-int/2addr v2, v0

    if-ne v1, v2, :cond_8

    .line 531
    const-class v0, Ljava/math/BigDecimal;

    return-object v0

    .line 534
    :cond_8
    iget v0, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->arrays:I

    if-lez v0, :cond_9

    .line 535
    const-class v0, Ljava/util/Collection;

    return-object v0

    .line 538
    :cond_9
    iget v0, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->maps:I

    if-lez v0, :cond_a

    .line 539
    const-class v0, Ljava/util/Map;

    return-object v0

    .line 542
    :cond_a
    const-class v0, Ljava/lang/String;

    return-object v0

    .line 502
    :cond_b
    :goto_0
    const-class v0, Ljava/lang/String;

    return-object v0
.end method

.method public stat(Ljava/lang/String;)V
    .locals 3

    .line 450
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CODER:Ljava/util/function/ToIntFunction;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CODER:Ljava/util/function/ToIntFunction;

    .line 451
    invoke-interface {v0, p1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->LATIN1:Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_VALUE:Ljava/util/function/Function;

    if-eqz v0, :cond_0

    .line 454
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_VALUE:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 455
    array-length v0, p1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->stat([BIILjava/nio/charset/Charset;)V

    return-void

    .line 459
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/JDKUtils;->getCharArray(Ljava/lang/String;)[C

    move-result-object p1

    .line 460
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->stat([CII)V

    return-void
.end method

.method public stat([BIILjava/nio/charset/Charset;)V
    .locals 10

    .line 292
    iget v0, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->values:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->values:I

    if-nez p3, :cond_0

    .line 295
    iget p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->nulls:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->nulls:I

    return-void

    :cond_0
    add-int v0, p2, p3

    move v2, p2

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_2

    .line 302
    aget-byte v4, p1, v2

    if-gez v4, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_1
    if-eqz v2, :cond_4

    .line 310
    iget p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->precision:I

    if-ge p1, p3, :cond_3

    .line 311
    iput p3, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->precision:I

    .line 313
    :cond_3
    iget p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->nonAsciiStrings:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->nonAsciiStrings:I

    return-void

    .line 318
    :cond_4
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson2/util/TypeUtils;->isNumber([BII)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 319
    aget-byte p4, p1, p2

    int-to-char p4, p4

    const/16 v2, 0x2b

    if-eq p4, v2, :cond_6

    const/16 v2, 0x2d

    if-ne p4, v2, :cond_5

    goto :goto_2

    :cond_5
    move p4, p3

    goto :goto_3

    :cond_6
    :goto_2
    add-int/lit8 p4, p3, -0x1

    .line 323
    :goto_3
    iget v2, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->numbers:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->numbers:I

    .line 324
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson2/util/TypeUtils;->isInteger([BII)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 325
    iget p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->integers:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->integers:I

    goto :goto_6

    :cond_7
    const/4 p3, -0x1

    move v2, p3

    :goto_4
    if-ge p2, v0, :cond_b

    .line 330
    aget-byte v4, p1, p2

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_8

    move v2, p2

    goto :goto_5

    :cond_8
    const/16 v5, 0x65

    if-eq v4, v5, :cond_9

    const/16 v5, 0x45

    if-ne v4, v5, :cond_a

    :cond_9
    move v3, v1

    :cond_a
    :goto_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_b
    if-eqz v3, :cond_c

    .line 338
    iget p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->doubles:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->doubles:I

    goto :goto_6

    :cond_c
    if-eq v2, p3, :cond_e

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    .line 341
    iget p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->scale:I

    if-ge p1, v0, :cond_d

    .line 342
    iput v0, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->scale:I

    :cond_d
    add-int/lit8 p4, p4, -0x1

    :cond_e
    :goto_6
    move p3, p4

    goto/16 :goto_f

    :cond_f
    move v2, p2

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_7
    if-ge v2, v0, :cond_12

    .line 351
    aget-byte v8, p1, v2

    int-to-char v8, v8

    const/16 v9, 0x3a

    if-eq v8, v9, :cond_10

    packed-switch v8, :pswitch_data_0

    const/16 v9, 0x30

    if-lt v8, v9, :cond_11

    const/16 v9, 0x39

    if-gt v8, v9, :cond_11

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :pswitch_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :pswitch_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_10
    add-int/lit8 v6, v6, 0x1

    :cond_11
    :goto_8
    :pswitch_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_12
    const/4 v0, 0x2

    if-eq v4, v0, :cond_14

    if-eq v5, v0, :cond_14

    if-ne v6, v0, :cond_13

    goto :goto_9

    :cond_13
    move v2, v3

    goto :goto_a

    :cond_14
    :goto_9
    move v2, v1

    :goto_a
    if-eqz v2, :cond_16

    if-lt v7, v0, :cond_15

    const/16 v4, 0x24

    if-le p3, v4, :cond_16

    :cond_15
    move v2, v3

    :cond_16
    if-eqz v2, :cond_21

    const/4 v2, 0x0

    packed-switch p3, :pswitch_data_1

    goto :goto_b

    .line 396
    :pswitch_3
    :try_start_0
    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate10([BI)Ljava/time/LocalDate;

    move-result-object v2

    .line 397
    invoke-virtual {v2}, Ljava/time/LocalDate;->atStartOfDay()Ljava/time/LocalDateTime;

    move-result-object v2

    goto :goto_b

    .line 391
    :pswitch_4
    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate9([BI)Ljava/time/LocalDate;

    move-result-object v2

    .line 392
    invoke-virtual {v2}, Ljava/time/LocalDate;->atStartOfDay()Ljava/time/LocalDateTime;

    move-result-object v2

    goto :goto_b

    .line 386
    :pswitch_5
    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate8([BI)Ljava/time/LocalDate;

    move-result-object v2

    .line 387
    invoke-virtual {v2}, Ljava/time/LocalDate;->atStartOfDay()Ljava/time/LocalDateTime;

    move-result-object v2

    :goto_b
    if-nez v2, :cond_17

    .line 405
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1, p2, p3, p4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 406
    invoke-static {v4}, Lcom/alibaba/fastjson2/util/DateUtils;->parseZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 408
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_17
    if-eqz v2, :cond_18

    .line 413
    :try_start_1
    iget p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->dates:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->dates:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move p3, v3

    goto :goto_c

    :catch_0
    move p3, v3

    goto :goto_e

    .line 415
    :cond_18
    :goto_c
    :try_start_2
    invoke-virtual {v2}, Ljava/time/LocalDateTime;->getNano()I

    move-result p1

    if-eqz p1, :cond_21

    const p2, 0x5f5e100

    .line 417
    rem-int p2, p1, p2

    if-nez p2, :cond_19

    move p3, v1

    goto :goto_f

    :cond_19
    const p2, 0x989680

    .line 419
    rem-int p2, p1, p2

    if-nez p2, :cond_1a

    move p3, v0

    goto :goto_f

    :cond_1a
    const p2, 0xf4240

    .line 421
    rem-int p2, p1, p2

    if-nez p2, :cond_1b

    const/4 p1, 0x3

    :goto_d
    move p3, p1

    goto :goto_f

    :cond_1b
    const p2, 0x186a0

    .line 423
    rem-int p2, p1, p2

    if-nez p2, :cond_1c

    const/4 p1, 0x4

    goto :goto_d

    .line 425
    :cond_1c
    rem-int/lit16 p2, p1, 0x2710

    if-nez p2, :cond_1d

    const/4 p1, 0x5

    goto :goto_d

    .line 427
    :cond_1d
    rem-int/lit16 p2, p1, 0x3e8

    if-nez p2, :cond_1e

    const/4 p1, 0x6

    goto :goto_d

    .line 429
    :cond_1e
    rem-int/lit8 p2, p1, 0x64

    if-nez p2, :cond_1f

    const/4 p1, 0x7

    goto :goto_d

    .line 431
    :cond_1f
    rem-int/lit8 p1, p1, 0xa
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-nez p1, :cond_20

    const/16 p1, 0x8

    goto :goto_d

    :cond_20
    const/16 p1, 0x9

    goto :goto_d

    .line 438
    :catch_1
    :goto_e
    iget p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->errors:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->errors:I

    .line 444
    :cond_21
    :goto_f
    iget p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->precision:I

    if-ge p1, p3, :cond_22

    .line 445
    iput p3, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->precision:I

    :cond_22
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public stat([CII)V
    .locals 10

    .line 134
    iget v0, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->values:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->values:I

    if-nez p3, :cond_0

    .line 137
    iget p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->nulls:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->nulls:I

    return-void

    :cond_0
    add-int v0, p2, p3

    move v2, p2

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_2

    .line 144
    aget-char v4, p1, v2

    const/16 v5, 0x7f

    if-le v4, v5, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_1
    if-eqz v2, :cond_4

    .line 152
    iget p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->precision:I

    if-ge p1, p3, :cond_3

    .line 153
    iput p3, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->precision:I

    .line 155
    :cond_3
    iget p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->nonAsciiStrings:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->nonAsciiStrings:I

    return-void

    .line 160
    :cond_4
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson2/util/TypeUtils;->isNumber([CII)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 161
    aget-char v2, p1, p2

    const/16 v4, 0x2b

    if-eq v2, v4, :cond_6

    const/16 v4, 0x2d

    if-ne v2, v4, :cond_5

    goto :goto_2

    :cond_5
    move v2, p3

    goto :goto_3

    :cond_6
    :goto_2
    add-int/lit8 v2, p3, -0x1

    .line 165
    :goto_3
    iget v4, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->numbers:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->numbers:I

    .line 166
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson2/util/TypeUtils;->isInteger([CII)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 167
    iget p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->integers:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->integers:I

    goto :goto_6

    :cond_7
    const/4 p3, -0x1

    move v4, p3

    :goto_4
    if-ge p2, v0, :cond_b

    .line 172
    aget-char v5, p1, p2

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_8

    move v4, p2

    goto :goto_5

    :cond_8
    const/16 v6, 0x65

    if-eq v5, v6, :cond_9

    const/16 v6, 0x45

    if-ne v5, v6, :cond_a

    :cond_9
    move v3, v1

    :cond_a
    :goto_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_b
    if-eqz v3, :cond_c

    .line 180
    iget p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->doubles:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->doubles:I

    goto :goto_6

    :cond_c
    if-eq v4, p3, :cond_e

    sub-int/2addr v0, v4

    sub-int/2addr v0, v1

    .line 183
    iget p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->scale:I

    if-ge p1, v0, :cond_d

    .line 184
    iput v0, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->scale:I

    :cond_d
    add-int/lit8 v2, v2, -0x1

    :cond_e
    :goto_6
    move p3, v2

    goto/16 :goto_f

    :cond_f
    move v2, p2

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_7
    if-ge v2, v0, :cond_12

    .line 193
    aget-char v8, p1, v2

    const/16 v9, 0x3a

    if-eq v8, v9, :cond_10

    packed-switch v8, :pswitch_data_0

    const/16 v9, 0x30

    if-lt v8, v9, :cond_11

    const/16 v9, 0x39

    if-gt v8, v9, :cond_11

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :pswitch_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :pswitch_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_10
    add-int/lit8 v6, v6, 0x1

    :cond_11
    :goto_8
    :pswitch_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_12
    const/4 v0, 0x2

    if-eq v4, v0, :cond_14

    if-eq v5, v0, :cond_14

    if-ne v6, v0, :cond_13

    goto :goto_9

    :cond_13
    move v2, v3

    goto :goto_a

    :cond_14
    :goto_9
    move v2, v1

    :goto_a
    if-eqz v2, :cond_16

    if-lt v7, v0, :cond_15

    const/16 v4, 0x24

    if-le p3, v4, :cond_16

    :cond_15
    move v2, v3

    :cond_16
    if-eqz v2, :cond_21

    const/4 v2, 0x0

    packed-switch p3, :pswitch_data_1

    goto :goto_b

    .line 238
    :pswitch_3
    :try_start_0
    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate10([CI)Ljava/time/LocalDate;

    move-result-object v2

    .line 239
    invoke-virtual {v2}, Ljava/time/LocalDate;->atStartOfDay()Ljava/time/LocalDateTime;

    move-result-object v2

    goto :goto_b

    .line 233
    :pswitch_4
    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate9([CI)Ljava/time/LocalDate;

    move-result-object v2

    .line 234
    invoke-virtual {v2}, Ljava/time/LocalDate;->atStartOfDay()Ljava/time/LocalDateTime;

    move-result-object v2

    goto :goto_b

    .line 228
    :pswitch_5
    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate8([CI)Ljava/time/LocalDate;

    move-result-object v2

    .line 229
    invoke-virtual {v2}, Ljava/time/LocalDate;->atStartOfDay()Ljava/time/LocalDateTime;

    move-result-object v2

    :goto_b
    if-nez v2, :cond_17

    .line 247
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 248
    invoke-static {v4}, Lcom/alibaba/fastjson2/util/DateUtils;->parseZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 250
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_17
    if-eqz v2, :cond_18

    .line 255
    :try_start_1
    iget p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->dates:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->dates:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move p3, v3

    goto :goto_c

    :catch_0
    move p3, v3

    goto :goto_e

    .line 257
    :cond_18
    :goto_c
    :try_start_2
    invoke-virtual {v2}, Ljava/time/LocalDateTime;->getNano()I

    move-result p1

    if-eqz p1, :cond_21

    const p2, 0x5f5e100

    .line 259
    rem-int p2, p1, p2

    if-nez p2, :cond_19

    move p3, v1

    goto :goto_f

    :cond_19
    const p2, 0x989680

    .line 261
    rem-int p2, p1, p2

    if-nez p2, :cond_1a

    move p3, v0

    goto :goto_f

    :cond_1a
    const p2, 0xf4240

    .line 263
    rem-int p2, p1, p2

    if-nez p2, :cond_1b

    const/4 p1, 0x3

    :goto_d
    move p3, p1

    goto :goto_f

    :cond_1b
    const p2, 0x186a0

    .line 265
    rem-int p2, p1, p2

    if-nez p2, :cond_1c

    const/4 p1, 0x4

    goto :goto_d

    .line 267
    :cond_1c
    rem-int/lit16 p2, p1, 0x2710

    if-nez p2, :cond_1d

    const/4 p1, 0x5

    goto :goto_d

    .line 269
    :cond_1d
    rem-int/lit16 p2, p1, 0x3e8

    if-nez p2, :cond_1e

    const/4 p1, 0x6

    goto :goto_d

    .line 271
    :cond_1e
    rem-int/lit8 p2, p1, 0x64

    if-nez p2, :cond_1f

    const/4 p1, 0x7

    goto :goto_d

    .line 273
    :cond_1f
    rem-int/lit8 p1, p1, 0xa
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-nez p1, :cond_20

    const/16 p1, 0x8

    goto :goto_d

    :cond_20
    const/16 p1, 0x9

    goto :goto_d

    .line 280
    :catch_1
    :goto_e
    iget p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->errors:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->errors:I

    .line 286
    :cond_21
    :goto_f
    iget p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->precision:I

    if-ge p1, p3, :cond_22

    .line 287
    iput p3, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->precision:I

    :cond_22
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
