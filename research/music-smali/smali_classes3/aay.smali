.class public Laay;
.super Ljava/lang/Object;
.source "DateUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laay$c;,
        Laay$b;,
        Laay$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/time/ZoneId;

.field public static final b:Ljava/time/ZoneId;

.field public static final c:Ljava/time/zone/ZoneRules;

.field public static final d:Ljava/time/ZoneId;

.field public static final e:Ljava/time/LocalDate;

.field static f:Ljava/time/format/DateTimeFormatter;

.field static g:Ljava/time/format/DateTimeFormatter;

.field static h:Ljava/time/format/DateTimeFormatter;

.field static i:Ljava/time/format/DateTimeFormatter;

.field static final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 23
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    sput-object v0, Laay;->a:Ljava/time/ZoneId;

    .line 26
    sget-object v0, Laay;->a:Ljava/time/ZoneId;

    invoke-virtual {v0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Asia/Shanghai"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Laay;->a:Ljava/time/ZoneId;

    goto :goto_0

    .line 28
    :cond_0
    invoke-static {v1}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v0

    :goto_0
    sput-object v0, Laay;->b:Ljava/time/ZoneId;

    .line 29
    sget-object v0, Laay;->b:Ljava/time/ZoneId;

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    sput-object v0, Laay;->c:Ljava/time/zone/ZoneRules;

    const-string v0, "+08:00"

    .line 31
    invoke-static {v0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v0

    sput-object v0, Laay;->d:Ljava/time/ZoneId;

    const/16 v0, 0x7b2

    const/4 v1, 0x1

    .line 32
    invoke-static {v0, v1, v1}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    sput-object v0, Laay;->e:Ljava/time/LocalDate;

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 43
    sget-object v2, Laay;->a:Ljava/time/ZoneId;

    const-wide/16 v3, 0x3e8

    .line 46
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v3

    .line 48
    sget-object v5, Laay;->b:Ljava/time/ZoneId;

    if-eq v2, v5, :cond_2

    invoke-virtual {v2}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v5

    sget-object v6, Laay;->c:Ljava/time/zone/ZoneRules;

    if-ne v5, v6, :cond_1

    goto :goto_1

    .line 51
    :cond_1
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    .line 52
    invoke-virtual {v2}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    goto :goto_2

    .line 49
    :cond_2
    :goto_1
    invoke-static {v3, v4}, Laay;->a(J)I

    move-result v0

    :goto_2
    int-to-long v0, v0

    add-long/2addr v3, v0

    const-wide/32 v0, 0x15180

    .line 56
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Laay;->j:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(CC)I
    .locals 5

    const/16 v0, 0x34

    const/16 v1, 0x33

    const/16 v2, 0x30

    const/16 v3, 0x32

    const/16 v4, 0x31

    if-ne p0, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move p1, v4

    goto :goto_0

    :pswitch_1
    move p1, v2

    :goto_0
    move v4, v3

    goto :goto_2

    :pswitch_2
    const/16 p1, 0x39

    goto :goto_2

    :pswitch_3
    const/16 p1, 0x38

    goto :goto_2

    :pswitch_4
    const/16 p1, 0x37

    goto :goto_2

    :pswitch_5
    const/16 p1, 0x36

    goto :goto_2

    :pswitch_6
    const/16 p1, 0x35

    goto :goto_2

    :pswitch_7
    move p1, v0

    goto :goto_2

    :pswitch_8
    move p1, v1

    goto :goto_2

    :pswitch_9
    move p1, v3

    goto :goto_2

    :cond_0
    if-ne p0, v4, :cond_1

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    :pswitch_a
    move p1, v0

    goto :goto_0

    :pswitch_b
    move p1, v1

    goto :goto_0

    :pswitch_c
    move p1, v3

    move v4, p1

    goto :goto_2

    :cond_1
    :goto_1
    move v4, p0

    :goto_2
    shl-int/lit8 p0, v4, 0x10

    or-int/2addr p0, p1

    return p0

    :pswitch_data_0
    .packed-switch 0x30
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

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public static a(CCC)I
    .locals 7

    const/16 v0, 0x41

    const/16 v1, 0x72

    const/16 v2, 0x75

    const/16 v3, 0x70

    if-eq p0, v0, :cond_7

    const/16 v0, 0x44

    const/16 v4, 0x63

    const/16 v5, 0x65

    if-eq p0, v0, :cond_6

    const/16 v0, 0x46

    if-eq p0, v0, :cond_5

    const/16 v0, 0x4a

    const/16 v6, 0x61

    if-eq p0, v0, :cond_2

    const/16 v0, 0x53

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-ne p1, v4, :cond_9

    const/16 p0, 0x74

    if-ne p2, p0, :cond_9

    const/16 p0, 0xa

    return p0

    :pswitch_1
    const/16 p0, 0x6f

    if-ne p1, p0, :cond_9

    const/16 p0, 0x76

    if-ne p2, p0, :cond_9

    const/16 p0, 0xb

    return p0

    :pswitch_2
    if-ne p1, v6, :cond_9

    if-ne p2, v1, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/16 p0, 0x79

    if-ne p2, p0, :cond_9

    const/4 p0, 0x5

    return p0

    :cond_1
    if-ne p1, v5, :cond_9

    if-ne p2, v3, :cond_9

    const/16 p0, 0x9

    return p0

    :cond_2
    const/16 p0, 0x6e

    if-ne p1, v6, :cond_3

    if-ne p2, p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    if-ne p1, v2, :cond_9

    if-ne p2, p0, :cond_4

    const/4 p0, 0x6

    return p0

    :cond_4
    const/16 p0, 0x6c

    if-ne p2, p0, :cond_9

    const/4 p0, 0x7

    return p0

    :cond_5
    if-ne p1, v5, :cond_9

    const/16 p0, 0x62

    if-ne p2, p0, :cond_9

    const/4 p0, 0x2

    return p0

    :cond_6
    if-ne p1, v5, :cond_9

    if-ne p2, v4, :cond_9

    const/16 p0, 0xc

    return p0

    :cond_7
    if-ne p1, v3, :cond_8

    if-ne p2, v1, :cond_8

    const/4 p0, 0x4

    return p0

    :cond_8
    if-ne p1, v2, :cond_9

    const/16 p0, 0x67

    if-ne p2, p0, :cond_9

    const/16 p0, 0x8

    return p0

    :cond_9
    :goto_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x4d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(J)I
    .locals 5

    const-wide/32 v0, 0x28d2bea0

    cmp-long v0, p0, v0

    const/16 v1, 0x7e90

    const/16 v2, 0x7080

    if-ltz v0, :cond_0

    :goto_0
    move v1, v2

    goto/16 :goto_1

    :cond_0
    const-wide/32 v3, 0x2807c5b0

    cmp-long v0, p0, v3

    if-ltz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    const-wide/32 v3, 0x26f2dca0

    cmp-long v0, p0, v3

    if-ltz v0, :cond_2

    goto :goto_0

    :cond_2
    const-wide/32 v3, 0x2627e3b0

    cmp-long v0, p0, v3

    if-ltz v0, :cond_3

    goto/16 :goto_1

    :cond_3
    const-wide/32 v3, 0x2512faa0

    cmp-long v0, p0, v3

    if-ltz v0, :cond_4

    goto :goto_0

    :cond_4
    const-wide/32 v3, 0x244801b0

    cmp-long v0, p0, v3

    if-ltz v0, :cond_5

    goto/16 :goto_1

    :cond_5
    const-wide/32 v3, 0x2329de20

    cmp-long v0, p0, v3

    if-ltz v0, :cond_6

    goto :goto_0

    :cond_6
    const-wide/32 v3, 0x22681fb0

    cmp-long v0, p0, v3

    if-ltz v0, :cond_7

    goto/16 :goto_1

    :cond_7
    const-wide/32 v3, 0x2149fc20

    cmp-long v0, p0, v3

    if-ltz v0, :cond_8

    goto :goto_0

    :cond_8
    const-wide/32 v3, 0x207f0330

    cmp-long v0, p0, v3

    if-ltz v0, :cond_9

    goto/16 :goto_1

    :cond_9
    const-wide/32 v3, 0x1f6a1a20

    cmp-long v0, p0, v3

    if-ltz v0, :cond_a

    goto :goto_0

    :cond_a
    const-wide/32 v3, 0x1ebad0b0

    cmp-long v0, p0, v3

    if-ltz v0, :cond_b

    goto/16 :goto_1

    :cond_b
    const-wide/32 v3, -0x26be0480

    cmp-long v0, p0, v3

    if-ltz v0, :cond_c

    goto :goto_0

    :cond_c
    const-wide/32 v3, -0x26e18ef0

    cmp-long v0, p0, v3

    if-ltz v0, :cond_d

    goto/16 :goto_1

    :cond_d
    const-wide/32 v3, -0x27f91b00

    cmp-long v0, p0, v3

    if-ltz v0, :cond_e

    goto :goto_0

    :cond_e
    const-wide/32 v3, -0x28c2c270

    cmp-long v0, p0, v3

    if-ltz v0, :cond_f

    goto/16 :goto_1

    :cond_f
    const-wide/32 v3, -0x29b2c180

    cmp-long v0, p0, v3

    if-ltz v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const-wide/32 v3, -0x2aba5f70

    cmp-long v0, p0, v3

    if-ltz v0, :cond_11

    goto/16 :goto_1

    :cond_11
    const-wide/32 v3, -0x2bbcd380

    cmp-long v0, p0, v3

    if-ltz v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const-wide/32 v3, -0x2c7405f0

    cmp-long v0, p0, v3

    if-ltz v0, :cond_13

    goto :goto_1

    :cond_13
    const-wide/32 v3, -0x2dc44280

    cmp-long v0, p0, v3

    if-ltz v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const-wide/32 v3, -0x34834170

    cmp-long v0, p0, v3

    if-ltz v0, :cond_15

    goto :goto_1

    :cond_15
    const-wide/32 v3, -0x34f9f680

    cmp-long v0, p0, v3

    if-ltz v0, :cond_16

    goto/16 :goto_0

    :cond_16
    const-wide/32 v3, -0x362bc470

    cmp-long v0, p0, v3

    if-ltz v0, :cond_17

    goto :goto_1

    :cond_17
    const-wide/32 v3, -0x36f58800

    cmp-long v0, p0, v3

    if-ltz v0, :cond_18

    goto/16 :goto_0

    :cond_18
    const-wide/32 v3, -0x37a622f0

    cmp-long v0, p0, v3

    if-ltz v0, :cond_19

    goto :goto_1

    :cond_19
    const-wide/32 v3, -0x5e867c80

    cmp-long v0, p0, v3

    if-ltz v0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const-wide/32 v3, -0x5f67def0

    cmp-long v0, p0, v3

    if-ltz v0, :cond_1b

    goto :goto_1

    :cond_1b
    const-wide v0, -0x81c94b00L

    cmp-long p0, p0, v0

    if-ltz p0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v1, 0x71d7

    :goto_1
    return v1
.end method

.method public static a(Ljava/lang/String;Ljava/time/ZoneId;)J
    .locals 3

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 180
    :cond_0
    sget-object v0, Labf;->B:Ljava/util/function/ToIntFunction;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Labf;->C:Ljava/util/function/Function;

    if-eqz v0, :cond_1

    sget-object v0, Labf;->B:Ljava/util/function/ToIntFunction;

    invoke-interface {v0, p0}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1

    .line 181
    sget-object v0, Labf;->C:Ljava/util/function/Function;

    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 182
    array-length v0, p0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {p0, v1, v0, v2, p1}, Laay;->a([BIILjava/nio/charset/Charset;Ljava/time/ZoneId;)J

    move-result-wide p0

    return-wide p0

    .line 185
    :cond_1
    invoke-static {p0}, Labf;->a(Ljava/lang/String;)[C

    move-result-object p0

    .line 186
    array-length v0, p0

    invoke-static {p0, v1, v0, p1}, Laay;->a([CIILjava/time/ZoneId;)J

    move-result-wide p0

    return-wide p0
.end method

.method static a(Ljava/lang/String;Ljava/time/ZoneId;Laay$c;)J
    .locals 33

    move-object/from16 v0, p0

    if-eqz v0, :cond_29

    const-string v1, "null"

    .line 8324
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_c

    :cond_0
    move-object/from16 v1, p2

    .line 8328
    iget v2, v1, Laay$c;->length:I

    const/16 v3, 0x13

    if-ne v2, v3, :cond_28

    .line 8333
    sget v2, Labf;->d:I

    const/16 v4, 0x9

    const/4 v5, 0x6

    const/16 v6, 0x8

    const/16 v7, 0xc

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/16 v11, 0xa

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-ne v2, v6, :cond_2

    .line 8334
    invoke-static/range {p0 .. p0}, Labf;->a(Ljava/lang/String;)[C

    move-result-object v2

    .line 8335
    array-length v14, v2

    if-ne v14, v3, :cond_1

    .line 8338
    aget-char v3, v2, v13

    .line 8339
    aget-char v14, v2, v12

    .line 8340
    aget-char v15, v2, v9

    .line 8341
    aget-char v16, v2, v10

    .line 8342
    aget-char v17, v2, v8

    const/16 v18, 0x5

    .line 8343
    aget-char v18, v2, v18

    .line 8344
    aget-char v19, v2, v5

    const/16 v20, 0x7

    .line 8345
    aget-char v20, v2, v20

    .line 8346
    aget-char v6, v2, v6

    .line 8347
    aget-char v21, v2, v4

    .line 8348
    aget-char v22, v2, v11

    const/16 v23, 0xb

    .line 8349
    aget-char v23, v2, v23

    .line 8350
    aget-char v24, v2, v7

    const/16 v25, 0xd

    .line 8351
    aget-char v25, v2, v25

    const/16 v26, 0xe

    .line 8352
    aget-char v26, v2, v26

    const/16 v27, 0xf

    .line 8353
    aget-char v27, v2, v27

    const/16 v28, 0x10

    .line 8354
    aget-char v28, v2, v28

    const/16 v29, 0x11

    .line 8355
    aget-char v29, v2, v29

    const/16 v30, 0x12

    .line 8356
    aget-char v2, v2, v30

    move v12, v2

    move/from16 v4, v17

    move/from16 v1, v18

    move/from16 v5, v20

    move/from16 v13, v21

    move/from16 v10, v22

    move/from16 v11, v23

    move/from16 v8, v24

    move/from16 v7, v25

    move/from16 v2, v28

    move/from16 v9, v29

    move/from16 v23, v3

    move/from16 v28, v19

    move/from16 v3, v26

    move/from16 v26, v6

    move/from16 v6, v27

    move/from16 v27, v16

    goto/16 :goto_0

    .line 8336
    :cond_1
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal input "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v13}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    .line 8357
    :cond_2
    sget-object v2, Labf;->B:Ljava/util/function/ToIntFunction;

    if-eqz v2, :cond_4

    sget-object v2, Labf;->C:Ljava/util/function/Function;

    if-eqz v2, :cond_4

    sget-object v2, Labf;->B:Ljava/util/function/ToIntFunction;

    invoke-interface {v2, v0}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_4

    .line 8358
    sget-object v2, Labf;->C:Ljava/util/function/Function;

    invoke-interface {v2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 8359
    array-length v14, v2

    if-ne v14, v3, :cond_3

    .line 8363
    aget-byte v3, v2, v13

    int-to-char v3, v3

    .line 8364
    aget-byte v14, v2, v12

    int-to-char v14, v14

    .line 8365
    aget-byte v15, v2, v9

    int-to-char v15, v15

    .line 8366
    aget-byte v9, v2, v10

    int-to-char v9, v9

    .line 8367
    aget-byte v10, v2, v8

    int-to-char v10, v10

    const/16 v18, 0x5

    .line 8368
    aget-byte v8, v2, v18

    int-to-char v8, v8

    .line 8369
    aget-byte v12, v2, v5

    int-to-char v12, v12

    const/16 v20, 0x7

    .line 8370
    aget-byte v5, v2, v20

    int-to-char v5, v5

    .line 8371
    aget-byte v6, v2, v6

    int-to-char v6, v6

    .line 8372
    aget-byte v13, v2, v4

    int-to-char v13, v13

    .line 8373
    aget-byte v4, v2, v11

    int-to-char v4, v4

    const/16 v23, 0xb

    .line 8374
    aget-byte v11, v2, v23

    int-to-char v11, v11

    .line 8375
    aget-byte v1, v2, v7

    int-to-char v1, v1

    const/16 v23, 0xd

    .line 8376
    aget-byte v7, v2, v23

    int-to-char v7, v7

    const/16 v23, 0xe

    move/from16 v26, v1

    .line 8377
    aget-byte v1, v2, v23

    int-to-char v1, v1

    const/16 v23, 0xf

    move/from16 v27, v1

    .line 8378
    aget-byte v1, v2, v23

    int-to-char v1, v1

    const/16 v23, 0x10

    move/from16 v28, v1

    .line 8379
    aget-byte v1, v2, v23

    int-to-char v1, v1

    const/16 v23, 0x11

    move/from16 v29, v1

    .line 8380
    aget-byte v1, v2, v23

    int-to-char v1, v1

    const/16 v23, 0x12

    .line 8381
    aget-byte v2, v2, v23

    int-to-char v2, v2

    move/from16 v23, v3

    move/from16 v3, v27

    move/from16 v27, v9

    move v9, v1

    move v1, v8

    move/from16 v8, v26

    move/from16 v26, v6

    move/from16 v6, v28

    move/from16 v28, v12

    move v12, v2

    move/from16 v2, v29

    move/from16 v32, v10

    move v10, v4

    move/from16 v4, v32

    goto/16 :goto_0

    .line 8360
    :cond_3
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal input "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v4}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_4
    move v4, v13

    .line 8383
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_27

    .line 8387
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v1, 0x1

    .line 8388
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/4 v1, 0x2

    .line 8389
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/4 v1, 0x3

    .line 8390
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v1, 0x4

    .line 8391
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v1, 0x5

    .line 8392
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v5, 0x6

    .line 8393
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/4 v5, 0x7

    .line 8394
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 8395
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x9

    .line 8396
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v8, 0xa

    .line 8397
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v8, 0xb

    .line 8398
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v23

    const/16 v8, 0xc

    .line 8399
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v8, 0xd

    .line 8400
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v12, 0xe

    .line 8401
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v12, 0xf

    .line 8402
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v27

    const/16 v12, 0x10

    .line 8403
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v28

    const/16 v12, 0x11

    .line 8404
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v29

    const/16 v12, 0x12

    .line 8405
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    move v13, v9

    move/from16 v9, v29

    move/from16 v32, v27

    move/from16 v27, v2

    move/from16 v2, v28

    move/from16 v28, v7

    move v7, v8

    move v8, v11

    move/from16 v11, v23

    move/from16 v23, v3

    move/from16 v3, v26

    move/from16 v26, v6

    move/from16 v6, v32

    .line 8409
    :goto_0
    sget-object v29, Laay$1;->a:[I

    invoke-virtual/range {p2 .. p2}, Laay$c;->ordinal()I

    move-result v30

    move/from16 v31, v13

    aget v13, v29, v30

    move/from16 v29, v14

    const-string v14, "illegal input"

    move/from16 v30, v12

    const/4 v12, 0x1

    if-eq v13, v12, :cond_b

    const/4 v12, 0x2

    if-eq v13, v12, :cond_9

    const/4 v12, 0x3

    if-eq v13, v12, :cond_7

    const/4 v12, 0x4

    if-ne v13, v12, :cond_6

    const/16 v12, 0x2e

    if-ne v15, v12, :cond_5

    const/16 v12, 0x2e

    if-ne v1, v12, :cond_5

    const/16 v1, 0x20

    if-ne v10, v1, :cond_5

    const/16 v1, 0x3a

    if-ne v7, v1, :cond_5

    if-ne v2, v1, :cond_5

    move v7, v4

    move/from16 v10, v23

    move/from16 v15, v26

    move/from16 v4, v27

    move/from16 v1, v28

    move/from16 v12, v29

    move/from16 v2, v31

    goto :goto_2

    .line 8484
    :cond_5
    new-instance v1, Ljava/time/format/DateTimeParseException;

    const/4 v2, 0x0

    invoke-direct {v1, v14, v0, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_6
    const/4 v2, 0x0

    .line 8507
    new-instance v1, Ljava/time/format/DateTimeParseException;

    invoke-direct {v1, v14, v0, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_7
    const/16 v12, 0x2f

    if-ne v4, v12, :cond_8

    const/16 v4, 0x2f

    if-ne v5, v4, :cond_8

    const/16 v4, 0x20

    if-ne v10, v4, :cond_8

    const/16 v4, 0x3a

    if-ne v7, v4, :cond_8

    if-ne v2, v4, :cond_8

    goto :goto_1

    .line 8460
    :cond_8
    new-instance v1, Ljava/time/format/DateTimeParseException;

    const/4 v2, 0x0

    invoke-direct {v1, v14, v0, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_9
    const/16 v12, 0x2d

    if-ne v4, v12, :cond_a

    const/16 v4, 0x2d

    if-ne v5, v4, :cond_a

    const/16 v4, 0x54

    if-ne v10, v4, :cond_a

    const/16 v4, 0x3a

    if-ne v7, v4, :cond_a

    if-ne v2, v4, :cond_a

    goto :goto_1

    .line 8436
    :cond_a
    new-instance v1, Ljava/time/format/DateTimeParseException;

    const/4 v2, 0x0

    invoke-direct {v1, v14, v0, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_b
    const/16 v12, 0x2d

    if-ne v4, v12, :cond_26

    const/16 v4, 0x2d

    if-ne v5, v4, :cond_26

    const/16 v4, 0x20

    if-ne v10, v4, :cond_26

    const/16 v4, 0x3a

    if-ne v7, v4, :cond_26

    if-ne v2, v4, :cond_26

    :goto_1
    move v4, v1

    move/from16 v1, v23

    move/from16 v10, v26

    move/from16 v2, v27

    move/from16 v7, v28

    move/from16 v5, v29

    move/from16 v12, v31

    :goto_2
    const/16 v13, 0x30

    if-lt v1, v13, :cond_25

    const/16 v0, 0x39

    if-gt v1, v0, :cond_24

    if-lt v5, v13, :cond_24

    if-gt v5, v0, :cond_24

    if-lt v15, v13, :cond_24

    if-gt v15, v0, :cond_24

    if-lt v2, v13, :cond_24

    if-gt v2, v0, :cond_24

    sub-int/2addr v1, v13

    mul-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v5, v13

    mul-int/lit8 v5, v5, 0x64

    add-int/2addr v1, v5

    sub-int/2addr v15, v13

    const/16 v5, 0xa

    mul-int/2addr v15, v5

    add-int/2addr v1, v15

    sub-int/2addr v2, v13

    add-int/2addr v1, v2

    if-lt v4, v13, :cond_23

    if-gt v4, v0, :cond_23

    if-lt v7, v13, :cond_23

    if-gt v7, v0, :cond_23

    sub-int/2addr v4, v13

    mul-int/2addr v4, v5

    sub-int/2addr v7, v13

    add-int v2, v4, v7

    if-nez v2, :cond_c

    if-nez v1, :cond_22

    :cond_c
    const/16 v4, 0xc

    if-gt v2, v4, :cond_22

    if-lt v10, v13, :cond_21

    if-gt v10, v0, :cond_21

    if-lt v12, v13, :cond_21

    if-gt v12, v0, :cond_21

    sub-int/2addr v10, v13

    const/16 v4, 0xa

    mul-int/2addr v10, v4

    sub-int/2addr v12, v13

    add-int/2addr v12, v10

    const/16 v4, 0x1f

    const/4 v5, 0x2

    if-eq v2, v5, :cond_e

    const/4 v5, 0x4

    if-eq v2, v5, :cond_d

    const/4 v5, 0x6

    if-eq v2, v5, :cond_d

    const/16 v5, 0x9

    if-eq v2, v5, :cond_d

    const/16 v5, 0xb

    if-eq v2, v5, :cond_d

    goto :goto_4

    :cond_d
    const/16 v4, 0x1e

    goto :goto_4

    :cond_e
    and-int/lit8 v4, v1, 0x3

    if-nez v4, :cond_10

    .line 8543
    rem-int/lit8 v4, v1, 0x64

    if-nez v4, :cond_f

    rem-int/lit16 v4, v1, 0x190

    if-nez v4, :cond_10

    :cond_f
    const/4 v4, 0x1

    goto :goto_3

    :cond_10
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_11

    const/16 v4, 0x1d

    goto :goto_4

    :cond_11
    const/16 v4, 0x1c

    :goto_4
    if-nez v12, :cond_12

    if-nez v1, :cond_20

    :cond_12
    if-gt v12, v4, :cond_20

    if-lt v11, v13, :cond_1f

    if-gt v11, v0, :cond_1f

    if-lt v8, v13, :cond_1f

    if-gt v8, v0, :cond_1f

    sub-int/2addr v11, v13

    const/16 v4, 0xa

    mul-int/2addr v11, v4

    sub-int/2addr v8, v13

    add-int/2addr v11, v8

    if-lt v3, v13, :cond_1e

    if-gt v3, v0, :cond_1e

    if-lt v6, v13, :cond_1e

    if-gt v6, v0, :cond_1e

    sub-int/2addr v3, v13

    mul-int/2addr v3, v4

    sub-int/2addr v6, v13

    add-int/2addr v3, v6

    if-lt v9, v13, :cond_1d

    if-gt v9, v0, :cond_1d

    move/from16 v5, v30

    if-lt v5, v13, :cond_1d

    if-gt v5, v0, :cond_1d

    sub-int/2addr v9, v13

    mul-int/2addr v9, v4

    add-int/lit8 v0, v5, -0x30

    add-int/2addr v9, v0

    if-nez v1, :cond_13

    if-nez v2, :cond_13

    if-nez v12, :cond_13

    const/16 v1, 0x7b2

    const/4 v2, 0x1

    const/4 v12, 0x1

    :cond_13
    mul-int/lit16 v0, v1, 0x16d

    add-int/lit8 v4, v1, 0x3

    const/4 v5, 0x4

    .line 8599
    div-int/2addr v4, v5

    add-int/lit8 v5, v1, 0x63

    div-int/lit8 v5, v5, 0x64

    sub-int/2addr v4, v5

    add-int/lit16 v5, v1, 0x18f

    div-int/lit16 v5, v5, 0x190

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    mul-int/lit16 v4, v2, 0x16f

    add-int/lit16 v4, v4, -0x16a

    const/16 v5, 0xc

    div-int/2addr v4, v5

    add-int/2addr v0, v4

    add-int/lit8 v4, v12, -0x1

    add-int/2addr v0, v4

    int-to-long v4, v0

    const/4 v0, 0x2

    if-le v2, v0, :cond_16

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    and-int/lit8 v0, v1, 0x3

    if-nez v0, :cond_15

    .line 8606
    rem-int/lit8 v0, v1, 0x64

    if-nez v0, :cond_14

    rem-int/lit16 v0, v1, 0x190

    if-nez v0, :cond_15

    :cond_14
    const/4 v0, 0x1

    goto :goto_5

    :cond_15
    const/4 v0, 0x0

    :goto_5
    if-nez v0, :cond_16

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    :cond_16
    const-wide/32 v6, 0xafaa8

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x15180

    mul-long/2addr v4, v6

    mul-int/lit16 v0, v11, 0xe10

    int-to-long v6, v0

    add-long/2addr v4, v6

    mul-int/lit8 v0, v3, 0x3c

    int-to-long v6, v0

    add-long/2addr v4, v6

    int-to-long v6, v9

    add-long/2addr v4, v6

    if-nez p1, :cond_17

    .line 8622
    sget-object v0, Laay;->a:Ljava/time/ZoneId;

    goto :goto_6

    :cond_17
    move-object/from16 v0, p1

    .line 8624
    :goto_6
    sget-object v6, Laay;->b:Ljava/time/ZoneId;

    if-eq v0, v6, :cond_19

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v6

    sget-object v7, Laay;->c:Ljava/time/zone/ZoneRules;

    if-ne v6, v7, :cond_18

    goto :goto_7

    :cond_18
    const/16 v18, 0x0

    goto :goto_8

    :cond_19
    :goto_7
    const/16 v18, 0x1

    :goto_8
    const-wide/32 v6, 0x28d2bea0

    if-eqz v18, :cond_1a

    cmp-long v6, v4, v6

    if-ltz v6, :cond_1a

    const/16 v13, 0x7080

    goto :goto_a

    .line 8628
    :cond_1a
    sget-object v6, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    if-eq v0, v6, :cond_1c

    invoke-virtual {v0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTC"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    goto :goto_9

    .line 8631
    :cond_1b
    invoke-static {v1, v2, v12}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v1

    const/4 v2, 0x0

    .line 8632
    invoke-static {v11, v3, v9, v2}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v2

    .line 8633
    invoke-static {v1, v2}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 8634
    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/LocalDateTime;)Ljava/time/ZoneOffset;

    move-result-object v0

    .line 8635
    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v13

    goto :goto_a

    :cond_1c
    :goto_9
    const/4 v13, 0x0

    :goto_a
    int-to-long v0, v13

    sub-long/2addr v4, v0

    const-wide/16 v0, 0x3e8

    mul-long/2addr v4, v0

    return-wide v4

    .line 8585
    :cond_1d
    new-instance v0, Ljava/time/format/DateTimeParseException;

    const/4 v2, 0x0

    move-object/from16 v1, p0

    invoke-direct {v0, v14, v1, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_1e
    const/4 v2, 0x0

    move-object/from16 v1, p0

    .line 8576
    new-instance v0, Ljava/time/format/DateTimeParseException;

    invoke-direct {v0, v14, v1, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_1f
    const/4 v2, 0x0

    move-object/from16 v1, p0

    .line 8567
    new-instance v0, Ljava/time/format/DateTimeParseException;

    invoke-direct {v0, v14, v1, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_20
    const/4 v2, 0x0

    move-object/from16 v1, p0

    .line 8555
    new-instance v0, Ljava/time/format/DateTimeParseException;

    invoke-direct {v0, v14, v1, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_21
    const/4 v2, 0x0

    move-object/from16 v1, p0

    .line 8558
    new-instance v0, Ljava/time/format/DateTimeParseException;

    invoke-direct {v0, v14, v1, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_22
    const/4 v2, 0x0

    move-object/from16 v1, p0

    .line 8528
    new-instance v0, Ljava/time/format/DateTimeParseException;

    invoke-direct {v0, v14, v1, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_23
    const/4 v2, 0x0

    move-object/from16 v1, p0

    .line 8531
    new-instance v0, Ljava/time/format/DateTimeParseException;

    invoke-direct {v0, v14, v1, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_24
    const/4 v2, 0x0

    move-object/from16 v1, p0

    goto :goto_b

    :cond_25
    move-object v1, v0

    const/4 v2, 0x0

    .line 8518
    :goto_b
    new-instance v0, Ljava/time/format/DateTimeParseException;

    invoke-direct {v0, v14, v1, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_26
    move-object v1, v0

    const/4 v2, 0x0

    .line 8412
    new-instance v0, Ljava/time/format/DateTimeParseException;

    invoke-direct {v0, v14, v1, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_27
    move-object v1, v0

    move v2, v4

    .line 8384
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal input "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    .line 8329
    :cond_28
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_29
    :goto_c
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static a(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J
    .locals 8

    .line 10192
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getYear()I

    move-result v1

    .line 10193
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v2

    .line 10194
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v3

    .line 10195
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getHour()I

    move-result v4

    .line 10196
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v5

    .line 10197
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v6

    .line 10198
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getNano()I

    move-result v7

    move-object v0, p1

    .line 10190
    invoke-static/range {v0 .. v7}, Laay;->a(Ljava/time/ZoneId;IIIIIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public static a(Ljava/time/ZoneId;IIIIIII)J
    .locals 7

    if-nez p0, :cond_0

    .line 10213
    sget-object p0, Laay;->a:Ljava/time/ZoneId;

    :cond_0
    mul-int/lit16 v0, p1, 0x16d

    add-int/lit8 v1, p1, 0x3

    .line 10221
    div-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, p1, 0x63

    div-int/lit8 v2, v2, 0x64

    sub-int/2addr v1, v2

    add-int/lit16 v2, p1, 0x18f

    div-int/lit16 v2, v2, 0x190

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit16 v1, p2, 0x16f

    add-int/lit16 v1, v1, -0x16a

    div-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    add-int/lit8 v1, p3, -0x1

    add-int/2addr v0, v1

    int-to-long v0, v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le p2, v2, :cond_3

    const-wide/16 v5, 0x1

    sub-long/2addr v0, v5

    and-int/lit8 v2, p1, 0x3

    if-nez v2, :cond_2

    .line 10228
    rem-int/lit8 v2, p1, 0x64

    if-nez v2, :cond_1

    rem-int/lit16 v2, p1, 0x190

    if-nez v2, :cond_2

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    if-nez v2, :cond_3

    sub-long/2addr v0, v5

    :cond_3
    const-wide/32 v5, 0xafaa8

    sub-long/2addr v0, v5

    const-wide/32 v5, 0x15180

    mul-long/2addr v0, v5

    mul-int/lit16 v2, p4, 0xe10

    int-to-long v5, v2

    add-long/2addr v0, v5

    mul-int/lit8 v2, p5, 0x3c

    int-to-long v5, v2

    add-long/2addr v0, v5

    int-to-long v5, p6

    add-long/2addr v0, v5

    .line 10243
    sget-object v2, Laay;->b:Ljava/time/ZoneId;

    if-eq p0, v2, :cond_5

    invoke-virtual {p0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v2

    sget-object v5, Laay;->c:Ljava/time/zone/ZoneRules;

    if-ne v2, v5, :cond_4

    goto :goto_1

    :cond_4
    move v4, v3

    :cond_5
    :goto_1
    const-wide/32 v5, 0x28d2bea0

    if-eqz v4, :cond_6

    cmp-long v2, v0, v5

    if-ltz v2, :cond_6

    const/16 v3, 0x7080

    goto :goto_2

    .line 10247
    :cond_6
    sget-object v2, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    if-eq p0, v2, :cond_8

    invoke-virtual {p0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v4, "UTC"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_2

    .line 10250
    :cond_7
    invoke-static {p1, p2, p3}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p1

    .line 10251
    invoke-static {p4, p5, p6, p7}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object p2

    .line 10252
    invoke-static {p1, p2}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p1

    .line 10253
    invoke-virtual {p0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/LocalDateTime;)Ljava/time/ZoneOffset;

    move-result-object p0

    .line 10254
    invoke-virtual {p0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v3

    :cond_8
    :goto_2
    int-to-long p0, v3

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x3e8

    mul-long/2addr v0, p0

    if-eqz p7, :cond_9

    const p0, 0xf4240

    .line 10259
    div-int/2addr p7, p0

    int-to-long p0, p7

    add-long/2addr v0, p0

    :cond_9
    return-wide v0
.end method

.method public static a([BIILjava/nio/charset/Charset;Ljava/time/ZoneId;)J
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_14

    if-nez v2, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v6, 0x4

    if-ne v2, v6, :cond_1

    .line 1245
    aget-byte v7, v0, v1

    const/16 v8, 0x6e

    if-ne v7, v8, :cond_1

    add-int/lit8 v7, v1, 0x1

    aget-byte v7, v0, v7

    const/16 v8, 0x75

    if-ne v7, v8, :cond_1

    add-int/lit8 v7, v1, 0x2

    aget-byte v7, v0, v7

    const/16 v8, 0x6c

    if-ne v7, v8, :cond_1

    add-int/lit8 v7, v1, 0x3

    aget-byte v7, v0, v7

    if-ne v7, v8, :cond_1

    return-wide v4

    .line 1256
    :cond_1
    aget-byte v7, v0, v1

    int-to-char v7, v7

    const/16 v8, 0x22

    if-ne v7, v8, :cond_3

    add-int/lit8 v9, v2, -0x1

    .line 1257
    aget-byte v9, v0, v9

    if-ne v9, v8, :cond_3

    .line 1258
    invoke-static/range {p0 .. p3}, Lcom/alibaba/fastjson2/u;->a([BIILjava/nio/charset/Charset;)Lcom/alibaba/fastjson2/u;

    move-result-object v1

    .line 1259
    :try_start_0
    sget-object v10, Lxp;->o:Lxp;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    move-object v11, v1

    invoke-virtual/range {v10 .. v15}, Lxp;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 1265
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_12

    .line 1266
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/u;->close()V

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_2

    .line 1258
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v2

    :cond_3
    const/16 v8, 0x13

    if-ne v2, v8, :cond_4

    .line 1268
    invoke-static {v0, v1, v3}, Laay;->b([BILjava/time/ZoneId;)J

    move-result-wide v2

    goto/16 :goto_5

    :cond_4
    const/4 v9, 0x0

    if-gt v2, v8, :cond_11

    const/16 v8, 0x10

    const/16 v10, 0x2d

    if-ne v2, v8, :cond_5

    add-int/lit8 v8, v1, 0xa

    .line 1269
    aget-byte v8, v0, v8

    int-to-char v8, v8

    const/16 v11, 0x2b

    if-eq v8, v11, :cond_11

    if-ne v8, v10, :cond_5

    goto/16 :goto_4

    :cond_5
    const/4 v8, 0x0

    const-wide/16 v11, 0x3e8

    const/16 v13, 0x30

    if-eq v7, v10, :cond_6

    if-lt v7, v13, :cond_d

    const/16 v14, 0x39

    if-gt v7, v14, :cond_d

    .line 1279
    :cond_6
    invoke-static/range {p0 .. p2}, Labe;->a([BII)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1280
    invoke-static/range {p0 .. p2}, Labo;->c([BII)J

    move-result-wide v0

    const/16 v4, 0x8

    if-ne v2, v4, :cond_c

    const-wide/32 v4, 0x12c9985

    cmp-long v2, v0, v4

    if-ltz v2, :cond_c

    const-wide/32 v4, 0x1406fa5

    cmp-long v2, v0, v4

    if-gtz v2, :cond_c

    long-to-int v2, v0

    .line 1282
    div-int/lit16 v13, v2, 0x2710

    .line 1283
    rem-int/lit16 v4, v2, 0x2710

    div-int/lit8 v14, v4, 0x64

    .line 1284
    rem-int/lit8 v15, v2, 0x64

    const/4 v2, 0x1

    if-lt v14, v2, :cond_c

    const/16 v4, 0xc

    if-gt v14, v4, :cond_c

    const/16 v4, 0x1f

    const/4 v5, 0x2

    if-eq v14, v5, :cond_8

    if-eq v14, v6, :cond_7

    const/4 v2, 0x6

    if-eq v14, v2, :cond_7

    const/16 v2, 0x9

    if-eq v14, v2, :cond_7

    const/16 v2, 0xb

    if-eq v14, v2, :cond_7

    goto :goto_3

    :cond_7
    const/16 v4, 0x1e

    goto :goto_3

    :cond_8
    and-int/lit8 v4, v13, 0x3

    if-nez v4, :cond_9

    .line 1290
    rem-int/lit8 v4, v13, 0x64

    if-nez v4, :cond_a

    rem-int/lit16 v4, v13, 0x190

    if-nez v4, :cond_9

    goto :goto_1

    :cond_9
    move v2, v9

    :cond_a
    :goto_1
    if-eqz v2, :cond_b

    const/16 v2, 0x1d

    goto :goto_2

    :cond_b
    const/16 v2, 0x1c

    :goto_2
    move v4, v2

    :goto_3
    if-gt v15, v4, :cond_c

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 1301
    invoke-static/range {v13 .. v18}, Ljava/time/LocalDateTime;->of(IIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1302
    invoke-static {v0, v3, v8}, Ljava/time/ZonedDateTime;->ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 1303
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    mul-long/2addr v0, v11

    :cond_c
    move-wide v2, v0

    goto/16 :goto_5

    :cond_d
    add-int/lit8 v6, v2, -0x1

    .line 1309
    aget-byte v6, v0, v6

    int-to-char v6, v6

    const/16 v7, 0x5a

    if-ne v6, v7, :cond_e

    .line 1311
    sget-object v3, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    .line 1313
    :cond_e
    invoke-static/range {p0 .. p2}, Laay;->a([BII)Ljava/time/LocalDateTime;

    move-result-object v2

    if-nez v2, :cond_f

    .line 1314
    aget-byte v6, v0, v1

    if-ne v6, v13, :cond_f

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, v0, v6

    if-ne v6, v13, :cond_f

    add-int/lit8 v6, v1, 0x2

    aget-byte v6, v0, v6

    if-ne v6, v13, :cond_f

    add-int/lit8 v6, v1, 0x3

    aget-byte v6, v0, v6

    if-ne v6, v13, :cond_f

    add-int/lit8 v6, v1, 0x4

    aget-byte v6, v0, v6

    if-ne v6, v10, :cond_f

    add-int/lit8 v6, v1, 0x5

    aget-byte v6, v0, v6

    if-ne v6, v13, :cond_f

    add-int/lit8 v6, v1, 0x6

    aget-byte v6, v0, v6

    if-ne v6, v13, :cond_f

    add-int/lit8 v6, v1, 0x7

    aget-byte v6, v0, v6

    if-ne v6, v10, :cond_f

    add-int/lit8 v6, v1, 0x8

    aget-byte v6, v0, v6

    if-ne v6, v13, :cond_f

    add-int/lit8 v1, v1, 0x9

    aget-byte v0, v0, v1

    if-ne v0, v13, :cond_f

    const/16 v14, 0x7b2

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 1327
    invoke-static/range {v14 .. v19}, Ljava/time/LocalDateTime;->of(IIIIII)Ljava/time/LocalDateTime;

    move-result-object v2

    .line 1329
    :cond_f
    invoke-static {v2, v3, v8}, Ljava/time/ZonedDateTime;->ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 1330
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    .line 1331
    invoke-virtual {v2}, Ljava/time/LocalDateTime;->getNano()I

    move-result v2

    cmp-long v3, v0, v4

    if-gez v3, :cond_10

    if-lez v2, :cond_10

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    mul-long/2addr v0, v11

    const v3, 0xf4240

    .line 1333
    div-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    sub-long v2, v0, v11

    goto :goto_5

    :cond_10
    mul-long/2addr v0, v11

    const v3, 0xf4240

    .line 1335
    div-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v0

    goto :goto_5

    .line 1273
    :cond_11
    :goto_4
    invoke-static {v0, v1, v2, v3}, Laay;->a([BIILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 1278
    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    :cond_12
    :goto_5
    return-wide v2

    .line 1275
    :cond_13
    new-instance v3, Ljava/lang/String;

    sub-int/2addr v2, v1

    invoke-direct {v3, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 1276
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal input "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3, v9}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_14
    :goto_6
    return-wide v4
.end method

.method public static a([CIILjava/time/ZoneId;)J
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_15

    if-nez v2, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v6, 0x4

    if-ne v2, v6, :cond_1

    .line 1350
    aget-char v7, v0, v1

    const/16 v8, 0x6e

    if-ne v7, v8, :cond_1

    add-int/lit8 v7, v1, 0x1

    aget-char v7, v0, v7

    const/16 v8, 0x75

    if-ne v7, v8, :cond_1

    add-int/lit8 v7, v1, 0x2

    aget-char v7, v0, v7

    const/16 v8, 0x6c

    if-ne v7, v8, :cond_1

    add-int/lit8 v7, v1, 0x3

    aget-char v7, v0, v7

    if-ne v7, v8, :cond_1

    return-wide v4

    .line 1361
    :cond_1
    aget-char v7, v0, v1

    const/16 v8, 0x22

    if-ne v7, v8, :cond_3

    add-int/lit8 v9, v2, -0x1

    .line 1362
    aget-char v9, v0, v9

    if-ne v9, v8, :cond_3

    .line 1363
    invoke-static/range {p0 .. p2}, Lcom/alibaba/fastjson2/u;->a([CII)Lcom/alibaba/fastjson2/u;

    move-result-object v1

    .line 1364
    :try_start_0
    sget-object v10, Lxp;->o:Lxp;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    move-object v11, v1

    invoke-virtual/range {v10 .. v15}, Lxp;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 1370
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_13

    .line 1371
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/u;->close()V

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_2

    .line 1363
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v2

    :cond_3
    const/16 v8, 0x13

    if-ne v2, v8, :cond_4

    .line 1373
    invoke-static {v0, v1, v3}, Laay;->b([CILjava/time/ZoneId;)J

    move-result-wide v2

    goto/16 :goto_5

    :cond_4
    const-string v9, "illegal input "

    const/4 v10, 0x0

    if-gt v2, v8, :cond_12

    const/16 v8, 0x10

    const/16 v11, 0x2d

    if-ne v2, v8, :cond_5

    add-int/lit8 v8, v1, 0xa

    .line 1374
    aget-char v8, v0, v8

    const/16 v12, 0x2b

    if-eq v8, v12, :cond_12

    if-ne v8, v11, :cond_5

    goto/16 :goto_4

    :cond_5
    const-wide/16 v12, 0x3e8

    const/16 v8, 0x30

    if-eq v7, v11, :cond_6

    if-lt v7, v8, :cond_d

    const/16 v14, 0x39

    if-gt v7, v14, :cond_d

    .line 1384
    :cond_6
    invoke-static/range {p0 .. p2}, Labe;->a([CII)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1385
    invoke-static/range {p0 .. p2}, Labo;->c([CII)J

    move-result-wide v0

    const/16 v4, 0x8

    if-ne v2, v4, :cond_c

    const-wide/32 v4, 0x12c9985

    cmp-long v2, v0, v4

    if-ltz v2, :cond_c

    const-wide/32 v4, 0x1406fa5

    cmp-long v2, v0, v4

    if-gtz v2, :cond_c

    long-to-int v2, v0

    .line 1387
    div-int/lit16 v14, v2, 0x2710

    .line 1388
    rem-int/lit16 v4, v2, 0x2710

    div-int/lit8 v15, v4, 0x64

    .line 1389
    rem-int/lit8 v2, v2, 0x64

    const/4 v4, 0x1

    if-lt v15, v4, :cond_c

    const/16 v5, 0xc

    if-gt v15, v5, :cond_c

    const/16 v5, 0x1f

    const/4 v7, 0x2

    if-eq v15, v7, :cond_8

    if-eq v15, v6, :cond_7

    const/4 v4, 0x6

    if-eq v15, v4, :cond_7

    const/16 v4, 0x9

    if-eq v15, v4, :cond_7

    const/16 v4, 0xb

    if-eq v15, v4, :cond_7

    goto :goto_3

    :cond_7
    const/16 v5, 0x1e

    goto :goto_3

    :cond_8
    and-int/lit8 v5, v14, 0x3

    if-nez v5, :cond_9

    .line 1395
    rem-int/lit8 v5, v14, 0x64

    if-nez v5, :cond_a

    rem-int/lit16 v5, v14, 0x190

    if-nez v5, :cond_9

    goto :goto_1

    :cond_9
    move v4, v10

    :cond_a
    :goto_1
    if-eqz v4, :cond_b

    const/16 v4, 0x1d

    goto :goto_2

    :cond_b
    const/16 v4, 0x1c

    :goto_2
    move v5, v4

    :goto_3
    if-gt v2, v5, :cond_c

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v16, v2

    .line 1406
    invoke-static/range {v14 .. v19}, Ljava/time/LocalDateTime;->of(IIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    const/4 v1, 0x0

    .line 1407
    invoke-static {v0, v3, v1}, Ljava/time/ZonedDateTime;->ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 1408
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    mul-long/2addr v0, v12

    :cond_c
    move-wide v2, v0

    goto/16 :goto_5

    :cond_d
    add-int/lit8 v6, v2, -0x1

    .line 1414
    aget-char v6, v0, v6

    const/16 v7, 0x5a

    if-ne v6, v7, :cond_e

    add-int/lit8 v2, v2, -0x1

    .line 1417
    sget-object v3, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    .line 1419
    :cond_e
    invoke-static {v0, v1, v2}, Laay;->a([CII)Ljava/time/LocalDateTime;

    move-result-object v6

    if-nez v6, :cond_f

    .line 1420
    aget-char v7, v0, v1

    if-ne v7, v8, :cond_f

    add-int/lit8 v7, v1, 0x1

    aget-char v7, v0, v7

    if-ne v7, v8, :cond_f

    add-int/lit8 v7, v1, 0x2

    aget-char v7, v0, v7

    if-ne v7, v8, :cond_f

    add-int/lit8 v7, v1, 0x3

    aget-char v7, v0, v7

    if-ne v7, v8, :cond_f

    add-int/lit8 v7, v1, 0x4

    aget-char v7, v0, v7

    if-ne v7, v11, :cond_f

    add-int/lit8 v7, v1, 0x5

    aget-char v7, v0, v7

    if-ne v7, v8, :cond_f

    add-int/lit8 v7, v1, 0x6

    aget-char v7, v0, v7

    if-ne v7, v8, :cond_f

    add-int/lit8 v7, v1, 0x7

    aget-char v7, v0, v7

    if-ne v7, v11, :cond_f

    add-int/lit8 v7, v1, 0x8

    aget-char v7, v0, v7

    if-ne v7, v8, :cond_f

    add-int/lit8 v7, v1, 0x9

    aget-char v7, v0, v7

    if-ne v7, v8, :cond_f

    const/16 v14, 0x7b2

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 1433
    invoke-static/range {v14 .. v19}, Ljava/time/LocalDateTime;->of(IIIIII)Ljava/time/LocalDateTime;

    move-result-object v6

    :cond_f
    if-eqz v6, :cond_11

    const/4 v0, 0x0

    .line 1441
    invoke-static {v6, v3, v0}, Ljava/time/ZonedDateTime;->ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 1442
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    .line 1443
    invoke-virtual {v6}, Ljava/time/LocalDateTime;->getNano()I

    move-result v2

    cmp-long v3, v0, v4

    if-gez v3, :cond_10

    if-lez v2, :cond_10

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    mul-long/2addr v0, v12

    const v3, 0xf4240

    .line 1445
    div-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    sub-long v2, v0, v12

    goto :goto_5

    :cond_10
    mul-long/2addr v0, v12

    const v3, 0xf4240

    .line 1447
    div-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v0

    goto :goto_5

    .line 1437
    :cond_11
    new-instance v3, Ljava/lang/String;

    sub-int/2addr v2, v1

    invoke-direct {v3, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 1438
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3, v10}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    .line 1378
    :cond_12
    :goto_4
    invoke-static/range {p0 .. p3}, Laay;->b([CIILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 1383
    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    :cond_13
    :goto_5
    return-wide v2

    .line 1380
    :cond_14
    new-instance v3, Ljava/lang/String;

    sub-int/2addr v2, v1

    invoke-direct {v3, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 1381
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3, v10}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_15
    :goto_6
    return-wide v4
.end method

.method public static a(III)Ljava/lang/String;
    .locals 3

    .line 10514
    sget-object v0, Labf;->A:Ljava/util/function/BiFunction;

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-eqz v0, :cond_0

    .line 10515
    new-array v0, v2, [B

    .line 10516
    invoke-static {v0, v1, p0, p1, p2}, Labe;->a([BIIII)I

    .line 10517
    sget-object p0, Labf;->A:Ljava/util/function/BiFunction;

    sget-object p1, Labf;->e:Ljava/lang/Byte;

    invoke-interface {p0, v0, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 10520
    :cond_0
    new-array v0, v2, [C

    .line 10521
    invoke-static {v0, v1, p0, p1, p2}, Labe;->a([CIIII)I

    .line 10522
    sget-object p0, Labf;->z:Ljava/util/function/BiFunction;

    if-eqz p0, :cond_1

    .line 10523
    sget-object p0, Labf;->z:Ljava/util/function/BiFunction;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 10525
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method static a(IIIIIILaay$c;)Ljava/lang/String;
    .locals 23

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v3, p6

    .line 11058
    div-int/lit8 v4, p0, 0x64

    mul-int/lit8 v5, v4, 0x64

    sub-int v5, p0, v5

    .line 11061
    sget-object v6, Labf;->A:Ljava/util/function/BiFunction;

    const/4 v7, 0x4

    const/16 v9, 0x2d

    const/16 v10, 0xb

    const/16 v11, 0x54

    const/4 v12, 0x5

    const-wide/16 v13, 0x6

    const/4 v15, 0x2

    const/16 v8, 0x13

    const/16 v16, 0x20

    const/16 v17, 0xa

    const/16 v18, 0x2e

    if-eqz v6, :cond_3

    .line 11062
    new-array v6, v8, [B

    .line 11063
    sget-object v8, Laay$c;->DATE_TIME_FORMAT_19_DOT:Laay$c;

    const-wide/16 v19, 0x8

    if-ne v3, v8, :cond_0

    .line 11064
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v7, Labf;->b:J

    sget-object v9, Labe;->k:[S

    aget-short v9, v9, p2

    invoke-virtual {v3, v6, v7, v8, v9}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    aput-byte v18, v6, v15

    .line 11066
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v7, Labf;->b:J

    const-wide/16 v21, 0x3

    add-long v7, v7, v21

    sget-object v9, Labe;->k:[S

    aget-short v9, v9, p1

    invoke-virtual {v3, v6, v7, v8, v9}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    aput-byte v18, v6, v12

    .line 11068
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v7, Labf;->b:J

    add-long/2addr v7, v13

    sget-object v9, Labe;->k:[S

    aget-short v4, v9, v4

    invoke-virtual {v3, v6, v7, v8, v4}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    .line 11069
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v7, Labf;->b:J

    add-long v7, v7, v19

    sget-object v4, Labe;->k:[S

    aget-short v4, v4, v5

    invoke-virtual {v3, v6, v7, v8, v4}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    aput-byte v16, v6, v17

    goto :goto_0

    .line 11072
    :cond_0
    sget-object v8, Laay$c;->DATE_TIME_FORMAT_19_DASH:Laay$c;

    if-ne v3, v8, :cond_1

    move/from16 v11, v16

    .line 11073
    :cond_1
    sget-object v8, Laay$c;->DATE_TIME_FORMAT_19_SLASH:Laay$c;

    if-ne v3, v8, :cond_2

    const/16 v9, 0x2f

    :cond_2
    int-to-byte v3, v9

    .line 11074
    sget-object v8, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v12, Labf;->b:J

    sget-object v9, Labe;->k:[S

    aget-short v4, v9, v4

    invoke-virtual {v8, v6, v12, v13, v4}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    .line 11075
    sget-object v4, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v8, Labf;->b:J

    const-wide/16 v12, 0x2

    add-long/2addr v8, v12

    sget-object v12, Labe;->k:[S

    aget-short v5, v12, v5

    invoke-virtual {v4, v6, v8, v9, v5}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    aput-byte v3, v6, v7

    .line 11077
    sget-object v4, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v7, Labf;->b:J

    const-wide/16 v12, 0x5

    add-long/2addr v7, v12

    sget-object v5, Labe;->k:[S

    aget-short v5, v5, p1

    invoke-virtual {v4, v6, v7, v8, v5}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    const/4 v4, 0x7

    aput-byte v3, v6, v4

    .line 11079
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->b:J

    add-long v4, v4, v19

    sget-object v7, Labe;->k:[S

    aget-short v7, v7, p2

    invoke-virtual {v3, v6, v4, v5, v7}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    int-to-byte v3, v11

    aput-byte v3, v6, v17

    .line 11082
    :goto_0
    invoke-static {v6, v10, v0, v1, v2}, Labe;->b([BIIII)V

    .line 11084
    sget-object v0, Labf;->A:Ljava/util/function/BiFunction;

    sget-object v1, Labf;->e:Ljava/lang/Byte;

    invoke-interface {v0, v6, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 11087
    :cond_3
    new-array v6, v8, [C

    .line 11088
    sget-object v8, Laay$c;->DATE_TIME_FORMAT_19_DOT:Laay$c;

    const-wide/16 v19, 0x10

    if-ne v3, v8, :cond_4

    .line 11089
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v7, Labf;->c:J

    sget-object v9, Labe;->l:[I

    aget v9, v9, p2

    invoke-virtual {v3, v6, v7, v8, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    aput-char v18, v6, v15

    .line 11091
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v7, Labf;->c:J

    add-long/2addr v7, v13

    sget-object v9, Labe;->l:[I

    aget v9, v9, p1

    invoke-virtual {v3, v6, v7, v8, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    aput-char v18, v6, v12

    .line 11093
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v7, Labf;->c:J

    const-wide/16 v11, 0xc

    add-long/2addr v7, v11

    sget-object v9, Labe;->l:[I

    aget v4, v9, v4

    invoke-virtual {v3, v6, v7, v8, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 11094
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v7, Labf;->c:J

    add-long v7, v7, v19

    sget-object v4, Labe;->l:[I

    aget v4, v4, v5

    invoke-virtual {v3, v6, v7, v8, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    aput-char v16, v6, v17

    goto :goto_1

    .line 11097
    :cond_4
    sget-object v8, Laay$c;->DATE_TIME_FORMAT_19_DASH:Laay$c;

    if-ne v3, v8, :cond_5

    move/from16 v11, v16

    .line 11098
    :cond_5
    sget-object v8, Laay$c;->DATE_TIME_FORMAT_19_SLASH:Laay$c;

    if-ne v3, v8, :cond_6

    const/16 v9, 0x2f

    .line 11099
    :cond_6
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v12, Labf;->c:J

    sget-object v8, Labe;->l:[I

    aget v4, v8, v4

    invoke-virtual {v3, v6, v12, v13, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 11100
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v12, Labf;->c:J

    const-wide/16 v14, 0x4

    add-long/2addr v12, v14

    sget-object v4, Labe;->l:[I

    aget v4, v4, v5

    invoke-virtual {v3, v6, v12, v13, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    aput-char v9, v6, v7

    .line 11102
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->c:J

    const-wide/16 v7, 0xa

    add-long/2addr v4, v7

    sget-object v7, Labe;->l:[I

    aget v7, v7, p1

    invoke-virtual {v3, v6, v4, v5, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const/4 v3, 0x7

    aput-char v9, v6, v3

    .line 11104
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->c:J

    add-long v4, v4, v19

    sget-object v7, Labe;->l:[I

    aget v7, v7, p2

    invoke-virtual {v3, v6, v4, v5, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    aput-char v11, v6, v17

    .line 11107
    :goto_1
    invoke-static {v6, v10, v0, v1, v2}, Labe;->b([CIIII)V

    .line 11108
    sget-object v0, Labf;->z:Ljava/util/function/BiFunction;

    if-eqz v0, :cond_7

    .line 11109
    sget-object v0, Labf;->z:Ljava/util/function/BiFunction;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v6, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 11111
    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static a(IIILaay$c;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p3

    .line 10895
    div-int/lit8 v1, p0, 0x64

    mul-int/lit8 v2, v1, 0x64

    sub-int v2, p0, v2

    .line 10898
    sget-object v3, Labf;->A:Ljava/util/function/BiFunction;

    const/4 v4, 0x7

    const/4 v5, 0x4

    const/16 v6, 0x2d

    const/16 v7, 0x2f

    const/4 v8, 0x5

    const-wide/16 v9, 0x6

    const/4 v11, 0x2

    const/16 v12, 0xa

    const/16 v13, 0x2e

    if-eqz v3, :cond_2

    .line 10899
    new-array v3, v12, [B

    .line 10900
    sget-object v12, Laay$c;->DATE_FORMAT_10_DOT:Laay$c;

    const-wide/16 v14, 0x8

    if-ne v0, v12, :cond_0

    .line 10901
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->b:J

    sget-object v6, Labe;->k:[S

    aget-short v6, v6, p2

    invoke-virtual {v0, v3, v4, v5, v6}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    aput-byte v13, v3, v11

    .line 10903
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->b:J

    const-wide/16 v6, 0x3

    add-long/2addr v4, v6

    sget-object v6, Labe;->k:[S

    aget-short v6, v6, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    aput-byte v13, v3, v8

    .line 10905
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->b:J

    add-long/2addr v4, v9

    sget-object v6, Labe;->k:[S

    aget-short v1, v6, v1

    invoke-virtual {v0, v3, v4, v5, v1}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    .line 10906
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->b:J

    add-long/2addr v4, v14

    sget-object v1, Labe;->k:[S

    aget-short v1, v1, v2

    invoke-virtual {v0, v3, v4, v5, v1}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    goto :goto_1

    .line 10908
    :cond_0
    sget-object v8, Laay$c;->DATE_FORMAT_10_DASH:Laay$c;

    if-ne v0, v8, :cond_1

    goto :goto_0

    :cond_1
    move v6, v7

    :goto_0
    int-to-byte v0, v6

    .line 10909
    sget-object v6, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v7, Labf;->b:J

    sget-object v9, Labe;->k:[S

    aget-short v1, v9, v1

    invoke-virtual {v6, v3, v7, v8, v1}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    .line 10910
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v6, Labf;->b:J

    const-wide/16 v8, 0x2

    add-long/2addr v6, v8

    sget-object v8, Labe;->k:[S

    aget-short v2, v8, v2

    invoke-virtual {v1, v3, v6, v7, v2}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    aput-byte v0, v3, v5

    .line 10912
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v5, Labf;->b:J

    const-wide/16 v7, 0x5

    add-long/2addr v5, v7

    sget-object v2, Labe;->k:[S

    aget-short v2, v2, p1

    invoke-virtual {v1, v3, v5, v6, v2}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    aput-byte v0, v3, v4

    .line 10914
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v1, Labf;->b:J

    add-long/2addr v1, v14

    sget-object v4, Labe;->k:[S

    aget-short v4, v4, p2

    invoke-virtual {v0, v3, v1, v2, v4}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    .line 10917
    :goto_1
    sget-object v0, Labf;->A:Ljava/util/function/BiFunction;

    sget-object v1, Labf;->e:Ljava/lang/Byte;

    invoke-interface {v0, v3, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 10920
    :cond_2
    new-array v3, v12, [C

    .line 10921
    sget-object v12, Laay$c;->DATE_FORMAT_10_DOT:Laay$c;

    const-wide/16 v14, 0x10

    if-ne v0, v12, :cond_3

    .line 10922
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->c:J

    sget-object v6, Labe;->l:[I

    aget v6, v6, p2

    invoke-virtual {v0, v3, v4, v5, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    aput-char v13, v3, v11

    .line 10924
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->c:J

    add-long/2addr v4, v9

    sget-object v6, Labe;->l:[I

    aget v6, v6, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    aput-char v13, v3, v8

    .line 10926
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->c:J

    const-wide/16 v6, 0xc

    add-long/2addr v4, v6

    sget-object v6, Labe;->l:[I

    aget v1, v6, v1

    invoke-virtual {v0, v3, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 10927
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->c:J

    add-long/2addr v4, v14

    sget-object v1, Labe;->l:[I

    aget v1, v1, v2

    invoke-virtual {v0, v3, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3

    .line 10929
    :cond_3
    sget-object v8, Laay$c;->DATE_FORMAT_10_DASH:Laay$c;

    if-ne v0, v8, :cond_4

    goto :goto_2

    :cond_4
    move v6, v7

    .line 10930
    :goto_2
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v7, Labf;->c:J

    sget-object v9, Labe;->l:[I

    aget v1, v9, v1

    invoke-virtual {v0, v3, v7, v8, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 10931
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v7, Labf;->c:J

    const-wide/16 v9, 0x4

    add-long/2addr v7, v9

    sget-object v1, Labe;->l:[I

    aget v1, v1, v2

    invoke-virtual {v0, v3, v7, v8, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    aput-char v6, v3, v5

    .line 10933
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v1, Labf;->c:J

    const-wide/16 v7, 0xa

    add-long/2addr v1, v7

    sget-object v5, Labe;->l:[I

    aget v5, v5, p1

    invoke-virtual {v0, v3, v1, v2, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    aput-char v6, v3, v4

    .line 10935
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v1, Labf;->c:J

    add-long/2addr v1, v14

    sget-object v4, Labe;->l:[I

    aget v4, v4, p2

    invoke-virtual {v0, v3, v1, v2, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 10938
    :goto_3
    sget-object v0, Labf;->z:Ljava/util/function/BiFunction;

    if-eqz v0, :cond_5

    .line 10939
    sget-object v0, Labf;->z:Ljava/util/function/BiFunction;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v3, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 10942
    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static a(JLaay$c;)Ljava/lang/String;
    .locals 25

    move-object/from16 v6, p2

    .line 10957
    sget-object v0, Laay;->a:Ljava/time/ZoneId;

    const-wide/16 v1, 0x3e8

    move-wide/from16 v3, p0

    .line 10960
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v1

    .line 10962
    sget-object v5, Laay;->b:Ljava/time/ZoneId;

    if-eq v0, v5, :cond_1

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v5

    sget-object v7, Laay;->c:Ljava/time/zone/ZoneRules;

    if-ne v5, v7, :cond_0

    goto :goto_0

    .line 10965
    :cond_0
    invoke-static/range {p0 .. p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v3

    .line 10966
    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    goto :goto_1

    .line 10963
    :cond_1
    :goto_0
    invoke-static {v1, v2}, Laay;->a(J)I

    move-result v0

    :goto_1
    int-to-long v3, v0

    add-long/2addr v1, v3

    const-wide/32 v3, 0x15180

    .line 10970
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v7

    .line 10971
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    const-wide/32 v1, 0xafaa8

    add-long/2addr v7, v1

    const-wide/16 v1, 0x3c

    sub-long/2addr v7, v1

    const-wide/16 v3, 0x0

    cmp-long v5, v7, v3

    const-wide/16 v9, 0x1

    const-wide/32 v11, 0x23ab1

    const-wide/16 v13, 0x190

    if-gez v5, :cond_2

    add-long v15, v7, v9

    .line 10983
    div-long/2addr v15, v11

    sub-long v1, v15, v9

    mul-long v15, v1, v13

    neg-long v1, v1

    mul-long/2addr v1, v11

    add-long/2addr v7, v1

    goto :goto_2

    :cond_2
    move-wide v15, v3

    :goto_2
    mul-long v1, v7, v13

    const-wide/16 v17, 0x24f

    add-long v1, v1, v17

    .line 10987
    div-long/2addr v1, v11

    const-wide/16 v11, 0x16d

    mul-long v17, v1, v11

    const-wide/16 v19, 0x4

    .line 10988
    div-long v21, v1, v19

    add-long v17, v17, v21

    const-wide/16 v21, 0x64

    div-long v23, v1, v21

    sub-long v17, v17, v23

    div-long v23, v1, v13

    add-long v17, v17, v23

    sub-long v17, v7, v17

    cmp-long v5, v17, v3

    if-gez v5, :cond_3

    sub-long/2addr v1, v9

    mul-long/2addr v11, v1

    .line 10992
    div-long v9, v1, v19

    add-long/2addr v11, v9

    div-long v9, v1, v21

    sub-long/2addr v11, v9

    div-long v9, v1, v13

    add-long/2addr v11, v9

    sub-long v17, v7, v11

    :cond_3
    move-wide/from16 v7, v17

    add-long/2addr v1, v15

    long-to-int v5, v7

    mul-int/lit8 v7, v5, 0x5

    add-int/lit8 v7, v7, 0x2

    .line 10998
    div-int/lit16 v7, v7, 0x99

    add-int/lit8 v8, v7, 0x2

    .line 10999
    rem-int/lit8 v8, v8, 0xc

    add-int/lit8 v8, v8, 0x1

    mul-int/lit16 v9, v7, 0x132

    add-int/lit8 v9, v9, 0x5

    .line 11000
    div-int/lit8 v9, v9, 0xa

    sub-int/2addr v5, v9

    add-int/lit8 v5, v5, 0x1

    .line 11001
    div-int/lit8 v7, v7, 0xa

    int-to-long v9, v7

    add-long/2addr v1, v9

    const-wide/32 v9, -0x3b9ac9ff

    cmp-long v7, v1, v9

    if-ltz v7, :cond_7

    const-wide/32 v9, 0x3b9ac9ff

    cmp-long v7, v1, v9

    if-gtz v7, :cond_7

    long-to-int v1, v1

    .line 11011
    sget-object v2, Laay$c;->DATE_FORMAT_10_DASH:Laay$c;

    if-eq v6, v2, :cond_6

    sget-object v2, Laay$c;->DATE_FORMAT_10_SLASH:Laay$c;

    if-eq v6, v2, :cond_6

    sget-object v2, Laay$c;->DATE_FORMAT_10_DOT:Laay$c;

    if-ne v6, v2, :cond_4

    goto :goto_3

    :cond_4
    int-to-long v9, v0

    cmp-long v0, v9, v3

    if-ltz v0, :cond_5

    const-wide/32 v2, 0x1517f

    cmp-long v0, v9, v2

    if-gtz v0, :cond_5

    const-wide/16 v2, 0xe10

    .line 11025
    div-long v2, v9, v2

    long-to-int v3, v2

    mul-int/lit16 v0, v3, 0xe10

    int-to-long v11, v0

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x3c

    .line 11027
    div-long v11, v9, v11

    long-to-int v4, v11

    mul-int/lit8 v0, v4, 0x3c

    int-to-long v11, v0

    sub-long/2addr v9, v11

    long-to-int v7, v9

    move v0, v1

    move v1, v8

    move v2, v5

    move v5, v7

    move-object/from16 v6, p2

    .line 11035
    invoke-static/range {v0 .. v6}, Laay;->a(IIIIIILaay$c;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 11023
    :cond_5
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid secondOfDay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11012
    :cond_6
    :goto_3
    invoke-static {v1, v8, v5, v6}, Laay;->a(IIILaay$c;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 11005
    :cond_7
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid year "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(JLjava/time/ZoneId;)Ljava/lang/String;
    .locals 25

    const-wide/16 v0, 0x3e8

    move-wide/from16 v2, p0

    .line 10417
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v0

    if-nez p2, :cond_0

    .line 10421
    sget-object v4, Laay;->a:Ljava/time/ZoneId;

    goto :goto_0

    :cond_0
    move-object/from16 v4, p2

    .line 10423
    :goto_0
    sget-object v5, Laay;->b:Ljava/time/ZoneId;

    if-eq v4, v5, :cond_2

    invoke-virtual {v4}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v5

    sget-object v6, Laay;->c:Ljava/time/zone/ZoneRules;

    if-ne v5, v6, :cond_1

    goto :goto_1

    .line 10426
    :cond_1
    invoke-static/range {p0 .. p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v2

    .line 10427
    invoke-virtual {v4}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    goto :goto_2

    .line 10424
    :cond_2
    :goto_1
    invoke-static {v0, v1}, Laay;->a(J)I

    move-result v2

    :goto_2
    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/32 v2, 0x15180

    .line 10431
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v0

    .line 10433
    sget v2, Laay;->j:I

    int-to-long v2, v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x80

    add-long/2addr v2, v4

    long-to-int v2, v2

    .line 10435
    sget-object v3, Laay$b;->a:[Ljava/lang/String;

    if-ltz v2, :cond_3

    .line 10436
    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 10437
    aget-object v4, v3, v2

    if-eqz v4, :cond_3

    return-object v4

    :cond_3
    const-wide/32 v4, 0xafaa8

    add-long/2addr v0, v4

    const-wide/16 v4, 0x3c

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    const-wide/16 v7, 0x1

    const-wide/32 v9, 0x23ab1

    const-wide/16 v11, 0x190

    if-gez v6, :cond_4

    add-long v13, v0, v7

    .line 10454
    div-long/2addr v13, v9

    sub-long/2addr v13, v7

    mul-long v15, v13, v11

    neg-long v13, v13

    mul-long/2addr v13, v9

    add-long/2addr v0, v13

    goto :goto_3

    :cond_4
    move-wide v15, v4

    :goto_3
    mul-long v13, v0, v11

    const-wide/16 v17, 0x24f

    add-long v13, v13, v17

    .line 10458
    div-long/2addr v13, v9

    const-wide/16 v9, 0x16d

    mul-long v17, v13, v9

    const-wide/16 v19, 0x4

    .line 10459
    div-long v21, v13, v19

    add-long v17, v17, v21

    const-wide/16 v21, 0x64

    div-long v23, v13, v21

    sub-long v17, v17, v23

    div-long v23, v13, v11

    add-long v17, v17, v23

    sub-long v17, v0, v17

    cmp-long v4, v17, v4

    if-gez v4, :cond_5

    sub-long/2addr v13, v7

    mul-long/2addr v9, v13

    .line 10463
    div-long v4, v13, v19

    add-long/2addr v9, v4

    div-long v4, v13, v21

    sub-long/2addr v9, v4

    div-long v4, v13, v11

    add-long/2addr v9, v4

    sub-long v17, v0, v9

    :cond_5
    move-wide/from16 v0, v17

    add-long/2addr v13, v15

    long-to-int v0, v0

    mul-int/lit8 v1, v0, 0x5

    add-int/lit8 v1, v1, 0x2

    .line 10469
    div-int/lit16 v1, v1, 0x99

    add-int/lit8 v4, v1, 0x2

    .line 10470
    rem-int/lit8 v4, v4, 0xc

    add-int/lit8 v4, v4, 0x1

    mul-int/lit16 v5, v1, 0x132

    add-int/lit8 v5, v5, 0x5

    .line 10471
    div-int/lit8 v5, v5, 0xa

    sub-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x1

    .line 10472
    div-int/lit8 v1, v1, 0xa

    int-to-long v5, v1

    add-long/2addr v13, v5

    const-wide/32 v5, -0x3b9ac9ff

    cmp-long v1, v13, v5

    if-ltz v1, :cond_9

    const-wide/32 v5, 0x3b9ac9ff

    cmp-long v1, v13, v5

    if-gtz v1, :cond_9

    long-to-int v1, v13

    .line 10482
    div-int/lit8 v5, v1, 0x64

    mul-int/lit8 v6, v5, 0x64

    sub-int/2addr v1, v6

    .line 10486
    sget-object v6, Labf;->A:Ljava/util/function/BiFunction;

    const/16 v7, 0x8

    if-eqz v6, :cond_6

    .line 10487
    new-array v6, v7, [B

    .line 10488
    sget-object v7, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v8, Labf;->b:J

    sget-object v10, Labe;->k:[S

    aget-short v5, v10, v5

    invoke-virtual {v7, v6, v8, v9, v5}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    .line 10489
    sget-object v5, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v7, Labf;->b:J

    const-wide/16 v9, 0x2

    add-long/2addr v7, v9

    sget-object v9, Labe;->k:[S

    aget-short v1, v9, v1

    invoke-virtual {v5, v6, v7, v8, v1}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    .line 10490
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v7, Labf;->b:J

    add-long v7, v7, v19

    sget-object v5, Labe;->k:[S

    aget-short v4, v5, v4

    invoke-virtual {v1, v6, v7, v8, v4}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    .line 10491
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->b:J

    const-wide/16 v7, 0x6

    add-long/2addr v4, v7

    sget-object v7, Labe;->k:[S

    aget-short v0, v7, v0

    invoke-virtual {v1, v6, v4, v5, v0}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    .line 10492
    sget-object v0, Labf;->A:Ljava/util/function/BiFunction;

    sget-object v1, Labf;->e:Ljava/lang/Byte;

    invoke-interface {v0, v6, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_4

    .line 10494
    :cond_6
    new-array v6, v7, [C

    .line 10495
    sget-object v7, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v8, Labf;->c:J

    sget-object v10, Labe;->l:[I

    aget v5, v10, v5

    invoke-virtual {v7, v6, v8, v9, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 10496
    sget-object v5, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v7, Labf;->c:J

    add-long v7, v7, v19

    sget-object v9, Labe;->l:[I

    aget v1, v9, v1

    invoke-virtual {v5, v6, v7, v8, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 10497
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v7, Labf;->c:J

    const-wide/16 v9, 0x8

    add-long/2addr v7, v9

    sget-object v5, Labe;->l:[I

    aget v4, v5, v4

    invoke-virtual {v1, v6, v7, v8, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 10498
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v4, Labf;->c:J

    const-wide/16 v7, 0xc

    add-long/2addr v4, v7

    sget-object v7, Labe;->l:[I

    aget v0, v7, v0

    invoke-virtual {v1, v6, v4, v5, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 10499
    sget-object v0, Labf;->z:Ljava/util/function/BiFunction;

    if-eqz v0, :cond_7

    .line 10500
    sget-object v0, Labf;->z:Ljava/util/function/BiFunction;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v6, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_4

    .line 10502
    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([C)V

    :goto_4
    if-ltz v2, :cond_8

    .line 10506
    array-length v1, v3

    if-ge v2, v1, :cond_8

    .line 10507
    aput-object v0, v3, v2

    :cond_8
    return-object v0

    .line 10476
    :cond_9
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid year "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(JZLjava/time/ZoneId;)Ljava/lang/String;
    .locals 21

    move-wide/from16 v0, p0

    const-wide/16 v2, 0x3e8

    .line 11121
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v2

    .line 11123
    sget-object v4, Laay;->b:Ljava/time/ZoneId;

    move-object/from16 v5, p3

    if-eq v5, v4, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v4

    sget-object v6, Laay;->c:Ljava/time/zone/ZoneRules;

    if-ne v4, v6, :cond_0

    goto :goto_0

    .line 11126
    :cond_0
    invoke-static/range {p0 .. p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v4

    .line 11127
    invoke-virtual/range {p3 .. p3}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    goto :goto_1

    .line 11124
    :cond_1
    :goto_0
    invoke-static {v2, v3}, Laay;->a(J)I

    move-result v4

    :goto_1
    int-to-long v5, v4

    add-long/2addr v2, v5

    const-wide/32 v5, 0x15180

    .line 11131
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v5

    const-wide/32 v7, 0x15180

    .line 11132
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    const-wide/32 v7, 0xafaa8

    add-long/2addr v5, v7

    const-wide/16 v7, 0x3c

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    const-wide/16 v9, 0x1

    const-wide/32 v11, 0x23ab1

    const-wide/16 v13, 0x190

    if-gez v3, :cond_2

    add-long v15, v5, v9

    .line 11144
    div-long/2addr v15, v11

    sub-long v7, v15, v9

    mul-long v15, v7, v13

    neg-long v7, v7

    mul-long/2addr v7, v11

    add-long/2addr v5, v7

    goto :goto_2

    :cond_2
    const-wide/16 v15, 0x0

    :goto_2
    mul-long v7, v5, v13

    const-wide/16 v19, 0x24f

    add-long v7, v7, v19

    .line 11148
    div-long/2addr v7, v11

    const-wide/16 v11, 0x16d

    mul-long/2addr v11, v7

    const-wide/16 v19, 0x4

    .line 11149
    div-long v19, v7, v19

    add-long v11, v11, v19

    const-wide/16 v19, 0x64

    div-long v19, v7, v19

    sub-long v11, v11, v19

    div-long v19, v7, v13

    add-long v11, v11, v19

    sub-long v11, v5, v11

    const-wide/16 v17, 0x0

    cmp-long v3, v11, v17

    if-gez v3, :cond_3

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x16d

    mul-long/2addr v9, v7

    const-wide/16 v11, 0x4

    .line 11153
    div-long v11, v7, v11

    add-long/2addr v9, v11

    const-wide/16 v11, 0x64

    div-long v11, v7, v11

    sub-long/2addr v9, v11

    div-long v11, v7, v13

    add-long/2addr v9, v11

    sub-long v11, v5, v9

    :cond_3
    add-long/2addr v7, v15

    long-to-int v3, v11

    mul-int/lit8 v5, v3, 0x5

    const/4 v6, 0x2

    add-int/2addr v5, v6

    .line 11159
    div-int/lit16 v5, v5, 0x99

    add-int/lit8 v9, v5, 0x2

    .line 11160
    rem-int/lit8 v9, v9, 0xc

    const/4 v10, 0x1

    add-int/2addr v9, v10

    mul-int/lit16 v11, v5, 0x132

    add-int/lit8 v11, v11, 0x5

    const/16 v12, 0xa

    .line 11161
    div-int/2addr v11, v12

    sub-int/2addr v3, v11

    add-int/2addr v3, v10

    .line 11162
    div-int/2addr v5, v12

    int-to-long v13, v5

    add-long/2addr v7, v13

    const-wide/32 v13, -0x3b9ac9ff

    cmp-long v5, v7, v13

    if-ltz v5, :cond_1f

    const-wide/32 v13, 0x3b9ac9ff

    cmp-long v5, v7, v13

    if-gtz v5, :cond_1f

    long-to-int v5, v7

    int-to-long v7, v2

    const-wide/16 v13, 0x0

    cmp-long v2, v7, v13

    if-ltz v2, :cond_1e

    const-wide/32 v13, 0x1517f

    cmp-long v2, v7, v13

    if-gtz v2, :cond_1e

    const-wide/16 v13, 0xe10

    .line 11182
    div-long v13, v7, v13

    long-to-int v2, v13

    mul-int/lit16 v11, v2, 0xe10

    int-to-long v13, v11

    sub-long/2addr v7, v13

    const-wide/16 v13, 0x3c

    .line 11184
    div-long v13, v7, v13

    long-to-int v11, v13

    mul-int/lit8 v13, v11, 0x3c

    int-to-long v13, v13

    sub-long/2addr v7, v13

    long-to-int v7, v7

    const-wide/16 v13, 0x3e8

    .line 11192
    invoke-static {v0, v1, v13, v14}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x4

    const/4 v8, 0x0

    if-nez v0, :cond_4

    move v6, v8

    goto :goto_3

    :cond_4
    if-ge v0, v12, :cond_6

    :cond_5
    move v6, v1

    goto :goto_3

    .line 11200
    :cond_6
    rem-int/lit8 v13, v0, 0x64

    if-nez v13, :cond_7

    goto :goto_3

    .line 11202
    :cond_7
    rem-int/lit8 v6, v0, 0xa

    if-nez v6, :cond_5

    const/4 v6, 0x3

    :goto_3
    if-eqz p2, :cond_9

    if-nez v4, :cond_8

    goto :goto_4

    :cond_8
    const/4 v10, 0x6

    goto :goto_4

    :cond_9
    move v10, v8

    :goto_4
    add-int/lit8 v13, v6, 0x13

    add-int/2addr v10, v13

    .line 11218
    sget-object v14, Labf;->z:Ljava/util/function/BiFunction;

    const/16 v15, 0x13

    const/16 v16, 0x30

    if-eqz v14, :cond_13

    .line 11219
    new-array v14, v10, [C

    .line 11220
    invoke-static {v14, v8, v5, v9, v3}, Labe;->a([CIIII)I

    const/16 v3, 0x20

    .line 11221
    aput-char v3, v14, v12

    const/16 v3, 0xb

    .line 11222
    invoke-static {v14, v3, v2, v11, v7}, Labe;->b([CIIII)V

    if-lez v6, :cond_e

    const/16 v2, 0x2e

    .line 11224
    aput-char v2, v14, v15

    const/16 v2, 0x14

    :goto_5
    if-ge v2, v10, :cond_a

    .line 11226
    aput-char v16, v14, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    if-ge v0, v12, :cond_b

    .line 11229
    invoke-static {v0, v13, v14}, Labe;->a(II[C)V

    goto :goto_6

    .line 11231
    :cond_b
    rem-int/lit8 v2, v0, 0x64

    if-nez v2, :cond_c

    .line 11232
    div-int/lit8 v0, v0, 0x64

    invoke-static {v0, v13, v14}, Labe;->a(II[C)V

    goto :goto_6

    .line 11233
    :cond_c
    rem-int/lit8 v2, v0, 0xa

    if-nez v2, :cond_d

    .line 11234
    div-int/2addr v0, v12

    invoke-static {v0, v13, v14}, Labe;->a(II[C)V

    goto :goto_6

    .line 11236
    :cond_d
    invoke-static {v0, v13, v14}, Labe;->a(II[C)V

    :cond_e
    :goto_6
    if-eqz p2, :cond_12

    .line 11241
    div-int/lit16 v0, v4, 0xe10

    if-nez v4, :cond_f

    const/16 v0, 0x5a

    .line 11243
    aput-char v0, v14, v13

    goto :goto_8

    .line 11245
    :cond_f
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ltz v0, :cond_10

    const/16 v3, 0x2b

    .line 11248
    aput-char v3, v14, v13

    goto :goto_7

    :cond_10
    const/16 v3, 0x2d

    .line 11250
    aput-char v3, v14, v13

    :goto_7
    add-int/lit8 v3, v13, 0x1

    .line 11252
    aput-char v16, v14, v3

    add-int/lit8 v3, v13, 0x3

    .line 11253
    invoke-static {v2, v3, v14}, Labe;->a(II[C)V

    const/16 v2, 0x3a

    .line 11254
    aput-char v2, v14, v3

    add-int/2addr v13, v1

    .line 11255
    aput-char v16, v14, v13

    mul-int/lit16 v0, v0, 0xe10

    sub-int/2addr v4, v0

    .line 11256
    div-int/lit8 v4, v4, 0x3c

    if-gez v4, :cond_11

    neg-int v4, v4

    .line 11260
    :cond_11
    invoke-static {v4, v10, v14}, Labe;->a(II[C)V

    .line 11264
    :cond_12
    :goto_8
    sget-object v0, Labf;->z:Ljava/util/function/BiFunction;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v14, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 11267
    :cond_13
    new-array v14, v10, [B

    .line 11268
    invoke-static {v14, v8, v5, v9, v3}, Labe;->a([BIIII)I

    const/16 v3, 0x20

    .line 11269
    aput-byte v3, v14, v12

    const/16 v3, 0xb

    .line 11270
    invoke-static {v14, v3, v2, v11, v7}, Labe;->b([BIIII)V

    if-lez v6, :cond_18

    const/16 v2, 0x2e

    .line 11272
    aput-byte v2, v14, v15

    const/16 v2, 0x14

    :goto_9
    if-ge v2, v10, :cond_14

    .line 11274
    aput-byte v16, v14, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_14
    if-ge v0, v12, :cond_15

    .line 11277
    invoke-static {v0, v13, v14}, Labe;->a(II[B)V

    goto :goto_a

    .line 11279
    :cond_15
    rem-int/lit8 v2, v0, 0x64

    if-nez v2, :cond_16

    .line 11280
    div-int/lit8 v0, v0, 0x64

    invoke-static {v0, v13, v14}, Labe;->a(II[B)V

    goto :goto_a

    .line 11281
    :cond_16
    rem-int/lit8 v2, v0, 0xa

    if-nez v2, :cond_17

    .line 11282
    div-int/2addr v0, v12

    invoke-static {v0, v13, v14}, Labe;->a(II[B)V

    goto :goto_a

    .line 11284
    :cond_17
    invoke-static {v0, v13, v14}, Labe;->a(II[B)V

    :cond_18
    :goto_a
    if-eqz p2, :cond_1c

    .line 11289
    div-int/lit16 v0, v4, 0xe10

    if-nez v4, :cond_19

    const/16 v0, 0x5a

    .line 11291
    aput-byte v0, v14, v13

    goto :goto_c

    .line 11293
    :cond_19
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ltz v0, :cond_1a

    const/16 v3, 0x2b

    .line 11296
    aput-byte v3, v14, v13

    goto :goto_b

    :cond_1a
    const/16 v3, 0x2d

    .line 11298
    aput-byte v3, v14, v13

    :goto_b
    add-int/lit8 v3, v13, 0x1

    .line 11300
    aput-byte v16, v14, v3

    add-int/lit8 v3, v13, 0x3

    .line 11301
    invoke-static {v2, v3, v14}, Labe;->a(II[B)V

    const/16 v2, 0x3a

    .line 11302
    aput-byte v2, v14, v3

    add-int/2addr v13, v1

    .line 11303
    aput-byte v16, v14, v13

    mul-int/lit16 v0, v0, 0xe10

    sub-int/2addr v4, v0

    .line 11304
    div-int/lit8 v4, v4, 0x3c

    if-gez v4, :cond_1b

    neg-int v4, v4

    .line 11308
    :cond_1b
    invoke-static {v4, v10, v14}, Labe;->a(II[B)V

    .line 11312
    :cond_1c
    :goto_c
    sget-object v0, Labf;->A:Ljava/util/function/BiFunction;

    if-eqz v0, :cond_1d

    .line 11313
    sget-object v0, Labf;->A:Ljava/util/function/BiFunction;

    sget-object v1, Labf;->e:Ljava/lang/Byte;

    invoke-interface {v0, v14, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 11316
    :cond_1d
    new-instance v0, Ljava/lang/String;

    array-length v1, v14

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v14, v8, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0

    .line 11180
    :cond_1e
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid secondOfDay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11166
    :cond_1f
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid year "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/time/LocalDate;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 10859
    :cond_0
    invoke-virtual {p0}, Ljava/time/LocalDate;->getYear()I

    move-result v0

    .line 10860
    invoke-virtual {p0}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v1

    .line 10861
    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v2

    const/4 v3, -0x1

    .line 10863
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "dd.MM.yyyy"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v5

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "yyyy-MM-ddTHH:mm:ss"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v9

    goto :goto_0

    :sswitch_2
    const-string/jumbo v4, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v8

    goto :goto_0

    :sswitch_3
    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_4
    const-string/jumbo v4, "yyyy/MM/dd"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v6

    goto :goto_0

    :sswitch_5
    const-string/jumbo v4, "yyyy-MM-dd"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v7

    :cond_1
    :goto_0
    if-eqz v3, :cond_6

    if-eq v3, v9, :cond_5

    if-eq v3, v8, :cond_5

    if-eq v3, v7, :cond_4

    if-eq v3, v6, :cond_3

    if-eq v3, v5, :cond_2

    .line 10881
    invoke-static {p1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p1

    .line 10882
    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10876
    :cond_2
    sget-object p0, Laay$c;->DATE_FORMAT_10_DOT:Laay$c;

    invoke-static {v0, v1, v2, p0}, Laay;->a(IIILaay$c;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10874
    :cond_3
    sget-object p0, Laay$c;->DATE_FORMAT_10_SLASH:Laay$c;

    invoke-static {v0, v1, v2, p0}, Laay;->a(IIILaay$c;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10872
    :cond_4
    sget-object p0, Laay$c;->DATE_FORMAT_10_DASH:Laay$c;

    invoke-static {v0, v1, v2, p0}, Laay;->a(IIILaay$c;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 10869
    sget-object v6, Laay$c;->DATE_TIME_FORMAT_19_DASH_T:Laay$c;

    invoke-static/range {v0 .. v6}, Laay;->a(IIIIIILaay$c;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 10865
    sget-object v6, Laay$c;->DATE_TIME_FORMAT_19_DASH:Laay$c;

    invoke-static/range {v0 .. v6}, Laay;->a(IIIIIILaay$c;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x985fe00 -> :sswitch_5
        -0x61c4540 -> :sswitch_4
        0x4f76f1a0 -> :sswitch_3
        0x6b2ed43a -> :sswitch_2
        0x6d5d7dd4 -> :sswitch_1
        0x7147a660 -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(Ljava/time/LocalDateTime;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 10795
    :cond_0
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    .line 10796
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v1

    .line 10797
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v2

    const/4 v3, -0x1

    .line 10799
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "dd.MM.yyyy"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v5

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "yyyy-MM-ddTHH:mm:ss"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v9

    goto :goto_0

    :sswitch_2
    const-string/jumbo v4, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v8

    goto :goto_0

    :sswitch_3
    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_4
    const-string/jumbo v4, "yyyy/MM/dd"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v6

    goto :goto_0

    :sswitch_5
    const-string/jumbo v4, "yyyy-MM-dd"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v7

    :cond_1
    :goto_0
    if-eqz v3, :cond_6

    if-eq v3, v9, :cond_5

    if-eq v3, v8, :cond_5

    if-eq v3, v7, :cond_4

    if-eq v3, v6, :cond_3

    if-eq v3, v5, :cond_2

    .line 10823
    invoke-static {p1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p1

    .line 10824
    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10818
    :cond_2
    sget-object p0, Laay$c;->DATE_FORMAT_10_DOT:Laay$c;

    invoke-static {v0, v1, v2, p0}, Laay;->a(IIILaay$c;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10816
    :cond_3
    sget-object p0, Laay$c;->DATE_FORMAT_10_SLASH:Laay$c;

    invoke-static {v0, v1, v2, p0}, Laay;->a(IIILaay$c;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10814
    :cond_4
    invoke-static {v0, v1, v2}, Laay;->a(III)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10808
    :cond_5
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getHour()I

    move-result v3

    .line 10809
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v4

    .line 10810
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v5

    .line 10811
    sget-object v6, Laay$c;->DATE_TIME_FORMAT_19_DASH_T:Laay$c;

    invoke-static/range {v0 .. v6}, Laay;->a(IIIIIILaay$c;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10801
    :cond_6
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getHour()I

    move-result v3

    .line 10802
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v4

    .line 10803
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v5

    .line 10804
    sget-object v6, Laay$c;->DATE_TIME_FORMAT_19_DASH:Laay$c;

    invoke-static/range {v0 .. v6}, Laay;->a(IIIIIILaay$c;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x985fe00 -> :sswitch_5
        -0x61c4540 -> :sswitch_4
        0x4f76f1a0 -> :sswitch_3
        0x6b2ed43a -> :sswitch_2
        0x6d5d7dd4 -> :sswitch_1
        0x7147a660 -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 10953
    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-object p0, Laay$c;->DATE_TIME_FORMAT_19_DASH:Laay$c;

    invoke-static {v0, v1, p0}, Laay;->a(JLaay$c;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 10675
    invoke-static {p0}, Laay;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, -0x1

    .line 10678
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "dd.MM.yyyy"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "yyyy-MM-ddTHH:mm:ss"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "dd.MM.yyyy HH:mm:ss"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_5
    const-string/jumbo v1, "yyyy/MM/dd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_6
    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_7
    const-string/jumbo v1, "yyyyMMdd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x4

    :cond_2
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 10701
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 10702
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    .line 10703
    sget-object v0, Laay;->a:Ljava/time/ZoneId;

    invoke-virtual {p0, v0}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    .line 10705
    invoke-static {p1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p1

    .line 10706
    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10696
    :pswitch_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sget-object v0, Laay$c;->DATE_FORMAT_10_DOT:Laay$c;

    invoke-static {p0, p1, v0}, Laay;->a(JLaay$c;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10694
    :pswitch_1
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sget-object v0, Laay$c;->DATE_FORMAT_10_SLASH:Laay$c;

    invoke-static {p0, p1, v0}, Laay;->a(JLaay$c;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10692
    :pswitch_2
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sget-object v0, Laay;->a:Ljava/time/ZoneId;

    invoke-static {p0, p1, v0}, Laay;->b(JLjava/time/ZoneId;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10690
    :pswitch_3
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sget-object v0, Laay;->a:Ljava/time/ZoneId;

    invoke-static {p0, p1, v0}, Laay;->a(JLjava/time/ZoneId;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10687
    :pswitch_4
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sget-object v0, Laay$c;->DATE_TIME_FORMAT_19_DOT:Laay$c;

    invoke-static {p0, p1, v0}, Laay;->a(JLaay$c;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10684
    :pswitch_5
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sget-object v0, Laay$c;->DATE_TIME_FORMAT_19_DASH_T:Laay$c;

    invoke-static {p0, p1, v0}, Laay;->a(JLaay$c;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10680
    :pswitch_6
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sget-object v0, Laay$c;->DATE_TIME_FORMAT_19_DASH:Laay$c;

    invoke-static {p0, p1, v0}, Laay;->a(JLaay$c;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x10781ba0 -> :sswitch_7
        -0x985fe00 -> :sswitch_6
        -0x61c4540 -> :sswitch_5
        0x4f76f1a0 -> :sswitch_4
        0x534c3940 -> :sswitch_3
        0x6b2ed43a -> :sswitch_2
        0x6d5d7dd4 -> :sswitch_1
        0x7147a660 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(CCCCCCCCCCCCCC)Ljava/time/LocalDateTime;
    .locals 16

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    const/16 v15, 0x30

    if-lt v0, v15, :cond_8

    const/16 v14, 0x39

    if-gt v0, v14, :cond_8

    if-lt v1, v15, :cond_8

    if-gt v1, v14, :cond_8

    if-lt v2, v15, :cond_8

    if-gt v2, v14, :cond_8

    if-lt v3, v15, :cond_8

    if-gt v3, v14, :cond_8

    sub-int/2addr v0, v15

    mul-int/lit16 v0, v0, 0x3e8

    sub-int/2addr v1, v15

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    add-int/lit8 v1, v3, -0x30

    add-int/2addr v0, v1

    if-lt v4, v15, :cond_7

    if-gt v4, v14, :cond_7

    if-lt v5, v15, :cond_7

    if-gt v5, v14, :cond_7

    add-int/lit8 v1, v4, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, v5, -0x30

    add-int/2addr v1, v2

    if-lt v6, v15, :cond_6

    if-gt v6, v14, :cond_6

    if-lt v7, v15, :cond_6

    if-gt v7, v14, :cond_6

    add-int/lit8 v2, v6, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v7, -0x30

    add-int/2addr v2, v3

    if-lt v8, v15, :cond_5

    if-gt v8, v14, :cond_5

    if-lt v9, v15, :cond_5

    if-gt v9, v14, :cond_5

    add-int/lit8 v3, v8, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, v9, -0x30

    add-int/2addr v3, v4

    if-lt v10, v15, :cond_4

    if-gt v10, v14, :cond_4

    if-lt v11, v15, :cond_4

    if-gt v11, v14, :cond_4

    add-int/lit8 v4, v10, -0x30

    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v5, v11, -0x30

    add-int/2addr v4, v5

    if-lt v12, v15, :cond_3

    if-gt v12, v14, :cond_3

    if-lt v13, v15, :cond_3

    if-gt v13, v14, :cond_3

    add-int/lit8 v5, v12, -0x30

    mul-int/lit8 v5, v5, 0xa

    add-int/lit8 v6, v13, -0x30

    add-int/2addr v5, v6

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    const/4 v6, 0x0

    return-object v6

    :cond_0
    const/16 v6, 0x18

    if-gt v3, v6, :cond_2

    const/16 v6, 0x3c

    if-gt v4, v6, :cond_2

    if-le v5, v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    move/from16 p0, v0

    move/from16 p1, v1

    move/from16 p2, v2

    move/from16 p3, v3

    move/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    .line 10066
    invoke-static/range {p0 .. p6}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0

    :cond_6
    const/4 v0, 0x0

    return-object v0

    :cond_7
    const/4 v0, 0x0

    return-object v0

    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method

.method public static a(CCCCCCCCCCCCCCCCCCCCCCC)Ljava/time/LocalDateTime;
    .locals 17

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    const/16 v16, 0x0

    const/16 v15, 0x30

    if-lt v0, v15, :cond_0

    const/16 v14, 0x39

    if-gt v0, v14, :cond_0

    if-lt v1, v15, :cond_0

    if-gt v1, v14, :cond_0

    if-lt v2, v15, :cond_0

    if-gt v2, v14, :cond_0

    if-lt v3, v15, :cond_0

    if-gt v3, v14, :cond_0

    sub-int/2addr v0, v15

    mul-int/lit16 v0, v0, 0x3e8

    sub-int/2addr v1, v15

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    add-int/lit8 v1, v3, -0x30

    add-int/2addr v0, v1

    if-lt v4, v15, :cond_0

    if-gt v4, v14, :cond_0

    if-lt v5, v15, :cond_0

    if-gt v5, v14, :cond_0

    add-int/lit8 v1, v4, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, v5, -0x30

    add-int/2addr v1, v2

    if-lt v6, v15, :cond_0

    if-gt v6, v14, :cond_0

    if-lt v7, v15, :cond_0

    if-gt v7, v14, :cond_0

    add-int/lit8 v2, v6, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v7, -0x30

    add-int/2addr v2, v3

    if-lt v8, v15, :cond_0

    if-gt v8, v14, :cond_0

    if-lt v9, v15, :cond_0

    if-gt v9, v14, :cond_0

    add-int/lit8 v3, v8, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, v9, -0x30

    add-int/2addr v3, v4

    if-lt v10, v15, :cond_0

    if-gt v10, v14, :cond_0

    if-lt v11, v15, :cond_0

    if-gt v11, v14, :cond_0

    add-int/lit8 v4, v10, -0x30

    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v5, v11, -0x30

    add-int/2addr v4, v5

    if-lt v12, v15, :cond_0

    if-gt v12, v14, :cond_0

    if-lt v13, v15, :cond_0

    if-gt v13, v14, :cond_0

    add-int/lit8 v5, v12, -0x30

    mul-int/lit8 v5, v5, 0xa

    add-int/lit8 v6, v13, -0x30

    add-int/2addr v5, v6

    move/from16 v6, p14

    move v7, v14

    if-lt v6, v15, :cond_0

    if-gt v6, v7, :cond_0

    move/from16 v8, p15

    move v9, v15

    if-lt v8, v9, :cond_0

    if-gt v8, v7, :cond_0

    move/from16 v10, p16

    if-lt v10, v9, :cond_0

    if-gt v10, v7, :cond_0

    move/from16 v11, p17

    if-lt v11, v9, :cond_0

    if-gt v11, v7, :cond_0

    move/from16 v12, p18

    if-lt v12, v9, :cond_0

    if-gt v12, v7, :cond_0

    move/from16 v13, p19

    if-lt v13, v9, :cond_0

    if-gt v13, v7, :cond_0

    move/from16 v14, p20

    if-lt v14, v9, :cond_0

    if-gt v14, v7, :cond_0

    move/from16 v15, p21

    if-lt v15, v9, :cond_0

    if-gt v15, v7, :cond_0

    move/from16 p5, v5

    move/from16 v5, p22

    if-lt v5, v9, :cond_0

    if-gt v5, v7, :cond_0

    sub-int/2addr v6, v9

    const v7, 0x5f5e100

    mul-int/2addr v6, v7

    add-int/lit8 v7, v8, -0x30

    const v8, 0x989680

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int/lit8 v7, v10, -0x30

    const v8, 0xf4240

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int/lit8 v7, v11, -0x30

    const v8, 0x186a0

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int/lit8 v7, v12, -0x30

    mul-int/lit16 v7, v7, 0x2710

    add-int/2addr v6, v7

    add-int/lit8 v7, v13, -0x30

    mul-int/lit16 v7, v7, 0x3e8

    add-int/2addr v6, v7

    add-int/lit8 v7, v14, -0x30

    mul-int/lit8 v7, v7, 0x64

    add-int/2addr v6, v7

    add-int/lit8 v7, v15, -0x30

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v6, v7

    sub-int/2addr v5, v9

    add-int/2addr v5, v6

    move/from16 p0, v0

    move/from16 p1, v1

    move/from16 p2, v2

    move/from16 p3, v3

    move/from16 p4, v4

    move/from16 p6, v5

    .line 10173
    invoke-static/range {p0 .. p6}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v16
.end method

.method public static a(Ljava/lang/String;II)Ljava/time/LocalDateTime;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 202
    :cond_0
    sget-object v1, Labf;->B:Ljava/util/function/ToIntFunction;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    sget-object v1, Labf;->C:Ljava/util/function/Function;

    if-eqz v1, :cond_1

    sget-object v1, Labf;->B:Ljava/util/function/ToIntFunction;

    invoke-interface {v1, p0}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_1

    .line 203
    sget-object v1, Labf;->C:Ljava/util/function/Function;

    invoke-interface {v1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 204
    invoke-static {v1, p1, p2}, Laay;->a([BII)Ljava/time/LocalDateTime;

    move-result-object p2

    goto :goto_0

    .line 205
    :cond_1
    sget v1, Labf;->d:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    sget-boolean v1, Labf;->i:Z

    if-nez v1, :cond_2

    .line 206
    invoke-static {p0}, Labf;->a(Ljava/lang/String;)[C

    move-result-object v1

    .line 207
    invoke-static {v1, p1, p2}, Laay;->a([CII)Ljava/time/LocalDateTime;

    move-result-object p2

    goto :goto_0

    .line 209
    :cond_2
    new-array v1, p2, [C

    add-int v3, p1, p2

    .line 210
    invoke-virtual {p0, p1, v3, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 211
    invoke-static {v1, p1, p2}, Laay;->a([CII)Ljava/time/LocalDateTime;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_4

    const/4 p2, -0x1

    .line 215
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v1, "0000-00-00"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x7

    goto :goto_2

    :sswitch_1
    const-string v1, "0000\u5e7400\u670800\u65e5"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    goto :goto_2

    :sswitch_2
    const-string v1, "null"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :sswitch_3
    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :sswitch_4
    const-string v1, "00000000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x2

    goto :goto_2

    :sswitch_5
    const-string v1, "000000000000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    goto :goto_2

    :sswitch_6
    const-string v1, "0000-00-0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x6

    goto :goto_2

    :sswitch_7
    const-string v1, "0000-0-00"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x5

    goto :goto_2

    :cond_3
    :goto_1
    move v2, p2

    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 226
    new-instance p2, Ljava/time/format/DateTimeParseException;

    invoke-direct {p2, p0, p0, p1}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw p2

    :pswitch_0
    return-object v0

    :cond_4
    return-object p2

    :cond_5
    :goto_3
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x794e6996 -> :sswitch_7
        -0x794e5eb0 -> :sswitch_6
        -0x4f2e5c00 -> :sswitch_5
        -0x45f8e800 -> :sswitch_4
        0x0 -> :sswitch_3
        0x33c587 -> :sswitch_2
        0x52cad51 -> :sswitch_1
        0x4f8288e0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static a([BII)Ljava/time/LocalDateTime;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 1141
    :pswitch_0
    invoke-static {p0, p1, p2}, Laay;->c([BII)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 1139
    :pswitch_1
    invoke-static {p0, p1}, Laay;->q([BI)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 1137
    :pswitch_2
    invoke-static {p0, p1}, Laay;->p([BI)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 1135
    :pswitch_3
    invoke-static {p0, p1}, Laay;->o([BI)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 1133
    :pswitch_4
    invoke-static {p0, p1}, Laay;->n([BI)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 1131
    :pswitch_5
    invoke-static {p0, p1}, Laay;->m([BI)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 1129
    :pswitch_6
    invoke-static {p0, p1}, Laay;->l([BI)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 1127
    :pswitch_7
    invoke-static {p0, p1}, Laay;->k([BI)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 1122
    :pswitch_8
    invoke-static {p0, p1}, Laay;->j([BI)Ljava/time/LocalDate;

    move-result-object p0

    sget-object p1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    .line 1121
    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 1114
    :pswitch_9
    invoke-static {p0, p1}, Laay;->i([BI)Ljava/time/LocalDate;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 1118
    :cond_1
    sget-object p1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 1107
    :pswitch_a
    invoke-static {p0, p1}, Laay;->h([BI)Ljava/time/LocalDate;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    .line 1111
    :cond_2
    sget-object p1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 1100
    :pswitch_b
    invoke-static {p0, p1}, Laay;->g([BI)Ljava/time/LocalDate;

    move-result-object p0

    if-nez p0, :cond_3

    return-object v0

    .line 1104
    :cond_3
    sget-object p1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 1094
    :pswitch_c
    aget-byte v1, p0, p1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_4

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_4

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_4

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    if-ne v1, v2, :cond_4

    return-object v0

    .line 1097
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    .line 1098
    new-instance p0, Ljava/time/format/DateTimeParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "illegal input "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, v0, p2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw p0

    :cond_5
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static a([CII)Ljava/time/LocalDateTime;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 292
    :pswitch_0
    invoke-static {p0, p1, p2}, Laay;->c([CII)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 290
    :pswitch_1
    invoke-static {p0, p1}, Laay;->q([CI)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 288
    :pswitch_2
    invoke-static {p0, p1}, Laay;->p([CI)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 286
    :pswitch_3
    invoke-static {p0, p1}, Laay;->o([CI)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 284
    :pswitch_4
    invoke-static {p0, p1}, Laay;->n([CI)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 282
    :pswitch_5
    invoke-static {p0, p1}, Laay;->m([CI)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 280
    :pswitch_6
    invoke-static {p0, p1}, Laay;->l([CI)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 278
    :pswitch_7
    invoke-static {p0, p1}, Laay;->k([CI)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 271
    :pswitch_8
    invoke-static {p0, p1}, Laay;->j([CI)Ljava/time/LocalDate;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 275
    :cond_1
    sget-object p1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 264
    :pswitch_9
    invoke-static {p0, p1}, Laay;->i([CI)Ljava/time/LocalDate;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    .line 268
    :cond_2
    sget-object p1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 257
    :pswitch_a
    invoke-static {p0, p1}, Laay;->h([CI)Ljava/time/LocalDate;

    move-result-object p0

    if-nez p0, :cond_3

    return-object v0

    .line 261
    :cond_3
    sget-object p1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    :pswitch_b
    const/4 p2, 0x2

    .line 246
    aget-char p2, p0, p2

    const/16 v1, 0x3a

    if-ne p2, v1, :cond_4

    const/4 p2, 0x5

    aget-char p2, p0, p2

    if-ne p2, v1, :cond_4

    .line 247
    invoke-static {p0, p1}, Laay;->b([CI)Ljava/time/LocalTime;

    move-result-object p0

    .line 248
    sget-object p1, Laay;->e:Ljava/time/LocalDate;

    invoke-static {p1, p0}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 250
    :cond_4
    invoke-static {p0, p1}, Laay;->g([CI)Ljava/time/LocalDate;

    move-result-object p0

    if-nez p0, :cond_5

    return-object v0

    .line 254
    :cond_5
    sget-object p1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 240
    :pswitch_c
    aget-char v1, p0, p1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_6

    add-int/lit8 v1, p1, 0x1

    aget-char v1, p0, v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_6

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p0, v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_6

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p0, v1

    if-ne v1, v2, :cond_6

    return-object v0

    .line 243
    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 244
    new-instance p0, Ljava/time/format/DateTimeParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "illegal input "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, v0, p2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw p0

    :cond_7
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static a(CCCCCCCC)Ljava/time/LocalTime;
    .locals 2

    const/16 v0, 0x3a

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    if-ne p5, v0, :cond_0

    const/16 p2, 0x30

    if-lt p0, p2, :cond_0

    const/16 p5, 0x39

    if-gt p0, p5, :cond_0

    if-lt p1, p2, :cond_0

    if-gt p1, p5, :cond_0

    sub-int/2addr p0, p2

    mul-int/lit8 p0, p0, 0xa

    sub-int/2addr p1, p2

    add-int/2addr p0, p1

    if-lt p3, p2, :cond_0

    if-gt p3, p5, :cond_0

    if-lt p4, p2, :cond_0

    if-gt p4, p5, :cond_0

    sub-int/2addr p3, p2

    mul-int/lit8 p3, p3, 0xa

    sub-int/2addr p4, p2

    add-int/2addr p3, p4

    if-lt p6, p2, :cond_0

    if-gt p6, p5, :cond_0

    if-lt p7, p2, :cond_0

    if-gt p7, p5, :cond_0

    sub-int/2addr p6, p2

    mul-int/lit8 p6, p6, 0xa

    sub-int/2addr p7, p2

    add-int/2addr p6, p7

    .line 463
    invoke-static {p0, p3, p6}, Ljava/time/LocalTime;->of(III)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method

.method public static a([BI)Ljava/time/LocalTime;
    .locals 5

    add-int/lit8 v0, p1, 0x5

    .line 297
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 301
    :cond_0
    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 302
    aget-byte v1, p0, v1

    add-int/lit8 v3, p1, 0x2

    .line 303
    aget-byte v3, p0, v3

    add-int/lit8 v4, p1, 0x3

    .line 304
    aget-byte v4, p0, v4

    add-int/lit8 p1, p1, 0x4

    .line 305
    aget-byte p0, p0, p1

    const/16 p1, 0x3a

    if-ne v3, p1, :cond_1

    const/16 p1, 0x30

    if-lt v0, p1, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    if-lt v1, p1, :cond_1

    if-gt v1, v3, :cond_1

    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    if-lt v4, p1, :cond_1

    if-gt v4, v3, :cond_1

    if-lt p0, p1, :cond_1

    if-gt p0, v3, :cond_1

    sub-int/2addr v4, p1

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr p0, p1

    add-int/2addr v4, p0

    .line 335
    invoke-static {v0, v4}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2
.end method

.method public static a([CI)Ljava/time/LocalTime;
    .locals 5

    add-int/lit8 v0, p1, 0x5

    .line 339
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 343
    :cond_0
    aget-char v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 344
    aget-char v1, p0, v1

    add-int/lit8 v3, p1, 0x2

    .line 345
    aget-char v3, p0, v3

    add-int/lit8 v4, p1, 0x3

    .line 346
    aget-char v4, p0, v4

    add-int/lit8 p1, p1, 0x4

    .line 347
    aget-char p0, p0, p1

    const/16 p1, 0x3a

    if-ne v3, p1, :cond_1

    const/16 p1, 0x30

    if-lt v0, p1, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    if-lt v1, p1, :cond_1

    if-gt v1, v3, :cond_1

    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    if-lt v4, p1, :cond_1

    if-gt v4, v3, :cond_1

    if-lt p0, p1, :cond_1

    if-gt p0, v3, :cond_1

    sub-int/2addr v4, p1

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr p0, p1

    add-int/2addr v4, p0

    .line 377
    invoke-static {v0, v4}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2
.end method

.method public static a([BIILjava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 69

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    if-nez v2, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    const/16 v4, 0x10

    if-ne v2, v4, :cond_2

    .line 5969
    invoke-static {v0, v1, v3}, Laay;->a([BILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v4, 0x13

    if-ge v2, v4, :cond_3

    const/4 v0, 0x0

    return-object v0

    .line 5978
    :cond_3
    aget-byte v5, v0, v1

    int-to-char v5, v5

    add-int/lit8 v6, v1, 0x1

    .line 5979
    aget-byte v6, v0, v6

    int-to-char v6, v6

    add-int/lit8 v7, v1, 0x2

    .line 5980
    aget-byte v7, v0, v7

    int-to-char v7, v7

    add-int/lit8 v8, v1, 0x3

    .line 5981
    aget-byte v9, v0, v8

    int-to-char v9, v9

    add-int/lit8 v10, v1, 0x4

    .line 5982
    aget-byte v10, v0, v10

    int-to-char v10, v10

    add-int/lit8 v11, v1, 0x5

    .line 5983
    aget-byte v11, v0, v11

    int-to-char v11, v11

    add-int/lit8 v12, v1, 0x6

    .line 5984
    aget-byte v12, v0, v12

    int-to-char v12, v12

    add-int/lit8 v13, v1, 0x7

    .line 5985
    aget-byte v13, v0, v13

    int-to-char v13, v13

    add-int/lit8 v14, v1, 0x8

    .line 5986
    aget-byte v14, v0, v14

    int-to-char v14, v14

    add-int/lit8 v15, v1, 0x9

    .line 5987
    aget-byte v15, v0, v15

    int-to-char v15, v15

    add-int/lit8 v16, v1, 0xa

    .line 5988
    aget-byte v4, v0, v16

    int-to-char v4, v4

    add-int/lit8 v16, v1, 0xb

    move/from16 v18, v8

    .line 5989
    aget-byte v8, v0, v16

    int-to-char v8, v8

    add-int/lit8 v16, v1, 0xc

    .line 5990
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, v1, 0xd

    move/from16 v19, v14

    .line 5991
    aget-byte v14, v0, v16

    int-to-char v14, v14

    add-int/lit8 v16, v1, 0xe

    move/from16 v20, v15

    .line 5992
    aget-byte v15, v0, v16

    int-to-char v15, v15

    add-int/lit8 v16, v1, 0xf

    move/from16 v21, v3

    .line 5993
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, v1, 0x10

    move/from16 v22, v3

    .line 5994
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, v1, 0x11

    move/from16 v23, v5

    .line 5995
    aget-byte v5, v0, v16

    int-to-char v5, v5

    add-int/lit8 v16, v1, 0x12

    move/from16 v24, v6

    .line 5996
    aget-byte v6, v0, v16

    int-to-char v6, v6

    move/from16 v16, v6

    const/16 v6, 0x13

    move/from16 v25, v9

    if-ne v2, v6, :cond_4

    const/16 v6, 0x20

    goto :goto_0

    :cond_4
    add-int/lit8 v6, v1, 0x13

    .line 5997
    aget-byte v6, v0, v6

    int-to-char v6, v6

    :goto_0
    const/16 v26, 0x0

    const/16 v27, 0x30

    packed-switch v2, :pswitch_data_0

    add-int/lit8 v9, v1, 0x14

    .line 6069
    aget-byte v9, v0, v9

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x15

    move/from16 v29, v9

    .line 6070
    aget-byte v9, v0, v28

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x16

    move/from16 v30, v9

    .line 6071
    aget-byte v9, v0, v28

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x17

    move/from16 v31, v9

    .line 6072
    aget-byte v9, v0, v28

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x18

    move/from16 v32, v9

    .line 6073
    aget-byte v9, v0, v28

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x19

    move/from16 v33, v9

    .line 6074
    aget-byte v9, v0, v28

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x1a

    move/from16 v34, v9

    .line 6075
    aget-byte v9, v0, v28

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x1b

    move/from16 v35, v9

    .line 6076
    aget-byte v9, v0, v28

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x1c

    move/from16 v36, v9

    .line 6077
    aget-byte v9, v0, v28

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x1d

    move/from16 v37, v9

    .line 6078
    aget-byte v9, v0, v28

    int-to-char v9, v9

    move/from16 v44, v9

    move/from16 v28, v29

    move/from16 v9, v30

    move/from16 v0, v31

    move/from16 v38, v32

    move/from16 v39, v33

    move/from16 v40, v34

    move/from16 v41, v35

    move/from16 v42, v36

    move/from16 v43, v37

    goto/16 :goto_2

    :pswitch_0
    add-int/lit8 v28, v1, 0x14

    .line 6058
    aget-byte v9, v0, v28

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x15

    move/from16 v29, v9

    .line 6059
    aget-byte v9, v0, v28

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x16

    move/from16 v30, v9

    .line 6060
    aget-byte v9, v0, v28

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x17

    move/from16 v31, v9

    .line 6061
    aget-byte v9, v0, v28

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x18

    move/from16 v32, v9

    .line 6062
    aget-byte v9, v0, v28

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x19

    move/from16 v33, v9

    .line 6063
    aget-byte v9, v0, v28

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x1a

    move/from16 v34, v9

    .line 6064
    aget-byte v9, v0, v28

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x1b

    move/from16 v35, v9

    .line 6065
    aget-byte v9, v0, v28

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x1c

    move/from16 v36, v9

    .line 6066
    aget-byte v9, v0, v28

    int-to-char v9, v9

    move/from16 v43, v9

    move/from16 v44, v26

    move/from16 v28, v29

    move/from16 v9, v30

    move/from16 v0, v31

    move/from16 v38, v32

    move/from16 v39, v33

    move/from16 v40, v34

    move/from16 v41, v35

    move/from16 v42, v36

    goto/16 :goto_2

    :pswitch_1
    add-int/lit8 v9, v1, 0x14

    .line 6048
    aget-byte v9, v0, v9

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x15

    move/from16 v29, v9

    .line 6049
    aget-byte v9, v0, v28

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x16

    move/from16 v30, v9

    .line 6050
    aget-byte v9, v0, v28

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x17

    move/from16 v31, v9

    .line 6051
    aget-byte v9, v0, v28

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x18

    move/from16 v32, v9

    .line 6052
    aget-byte v9, v0, v28

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x19

    move/from16 v33, v9

    .line 6053
    aget-byte v9, v0, v28

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x1a

    move/from16 v34, v9

    .line 6054
    aget-byte v9, v0, v28

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x1b

    move/from16 v35, v9

    .line 6055
    aget-byte v9, v0, v28

    int-to-char v9, v9

    move/from16 v42, v9

    move/from16 v44, v26

    move/from16 v43, v27

    move/from16 v28, v29

    move/from16 v9, v30

    move/from16 v0, v31

    move/from16 v38, v32

    move/from16 v39, v33

    move/from16 v40, v34

    move/from16 v41, v35

    goto/16 :goto_2

    :pswitch_2
    add-int/lit8 v9, v1, 0x14

    .line 6039
    aget-byte v9, v0, v9

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x15

    move/from16 v29, v9

    .line 6040
    aget-byte v9, v0, v28

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x16

    move/from16 v30, v9

    .line 6041
    aget-byte v9, v0, v28

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x17

    move/from16 v31, v9

    .line 6042
    aget-byte v9, v0, v28

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x18

    move/from16 v32, v9

    .line 6043
    aget-byte v9, v0, v28

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x19

    move/from16 v33, v9

    .line 6044
    aget-byte v9, v0, v28

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x1a

    move/from16 v34, v9

    .line 6045
    aget-byte v9, v0, v28

    int-to-char v9, v9

    move/from16 v41, v9

    move/from16 v44, v26

    move/from16 v42, v27

    move/from16 v43, v42

    move/from16 v28, v29

    move/from16 v9, v30

    move/from16 v0, v31

    move/from16 v38, v32

    move/from16 v39, v33

    move/from16 v40, v34

    goto/16 :goto_2

    :pswitch_3
    add-int/lit8 v9, v1, 0x14

    .line 6031
    aget-byte v9, v0, v9

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x15

    move/from16 v29, v9

    .line 6032
    aget-byte v9, v0, v28

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x16

    move/from16 v30, v9

    .line 6033
    aget-byte v9, v0, v28

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x17

    move/from16 v31, v9

    .line 6034
    aget-byte v9, v0, v28

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x18

    move/from16 v32, v9

    .line 6035
    aget-byte v9, v0, v28

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x19

    move/from16 v33, v9

    .line 6036
    aget-byte v9, v0, v28

    int-to-char v9, v9

    move/from16 v40, v9

    move/from16 v44, v26

    move/from16 v41, v27

    move/from16 v42, v41

    move/from16 v43, v42

    move/from16 v28, v29

    move/from16 v9, v30

    move/from16 v0, v31

    move/from16 v38, v32

    move/from16 v39, v33

    goto/16 :goto_2

    :pswitch_4
    add-int/lit8 v9, v1, 0x14

    .line 6024
    aget-byte v9, v0, v9

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x15

    move/from16 v29, v9

    .line 6025
    aget-byte v9, v0, v28

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x16

    move/from16 v30, v9

    .line 6026
    aget-byte v9, v0, v28

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x17

    move/from16 v31, v9

    .line 6027
    aget-byte v9, v0, v28

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x18

    move/from16 v32, v9

    .line 6028
    aget-byte v9, v0, v28

    int-to-char v9, v9

    move/from16 v39, v9

    move/from16 v44, v26

    move/from16 v40, v27

    move/from16 v41, v40

    move/from16 v42, v41

    move/from16 v43, v42

    move/from16 v28, v29

    move/from16 v9, v30

    move/from16 v0, v31

    move/from16 v38, v32

    goto/16 :goto_2

    :pswitch_5
    add-int/lit8 v9, v1, 0x14

    .line 6018
    aget-byte v9, v0, v9

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x15

    move/from16 v29, v9

    .line 6019
    aget-byte v9, v0, v28

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x16

    move/from16 v30, v9

    .line 6020
    aget-byte v9, v0, v28

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x17

    move/from16 v31, v9

    .line 6021
    aget-byte v9, v0, v28

    int-to-char v9, v9

    move/from16 v38, v9

    move/from16 v44, v26

    move/from16 v39, v27

    move/from16 v40, v39

    move/from16 v41, v40

    move/from16 v42, v41

    move/from16 v43, v42

    move/from16 v28, v29

    move/from16 v9, v30

    move/from16 v0, v31

    goto/16 :goto_2

    :pswitch_6
    add-int/lit8 v9, v1, 0x14

    .line 6013
    aget-byte v9, v0, v9

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x15

    move/from16 v29, v9

    .line 6014
    aget-byte v9, v0, v28

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x16

    move/from16 v30, v9

    .line 6015
    aget-byte v9, v0, v28

    int-to-char v9, v9

    move v0, v9

    move/from16 v44, v26

    move/from16 v38, v27

    move/from16 v39, v38

    move/from16 v40, v39

    move/from16 v41, v40

    move/from16 v42, v41

    move/from16 v43, v42

    move/from16 v28, v29

    move/from16 v9, v30

    goto :goto_2

    :pswitch_7
    add-int/lit8 v9, v1, 0x14

    .line 6009
    aget-byte v9, v0, v9

    int-to-char v9, v9

    add-int/lit8 v28, v1, 0x15

    move/from16 v29, v9

    .line 6010
    aget-byte v9, v0, v28

    int-to-char v9, v9

    move/from16 v44, v26

    move/from16 v0, v27

    move/from16 v38, v0

    move/from16 v39, v38

    move/from16 v40, v39

    move/from16 v41, v40

    move/from16 v42, v41

    move/from16 v43, v42

    move/from16 v28, v29

    goto :goto_2

    :pswitch_8
    add-int/lit8 v9, v1, 0x14

    .line 6006
    aget-byte v9, v0, v9

    int-to-char v9, v9

    move/from16 v28, v9

    move/from16 v44, v26

    goto :goto_1

    :pswitch_9
    move/from16 v28, v26

    move/from16 v44, v28

    :goto_1
    move/from16 v0, v27

    move v9, v0

    move/from16 v38, v9

    move/from16 v39, v38

    move/from16 v40, v39

    move/from16 v41, v40

    move/from16 v42, v41

    move/from16 v43, v42

    :goto_2
    const/16 v1, 0x2d

    move/from16 v37, v0

    const/16 v0, 0x3a

    if-ne v10, v1, :cond_8

    if-ne v13, v1, :cond_8

    const/16 v1, 0x20

    if-eq v4, v1, :cond_5

    const/16 v1, 0x54

    if-ne v4, v1, :cond_7

    :cond_5
    if-ne v14, v0, :cond_7

    if-ne v3, v0, :cond_7

    const/16 v1, 0x5b

    if-eq v6, v1, :cond_6

    const/16 v1, 0x5a

    if-eq v6, v1, :cond_6

    const/16 v1, 0x2b

    if-eq v6, v1, :cond_6

    const/16 v1, 0x2d

    if-eq v6, v1, :cond_6

    const/16 v1, 0x20

    if-ne v6, v1, :cond_7

    :cond_6
    const/16 v1, 0x13

    move-object/from16 v0, p0

    move v6, v1

    move/from16 v57, v5

    move/from16 v47, v7

    move/from16 v49, v11

    move/from16 v50, v12

    move/from16 v55, v15

    move/from16 v58, v16

    move/from16 v51, v19

    move/from16 v52, v20

    move/from16 v14, v21

    move/from16 v56, v22

    move/from16 v45, v23

    move/from16 v46, v24

    move/from16 v48, v25

    move/from16 v1, v26

    move v4, v1

    move/from16 v59, v27

    move/from16 v60, v59

    move/from16 v61, v60

    move/from16 v62, v61

    move/from16 v63, v62

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    :goto_3
    const/16 v17, 0x0

    goto/16 :goto_39

    :cond_7
    const/16 v1, 0x2d

    :cond_8
    if-ne v10, v1, :cond_9

    if-ne v13, v1, :cond_9

    const/16 v1, 0x20

    if-ne v4, v1, :cond_9

    if-ne v8, v1, :cond_9

    if-ne v15, v0, :cond_9

    if-ne v5, v0, :cond_9

    const/16 v1, 0x14

    if-ne v2, v1, :cond_a

    move-object/from16 v0, p0

    move/from16 v56, v3

    move/from16 v58, v6

    move/from16 v47, v7

    move/from16 v49, v11

    move/from16 v50, v12

    move/from16 v57, v16

    move/from16 v51, v19

    move/from16 v52, v20

    move/from16 v8, v21

    move/from16 v55, v22

    move/from16 v45, v23

    move/from16 v46, v24

    move/from16 v48, v25

    move/from16 v4, v26

    move/from16 v59, v27

    move/from16 v60, v59

    move/from16 v61, v60

    move/from16 v62, v61

    move/from16 v63, v62

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    const/16 v17, 0x0

    :goto_4
    move v6, v1

    move v1, v4

    goto/16 :goto_39

    :cond_9
    const/16 v1, 0x14

    :cond_a
    if-ne v2, v1, :cond_c

    const/16 v1, 0x20

    if-ne v7, v1, :cond_c

    if-ne v12, v1, :cond_c

    if-ne v8, v1, :cond_c

    if-ne v15, v0, :cond_c

    if-ne v5, v0, :cond_c

    move/from16 v1, v25

    .line 6155
    invoke-static {v1, v10, v11}, Laay;->a(CCC)I

    move-result v0

    if-lez v0, :cond_b

    .line 6157
    div-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 6158
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    move v5, v1

    goto :goto_5

    :cond_b
    move/from16 v0, v27

    move v5, v0

    :goto_5
    move/from16 v50, v0

    move/from16 v56, v3

    move/from16 v48, v4

    move/from16 v49, v5

    move/from16 v58, v6

    move/from16 v45, v13

    move/from16 v57, v16

    move/from16 v46, v19

    move/from16 v47, v20

    move/from16 v8, v21

    move/from16 v55, v22

    move/from16 v51, v23

    move/from16 v52, v24

    move/from16 v1, v26

    move v4, v1

    move/from16 v59, v27

    move/from16 v60, v59

    move/from16 v61, v60

    move/from16 v62, v61

    move/from16 v63, v62

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    const/16 v6, 0x14

    :goto_6
    const/16 v17, 0x0

    :goto_7
    move-object/from16 v0, p0

    goto/16 :goto_39

    :cond_c
    move/from16 v1, v25

    const/16 v0, 0x2d

    if-ne v10, v0, :cond_11

    if-ne v13, v0, :cond_11

    const/16 v0, 0x20

    if-eq v4, v0, :cond_d

    const/16 v0, 0x54

    if-ne v4, v0, :cond_10

    :cond_d
    const/16 v0, 0x3a

    if-ne v14, v0, :cond_10

    if-ne v3, v0, :cond_10

    const/16 v0, 0x2e

    if-ne v6, v0, :cond_10

    const/16 v0, 0x15

    if-eq v2, v0, :cond_e

    const/16 v0, 0x5b

    if-eq v9, v0, :cond_e

    const/16 v0, 0x2b

    if-eq v9, v0, :cond_e

    const/16 v0, 0x2d

    if-eq v9, v0, :cond_e

    const/16 v0, 0x5a

    if-ne v9, v0, :cond_10

    :cond_e
    const/16 v0, 0x7c

    if-ne v9, v0, :cond_f

    const/4 v0, 0x1

    goto :goto_8

    :cond_f
    move/from16 v0, v26

    :goto_8
    move v4, v0

    move/from16 v48, v1

    move/from16 v57, v5

    move/from16 v47, v7

    move/from16 v49, v11

    move/from16 v50, v12

    move/from16 v55, v15

    move/from16 v58, v16

    move/from16 v51, v19

    move/from16 v52, v20

    move/from16 v14, v21

    move/from16 v56, v22

    move/from16 v45, v23

    move/from16 v46, v24

    move/from16 v1, v26

    move/from16 v60, v27

    move/from16 v61, v60

    move/from16 v62, v61

    move/from16 v63, v62

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v59, v28

    const/16 v6, 0x15

    goto :goto_6

    :cond_10
    const/16 v0, 0x2d

    :cond_11
    if-ne v10, v0, :cond_18

    if-ne v13, v0, :cond_18

    const/16 v0, 0x20

    if-eq v4, v0, :cond_12

    const/16 v0, 0x54

    if-ne v4, v0, :cond_16

    :cond_12
    const/16 v0, 0x3a

    if-ne v14, v0, :cond_16

    if-ne v3, v0, :cond_16

    const/16 v0, 0x2e

    if-ne v6, v0, :cond_16

    const/16 v0, 0x16

    if-eq v2, v0, :cond_13

    const/16 v0, 0x5b

    move/from16 v30, v15

    move/from16 v15, v37

    if-eq v15, v0, :cond_14

    const/16 v0, 0x2b

    if-eq v15, v0, :cond_14

    const/16 v0, 0x2d

    if-eq v15, v0, :cond_14

    const/16 v0, 0x5a

    if-ne v15, v0, :cond_17

    goto :goto_9

    :cond_13
    move/from16 v30, v15

    move/from16 v15, v37

    :cond_14
    :goto_9
    const/16 v0, 0x7c

    if-ne v15, v0, :cond_15

    const/4 v0, 0x1

    goto :goto_a

    :cond_15
    move/from16 v0, v26

    :goto_a
    move v4, v0

    move/from16 v48, v1

    move/from16 v57, v5

    move/from16 v47, v7

    move/from16 v60, v9

    move/from16 v49, v11

    move/from16 v50, v12

    move/from16 v58, v16

    move/from16 v51, v19

    move/from16 v52, v20

    move/from16 v14, v21

    move/from16 v56, v22

    move/from16 v45, v23

    move/from16 v46, v24

    move/from16 v1, v26

    move/from16 v61, v27

    move/from16 v62, v61

    move/from16 v63, v62

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v59, v28

    move/from16 v55, v30

    const/16 v6, 0x16

    goto/16 :goto_6

    :cond_16
    move/from16 v30, v15

    move/from16 v15, v37

    :cond_17
    const/16 v0, 0x2d

    goto :goto_b

    :cond_18
    move/from16 v30, v15

    move/from16 v15, v37

    :goto_b
    if-ne v10, v0, :cond_1a

    if-ne v13, v0, :cond_1a

    const/16 v0, 0x20

    if-eq v4, v0, :cond_19

    const/16 v0, 0x54

    if-ne v4, v0, :cond_1a

    :cond_19
    const/16 v0, 0x3a

    if-ne v14, v0, :cond_1a

    const/16 v0, 0x5a

    if-ne v3, v0, :cond_1a

    const/16 v0, 0x5b

    if-ne v5, v0, :cond_1a

    const/16 v0, 0x5d

    if-ne v9, v0, :cond_1a

    const/16 v0, 0x16

    if-ne v2, v0, :cond_1b

    const/16 v0, 0x11

    move v6, v0

    move/from16 v48, v1

    move/from16 v47, v7

    move/from16 v49, v11

    move/from16 v50, v12

    move/from16 v51, v19

    move/from16 v52, v20

    move/from16 v14, v21

    move/from16 v56, v22

    move/from16 v45, v23

    move/from16 v46, v24

    move/from16 v1, v26

    move/from16 v57, v27

    move/from16 v58, v57

    move/from16 v59, v58

    move/from16 v60, v59

    move/from16 v61, v60

    move/from16 v62, v61

    move/from16 v63, v62

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v55, v30

    const/4 v4, 0x1

    goto/16 :goto_6

    :cond_1a
    const/16 v0, 0x16

    :cond_1b
    if-ne v2, v0, :cond_21

    const/16 v0, 0x20

    if-ne v1, v0, :cond_21

    move/from16 v37, v10

    const/16 v10, 0x2c

    if-ne v11, v10, :cond_22

    if-ne v12, v0, :cond_22

    if-ne v8, v0, :cond_22

    const/16 v10, 0x3a

    if-ne v14, v10, :cond_22

    if-ne v3, v10, :cond_22

    if-ne v6, v0, :cond_22

    const/16 v0, 0x41

    move/from16 v10, v28

    if-eq v10, v0, :cond_1d

    const/16 v0, 0x50

    if-ne v10, v0, :cond_1c

    goto :goto_c

    :cond_1c
    const/16 v0, 0x16

    move/from16 v68, v23

    move/from16 v23, v13

    move/from16 v13, v24

    move/from16 v24, v68

    goto/16 :goto_10

    :cond_1d
    :goto_c
    const/16 v0, 0x4d

    if-ne v9, v0, :cond_20

    move/from16 v0, v23

    move/from16 v23, v13

    move/from16 v13, v24

    .line 6300
    invoke-static {v0, v13, v7}, Laay;->a(CCC)I

    move-result v0

    if-lez v0, :cond_1e

    .line 6302
    div-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 6303
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    move v6, v0

    goto :goto_d

    :cond_1e
    move/from16 v1, v27

    move v6, v1

    :goto_d
    const/16 v0, 0x50

    if-ne v10, v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_e

    :cond_1f
    move/from16 v0, v26

    :goto_e
    move/from16 v49, v1

    move/from16 v48, v4

    move/from16 v57, v5

    move/from16 v50, v6

    move/from16 v58, v16

    move/from16 v46, v19

    move/from16 v47, v20

    move/from16 v14, v21

    move/from16 v56, v22

    move/from16 v45, v23

    move/from16 v4, v26

    move/from16 v8, v27

    move/from16 v51, v8

    move/from16 v59, v51

    goto :goto_12

    :cond_20
    move/from16 v0, v23

    goto :goto_f

    :cond_21
    move/from16 v37, v10

    :cond_22
    move/from16 v0, v23

    move/from16 v10, v28

    :goto_f
    move/from16 v23, v13

    move/from16 v13, v24

    move/from16 v24, v0

    const/16 v0, 0x16

    :goto_10
    if-ne v2, v0, :cond_25

    const/16 v0, 0x2f

    if-ne v7, v0, :cond_25

    const/16 v0, 0x2f

    if-ne v11, v0, :cond_25

    const/16 v0, 0x20

    if-ne v4, v0, :cond_25

    const/16 v0, 0x3a

    if-ne v14, v0, :cond_25

    if-ne v3, v0, :cond_25

    const/16 v0, 0x20

    if-ne v6, v0, :cond_25

    const/16 v0, 0x41

    if-eq v10, v0, :cond_23

    const/16 v0, 0x50

    if-ne v10, v0, :cond_25

    :cond_23
    const/16 v0, 0x4d

    if-ne v9, v0, :cond_25

    const/16 v0, 0x50

    if-ne v10, v0, :cond_24

    const/4 v0, 0x1

    goto :goto_11

    :cond_24
    move/from16 v0, v26

    :goto_11
    move/from16 v51, v1

    move/from16 v57, v5

    move/from16 v45, v12

    move/from16 v50, v13

    move/from16 v58, v16

    move/from16 v47, v19

    move/from16 v48, v20

    move/from16 v14, v21

    move/from16 v56, v22

    move/from16 v46, v23

    move/from16 v49, v24

    move/from16 v4, v26

    move/from16 v59, v27

    :goto_12
    move/from16 v60, v59

    move/from16 v61, v60

    move/from16 v62, v61

    move/from16 v63, v62

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v55, v30

    move/from16 v52, v37

    const/16 v6, 0x16

    :goto_13
    const/16 v17, 0x0

    move v1, v0

    goto/16 :goto_7

    :cond_25
    const/16 v0, 0x17

    if-ne v2, v0, :cond_2a

    const/16 v0, 0x20

    if-ne v1, v0, :cond_2a

    move/from16 v28, v6

    const/16 v6, 0x2c

    if-ne v11, v6, :cond_2b

    if-ne v12, v0, :cond_2b

    if-ne v8, v0, :cond_2b

    move/from16 v6, v30

    const/16 v0, 0x3a

    if-ne v6, v0, :cond_29

    if-ne v5, v0, :cond_29

    const/16 v0, 0x20

    if-ne v10, v0, :cond_29

    const/16 v0, 0x41

    if-eq v9, v0, :cond_26

    const/16 v0, 0x50

    if-ne v9, v0, :cond_29

    :cond_26
    const/16 v0, 0x4d

    if-ne v15, v0, :cond_29

    move/from16 v0, v24

    .line 6378
    invoke-static {v0, v13, v7}, Laay;->a(CCC)I

    move-result v0

    if-lez v0, :cond_27

    .line 6380
    div-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 6381
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    move v6, v0

    move v5, v1

    goto :goto_14

    :cond_27
    move/from16 v5, v27

    move v6, v5

    :goto_14
    const/16 v0, 0x50

    if-ne v9, v0, :cond_28

    const/4 v0, 0x1

    goto :goto_15

    :cond_28
    move/from16 v0, v26

    :goto_15
    move v1, v0

    move/from16 v56, v3

    move/from16 v48, v4

    move/from16 v49, v5

    move/from16 v50, v6

    move/from16 v57, v16

    move/from16 v46, v19

    move/from16 v47, v20

    move/from16 v8, v21

    move/from16 v55, v22

    move/from16 v45, v23

    move/from16 v4, v26

    move/from16 v51, v27

    move/from16 v59, v51

    move/from16 v60, v59

    move/from16 v61, v60

    move/from16 v62, v61

    move/from16 v63, v62

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v58, v28

    move/from16 v52, v37

    goto/16 :goto_1f

    :cond_29
    move/from16 v0, v24

    goto :goto_16

    :cond_2a
    move/from16 v28, v6

    :cond_2b
    move/from16 v0, v24

    move/from16 v6, v30

    :goto_16
    move/from16 v24, v8

    const/16 v8, 0x17

    if-ne v2, v8, :cond_2f

    const/16 v8, 0x20

    if-ne v1, v8, :cond_2f

    move/from16 v30, v11

    const/16 v11, 0x2c

    if-ne v12, v11, :cond_30

    move/from16 v11, v23

    if-ne v11, v8, :cond_31

    move/from16 v23, v3

    move/from16 v3, v21

    if-ne v3, v8, :cond_32

    const/16 v8, 0x3a

    if-ne v6, v8, :cond_32

    if-ne v5, v8, :cond_32

    const/16 v8, 0x20

    if-ne v10, v8, :cond_32

    const/16 v8, 0x41

    if-eq v9, v8, :cond_2c

    const/16 v8, 0x50

    if-ne v9, v8, :cond_32

    :cond_2c
    const/16 v8, 0x4d

    if-ne v15, v8, :cond_32

    .line 6420
    invoke-static {v0, v13, v7}, Laay;->a(CCC)I

    move-result v0

    if-lez v0, :cond_2d

    .line 6422
    div-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 6423
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    move v6, v0

    move v5, v1

    goto :goto_17

    :cond_2d
    move/from16 v5, v27

    move v6, v5

    :goto_17
    const/16 v0, 0x50

    if-ne v9, v0, :cond_2e

    const/4 v0, 0x1

    goto :goto_18

    :cond_2e
    move/from16 v0, v26

    :goto_18
    move v1, v0

    move/from16 v47, v4

    move/from16 v49, v5

    move/from16 v50, v6

    move/from16 v57, v16

    move/from16 v45, v19

    move/from16 v46, v20

    move/from16 v55, v22

    move/from16 v56, v23

    move/from16 v48, v24

    move/from16 v4, v26

    move/from16 v8, v27

    move/from16 v59, v8

    move/from16 v60, v59

    move/from16 v61, v60

    move/from16 v62, v61

    move/from16 v63, v62

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v58, v28

    move/from16 v52, v30

    move/from16 v51, v37

    goto/16 :goto_1f

    :cond_2f
    move/from16 v30, v11

    :cond_30
    move/from16 v11, v23

    :cond_31
    move/from16 v23, v3

    move/from16 v3, v21

    :cond_32
    const/16 v8, 0x18

    if-ne v2, v8, :cond_37

    const/16 v8, 0x20

    if-ne v1, v8, :cond_37

    move/from16 v21, v10

    const/16 v10, 0x2c

    if-ne v12, v10, :cond_38

    if-ne v11, v8, :cond_38

    if-ne v3, v8, :cond_38

    move/from16 v10, v22

    const/16 v8, 0x3a

    if-ne v10, v8, :cond_39

    move/from16 v22, v3

    move/from16 v3, v16

    if-ne v3, v8, :cond_3a

    const/16 v8, 0x20

    if-ne v9, v8, :cond_3a

    const/16 v8, 0x41

    if-eq v15, v8, :cond_34

    const/16 v8, 0x50

    if-ne v15, v8, :cond_33

    goto :goto_19

    :cond_33
    move/from16 v16, v6

    move/from16 v8, v37

    move/from16 v6, v38

    goto/16 :goto_1c

    :cond_34
    :goto_19
    const/16 v8, 0x4d

    move/from16 v16, v6

    move/from16 v6, v38

    if-ne v6, v8, :cond_3b

    .line 6462
    invoke-static {v0, v13, v7}, Laay;->a(CCC)I

    move-result v0

    if-lez v0, :cond_35

    .line 6464
    div-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 6465
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    move v6, v0

    goto :goto_1a

    :cond_35
    move/from16 v1, v27

    move v6, v1

    :goto_1a
    const/16 v0, 0x50

    if-ne v15, v0, :cond_36

    const/4 v0, 0x1

    goto :goto_1b

    :cond_36
    move/from16 v0, v26

    :goto_1b
    move/from16 v49, v1

    move/from16 v47, v4

    move/from16 v56, v5

    move/from16 v50, v6

    move v8, v14

    move/from16 v14, v16

    move/from16 v45, v19

    move/from16 v46, v20

    move/from16 v58, v21

    move/from16 v55, v23

    move/from16 v48, v24

    move/from16 v4, v26

    move/from16 v59, v27

    move/from16 v60, v59

    move/from16 v61, v60

    move/from16 v62, v61

    move/from16 v63, v62

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v57, v28

    move/from16 v52, v30

    move/from16 v51, v37

    const/16 v6, 0x18

    goto/16 :goto_13

    :cond_37
    move/from16 v21, v10

    :cond_38
    move/from16 v10, v22

    :cond_39
    move/from16 v22, v3

    move/from16 v3, v16

    :cond_3a
    move/from16 v16, v6

    move/from16 v6, v38

    :cond_3b
    move/from16 v8, v37

    :goto_1c
    move/from16 v37, v0

    const/16 v0, 0x2d

    if-ne v8, v0, :cond_44

    if-ne v11, v0, :cond_44

    const/16 v0, 0x20

    if-eq v4, v0, :cond_3d

    const/16 v0, 0x54

    if-ne v4, v0, :cond_3c

    goto :goto_1d

    :cond_3c
    move/from16 v38, v7

    move/from16 v7, v23

    const/16 v0, 0x2d

    goto/16 :goto_20

    :cond_3d
    :goto_1d
    const/16 v0, 0x3a

    if-ne v14, v0, :cond_41

    move/from16 v38, v7

    move/from16 v7, v23

    if-ne v7, v0, :cond_42

    const/16 v0, 0x2e

    move/from16 v23, v13

    move/from16 v13, v28

    if-ne v13, v0, :cond_43

    const/16 v0, 0x17

    if-eq v2, v0, :cond_3e

    const/16 v0, 0x5b

    if-eq v6, v0, :cond_3e

    const/16 v0, 0x7c

    if-eq v6, v0, :cond_3f

    const/16 v0, 0x2b

    if-eq v6, v0, :cond_3e

    const/16 v0, 0x2d

    if-eq v6, v0, :cond_3e

    const/16 v0, 0x5a

    if-ne v6, v0, :cond_43

    :cond_3e
    const/16 v0, 0x7c

    :cond_3f
    if-ne v6, v0, :cond_40

    const/4 v0, 0x1

    goto :goto_1e

    :cond_40
    move/from16 v0, v26

    :goto_1e
    move v4, v0

    move/from16 v48, v1

    move/from16 v58, v3

    move/from16 v57, v5

    move/from16 v60, v9

    move/from16 v56, v10

    move/from16 v50, v12

    move/from16 v61, v15

    move/from16 v55, v16

    move/from16 v51, v19

    move/from16 v52, v20

    move/from16 v59, v21

    move/from16 v14, v22

    move/from16 v46, v23

    move/from16 v8, v24

    move/from16 v1, v26

    move/from16 v62, v27

    move/from16 v63, v62

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v49, v30

    move/from16 v45, v37

    move/from16 v47, v38

    :goto_1f
    const/16 v6, 0x17

    goto/16 :goto_6

    :cond_41
    move/from16 v38, v7

    move/from16 v7, v23

    :cond_42
    move/from16 v23, v13

    move/from16 v13, v28

    :cond_43
    const/16 v0, 0x2d

    goto :goto_21

    :cond_44
    move/from16 v38, v7

    move/from16 v7, v23

    :goto_20
    move/from16 v23, v13

    move/from16 v13, v28

    :goto_21
    if-ne v8, v0, :cond_4c

    if-ne v11, v0, :cond_4c

    const/16 v0, 0x20

    if-eq v4, v0, :cond_45

    const/16 v0, 0x54

    if-ne v4, v0, :cond_4a

    :cond_45
    const/16 v0, 0x3a

    if-ne v14, v0, :cond_4a

    if-ne v7, v0, :cond_4a

    const/16 v0, 0x2e

    if-ne v13, v0, :cond_4a

    const/16 v0, 0x18

    if-eq v2, v0, :cond_46

    const/16 v0, 0x5b

    move/from16 v28, v15

    move/from16 v15, v39

    if-eq v15, v0, :cond_47

    const/16 v0, 0x7c

    if-eq v15, v0, :cond_48

    const/16 v0, 0x2b

    if-eq v15, v0, :cond_47

    const/16 v0, 0x2d

    if-eq v15, v0, :cond_47

    const/16 v0, 0x5a

    if-ne v15, v0, :cond_4b

    goto :goto_22

    :cond_46
    move/from16 v28, v15

    move/from16 v15, v39

    :cond_47
    :goto_22
    const/16 v0, 0x7c

    :cond_48
    if-ne v15, v0, :cond_49

    const/4 v0, 0x1

    goto :goto_23

    :cond_49
    move/from16 v0, v26

    :goto_23
    move v4, v0

    move/from16 v48, v1

    move/from16 v58, v3

    move/from16 v57, v5

    move/from16 v62, v6

    move/from16 v60, v9

    move/from16 v56, v10

    move/from16 v50, v12

    move/from16 v55, v16

    move/from16 v51, v19

    move/from16 v52, v20

    move/from16 v59, v21

    move/from16 v14, v22

    move/from16 v46, v23

    move/from16 v8, v24

    move/from16 v1, v26

    move/from16 v63, v27

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v61, v28

    move/from16 v49, v30

    move/from16 v45, v37

    move/from16 v47, v38

    const/16 v6, 0x18

    goto/16 :goto_6

    :cond_4a
    move/from16 v28, v15

    move/from16 v15, v39

    :cond_4b
    const/16 v0, 0x2d

    goto :goto_24

    :cond_4c
    move/from16 v28, v15

    move/from16 v15, v39

    :goto_24
    if-ne v8, v0, :cond_53

    if-ne v11, v0, :cond_53

    const/16 v0, 0x20

    if-eq v4, v0, :cond_4d

    const/16 v0, 0x54

    if-ne v4, v0, :cond_51

    :cond_4d
    const/16 v0, 0x3a

    if-ne v14, v0, :cond_51

    if-ne v7, v0, :cond_51

    const/16 v0, 0x2e

    if-ne v13, v0, :cond_51

    const/16 v0, 0x19

    if-eq v2, v0, :cond_4e

    const/16 v0, 0x5b

    move/from16 v39, v5

    move/from16 v5, v40

    if-eq v5, v0, :cond_4f

    const/16 v0, 0x7c

    if-eq v5, v0, :cond_4f

    const/16 v0, 0x2b

    if-eq v5, v0, :cond_4f

    const/16 v0, 0x2d

    if-eq v5, v0, :cond_4f

    const/16 v0, 0x5a

    if-ne v5, v0, :cond_52

    goto :goto_25

    :cond_4e
    move/from16 v39, v5

    move/from16 v5, v40

    :cond_4f
    :goto_25
    const/16 v0, 0x19

    const/16 v4, 0x7c

    if-ne v5, v4, :cond_50

    const/4 v4, 0x1

    goto :goto_26

    :cond_50
    move/from16 v4, v26

    :goto_26
    move/from16 v48, v1

    move/from16 v58, v3

    move/from16 v62, v6

    move/from16 v60, v9

    move/from16 v56, v10

    move/from16 v50, v12

    move/from16 v63, v15

    move/from16 v55, v16

    move/from16 v51, v19

    move/from16 v52, v20

    move/from16 v59, v21

    move/from16 v14, v22

    move/from16 v46, v23

    move/from16 v8, v24

    move/from16 v1, v26

    move/from16 v64, v27

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v61, v28

    move/from16 v49, v30

    move/from16 v45, v37

    move/from16 v47, v38

    move/from16 v57, v39

    :goto_27
    const/16 v17, 0x0

    move v6, v0

    goto/16 :goto_7

    :cond_51
    move/from16 v39, v5

    move/from16 v5, v40

    :cond_52
    const/16 v0, 0x2d

    goto :goto_28

    :cond_53
    move/from16 v39, v5

    move/from16 v5, v40

    :goto_28
    if-ne v8, v0, :cond_5a

    if-ne v11, v0, :cond_5a

    const/16 v0, 0x20

    if-eq v4, v0, :cond_54

    const/16 v0, 0x54

    if-ne v4, v0, :cond_58

    :cond_54
    const/16 v0, 0x3a

    if-ne v14, v0, :cond_58

    if-ne v7, v0, :cond_58

    const/16 v0, 0x2e

    if-ne v13, v0, :cond_58

    const/16 v0, 0x1a

    if-eq v2, v0, :cond_55

    const/16 v0, 0x5b

    move/from16 v40, v5

    move/from16 v5, v41

    if-eq v5, v0, :cond_56

    const/16 v0, 0x7c

    if-eq v5, v0, :cond_56

    const/16 v0, 0x2b

    if-eq v5, v0, :cond_56

    const/16 v0, 0x2d

    if-eq v5, v0, :cond_56

    const/16 v0, 0x5a

    if-ne v5, v0, :cond_59

    goto :goto_29

    :cond_55
    move/from16 v40, v5

    move/from16 v5, v41

    :cond_56
    :goto_29
    const/16 v0, 0x1a

    const/16 v4, 0x7c

    if-ne v5, v4, :cond_57

    const/4 v4, 0x1

    goto :goto_2a

    :cond_57
    move/from16 v4, v26

    :goto_2a
    move/from16 v48, v1

    move/from16 v58, v3

    move/from16 v62, v6

    move/from16 v60, v9

    move/from16 v56, v10

    move/from16 v50, v12

    move/from16 v63, v15

    move/from16 v55, v16

    move/from16 v51, v19

    move/from16 v52, v20

    move/from16 v59, v21

    move/from16 v14, v22

    move/from16 v46, v23

    move/from16 v8, v24

    move/from16 v1, v26

    move/from16 v65, v27

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v61, v28

    move/from16 v49, v30

    move/from16 v45, v37

    move/from16 v47, v38

    move/from16 v57, v39

    move/from16 v64, v40

    goto/16 :goto_27

    :cond_58
    move/from16 v40, v5

    move/from16 v5, v41

    :cond_59
    const/16 v0, 0x2d

    goto :goto_2b

    :cond_5a
    move/from16 v40, v5

    move/from16 v5, v41

    :goto_2b
    if-ne v8, v0, :cond_62

    if-ne v11, v0, :cond_62

    const/16 v0, 0x20

    if-eq v4, v0, :cond_5b

    const/16 v0, 0x54

    if-ne v4, v0, :cond_60

    :cond_5b
    const/16 v0, 0x3a

    if-ne v14, v0, :cond_60

    if-ne v7, v0, :cond_60

    const/16 v0, 0x2e

    if-ne v13, v0, :cond_60

    const/16 v0, 0x1b

    if-eq v2, v0, :cond_5c

    const/16 v0, 0x5b

    move/from16 v41, v5

    move/from16 v5, v42

    if-eq v5, v0, :cond_5d

    const/16 v0, 0x7c

    if-eq v5, v0, :cond_5d

    const/16 v0, 0x2b

    if-eq v5, v0, :cond_5d

    const/16 v0, 0x2d

    if-eq v5, v0, :cond_5d

    const/16 v0, 0x5a

    if-ne v5, v0, :cond_61

    goto :goto_2c

    :cond_5c
    move/from16 v41, v5

    move/from16 v5, v42

    :cond_5d
    :goto_2c
    const/16 v0, 0x20

    if-ne v6, v0, :cond_5e

    move-object/from16 v0, p0

    move/from16 v48, v1

    move/from16 v58, v3

    move/from16 v60, v9

    move/from16 v56, v10

    move/from16 v50, v12

    move/from16 v55, v16

    move/from16 v51, v19

    move/from16 v52, v20

    move/from16 v59, v21

    move/from16 v14, v22

    move/from16 v46, v23

    move/from16 v8, v24

    move/from16 v1, v26

    move v4, v1

    move/from16 v62, v27

    move/from16 v63, v62

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v61, v28

    move/from16 v49, v30

    move/from16 v45, v37

    move/from16 v47, v38

    move/from16 v57, v39

    const/16 v6, 0x17

    goto/16 :goto_3

    :cond_5e
    const/16 v0, 0x1b

    const/16 v4, 0x7c

    if-ne v5, v4, :cond_5f

    const/4 v4, 0x1

    goto :goto_2d

    :cond_5f
    move/from16 v4, v26

    :goto_2d
    move/from16 v48, v1

    move/from16 v58, v3

    move/from16 v62, v6

    move/from16 v60, v9

    move/from16 v56, v10

    move/from16 v50, v12

    move/from16 v63, v15

    move/from16 v55, v16

    move/from16 v51, v19

    move/from16 v52, v20

    move/from16 v59, v21

    move/from16 v14, v22

    move/from16 v46, v23

    move/from16 v8, v24

    move/from16 v1, v26

    move/from16 v66, v27

    move/from16 v67, v66

    move/from16 v61, v28

    move/from16 v49, v30

    goto/16 :goto_31

    :cond_60
    move/from16 v41, v5

    move/from16 v5, v42

    :cond_61
    const/16 v0, 0x2d

    goto :goto_2e

    :cond_62
    move/from16 v41, v5

    move/from16 v5, v42

    :goto_2e
    if-ne v8, v0, :cond_67

    if-ne v11, v0, :cond_67

    const/16 v0, 0x20

    if-eq v4, v0, :cond_63

    const/16 v0, 0x54

    if-ne v4, v0, :cond_67

    :cond_63
    const/16 v0, 0x3a

    if-ne v14, v0, :cond_67

    if-ne v7, v0, :cond_67

    const/16 v0, 0x2e

    if-ne v13, v0, :cond_67

    const/16 v0, 0x1c

    if-eq v2, v0, :cond_64

    const/16 v0, 0x5b

    move/from16 v33, v5

    move/from16 v5, v43

    if-eq v5, v0, :cond_65

    const/16 v0, 0x7c

    if-eq v5, v0, :cond_65

    const/16 v0, 0x2b

    if-eq v5, v0, :cond_65

    const/16 v0, 0x2d

    if-eq v5, v0, :cond_65

    const/16 v0, 0x5a

    if-ne v5, v0, :cond_68

    goto :goto_2f

    :cond_64
    move/from16 v33, v5

    move/from16 v5, v43

    :cond_65
    :goto_2f
    const/16 v0, 0x1c

    const/16 v4, 0x7c

    if-ne v5, v4, :cond_66

    const/4 v4, 0x1

    goto :goto_30

    :cond_66
    move/from16 v4, v26

    :goto_30
    move/from16 v48, v1

    move/from16 v58, v3

    move/from16 v62, v6

    move/from16 v60, v9

    move/from16 v56, v10

    move/from16 v50, v12

    move/from16 v63, v15

    move/from16 v55, v16

    move/from16 v51, v19

    move/from16 v52, v20

    move/from16 v59, v21

    move/from16 v14, v22

    move/from16 v46, v23

    move/from16 v8, v24

    move/from16 v1, v26

    move/from16 v67, v27

    move/from16 v61, v28

    move/from16 v49, v30

    move/from16 v66, v33

    :goto_31
    move/from16 v45, v37

    move/from16 v47, v38

    move/from16 v57, v39

    move/from16 v64, v40

    move/from16 v65, v41

    goto/16 :goto_27

    :cond_67
    move/from16 v33, v5

    move/from16 v5, v43

    :cond_68
    const/16 v0, 0x1c

    if-ne v2, v0, :cond_6a

    const/16 v0, 0x20

    if-ne v1, v0, :cond_6a

    if-ne v11, v0, :cond_6a

    if-ne v4, v0, :cond_6a

    const/16 v0, 0x3a

    if-ne v14, v0, :cond_6a

    if-ne v7, v0, :cond_6a

    const/16 v0, 0x20

    if-ne v13, v0, :cond_6a

    if-ne v6, v0, :cond_6a

    move/from16 v0, v30

    .line 6716
    invoke-static {v8, v0, v12}, Laay;->a(CCC)I

    move-result v0

    if-lez v0, :cond_69

    .line 6718
    div-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 6719
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    move v6, v0

    move v5, v1

    goto :goto_32

    :cond_69
    move/from16 v5, v27

    move v6, v5

    :goto_32
    const/16 v1, 0x13

    .line 6752
    new-instance v4, Ljava/lang/String;

    move/from16 v0, p1

    add-int/lit8 v7, v0, 0x14

    const/4 v8, 0x3

    move-object/from16 v9, p0

    invoke-direct {v4, v9, v7, v8}, Ljava/lang/String;-><init>([BII)V

    move/from16 v58, v3

    move-object/from16 v17, v4

    move/from16 v49, v5

    move/from16 v50, v6

    move-object v0, v9

    move/from16 v56, v10

    move/from16 v45, v15

    move/from16 v55, v16

    move/from16 v51, v19

    move/from16 v52, v20

    move/from16 v14, v22

    move/from16 v8, v24

    move/from16 v4, v26

    move/from16 v59, v27

    move/from16 v60, v59

    move/from16 v61, v60

    move/from16 v62, v61

    move/from16 v63, v62

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v48, v33

    move/from16 v57, v39

    move/from16 v46, v40

    move/from16 v47, v41

    goto/16 :goto_4

    :cond_6a
    move-object/from16 v0, p0

    move/from16 v45, v21

    move/from16 v21, v5

    move/from16 v5, p1

    move/from16 v68, v28

    move/from16 v28, v6

    move/from16 v6, v68

    const/16 v5, 0x1c

    if-ne v2, v5, :cond_6c

    const/16 v5, 0x2c

    if-ne v1, v5, :cond_6c

    const/16 v5, 0x20

    if-ne v8, v5, :cond_6c

    if-ne v12, v5, :cond_6c

    if-ne v4, v5, :cond_6c

    if-ne v10, v5, :cond_6c

    const/16 v5, 0x3a

    if-ne v3, v5, :cond_6c

    if-ne v9, v5, :cond_6c

    const/16 v5, 0x20

    if-ne v15, v5, :cond_6c

    move/from16 v5, v19

    move/from16 v3, v20

    .line 6761
    invoke-static {v11, v5, v3}, Laay;->a(CCC)I

    move-result v1

    if-lez v1, :cond_6b

    .line 6763
    div-int/lit8 v3, v1, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 6764
    rem-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    move v5, v3

    goto :goto_33

    :cond_6b
    move/from16 v1, v27

    move v5, v1

    :goto_33
    move/from16 v50, v1

    move/from16 v49, v5

    move/from16 v57, v6

    move v8, v7

    move/from16 v55, v13

    move/from16 v47, v14

    move/from16 v48, v16

    move/from16 v46, v22

    move/from16 v1, v26

    move/from16 v51, v27

    move/from16 v59, v51

    move/from16 v60, v59

    move/from16 v61, v60

    move/from16 v62, v61

    move/from16 v63, v62

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v58, v28

    move/from16 v52, v30

    move/from16 v14, v39

    move/from16 v56, v45

    const/4 v4, 0x1

    const/16 v6, 0x18

    const/16 v17, 0x0

    move/from16 v45, v24

    goto/16 :goto_39

    :cond_6c
    move/from16 v5, v19

    move/from16 v19, v3

    move/from16 v3, v20

    move/from16 v20, v15

    const/16 v15, 0x1d

    if-ne v2, v15, :cond_6f

    const/16 v15, 0x2c

    if-ne v1, v15, :cond_6f

    const/16 v15, 0x20

    if-ne v8, v15, :cond_6f

    if-ne v11, v15, :cond_6f

    move/from16 v29, v1

    move/from16 v1, v24

    if-ne v1, v15, :cond_6e

    if-ne v7, v15, :cond_6e

    const/16 v15, 0x3a

    if-ne v13, v15, :cond_6e

    if-ne v6, v15, :cond_6e

    move/from16 v24, v9

    move/from16 v15, v40

    const/16 v9, 0x20

    if-ne v15, v9, :cond_70

    .line 6803
    invoke-static {v5, v3, v4}, Laay;->a(CCC)I

    move-result v1

    if-lez v1, :cond_6d

    .line 6805
    div-int/lit8 v3, v1, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 6806
    rem-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    move v6, v1

    move v5, v3

    goto :goto_34

    :cond_6d
    move/from16 v5, v27

    move v6, v5

    :goto_34
    const/16 v1, 0x19

    move/from16 v49, v5

    move/from16 v50, v6

    move/from16 v48, v10

    move/from16 v52, v12

    move/from16 v46, v14

    move/from16 v47, v16

    move/from16 v14, v19

    move/from16 v58, v20

    move/from16 v56, v24

    move/from16 v59, v27

    move/from16 v60, v59

    move/from16 v61, v60

    move/from16 v62, v61

    move/from16 v63, v62

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v57, v28

    move/from16 v51, v30

    move/from16 v8, v39

    move/from16 v55, v45

    const/4 v4, 0x1

    const/16 v17, 0x0

    move v6, v1

    move/from16 v45, v22

    move/from16 v1, v26

    goto/16 :goto_39

    :cond_6e
    move/from16 v24, v9

    move/from16 v15, v40

    goto :goto_35

    :cond_6f
    move/from16 v29, v1

    move/from16 v1, v24

    move/from16 v15, v40

    move/from16 v24, v9

    :cond_70
    :goto_35
    const/16 v9, 0x2d

    if-ne v8, v9, :cond_75

    if-ne v11, v9, :cond_75

    const/16 v9, 0x20

    if-eq v4, v9, :cond_71

    const/16 v9, 0x54

    if-ne v4, v9, :cond_75

    :cond_71
    const/16 v9, 0x3a

    if-ne v14, v9, :cond_75

    if-ne v7, v9, :cond_75

    const/16 v9, 0x2e

    if-ne v13, v9, :cond_75

    const/16 v9, 0x1d

    if-eq v2, v9, :cond_72

    const/16 v9, 0x5b

    move/from16 v40, v8

    move/from16 v8, v44

    if-eq v8, v9, :cond_73

    const/16 v9, 0x7c

    if-eq v8, v9, :cond_73

    const/16 v9, 0x2b

    if-eq v8, v9, :cond_73

    const/16 v9, 0x2d

    if-eq v8, v9, :cond_73

    const/16 v9, 0x5a

    if-ne v8, v9, :cond_76

    goto :goto_36

    :cond_72
    move/from16 v8, v44

    :cond_73
    :goto_36
    const/16 v4, 0x1d

    const/16 v7, 0x7c

    if-ne v8, v7, :cond_74

    const/4 v7, 0x1

    goto :goto_37

    :cond_74
    move/from16 v7, v26

    :goto_37
    move v8, v1

    move/from16 v52, v3

    move/from16 v51, v5

    move/from16 v61, v6

    move/from16 v56, v10

    move/from16 v50, v12

    move/from16 v64, v15

    move/from16 v55, v16

    move/from16 v58, v19

    move/from16 v63, v20

    move/from16 v67, v21

    move/from16 v14, v22

    move/from16 v46, v23

    move/from16 v60, v24

    move/from16 v1, v26

    move/from16 v62, v28

    move/from16 v48, v29

    move/from16 v49, v30

    move/from16 v66, v33

    move/from16 v47, v38

    move/from16 v57, v39

    move/from16 v65, v41

    move/from16 v59, v45

    const/16 v17, 0x0

    move v6, v4

    move v4, v7

    move/from16 v45, v37

    goto :goto_39

    :cond_75
    move/from16 v40, v8

    :cond_76
    const/16 v8, 0x16

    if-ne v2, v8, :cond_88

    move/from16 v8, v39

    const/16 v9, 0x2b

    if-eq v8, v9, :cond_78

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_77

    goto :goto_38

    :cond_77
    move/from16 v9, p1

    move/from16 v39, v8

    goto/16 :goto_41

    :cond_78
    :goto_38
    const/16 v6, 0x11

    move/from16 v56, v1

    move/from16 v55, v4

    move v8, v5

    move/from16 v61, v7

    move/from16 v60, v10

    move/from16 v52, v11

    move/from16 v51, v12

    move/from16 v58, v14

    move/from16 v59, v16

    move/from16 v57, v22

    move/from16 v46, v23

    move/from16 v1, v26

    move v4, v1

    move/from16 v62, v27

    move/from16 v63, v62

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v48, v29

    move/from16 v50, v30

    move/from16 v45, v37

    move/from16 v47, v38

    move/from16 v49, v40

    const/16 v17, 0x0

    move v14, v3

    :goto_39
    if-eqz v1, :cond_79

    .line 6927
    invoke-static {v8, v14}, Laay;->a(CC)I

    move-result v1

    shr-int/lit8 v3, v1, 0x10

    int-to-char v8, v3

    int-to-short v1, v1

    int-to-char v14, v1

    :cond_79
    move/from16 v53, v8

    move/from16 v54, v14

    .line 6932
    invoke-static/range {v45 .. v67}, Laay;->a(CCCCCCCCCCCCCCCCCCCCCCC)Ljava/time/LocalDateTime;

    move-result-object v1

    if-nez v1, :cond_7a

    const/4 v0, 0x0

    return-object v0

    :cond_7a
    if-eqz v4, :cond_7f

    .line 6947
    new-instance v3, Ljava/lang/String;

    sub-int/2addr v2, v6

    invoke-direct {v3, v0, v6, v2}, Ljava/lang/String;-><init>([BII)V

    const/4 v0, -0x1

    .line 6948
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v4, 0x14984

    if-eq v2, v4, :cond_7c

    const v4, 0x52a4234

    if-eq v2, v4, :cond_7b

    goto :goto_3a

    :cond_7b
    const-string v2, "[UTC]"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    const/4 v0, 0x1

    goto :goto_3a

    :cond_7c
    const-string v2, "UTC"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    move/from16 v0, v26

    :cond_7d
    :goto_3a
    if-eqz v0, :cond_7e

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7e

    .line 6954
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 6955
    invoke-virtual {v0}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v0

    goto :goto_3b

    .line 6951
    :cond_7e
    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    goto :goto_3b

    :cond_7f
    if-ne v6, v2, :cond_80

    move-object/from16 v0, p3

    move-object v2, v0

    goto :goto_3f

    :cond_80
    move/from16 v9, p1

    add-int v3, v9, v6

    .line 6961
    aget-byte v4, v0, v3

    int-to-char v4, v4

    const/16 v5, 0x5a

    if-ne v4, v5, :cond_81

    .line 6963
    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    :goto_3b
    move-object v2, v0

    move-object/from16 v0, p3

    goto :goto_3f

    :cond_81
    if-nez v17, :cond_85

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_84

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_82

    goto :goto_3c

    :cond_82
    const/16 v5, 0x20

    if-ne v4, v5, :cond_83

    .line 6969
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x1

    add-int/2addr v3, v5

    sub-int/2addr v2, v6

    sub-int/2addr v2, v5

    invoke-direct {v4, v0, v3, v2}, Ljava/lang/String;-><init>([BII)V

    goto :goto_3d

    :cond_83
    const/4 v5, 0x1

    if-ge v6, v2, :cond_85

    .line 6972
    new-instance v4, Ljava/lang/String;

    add-int/2addr v3, v5

    sub-int/2addr v2, v6

    add-int/lit8 v2, v2, -0x2

    invoke-direct {v4, v0, v3, v2}, Ljava/lang/String;-><init>([BII)V

    goto :goto_3d

    .line 6967
    :cond_84
    :goto_3c
    new-instance v4, Ljava/lang/String;

    sub-int/2addr v2, v6

    invoke-direct {v4, v0, v3, v2}, Ljava/lang/String;-><init>([BII)V

    :goto_3d
    move-object/from16 v0, p3

    goto :goto_3e

    :cond_85
    move-object/from16 v0, p3

    move-object/from16 v4, v17

    .line 6976
    :goto_3e
    invoke-static {v4, v0}, Laay;->c(Ljava/lang/String;Ljava/time/ZoneId;)Ljava/time/ZoneId;

    move-result-object v2

    :goto_3f
    if-nez v2, :cond_86

    goto :goto_40

    :cond_86
    move-object v0, v2

    :goto_40
    if-nez v0, :cond_87

    .line 6985
    sget-object v0, Laay;->a:Ljava/time/ZoneId;

    :cond_87
    const/4 v2, 0x0

    .line 6988
    invoke-static {v1, v0, v2}, Ljava/time/ZonedDateTime;->ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_88
    move/from16 v9, p1

    :goto_41
    const/16 v8, 0x20

    if-ne v2, v8, :cond_89

    move/from16 v17, v14

    const/16 v14, 0x2c

    if-ne v12, v14, :cond_8a

    if-ne v11, v8, :cond_8a

    const/16 v12, 0x2d

    if-ne v4, v12, :cond_8a

    move/from16 v14, v16

    if-ne v14, v12, :cond_8a

    if-ne v13, v8, :cond_8a

    const/16 v12, 0x3a

    if-ne v6, v12, :cond_8a

    if-ne v15, v12, :cond_8a

    add-int/lit8 v12, v9, 0x1c

    .line 6903
    aget-byte v12, v0, v12

    if-eq v12, v8, :cond_8d

    goto :goto_42

    :cond_89
    move/from16 v17, v14

    :cond_8a
    :goto_42
    const/16 v8, 0x21

    if-ne v2, v8, :cond_8b

    const/16 v8, 0x2c

    if-ne v11, v8, :cond_8b

    const/16 v8, 0x20

    if-ne v5, v8, :cond_8b

    const/16 v11, 0x2d

    if-ne v1, v11, :cond_8b

    if-ne v10, v11, :cond_8b

    move/from16 v1, v45

    if-ne v1, v8, :cond_8b

    move/from16 v1, v28

    const/16 v10, 0x3a

    if-ne v1, v10, :cond_8b

    move/from16 v1, v41

    if-ne v1, v10, :cond_8b

    add-int/lit8 v1, v9, 0x1d

    aget-byte v1, v0, v1

    if-eq v1, v8, :cond_8d

    :cond_8b
    const/16 v1, 0x22

    if-ne v2, v1, :cond_8c

    const/16 v1, 0x2c

    if-ne v5, v1, :cond_8c

    const/16 v1, 0x20

    if-ne v3, v1, :cond_8c

    move/from16 v5, v22

    const/16 v8, 0x2d

    if-ne v5, v8, :cond_8c

    if-ne v7, v8, :cond_8c

    move/from16 v5, v24

    if-ne v5, v1, :cond_8c

    move/from16 v5, v20

    const/16 v7, 0x3a

    if-ne v5, v7, :cond_8c

    move/from16 v5, v33

    if-ne v5, v7, :cond_8c

    add-int/lit8 v5, v9, 0x1e

    aget-byte v5, v0, v5

    if-eq v5, v1, :cond_8d

    :cond_8c
    const/16 v1, 0x23

    if-ne v2, v1, :cond_8e

    const/16 v1, 0x2c

    if-ne v3, v1, :cond_8e

    const/16 v1, 0x20

    if-ne v4, v1, :cond_8e

    move/from16 v3, v17

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_8e

    move/from16 v3, v39

    if-ne v3, v4, :cond_8e

    if-ne v6, v1, :cond_8e

    const/16 v3, 0x3a

    if-ne v15, v3, :cond_8e

    move/from16 v4, v21

    if-ne v4, v3, :cond_8e

    add-int/lit8 v3, v9, 0x1f

    aget-byte v3, v0, v3

    if-ne v3, v1, :cond_8e

    .line 6908
    :cond_8d
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v9, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v1}, Laay;->d(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_8e
    const/16 v1, 0x22

    if-ne v2, v1, :cond_90

    .line 6910
    sget-object v1, Laay;->f:Ljava/time/format/DateTimeFormatter;

    if-nez v1, :cond_8f

    .line 6912
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "EEE MMM dd HH:mm:ss O yyyy"

    invoke-static {v3, v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Laay;->f:Ljava/time/format/DateTimeFormatter;

    .line 6914
    :cond_8f
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v9, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v3, v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_90
    const/16 v1, 0x1f

    if-ne v2, v1, :cond_92

    .line 6915
    aget-byte v1, v0, v18

    const/16 v3, 0x2c

    if-ne v1, v3, :cond_92

    .line 6917
    sget-object v1, Laay;->i:Ljava/time/format/DateTimeFormatter;

    if-nez v1, :cond_91

    .line 6919
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "EEE, dd MMM yyyy HH:mm:ss Z"

    invoke-static {v3, v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Laay;->i:Ljava/time/format/DateTimeFormatter;

    .line 6921
    :cond_91
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v9, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v3, v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_92
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_9
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

.method static a([BILjava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    add-int/lit8 v2, v1, 0x10

    .line 5839
    array-length v3, v0

    const-string v5, "illegal input "

    if-gt v2, v3, :cond_5

    .line 5844
    aget-byte v2, v0, v1

    int-to-char v2, v2

    add-int/lit8 v3, v1, 0x1

    .line 5845
    aget-byte v3, v0, v3

    int-to-char v3, v3

    add-int/lit8 v6, v1, 0x2

    .line 5846
    aget-byte v6, v0, v6

    int-to-char v6, v6

    add-int/lit8 v7, v1, 0x3

    .line 5847
    aget-byte v7, v0, v7

    int-to-char v7, v7

    add-int/lit8 v8, v1, 0x4

    .line 5848
    aget-byte v8, v0, v8

    int-to-char v8, v8

    add-int/lit8 v9, v1, 0x5

    .line 5849
    aget-byte v9, v0, v9

    int-to-char v9, v9

    add-int/lit8 v10, v1, 0x6

    .line 5850
    aget-byte v10, v0, v10

    int-to-char v10, v10

    add-int/lit8 v11, v1, 0x7

    .line 5851
    aget-byte v11, v0, v11

    int-to-char v11, v11

    add-int/lit8 v12, v1, 0x8

    .line 5852
    aget-byte v12, v0, v12

    int-to-char v12, v12

    add-int/lit8 v13, v1, 0x9

    .line 5853
    aget-byte v13, v0, v13

    int-to-char v13, v13

    add-int/lit8 v14, v1, 0xa

    .line 5854
    aget-byte v15, v0, v14

    int-to-char v15, v15

    add-int/lit8 v16, v1, 0xd

    .line 5855
    aget-byte v4, v0, v16

    int-to-char v4, v4

    move-object/from16 v16, v5

    const/16 v5, 0x2d

    const/16 v1, 0x10

    if-ne v8, v5, :cond_4

    if-ne v11, v5, :cond_4

    const/16 v8, 0x2b

    if-eq v15, v8, :cond_0

    if-ne v15, v5, :cond_4

    :cond_0
    const/16 v5, 0x3a

    if-ne v4, v5, :cond_4

    const/16 v4, 0x30

    if-lt v2, v4, :cond_3

    const/16 v5, 0x39

    if-gt v2, v5, :cond_3

    if-lt v3, v4, :cond_3

    if-gt v3, v5, :cond_3

    if-lt v6, v4, :cond_3

    if-gt v6, v5, :cond_3

    if-lt v7, v4, :cond_3

    if-gt v7, v5, :cond_3

    sub-int/2addr v2, v4

    mul-int/lit16 v2, v2, 0x3e8

    sub-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v2, v3

    sub-int/2addr v6, v4

    mul-int/lit8 v6, v6, 0xa

    add-int/2addr v2, v6

    sub-int/2addr v7, v4

    add-int/2addr v2, v7

    if-lt v9, v4, :cond_2

    if-gt v9, v5, :cond_2

    if-lt v10, v4, :cond_2

    if-gt v10, v5, :cond_2

    sub-int/2addr v9, v4

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v10, v4

    add-int/2addr v9, v10

    if-lt v12, v4, :cond_1

    if-gt v12, v5, :cond_1

    if-lt v13, v4, :cond_1

    if-gt v13, v5, :cond_1

    sub-int/2addr v12, v4

    mul-int/lit8 v12, v12, 0xa

    sub-int/2addr v13, v4

    add-int/2addr v12, v13

    .line 5907
    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x6

    invoke-direct {v1, v0, v14, v3}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, p2

    .line 5908
    invoke-static {v1, v0}, Laay;->c(Ljava/lang/String;Ljava/time/ZoneId;)Ljava/time/ZoneId;

    move-result-object v0

    .line 5910
    invoke-static {v2, v9, v12}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v1

    sget-object v2, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {v1, v2}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 5911
    invoke-static {v1, v0}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    .line 5902
    :cond_1
    new-instance v2, Ljava/lang/String;

    move v3, v1

    move/from16 v1, p1

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 5903
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v16

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_2
    move v3, v1

    move-object/from16 v4, v16

    move/from16 v1, p1

    .line 5892
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 5893
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_3
    move v3, v1

    move-object/from16 v4, v16

    move/from16 v1, p1

    .line 5882
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 5883
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_4
    move v3, v1

    move-object/from16 v4, v16

    move/from16 v1, p1

    .line 5870
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 5871
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_5
    move-object v4, v5

    .line 5840
    new-instance v2, Ljava/lang/String;

    array-length v3, v0

    sub-int/2addr v3, v1

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 5841
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0
.end method

.method static a([CILjava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    add-int/lit8 v2, v1, 0x10

    .line 5760
    array-length v3, v0

    const-string v5, "illegal input "

    if-gt v2, v3, :cond_5

    .line 5765
    aget-char v2, v0, v1

    add-int/lit8 v3, v1, 0x1

    .line 5766
    aget-char v3, v0, v3

    add-int/lit8 v6, v1, 0x2

    .line 5767
    aget-char v6, v0, v6

    add-int/lit8 v7, v1, 0x3

    .line 5768
    aget-char v7, v0, v7

    add-int/lit8 v8, v1, 0x4

    .line 5769
    aget-char v8, v0, v8

    add-int/lit8 v9, v1, 0x5

    .line 5770
    aget-char v9, v0, v9

    add-int/lit8 v10, v1, 0x6

    .line 5771
    aget-char v10, v0, v10

    add-int/lit8 v11, v1, 0x7

    .line 5772
    aget-char v11, v0, v11

    add-int/lit8 v12, v1, 0x8

    .line 5773
    aget-char v12, v0, v12

    add-int/lit8 v13, v1, 0x9

    .line 5774
    aget-char v13, v0, v13

    add-int/lit8 v14, v1, 0xa

    .line 5775
    aget-char v15, v0, v14

    add-int/lit8 v16, v1, 0xd

    .line 5776
    aget-char v4, v0, v16

    move-object/from16 v16, v5

    const/16 v5, 0x2d

    const/16 v1, 0x10

    if-ne v8, v5, :cond_4

    if-ne v11, v5, :cond_4

    const/16 v8, 0x2b

    if-eq v15, v8, :cond_0

    if-ne v15, v5, :cond_4

    :cond_0
    const/16 v5, 0x3a

    if-ne v4, v5, :cond_4

    const/16 v4, 0x30

    if-lt v2, v4, :cond_3

    const/16 v5, 0x39

    if-gt v2, v5, :cond_3

    if-lt v3, v4, :cond_3

    if-gt v3, v5, :cond_3

    if-lt v6, v4, :cond_3

    if-gt v6, v5, :cond_3

    if-lt v7, v4, :cond_3

    if-gt v7, v5, :cond_3

    sub-int/2addr v2, v4

    mul-int/lit16 v2, v2, 0x3e8

    sub-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v2, v3

    sub-int/2addr v6, v4

    mul-int/lit8 v6, v6, 0xa

    add-int/2addr v2, v6

    sub-int/2addr v7, v4

    add-int/2addr v2, v7

    if-lt v9, v4, :cond_2

    if-gt v9, v5, :cond_2

    if-lt v10, v4, :cond_2

    if-gt v10, v5, :cond_2

    sub-int/2addr v9, v4

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v10, v4

    add-int/2addr v9, v10

    if-lt v12, v4, :cond_1

    if-gt v12, v5, :cond_1

    if-lt v13, v4, :cond_1

    if-gt v13, v5, :cond_1

    sub-int/2addr v12, v4

    mul-int/lit8 v12, v12, 0xa

    sub-int/2addr v13, v4

    add-int/2addr v12, v13

    .line 5828
    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x6

    invoke-direct {v1, v0, v14, v3}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v0, p2

    .line 5829
    invoke-static {v1, v0}, Laay;->c(Ljava/lang/String;Ljava/time/ZoneId;)Ljava/time/ZoneId;

    move-result-object v0

    .line 5831
    invoke-static {v2, v9, v12}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v1

    sget-object v2, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {v1, v2}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 5832
    invoke-static {v1, v0}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    .line 5823
    :cond_1
    new-instance v2, Ljava/lang/String;

    move v3, v1

    move/from16 v1, p1

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 5824
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v16

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_2
    move v3, v1

    move-object/from16 v4, v16

    move/from16 v1, p1

    .line 5813
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 5814
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_3
    move v3, v1

    move-object/from16 v4, v16

    move/from16 v1, p1

    .line 5803
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 5804
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_4
    move v3, v1

    move-object/from16 v4, v16

    move/from16 v1, p1

    .line 5791
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 5792
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_5
    move-object v4, v5

    .line 5761
    new-instance v2, Ljava/lang/String;

    array-length v3, v0

    sub-int/2addr v3, v1

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 5762
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Date;
    .locals 4

    .line 156
    sget-object v0, Laay;->a:Ljava/time/ZoneId;

    invoke-static {p0, v0}, Laay;->a(Ljava/lang/String;Ljava/time/ZoneId;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 160
    :cond_0
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/time/ZoneId;)Ljava/util/Date;
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    .line 81
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p1, :cond_4

    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v0, -0x1

    .line 93
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "iso8601"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_2
    const-string v1, "dd.MM.yyyy HH:mm:ss"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "yyyy/MM/dd HH:mm:ss"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_5
    const-string/jumbo v1, "yyyy/MM/dd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_7
    const-string/jumbo v1, "yyyyMMdd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_8
    const-string/jumbo v1, "yyyyMMddHHmmssSSSZ"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x7

    :cond_2
    :goto_0
    packed-switch v0, :pswitch_data_0

    if-nez p2, :cond_3

    .line 145
    sget-object p2, Laay;->a:Ljava/time/ZoneId;

    goto :goto_1

    .line 139
    :pswitch_0
    invoke-static {p0}, Laay;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 135
    :pswitch_1
    sget-object p1, Laay;->a:Ljava/time/ZoneId;

    invoke-static {p0, p1}, Laay;->a(Ljava/lang/String;Ljava/time/ZoneId;)J

    move-result-wide p0

    .line 136
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    .line 120
    :pswitch_2
    invoke-static {p1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p1

    .line 121
    invoke-static {p0, p1}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object p0

    .line 124
    invoke-virtual {p0}, Ljava/time/LocalDate;->getYear()I

    move-result v1

    .line 125
    invoke-virtual {p0}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v2

    .line 126
    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    .line 122
    invoke-static/range {v0 .. v7}, Laay;->a(Ljava/time/ZoneId;IIIIIII)J

    move-result-wide p0

    .line 132
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    .line 115
    :pswitch_3
    sget-object p1, Laay$c;->DATE_FORMAT_10_SLASH:Laay$c;

    invoke-static {p0, p2, p1}, Laay;->b(Ljava/lang/String;Ljava/time/ZoneId;Laay$c;)J

    move-result-wide p0

    .line 116
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    .line 111
    :pswitch_4
    sget-object p1, Laay$c;->DATE_FORMAT_10_DASH:Laay$c;

    invoke-static {p0, p2, p1}, Laay;->b(Ljava/lang/String;Ljava/time/ZoneId;Laay$c;)J

    move-result-wide p0

    .line 112
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    .line 107
    :pswitch_5
    sget-object p1, Laay$c;->DATE_TIME_FORMAT_19_DOT:Laay$c;

    invoke-static {p0, p2, p1}, Laay;->a(Ljava/lang/String;Ljava/time/ZoneId;Laay$c;)J

    move-result-wide p0

    .line 108
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    .line 103
    :pswitch_6
    sget-object p1, Laay$c;->DATE_TIME_FORMAT_19_SLASH:Laay$c;

    invoke-static {p0, p2, p1}, Laay;->a(Ljava/lang/String;Ljava/time/ZoneId;Laay$c;)J

    move-result-wide p0

    .line 104
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    .line 99
    :pswitch_7
    invoke-static {p0, p2}, Laay;->d(Ljava/lang/String;Ljava/time/ZoneId;)J

    move-result-wide p0

    .line 100
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    .line 95
    :pswitch_8
    sget-object p1, Laay$c;->DATE_TIME_FORMAT_19_DASH_T:Laay$c;

    invoke-static {p0, p2, p1}, Laay;->a(Ljava/lang/String;Ljava/time/ZoneId;Laay$c;)J

    move-result-wide p0

    .line 96
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    .line 149
    :cond_3
    :goto_1
    invoke-static {p1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p1

    .line 150
    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object p0

    .line 151
    invoke-static {p0, p2}, Laay;->a(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide p0

    .line 152
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    .line 86
    :cond_4
    :goto_2
    invoke-static {p0, p2}, Laay;->a(Ljava/lang/String;Ljava/time/ZoneId;)J

    move-result-wide p0

    const-wide/16 v1, 0x0

    cmp-long p2, p0, v1

    if-nez p2, :cond_5

    return-object v0

    .line 90
    :cond_5
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    :cond_6
    :goto_3
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x14bad9d9 -> :sswitch_8
        -0x10781ba0 -> :sswitch_7
        -0x985fe00 -> :sswitch_6
        -0x61c4540 -> :sswitch_5
        0x129110e0 -> :sswitch_4
        0x4f76f1a0 -> :sswitch_3
        0x534c3940 -> :sswitch_2
        0x6b2ed43a -> :sswitch_1
        0x7ce21384 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static b(Ljava/lang/String;)J
    .locals 2

    .line 172
    sget-object v0, Laay;->a:Ljava/time/ZoneId;

    invoke-static {p0, v0}, Laay;->a(Ljava/lang/String;Ljava/time/ZoneId;)J

    move-result-wide v0

    return-wide v0
.end method

.method static b(Ljava/lang/String;Ljava/time/ZoneId;Laay$c;)J
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_20

    const-string v2, "null"

    .line 8646
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_a

    :cond_0
    move-object/from16 v2, p2

    .line 8650
    iget v3, v2, Laay$c;->length:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1f

    .line 8655
    sget v3, Labf;->d:I

    const/4 v5, 0x7

    const/16 v6, 0x9

    const/4 v7, 0x5

    const/16 v8, 0x8

    const/4 v9, 0x6

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x3

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-ne v3, v8, :cond_2

    .line 8656
    invoke-static/range {p0 .. p0}, Labf;->a(Ljava/lang/String;)[C

    move-result-object v3

    .line 8657
    array-length v15, v3

    if-ne v15, v4, :cond_1

    .line 8660
    aget-char v15, v3, v14

    .line 8661
    aget-char v16, v3, v13

    .line 8662
    aget-char v17, v3, v11

    .line 8663
    aget-char v12, v3, v12

    .line 8664
    aget-char v18, v3, v10

    .line 8665
    aget-char v19, v3, v7

    .line 8666
    aget-char v20, v3, v9

    .line 8667
    aget-char v5, v3, v5

    .line 8668
    aget-char v8, v3, v8

    .line 8669
    aget-char v3, v3, v6

    move v6, v3

    move v3, v8

    move/from16 v4, v16

    move/from16 v13, v17

    move/from16 v10, v18

    move/from16 v11, v19

    :goto_0
    move/from16 v8, v20

    goto/16 :goto_1

    .line 8658
    :cond_1
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal input "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v14}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    .line 8670
    :cond_2
    sget-object v3, Labf;->B:Ljava/util/function/ToIntFunction;

    if-eqz v3, :cond_4

    sget-object v3, Labf;->C:Ljava/util/function/Function;

    if-eqz v3, :cond_4

    sget-object v3, Labf;->B:Ljava/util/function/ToIntFunction;

    invoke-interface {v3, v0}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_4

    .line 8671
    sget-object v3, Labf;->C:Ljava/util/function/Function;

    invoke-interface {v3, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 8672
    array-length v15, v3

    if-ne v15, v4, :cond_3

    .line 8676
    aget-byte v15, v3, v14

    int-to-char v15, v15

    .line 8677
    aget-byte v4, v3, v13

    int-to-char v4, v4

    .line 8678
    aget-byte v13, v3, v11

    int-to-char v13, v13

    .line 8679
    aget-byte v12, v3, v12

    int-to-char v12, v12

    .line 8680
    aget-byte v11, v3, v10

    int-to-char v11, v11

    .line 8681
    aget-byte v10, v3, v7

    int-to-char v10, v10

    .line 8682
    aget-byte v7, v3, v9

    int-to-char v7, v7

    .line 8683
    aget-byte v5, v3, v5

    int-to-char v5, v5

    .line 8684
    aget-byte v8, v3, v8

    int-to-char v8, v8

    .line 8685
    aget-byte v3, v3, v6

    int-to-char v3, v3

    move v6, v3

    move v3, v8

    move v8, v7

    const/4 v7, 0x5

    move/from16 v22, v11

    move v11, v10

    move/from16 v10, v22

    goto :goto_1

    .line 8673
    :cond_3
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal input "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v14}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    .line 8687
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1e

    .line 8691
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/4 v3, 0x1

    .line 8692
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v7, 0x2

    .line 8693
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v17

    .line 8694
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/4 v7, 0x4

    .line 8695
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/4 v7, 0x5

    .line 8696
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 8697
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v20

    .line 8698
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 8699
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 8700
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v13

    move v3, v8

    move v6, v13

    move/from16 v13, v17

    goto/16 :goto_0

    .line 8704
    :goto_1
    sget-object v21, Laay$1;->a:[I

    invoke-virtual/range {p2 .. p2}, Laay$c;->ordinal()I

    move-result v2

    aget v2, v21, v2

    const-string v14, "illegal input"

    if-eq v2, v7, :cond_7

    if-ne v2, v9, :cond_6

    const/16 v2, 0x2f

    if-ne v10, v2, :cond_5

    const/16 v2, 0x2f

    if-ne v5, v2, :cond_5

    goto :goto_2

    .line 8722
    :cond_5
    new-instance v1, Ljava/time/format/DateTimeParseException;

    const/4 v2, 0x0

    invoke-direct {v1, v14, v0, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_6
    const/4 v2, 0x0

    .line 8736
    new-instance v1, Ljava/time/format/DateTimeParseException;

    invoke-direct {v1, v14, v0, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_7
    const/16 v2, 0x2d

    if-ne v10, v2, :cond_1d

    const/16 v2, 0x2d

    if-ne v5, v2, :cond_1d

    :goto_2
    const/16 v2, 0x30

    if-lt v15, v2, :cond_1c

    const/16 v5, 0x39

    if-gt v15, v5, :cond_1c

    if-lt v4, v2, :cond_1c

    if-gt v4, v5, :cond_1c

    if-lt v13, v2, :cond_1c

    if-gt v13, v5, :cond_1c

    if-lt v12, v2, :cond_1c

    if-gt v12, v5, :cond_1c

    sub-int/2addr v15, v2

    mul-int/lit16 v15, v15, 0x3e8

    sub-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x64

    add-int/2addr v15, v4

    sub-int/2addr v13, v2

    const/16 v4, 0xa

    mul-int/2addr v13, v4

    add-int/2addr v15, v13

    sub-int/2addr v12, v2

    add-int/2addr v15, v12

    if-lt v11, v2, :cond_1b

    if-gt v11, v5, :cond_1b

    if-lt v8, v2, :cond_1b

    if-gt v8, v5, :cond_1b

    sub-int/2addr v11, v2

    mul-int/2addr v11, v4

    sub-int/2addr v8, v2

    add-int v13, v11, v8

    if-nez v13, :cond_8

    if-nez v15, :cond_1a

    :cond_8
    const/16 v4, 0xc

    if-gt v13, v4, :cond_1a

    if-lt v3, v2, :cond_19

    if-gt v3, v5, :cond_19

    if-lt v6, v2, :cond_19

    if-gt v6, v5, :cond_19

    sub-int/2addr v3, v2

    const/16 v4, 0xa

    mul-int/2addr v3, v4

    sub-int/2addr v6, v2

    add-int v2, v3, v6

    const/16 v3, 0x1f

    const/4 v4, 0x2

    if-eq v13, v4, :cond_a

    const/4 v4, 0x4

    if-eq v13, v4, :cond_9

    if-eq v13, v9, :cond_9

    const/16 v4, 0x9

    if-eq v13, v4, :cond_9

    const/16 v4, 0xb

    if-eq v13, v4, :cond_9

    goto :goto_4

    :cond_9
    const/16 v3, 0x1e

    goto :goto_4

    :cond_a
    and-int/lit8 v3, v15, 0x3

    if-nez v3, :cond_c

    .line 8772
    rem-int/lit8 v3, v15, 0x64

    if-nez v3, :cond_b

    rem-int/lit16 v3, v15, 0x190

    if-nez v3, :cond_c

    :cond_b
    const/4 v3, 0x1

    goto :goto_3

    :cond_c
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_d

    const/16 v3, 0x1d

    goto :goto_4

    :cond_d
    const/16 v3, 0x1c

    :goto_4
    if-nez v2, :cond_e

    if-nez v15, :cond_18

    :cond_e
    if-gt v2, v3, :cond_18

    if-nez v15, :cond_f

    if-nez v13, :cond_f

    if-nez v2, :cond_f

    const/16 v15, 0x7b2

    const/4 v2, 0x1

    const/4 v13, 0x1

    :cond_f
    mul-int/lit16 v0, v15, 0x16d

    add-int/lit8 v3, v15, 0x3

    const/4 v4, 0x4

    .line 8801
    div-int/2addr v3, v4

    add-int/lit8 v4, v15, 0x63

    div-int/lit8 v4, v4, 0x64

    sub-int/2addr v3, v4

    add-int/lit16 v4, v15, 0x18f

    div-int/lit16 v4, v4, 0x190

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    mul-int/lit16 v3, v13, 0x16f

    add-int/lit16 v3, v3, -0x16a

    div-int/lit8 v3, v3, 0xc

    add-int/2addr v0, v3

    add-int/lit8 v3, v2, -0x1

    add-int/2addr v0, v3

    int-to-long v3, v0

    const/4 v0, 0x2

    if-le v13, v0, :cond_12

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    and-int/lit8 v0, v15, 0x3

    if-nez v0, :cond_11

    .line 8808
    rem-int/lit8 v0, v15, 0x64

    if-nez v0, :cond_10

    rem-int/lit16 v0, v15, 0x190

    if-nez v0, :cond_11

    :cond_10
    const/4 v0, 0x1

    goto :goto_5

    :cond_11
    const/4 v0, 0x0

    :goto_5
    if-nez v0, :cond_12

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    :cond_12
    const-wide/32 v5, 0xafaa8

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x15180

    mul-long/2addr v3, v5

    .line 8820
    sget-object v0, Laay;->b:Ljava/time/ZoneId;

    if-eq v1, v0, :cond_14

    invoke-virtual/range {p1 .. p1}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    sget-object v5, Laay;->c:Ljava/time/zone/ZoneRules;

    if-ne v0, v5, :cond_13

    goto :goto_6

    :cond_13
    const/16 v17, 0x0

    goto :goto_7

    :cond_14
    :goto_6
    const/16 v17, 0x1

    :goto_7
    const-wide/32 v5, 0x28d2bea0

    if-eqz v17, :cond_15

    cmp-long v0, v3, v5

    if-ltz v0, :cond_15

    const/16 v14, 0x7080

    goto :goto_9

    .line 8824
    :cond_15
    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    if-eq v1, v0, :cond_17

    invoke-virtual/range {p1 .. p1}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v5, "UTC"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_8

    .line 8827
    :cond_16
    invoke-static {v15, v13, v2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    .line 8828
    sget-object v2, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {v0, v2}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 8829
    invoke-virtual/range {p1 .. p1}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/LocalDateTime;)Ljava/time/ZoneOffset;

    move-result-object v0

    .line 8830
    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v14

    goto :goto_9

    :cond_17
    :goto_8
    const/4 v14, 0x0

    :goto_9
    int-to-long v0, v14

    sub-long/2addr v3, v0

    const-wide/16 v0, 0x3e8

    mul-long/2addr v3, v0

    return-wide v3

    .line 8784
    :cond_18
    new-instance v1, Ljava/time/format/DateTimeParseException;

    const/4 v2, 0x0

    invoke-direct {v1, v14, v0, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_19
    const/4 v2, 0x0

    .line 8787
    new-instance v1, Ljava/time/format/DateTimeParseException;

    invoke-direct {v1, v14, v0, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_1a
    const/4 v2, 0x0

    .line 8757
    new-instance v1, Ljava/time/format/DateTimeParseException;

    invoke-direct {v1, v14, v0, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_1b
    const/4 v2, 0x0

    .line 8760
    new-instance v1, Ljava/time/format/DateTimeParseException;

    invoke-direct {v1, v14, v0, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_1c
    const/4 v2, 0x0

    .line 8747
    new-instance v1, Ljava/time/format/DateTimeParseException;

    invoke-direct {v1, v14, v0, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_1d
    const/4 v2, 0x0

    .line 8707
    new-instance v1, Ljava/time/format/DateTimeParseException;

    invoke-direct {v1, v14, v0, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_1e
    move v2, v14

    .line 8688
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal input "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    .line 8651
    :cond_1f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_20
    :goto_a
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static b([BILjava/time/ZoneId;)J
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    if-eqz v0, :cond_2c

    .line 9254
    aget-byte v2, v0, v1

    int-to-char v2, v2

    add-int/lit8 v3, v1, 0x1

    .line 9255
    aget-byte v3, v0, v3

    int-to-char v3, v3

    add-int/lit8 v4, v1, 0x2

    .line 9256
    aget-byte v4, v0, v4

    int-to-char v4, v4

    add-int/lit8 v5, v1, 0x3

    .line 9257
    aget-byte v5, v0, v5

    int-to-char v5, v5

    add-int/lit8 v6, v1, 0x4

    .line 9258
    aget-byte v6, v0, v6

    int-to-char v6, v6

    add-int/lit8 v7, v1, 0x5

    .line 9259
    aget-byte v7, v0, v7

    int-to-char v7, v7

    add-int/lit8 v8, v1, 0x6

    .line 9260
    aget-byte v8, v0, v8

    int-to-char v8, v8

    add-int/lit8 v9, v1, 0x7

    .line 9261
    aget-byte v9, v0, v9

    int-to-char v9, v9

    add-int/lit8 v10, v1, 0x8

    .line 9262
    aget-byte v10, v0, v10

    int-to-char v10, v10

    add-int/lit8 v11, v1, 0x9

    .line 9263
    aget-byte v11, v0, v11

    int-to-char v11, v11

    add-int/lit8 v12, v1, 0xa

    .line 9264
    aget-byte v12, v0, v12

    int-to-char v12, v12

    add-int/lit8 v13, v1, 0xb

    .line 9265
    aget-byte v13, v0, v13

    int-to-char v13, v13

    add-int/lit8 v14, v1, 0xc

    .line 9266
    aget-byte v14, v0, v14

    int-to-char v14, v14

    add-int/lit8 v15, v1, 0xd

    .line 9267
    aget-byte v15, v0, v15

    int-to-char v15, v15

    add-int/lit8 v16, v1, 0xe

    move/from16 v17, v2

    .line 9268
    aget-byte v2, v0, v16

    int-to-char v2, v2

    add-int/lit8 v16, v1, 0xf

    move/from16 v18, v10

    .line 9269
    aget-byte v10, v0, v16

    int-to-char v10, v10

    add-int/lit8 v16, v1, 0x10

    move/from16 v19, v10

    .line 9270
    aget-byte v10, v0, v16

    int-to-char v10, v10

    add-int/lit8 v16, v1, 0x11

    move/from16 v20, v11

    .line 9271
    aget-byte v11, v0, v16

    int-to-char v11, v11

    add-int/lit8 v16, v1, 0x12

    move/from16 v21, v14

    .line 9272
    aget-byte v14, v0, v16

    int-to-char v14, v14

    move/from16 v16, v14

    const-string v14, "illegal input "

    move/from16 v22, v11

    const/16 v11, 0x2d

    if-ne v6, v11, :cond_1

    const/16 v11, 0x2d

    if-ne v9, v11, :cond_1

    const/16 v11, 0x20

    if-eq v12, v11, :cond_0

    const/16 v11, 0x54

    if-ne v12, v11, :cond_1

    :cond_0
    const/16 v11, 0x3a

    if-ne v15, v11, :cond_1

    if-ne v10, v11, :cond_1

    goto :goto_0

    :cond_1
    const/16 v11, 0x2f

    if-ne v6, v11, :cond_3

    if-ne v9, v11, :cond_3

    const/16 v11, 0x20

    if-eq v12, v11, :cond_2

    const/16 v11, 0x54

    if-ne v12, v11, :cond_3

    :cond_2
    const/16 v11, 0x3a

    if-ne v15, v11, :cond_3

    if-ne v10, v11, :cond_3

    :goto_0
    move v10, v2

    move v12, v5

    move v6, v8

    move/from16 v9, v17

    move/from16 v2, v18

    move/from16 v11, v19

    move/from16 v8, v20

    move/from16 v15, v21

    const/16 v5, 0x30

    :goto_1
    move-object/from16 v17, v14

    move/from16 v14, v22

    goto/16 :goto_3

    :cond_3
    const/16 v11, 0x2f

    if-ne v4, v11, :cond_4

    if-ne v7, v11, :cond_4

    const/16 v11, 0x20

    if-ne v12, v11, :cond_4

    const/16 v11, 0x3a

    if-ne v15, v11, :cond_4

    if-ne v10, v11, :cond_4

    goto :goto_2

    :cond_4
    const/16 v11, 0x2e

    if-ne v4, v11, :cond_5

    const/16 v11, 0x2e

    if-ne v7, v11, :cond_5

    const/16 v11, 0x20

    if-ne v12, v11, :cond_6

    const/16 v11, 0x3a

    if-ne v15, v11, :cond_5

    if-ne v10, v11, :cond_5

    :goto_2
    move v10, v2

    move v7, v5

    move/from16 v2, v17

    move/from16 v4, v18

    move/from16 v11, v19

    move/from16 v12, v20

    move/from16 v15, v21

    const/16 v5, 0x30

    move-object/from16 v17, v14

    move/from16 v14, v22

    move/from16 v23, v8

    move v8, v3

    move v3, v9

    move/from16 v9, v23

    goto/16 :goto_3

    :cond_5
    const/16 v11, 0x20

    :cond_6
    if-ne v3, v11, :cond_9

    if-ne v7, v11, :cond_9

    if-ne v12, v11, :cond_9

    const/16 v11, 0x3a

    if-ne v15, v11, :cond_8

    if-ne v10, v11, :cond_8

    .line 9367
    invoke-static {v4, v5, v6}, Laay;->a(CCC)I

    move-result v3

    if-lez v3, :cond_7

    .line 9369
    div-int/lit8 v4, v3, 0xa

    const/16 v5, 0x30

    add-int/2addr v4, v5

    int-to-char v4, v4

    .line 9370
    rem-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v5

    int-to-char v6, v3

    move v10, v2

    move v7, v4

    move v3, v9

    move/from16 v4, v18

    move/from16 v11, v19

    move/from16 v12, v20

    move/from16 v15, v21

    const/16 v2, 0x30

    const/16 v5, 0x30

    move v9, v8

    move/from16 v8, v17

    goto :goto_1

    .line 9372
    :cond_7
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x13

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 9373
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_8
    const/16 v11, 0x20

    :cond_9
    if-ne v4, v11, :cond_c

    if-ne v8, v11, :cond_c

    if-ne v13, v11, :cond_c

    const/16 v11, 0x3a

    if-ne v15, v11, :cond_b

    if-ne v10, v11, :cond_b

    .line 9395
    invoke-static {v5, v6, v7}, Laay;->a(CCC)I

    move-result v4

    if-lez v4, :cond_a

    .line 9397
    div-int/lit8 v5, v4, 0xa

    const/16 v6, 0x30

    add-int/2addr v5, v6

    int-to-char v5, v5

    .line 9398
    rem-int/lit8 v4, v4, 0xa

    add-int/2addr v4, v6

    int-to-char v6, v4

    move v10, v2

    move v8, v3

    move v7, v5

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v11, v19

    move/from16 v4, v20

    move/from16 v15, v21

    const/16 v5, 0x30

    const/16 v13, 0x30

    goto/16 :goto_1

    .line 9400
    :cond_a
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x13

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 9401
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_b
    const/16 v11, 0x20

    :cond_c
    if-ne v4, v11, :cond_f

    if-ne v8, v11, :cond_f

    if-ne v13, v11, :cond_f

    const/16 v11, 0x3a

    if-ne v2, v11, :cond_e

    if-ne v10, v11, :cond_e

    .line 9423
    invoke-static {v5, v6, v7}, Laay;->a(CCC)I

    move-result v2

    if-lez v2, :cond_d

    .line 9425
    div-int/lit8 v4, v2, 0xa

    const/16 v5, 0x30

    add-int/2addr v4, v5

    int-to-char v4, v4

    .line 9426
    rem-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v5

    int-to-char v6, v2

    move v8, v3

    move v7, v4

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v11, v19

    move/from16 v4, v20

    move/from16 v13, v21

    const/16 v5, 0x30

    const/16 v10, 0x30

    goto/16 :goto_1

    .line 9428
    :cond_d
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x13

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 9429
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_e
    const/16 v11, 0x20

    :cond_f
    if-ne v4, v11, :cond_2b

    if-ne v8, v11, :cond_2b

    if-ne v13, v11, :cond_2b

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_2b

    move/from16 v2, v22

    if-ne v2, v4, :cond_2b

    .line 9451
    invoke-static {v5, v6, v7}, Laay;->a(CCC)I

    move-result v2

    if-lez v2, :cond_2a

    .line 9453
    div-int/lit8 v4, v2, 0xa

    const/16 v5, 0x30

    add-int/2addr v4, v5

    int-to-char v4, v4

    .line 9454
    rem-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v5

    int-to-char v6, v2

    move v8, v3

    move v7, v4

    move v11, v10

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v10, v19

    move/from16 v4, v20

    move/from16 v13, v21

    move-object/from16 v17, v14

    move v14, v5

    :goto_3
    if-lt v9, v5, :cond_29

    const/16 v0, 0x39

    if-gt v9, v0, :cond_28

    if-lt v3, v5, :cond_28

    if-gt v3, v0, :cond_28

    if-lt v4, v5, :cond_28

    if-gt v4, v0, :cond_28

    if-lt v12, v5, :cond_28

    if-gt v12, v0, :cond_28

    sub-int/2addr v9, v5

    mul-int/lit16 v9, v9, 0x3e8

    sub-int/2addr v3, v5

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v9, v3

    sub-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v9, v4

    sub-int/2addr v12, v5

    add-int/2addr v9, v12

    if-lt v7, v5, :cond_27

    if-gt v7, v0, :cond_27

    if-lt v6, v5, :cond_27

    if-gt v6, v0, :cond_27

    sub-int/2addr v7, v5

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr v6, v5

    add-int/2addr v7, v6

    if-nez v7, :cond_10

    if-nez v9, :cond_26

    :cond_10
    const/16 v3, 0xc

    if-gt v7, v3, :cond_26

    if-lt v2, v5, :cond_25

    if-gt v2, v0, :cond_25

    if-lt v8, v5, :cond_25

    if-gt v8, v0, :cond_25

    sub-int/2addr v2, v5

    mul-int/lit8 v2, v2, 0xa

    sub-int/2addr v8, v5

    add-int/2addr v2, v8

    const/16 v4, 0x1f

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v8, 0x1

    if-eq v7, v6, :cond_12

    if-eq v7, v5, :cond_11

    const/4 v12, 0x6

    if-eq v7, v12, :cond_11

    const/16 v12, 0x9

    if-eq v7, v12, :cond_11

    const/16 v12, 0xb

    if-eq v7, v12, :cond_11

    goto :goto_5

    :cond_11
    const/16 v4, 0x1e

    goto :goto_5

    :cond_12
    and-int/lit8 v4, v9, 0x3

    if-nez v4, :cond_14

    .line 9514
    rem-int/lit8 v4, v9, 0x64

    if-nez v4, :cond_13

    rem-int/lit16 v4, v9, 0x190

    if-nez v4, :cond_14

    :cond_13
    move v4, v8

    goto :goto_4

    :cond_14
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_15

    const/16 v4, 0x1d

    goto :goto_5

    :cond_15
    const/16 v4, 0x1c

    :goto_5
    if-nez v2, :cond_16

    if-nez v9, :cond_24

    :cond_16
    if-gt v2, v4, :cond_24

    const/16 v4, 0x30

    if-lt v13, v4, :cond_23

    if-gt v13, v0, :cond_23

    if-lt v15, v4, :cond_23

    if-gt v15, v0, :cond_23

    sub-int/2addr v13, v4

    mul-int/lit8 v13, v13, 0xa

    sub-int/2addr v15, v4

    add-int/2addr v13, v15

    if-lt v10, v4, :cond_22

    if-gt v10, v0, :cond_22

    if-lt v11, v4, :cond_22

    if-gt v11, v0, :cond_22

    sub-int/2addr v10, v4

    mul-int/lit8 v10, v10, 0xa

    sub-int/2addr v11, v4

    add-int/2addr v10, v11

    if-lt v14, v4, :cond_21

    if-gt v14, v0, :cond_21

    move/from16 v11, v16

    if-lt v11, v4, :cond_21

    if-gt v11, v0, :cond_21

    sub-int/2addr v14, v4

    mul-int/lit8 v14, v14, 0xa

    add-int/lit8 v0, v11, -0x30

    add-int/2addr v14, v0

    if-nez v9, :cond_17

    if-nez v7, :cond_17

    if-nez v2, :cond_17

    const/16 v9, 0x7b2

    move v2, v8

    move v7, v2

    :cond_17
    mul-int/lit16 v0, v9, 0x16d

    add-int/lit8 v1, v9, 0x3

    .line 9575
    div-int/2addr v1, v5

    add-int/lit8 v4, v9, 0x63

    div-int/lit8 v4, v4, 0x64

    sub-int/2addr v1, v4

    add-int/lit16 v4, v9, 0x18f

    div-int/lit16 v4, v4, 0x190

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    mul-int/lit16 v1, v7, 0x16f

    add-int/lit16 v1, v1, -0x16a

    div-int/2addr v1, v3

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, -0x1

    add-int/2addr v0, v1

    int-to-long v0, v0

    if-le v7, v6, :cond_1a

    const-wide/16 v3, 0x1

    sub-long/2addr v0, v3

    and-int/lit8 v3, v9, 0x3

    if-nez v3, :cond_19

    .line 9582
    rem-int/lit8 v3, v9, 0x64

    if-nez v3, :cond_18

    rem-int/lit16 v3, v9, 0x190

    if-nez v3, :cond_19

    :cond_18
    move v3, v8

    goto :goto_6

    :cond_19
    const/4 v3, 0x0

    :goto_6
    if-nez v3, :cond_1a

    const-wide/16 v3, 0x1

    sub-long/2addr v0, v3

    :cond_1a
    const-wide/32 v3, 0xafaa8

    sub-long/2addr v0, v3

    const-wide/32 v3, 0x15180

    mul-long/2addr v0, v3

    mul-int/lit16 v3, v13, 0xe10

    int-to-long v3, v3

    add-long/2addr v0, v3

    mul-int/lit8 v3, v10, 0x3c

    int-to-long v3, v3

    add-long/2addr v0, v3

    int-to-long v3, v14

    add-long/2addr v0, v3

    if-nez p2, :cond_1b

    .line 9598
    sget-object v3, Laay;->a:Ljava/time/ZoneId;

    goto :goto_7

    :cond_1b
    move-object/from16 v3, p2

    .line 9600
    :goto_7
    sget-object v4, Laay;->b:Ljava/time/ZoneId;

    if-eq v3, v4, :cond_1d

    invoke-virtual {v3}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v4

    sget-object v5, Laay;->c:Ljava/time/zone/ZoneRules;

    if-ne v4, v5, :cond_1c

    goto :goto_8

    :cond_1c
    const/4 v8, 0x0

    :cond_1d
    :goto_8
    const-wide/32 v4, 0x28d2bea0

    if-eqz v8, :cond_1e

    cmp-long v4, v0, v4

    if-ltz v4, :cond_1e

    const/16 v11, 0x7080

    goto :goto_a

    .line 9604
    :cond_1e
    sget-object v4, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    if-eq v3, v4, :cond_20

    invoke-virtual {v3}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTC"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    goto :goto_9

    .line 9607
    :cond_1f
    invoke-static {v9, v7, v2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v2

    const/4 v4, 0x0

    .line 9608
    invoke-static {v13, v10, v14, v4}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v4

    .line 9609
    invoke-static {v2, v4}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    .line 9610
    invoke-virtual {v3}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/LocalDateTime;)Ljava/time/ZoneOffset;

    move-result-object v2

    .line 9611
    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v11

    goto :goto_a

    :cond_20
    :goto_9
    const/4 v11, 0x0

    :goto_a
    int-to-long v2, v11

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0

    .line 9560
    :cond_21
    new-instance v0, Ljava/lang/String;

    const/16 v3, 0x13

    move-object/from16 v2, p0

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 9561
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v17

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_22
    move-object/from16 v2, p0

    move-object/from16 v3, v17

    .line 9550
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x13

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 9551
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_23
    move-object/from16 v2, p0

    move-object/from16 v3, v17

    .line 9540
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x13

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 9541
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v0, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_24
    const/16 v4, 0x13

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, v17

    .line 9526
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 9527
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_25
    move-object/from16 v2, p0

    move-object/from16 v3, v17

    .line 9530
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x13

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 9531
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v0, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_26
    const/16 v4, 0x13

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, v17

    .line 9497
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 9498
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_27
    move-object/from16 v2, p0

    move-object/from16 v3, v17

    .line 9501
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x13

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 9502
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_28
    move-object/from16 v2, p0

    goto :goto_b

    :cond_29
    move-object v2, v0

    :goto_b
    move-object/from16 v3, v17

    .line 9486
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x13

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 9487
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v0, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_2a
    move-object v2, v0

    move-object v3, v14

    const/16 v4, 0x13

    const/4 v5, 0x0

    .line 9456
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 9457
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_2b
    move-object v2, v0

    move-object v3, v14

    .line 9474
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x13

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 9475
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    .line 9250
    :cond_2c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static b([CILjava/time/ZoneId;)J
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    if-eqz v0, :cond_2c

    .line 9623
    aget-char v2, v0, v1

    add-int/lit8 v3, v1, 0x1

    .line 9624
    aget-char v3, v0, v3

    add-int/lit8 v4, v1, 0x2

    .line 9625
    aget-char v4, v0, v4

    add-int/lit8 v5, v1, 0x3

    .line 9626
    aget-char v5, v0, v5

    add-int/lit8 v6, v1, 0x4

    .line 9627
    aget-char v6, v0, v6

    add-int/lit8 v7, v1, 0x5

    .line 9628
    aget-char v7, v0, v7

    add-int/lit8 v8, v1, 0x6

    .line 9629
    aget-char v8, v0, v8

    add-int/lit8 v9, v1, 0x7

    .line 9630
    aget-char v9, v0, v9

    add-int/lit8 v10, v1, 0x8

    .line 9631
    aget-char v10, v0, v10

    add-int/lit8 v11, v1, 0x9

    .line 9632
    aget-char v11, v0, v11

    add-int/lit8 v12, v1, 0xa

    .line 9633
    aget-char v12, v0, v12

    add-int/lit8 v13, v1, 0xb

    .line 9634
    aget-char v13, v0, v13

    add-int/lit8 v14, v1, 0xc

    .line 9635
    aget-char v14, v0, v14

    add-int/lit8 v15, v1, 0xd

    .line 9636
    aget-char v15, v0, v15

    add-int/lit8 v16, v1, 0xe

    move/from16 v17, v2

    .line 9637
    aget-char v2, v0, v16

    add-int/lit8 v16, v1, 0xf

    .line 9638
    aget-char v16, v0, v16

    add-int/lit8 v18, v1, 0x10

    move/from16 v19, v10

    .line 9639
    aget-char v10, v0, v18

    add-int/lit8 v18, v1, 0x11

    move/from16 v20, v11

    .line 9640
    aget-char v11, v0, v18

    add-int/lit8 v18, v1, 0x12

    move/from16 v21, v14

    .line 9641
    aget-char v14, v0, v18

    move/from16 v18, v14

    const-string v14, "illegal input "

    move/from16 v22, v11

    const/16 v11, 0x2d

    if-ne v6, v11, :cond_1

    const/16 v11, 0x2d

    if-ne v9, v11, :cond_1

    const/16 v11, 0x20

    if-eq v12, v11, :cond_0

    const/16 v11, 0x54

    if-ne v12, v11, :cond_1

    :cond_0
    const/16 v11, 0x3a

    if-ne v15, v11, :cond_1

    if-ne v10, v11, :cond_1

    goto :goto_0

    :cond_1
    const/16 v11, 0x2f

    if-ne v6, v11, :cond_3

    if-ne v9, v11, :cond_3

    const/16 v11, 0x20

    if-eq v12, v11, :cond_2

    const/16 v11, 0x54

    if-ne v12, v11, :cond_3

    :cond_2
    const/16 v11, 0x3a

    if-ne v15, v11, :cond_3

    if-ne v10, v11, :cond_3

    :goto_0
    move v10, v2

    move v12, v5

    move v6, v8

    move/from16 v11, v16

    move/from16 v9, v17

    move/from16 v2, v19

    move/from16 v8, v20

    move/from16 v15, v21

    const/16 v5, 0x30

    :goto_1
    move-object/from16 v16, v14

    :goto_2
    move/from16 v14, v22

    goto/16 :goto_4

    :cond_3
    const/16 v11, 0x2f

    if-ne v4, v11, :cond_4

    if-ne v7, v11, :cond_4

    const/16 v11, 0x20

    if-ne v12, v11, :cond_4

    const/16 v11, 0x3a

    if-ne v15, v11, :cond_4

    if-ne v10, v11, :cond_4

    goto :goto_3

    :cond_4
    const/16 v11, 0x2e

    if-ne v4, v11, :cond_5

    const/16 v11, 0x2e

    if-ne v7, v11, :cond_5

    const/16 v11, 0x20

    if-ne v12, v11, :cond_6

    const/16 v11, 0x3a

    if-ne v15, v11, :cond_5

    if-ne v10, v11, :cond_5

    :goto_3
    move v10, v2

    move v7, v5

    move/from16 v11, v16

    move/from16 v2, v17

    move/from16 v4, v19

    move/from16 v12, v20

    move/from16 v15, v21

    const/16 v5, 0x30

    move-object/from16 v16, v14

    move/from16 v14, v22

    move/from16 v23, v8

    move v8, v3

    move v3, v9

    move/from16 v9, v23

    goto/16 :goto_4

    :cond_5
    const/16 v11, 0x20

    :cond_6
    if-ne v3, v11, :cond_9

    if-ne v7, v11, :cond_9

    if-ne v12, v11, :cond_9

    const/16 v11, 0x3a

    if-ne v15, v11, :cond_8

    if-ne v10, v11, :cond_8

    .line 9736
    invoke-static {v4, v5, v6}, Laay;->a(CCC)I

    move-result v3

    if-lez v3, :cond_7

    .line 9738
    div-int/lit8 v4, v3, 0xa

    const/16 v5, 0x30

    add-int/2addr v4, v5

    int-to-char v4, v4

    .line 9739
    rem-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v5

    int-to-char v6, v3

    move v10, v2

    move v7, v4

    move v3, v9

    move/from16 v11, v16

    move/from16 v4, v19

    move/from16 v12, v20

    move/from16 v15, v21

    const/16 v2, 0x30

    const/16 v5, 0x30

    move v9, v8

    move-object/from16 v16, v14

    move/from16 v8, v17

    goto :goto_2

    .line 9741
    :cond_7
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x13

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 9742
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_8
    const/16 v11, 0x20

    :cond_9
    if-ne v4, v11, :cond_c

    if-ne v8, v11, :cond_c

    if-ne v13, v11, :cond_c

    const/16 v11, 0x3a

    if-ne v15, v11, :cond_b

    if-ne v10, v11, :cond_b

    .line 9764
    invoke-static {v5, v6, v7}, Laay;->a(CCC)I

    move-result v4

    if-lez v4, :cond_a

    .line 9766
    div-int/lit8 v5, v4, 0xa

    const/16 v6, 0x30

    add-int/2addr v5, v6

    int-to-char v5, v5

    .line 9767
    rem-int/lit8 v4, v4, 0xa

    add-int/2addr v4, v6

    int-to-char v6, v4

    move v10, v2

    move v8, v3

    move v7, v5

    move/from16 v11, v16

    move/from16 v2, v17

    move/from16 v3, v19

    move/from16 v4, v20

    move/from16 v15, v21

    const/16 v5, 0x30

    const/16 v13, 0x30

    goto/16 :goto_1

    .line 9769
    :cond_a
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x13

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 9770
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_b
    const/16 v11, 0x20

    :cond_c
    if-ne v4, v11, :cond_f

    if-ne v8, v11, :cond_f

    if-ne v13, v11, :cond_f

    const/16 v11, 0x3a

    if-ne v2, v11, :cond_e

    if-ne v10, v11, :cond_e

    .line 9792
    invoke-static {v5, v6, v7}, Laay;->a(CCC)I

    move-result v2

    if-lez v2, :cond_d

    .line 9794
    div-int/lit8 v4, v2, 0xa

    const/16 v5, 0x30

    add-int/2addr v4, v5

    int-to-char v4, v4

    .line 9795
    rem-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v5

    int-to-char v6, v2

    move v8, v3

    move v7, v4

    move/from16 v11, v16

    move/from16 v2, v17

    move/from16 v3, v19

    move/from16 v4, v20

    move/from16 v13, v21

    const/16 v5, 0x30

    const/16 v10, 0x30

    goto/16 :goto_1

    .line 9797
    :cond_d
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x13

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 9798
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_e
    const/16 v11, 0x20

    :cond_f
    if-ne v4, v11, :cond_2b

    if-ne v8, v11, :cond_2b

    if-ne v13, v11, :cond_2b

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_2b

    move/from16 v2, v22

    if-ne v2, v4, :cond_2b

    .line 9820
    invoke-static {v5, v6, v7}, Laay;->a(CCC)I

    move-result v2

    if-lez v2, :cond_2a

    .line 9822
    div-int/lit8 v4, v2, 0xa

    const/16 v5, 0x30

    add-int/2addr v4, v5

    int-to-char v4, v4

    .line 9823
    rem-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v5

    int-to-char v6, v2

    move v8, v3

    move v7, v4

    move v11, v10

    move/from16 v10, v16

    move/from16 v2, v17

    move/from16 v3, v19

    move/from16 v4, v20

    move/from16 v13, v21

    move-object/from16 v16, v14

    move v14, v5

    :goto_4
    if-lt v9, v5, :cond_29

    const/16 v0, 0x39

    if-gt v9, v0, :cond_28

    if-lt v3, v5, :cond_28

    if-gt v3, v0, :cond_28

    if-lt v4, v5, :cond_28

    if-gt v4, v0, :cond_28

    if-lt v12, v5, :cond_28

    if-gt v12, v0, :cond_28

    sub-int/2addr v9, v5

    mul-int/lit16 v9, v9, 0x3e8

    sub-int/2addr v3, v5

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v9, v3

    sub-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v9, v4

    sub-int/2addr v12, v5

    add-int/2addr v9, v12

    if-lt v7, v5, :cond_27

    if-gt v7, v0, :cond_27

    if-lt v6, v5, :cond_27

    if-gt v6, v0, :cond_27

    sub-int/2addr v7, v5

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr v6, v5

    add-int/2addr v7, v6

    if-nez v7, :cond_10

    if-nez v9, :cond_26

    :cond_10
    const/16 v3, 0xc

    if-gt v7, v3, :cond_26

    if-lt v2, v5, :cond_25

    if-gt v2, v0, :cond_25

    if-lt v8, v5, :cond_25

    if-gt v8, v0, :cond_25

    sub-int/2addr v2, v5

    mul-int/lit8 v2, v2, 0xa

    sub-int/2addr v8, v5

    add-int/2addr v2, v8

    const/16 v4, 0x1f

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v8, 0x1

    if-eq v7, v6, :cond_12

    if-eq v7, v5, :cond_11

    const/4 v12, 0x6

    if-eq v7, v12, :cond_11

    const/16 v12, 0x9

    if-eq v7, v12, :cond_11

    const/16 v12, 0xb

    if-eq v7, v12, :cond_11

    goto :goto_6

    :cond_11
    const/16 v4, 0x1e

    goto :goto_6

    :cond_12
    and-int/lit8 v4, v9, 0x3

    if-nez v4, :cond_14

    .line 9883
    rem-int/lit8 v4, v9, 0x64

    if-nez v4, :cond_13

    rem-int/lit16 v4, v9, 0x190

    if-nez v4, :cond_14

    :cond_13
    move v4, v8

    goto :goto_5

    :cond_14
    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_15

    const/16 v4, 0x1d

    goto :goto_6

    :cond_15
    const/16 v4, 0x1c

    :goto_6
    if-nez v2, :cond_16

    if-nez v9, :cond_24

    :cond_16
    if-gt v2, v4, :cond_24

    const/16 v4, 0x30

    if-lt v13, v4, :cond_23

    if-gt v13, v0, :cond_23

    if-lt v15, v4, :cond_23

    if-gt v15, v0, :cond_23

    sub-int/2addr v13, v4

    mul-int/lit8 v13, v13, 0xa

    sub-int/2addr v15, v4

    add-int/2addr v13, v15

    if-lt v10, v4, :cond_22

    if-gt v10, v0, :cond_22

    if-lt v11, v4, :cond_22

    if-gt v11, v0, :cond_22

    sub-int/2addr v10, v4

    mul-int/lit8 v10, v10, 0xa

    sub-int/2addr v11, v4

    add-int/2addr v10, v11

    if-lt v14, v4, :cond_21

    if-gt v14, v0, :cond_21

    move/from16 v11, v18

    if-lt v11, v4, :cond_21

    if-gt v11, v0, :cond_21

    sub-int/2addr v14, v4

    mul-int/lit8 v14, v14, 0xa

    add-int/lit8 v0, v11, -0x30

    add-int/2addr v14, v0

    if-nez v9, :cond_17

    if-nez v7, :cond_17

    if-nez v2, :cond_17

    const/16 v9, 0x7b2

    move v2, v8

    move v7, v2

    :cond_17
    mul-int/lit16 v0, v9, 0x16d

    add-int/lit8 v1, v9, 0x3

    .line 9944
    div-int/2addr v1, v5

    add-int/lit8 v4, v9, 0x63

    div-int/lit8 v4, v4, 0x64

    sub-int/2addr v1, v4

    add-int/lit16 v4, v9, 0x18f

    div-int/lit16 v4, v4, 0x190

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    mul-int/lit16 v1, v7, 0x16f

    add-int/lit16 v1, v1, -0x16a

    div-int/2addr v1, v3

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, -0x1

    add-int/2addr v0, v1

    int-to-long v0, v0

    if-le v7, v6, :cond_1a

    const-wide/16 v3, 0x1

    sub-long/2addr v0, v3

    and-int/lit8 v3, v9, 0x3

    if-nez v3, :cond_19

    .line 9951
    rem-int/lit8 v3, v9, 0x64

    if-nez v3, :cond_18

    rem-int/lit16 v3, v9, 0x190

    if-nez v3, :cond_19

    :cond_18
    move v3, v8

    goto :goto_7

    :cond_19
    const/4 v3, 0x0

    :goto_7
    if-nez v3, :cond_1a

    const-wide/16 v3, 0x1

    sub-long/2addr v0, v3

    :cond_1a
    const-wide/32 v3, 0xafaa8

    sub-long/2addr v0, v3

    const-wide/32 v3, 0x15180

    mul-long/2addr v0, v3

    mul-int/lit16 v3, v13, 0xe10

    int-to-long v3, v3

    add-long/2addr v0, v3

    mul-int/lit8 v3, v10, 0x3c

    int-to-long v3, v3

    add-long/2addr v0, v3

    int-to-long v3, v14

    add-long/2addr v0, v3

    if-nez p2, :cond_1b

    .line 9967
    sget-object v3, Laay;->a:Ljava/time/ZoneId;

    goto :goto_8

    :cond_1b
    move-object/from16 v3, p2

    .line 9969
    :goto_8
    sget-object v4, Laay;->b:Ljava/time/ZoneId;

    if-eq v3, v4, :cond_1d

    invoke-virtual {v3}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v4

    sget-object v5, Laay;->c:Ljava/time/zone/ZoneRules;

    if-ne v4, v5, :cond_1c

    goto :goto_9

    :cond_1c
    const/4 v8, 0x0

    :cond_1d
    :goto_9
    const-wide/32 v4, 0x28d2bea0

    if-eqz v8, :cond_1e

    cmp-long v4, v0, v4

    if-ltz v4, :cond_1e

    const/16 v11, 0x7080

    goto :goto_b

    .line 9973
    :cond_1e
    sget-object v4, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    if-eq v3, v4, :cond_20

    invoke-virtual {v3}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTC"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    goto :goto_a

    .line 9976
    :cond_1f
    invoke-static {v9, v7, v2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v2

    const/4 v4, 0x0

    .line 9977
    invoke-static {v13, v10, v14, v4}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v4

    .line 9978
    invoke-static {v2, v4}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    .line 9979
    invoke-virtual {v3}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/LocalDateTime;)Ljava/time/ZoneOffset;

    move-result-object v2

    .line 9980
    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v11

    goto :goto_b

    :cond_20
    :goto_a
    const/4 v11, 0x0

    :goto_b
    int-to-long v2, v11

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0

    .line 9929
    :cond_21
    new-instance v0, Ljava/lang/String;

    const/16 v3, 0x13

    move-object/from16 v2, p0

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 9930
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v16

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_22
    move-object/from16 v2, p0

    move-object/from16 v3, v16

    .line 9919
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x13

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 9920
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_23
    move-object/from16 v2, p0

    move-object/from16 v3, v16

    .line 9909
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x13

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 9910
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v0, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_24
    const/16 v4, 0x13

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, v16

    .line 9895
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 9896
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_25
    move-object/from16 v2, p0

    move-object/from16 v3, v16

    .line 9899
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x13

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 9900
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v0, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_26
    const/16 v4, 0x13

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, v16

    .line 9866
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 9867
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_27
    move-object/from16 v2, p0

    move-object/from16 v3, v16

    .line 9870
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x13

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 9871
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_28
    move-object/from16 v2, p0

    goto :goto_c

    :cond_29
    move-object v2, v0

    :goto_c
    move-object/from16 v3, v16

    .line 9855
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x13

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 9856
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v0, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_2a
    move-object v2, v0

    move-object v3, v14

    const/16 v4, 0x13

    const/4 v5, 0x0

    .line 9825
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 9826
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_2b
    move-object v2, v0

    move-object v3, v14

    .line 9843
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x13

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 9844
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    .line 9619
    :cond_2c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static b(JLjava/time/ZoneId;)Ljava/lang/String;
    .locals 25

    if-nez p2, :cond_0

    .line 10582
    sget-object v0, Laay;->a:Ljava/time/ZoneId;

    goto :goto_0

    :cond_0
    move-object/from16 v0, p2

    :goto_0
    const-wide/16 v1, 0x3e8

    move-wide/from16 v3, p0

    .line 10587
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v1

    .line 10589
    sget-object v5, Laay;->b:Ljava/time/ZoneId;

    if-eq v0, v5, :cond_2

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v5

    sget-object v6, Laay;->c:Ljava/time/zone/ZoneRules;

    if-ne v5, v6, :cond_1

    goto :goto_1

    .line 10592
    :cond_1
    invoke-static/range {p0 .. p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v3

    .line 10593
    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    goto :goto_2

    .line 10590
    :cond_2
    :goto_1
    invoke-static {v1, v2}, Laay;->a(J)I

    move-result v0

    :goto_2
    int-to-long v3, v0

    add-long/2addr v1, v3

    const-wide/32 v3, 0x15180

    .line 10597
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v0

    .line 10599
    sget v2, Laay;->j:I

    int-to-long v2, v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x80

    add-long/2addr v2, v4

    long-to-int v2, v2

    .line 10600
    sget-object v3, Laay$a;->a:[Ljava/lang/String;

    if-ltz v2, :cond_3

    .line 10601
    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 10602
    aget-object v4, v3, v2

    if-eqz v4, :cond_3

    return-object v4

    :cond_3
    const-wide/32 v4, 0xafaa8

    add-long/2addr v0, v4

    const-wide/16 v4, 0x3c

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    const-wide/16 v7, 0x1

    const-wide/32 v9, 0x23ab1

    const-wide/16 v11, 0x190

    if-gez v6, :cond_4

    add-long v13, v0, v7

    .line 10619
    div-long/2addr v13, v9

    sub-long/2addr v13, v7

    mul-long v15, v13, v11

    neg-long v13, v13

    mul-long/2addr v13, v9

    add-long/2addr v0, v13

    goto :goto_3

    :cond_4
    move-wide v15, v4

    :goto_3
    mul-long v13, v0, v11

    const-wide/16 v17, 0x24f

    add-long v13, v13, v17

    .line 10623
    div-long/2addr v13, v9

    const-wide/16 v9, 0x16d

    mul-long v17, v13, v9

    const-wide/16 v19, 0x4

    .line 10624
    div-long v21, v13, v19

    add-long v17, v17, v21

    const-wide/16 v21, 0x64

    div-long v23, v13, v21

    sub-long v17, v17, v23

    div-long v23, v13, v11

    add-long v17, v17, v23

    sub-long v17, v0, v17

    cmp-long v4, v17, v4

    if-gez v4, :cond_5

    sub-long/2addr v13, v7

    mul-long/2addr v9, v13

    .line 10628
    div-long v4, v13, v19

    add-long/2addr v9, v4

    div-long v4, v13, v21

    sub-long/2addr v9, v4

    div-long v4, v13, v11

    add-long/2addr v9, v4

    sub-long v17, v0, v9

    :cond_5
    move-wide/from16 v0, v17

    add-long/2addr v13, v15

    long-to-int v0, v0

    mul-int/lit8 v1, v0, 0x5

    add-int/lit8 v1, v1, 0x2

    .line 10634
    div-int/lit16 v1, v1, 0x99

    add-int/lit8 v4, v1, 0x2

    .line 10635
    rem-int/lit8 v4, v4, 0xc

    add-int/lit8 v4, v4, 0x1

    mul-int/lit16 v5, v1, 0x132

    add-int/lit8 v5, v5, 0x5

    const/16 v6, 0xa

    .line 10636
    div-int/2addr v5, v6

    sub-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x1

    .line 10637
    div-int/2addr v1, v6

    int-to-long v7, v1

    add-long/2addr v13, v7

    const-wide/32 v7, -0x3b9ac9ff

    cmp-long v1, v13, v7

    if-ltz v1, :cond_9

    const-wide/32 v7, 0x3b9ac9ff

    cmp-long v1, v13, v7

    if-gtz v1, :cond_9

    long-to-int v1, v13

    .line 10648
    sget-object v5, Labf;->A:Ljava/util/function/BiFunction;

    const/4 v7, 0x0

    if-eqz v5, :cond_6

    .line 10649
    new-array v5, v6, [B

    .line 10650
    invoke-static {v5, v7, v1, v4, v0}, Labe;->a([BIIII)I

    .line 10651
    sget-object v0, Labf;->A:Ljava/util/function/BiFunction;

    sget-object v1, Labf;->e:Ljava/lang/Byte;

    invoke-interface {v0, v5, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_4

    .line 10653
    :cond_6
    new-array v5, v6, [C

    .line 10654
    invoke-static {v5, v7, v1, v4, v0}, Labe;->a([CIIII)I

    .line 10655
    sget-object v0, Labf;->z:Ljava/util/function/BiFunction;

    if-eqz v0, :cond_7

    .line 10656
    sget-object v0, Labf;->z:Ljava/util/function/BiFunction;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v5, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_4

    .line 10658
    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V

    :goto_4
    if-ltz v2, :cond_8

    .line 10662
    array-length v1, v3

    if-ge v2, v1, :cond_8

    .line 10663
    aput-object v0, v3, v2

    :cond_8
    return-object v0

    .line 10641
    :cond_9
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid year "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .line 11115
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-object p0, Laay;->a:Ljava/time/ZoneId;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Laay;->a(JZLjava/time/ZoneId;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b([BII)Ljava/time/LocalDate;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    add-int v1, p1, p2

    .line 1181
    array-length v2, p0

    const/4 v3, 0x0

    const-string v4, "illegal input "

    if-gt v1, v2, :cond_2

    packed-switch p2, :pswitch_data_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 1196
    aget-byte v1, p0, p1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    if-ne v1, v2, :cond_1

    return-object v0

    .line 1194
    :pswitch_0
    invoke-static {p0, p1}, Laay;->j([BI)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    .line 1192
    :pswitch_1
    invoke-static {p0, p1}, Laay;->i([BI)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    .line 1190
    :pswitch_2
    invoke-static {p0, p1}, Laay;->h([BI)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    .line 1188
    :pswitch_3
    invoke-static {p0, p1}, Laay;->g([BI)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    .line 1199
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    .line 1200
    new-instance p0, Ljava/time/format/DateTimeParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw p0

    .line 1182
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    .line 1183
    new-instance p0, Ljava/time/format/DateTimeParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw p0

    :cond_3
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b([CII)Ljava/time/LocalDate;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    add-int v1, p1, p2

    .line 1209
    array-length v2, p0

    const/4 v3, 0x0

    const-string v4, "illegal input "

    if-gt v1, v2, :cond_2

    packed-switch p2, :pswitch_data_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 1224
    aget-char v1, p0, p1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, p1, 0x1

    aget-char v1, p0, v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p0, v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p0, v1

    if-ne v1, v2, :cond_1

    return-object v0

    .line 1222
    :pswitch_0
    invoke-static {p0, p1}, Laay;->j([CI)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    .line 1220
    :pswitch_1
    invoke-static {p0, p1}, Laay;->i([CI)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    .line 1218
    :pswitch_2
    invoke-static {p0, p1}, Laay;->h([CI)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    .line 1216
    :pswitch_3
    invoke-static {p0, p1}, Laay;->g([CI)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    .line 1227
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 1228
    new-instance p0, Ljava/time/format/DateTimeParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw p0

    .line 1210
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 1211
    new-instance p0, Ljava/time/format/DateTimeParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw p0

    :cond_3
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b([BI)Ljava/time/LocalTime;
    .locals 9

    add-int/lit8 v0, p1, 0x8

    .line 381
    array-length v1, p0

    if-le v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 385
    :cond_0
    aget-byte v0, p0, p1

    int-to-char v1, v0

    add-int/lit8 v0, p1, 0x1

    .line 386
    aget-byte v0, p0, v0

    int-to-char v2, v0

    add-int/lit8 v0, p1, 0x2

    .line 387
    aget-byte v0, p0, v0

    int-to-char v3, v0

    add-int/lit8 v0, p1, 0x3

    .line 388
    aget-byte v0, p0, v0

    int-to-char v4, v0

    add-int/lit8 v0, p1, 0x4

    .line 389
    aget-byte v0, p0, v0

    int-to-char v5, v0

    add-int/lit8 v0, p1, 0x5

    .line 390
    aget-byte v0, p0, v0

    int-to-char v6, v0

    add-int/lit8 v0, p1, 0x6

    .line 391
    aget-byte v0, p0, v0

    int-to-char v7, v0

    add-int/lit8 p1, p1, 0x7

    .line 392
    aget-byte p0, p0, p1

    int-to-char v8, p0

    .line 394
    invoke-static/range {v1 .. v8}, Laay;->a(CCCCCCCC)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method public static b([CI)Ljava/time/LocalTime;
    .locals 8

    add-int/lit8 v0, p1, 0x8

    .line 398
    array-length v1, p0

    if-le v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 402
    :cond_0
    aget-char v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 403
    aget-char v1, p0, v1

    add-int/lit8 v2, p1, 0x2

    .line 404
    aget-char v2, p0, v2

    add-int/lit8 v3, p1, 0x3

    .line 405
    aget-char v3, p0, v3

    add-int/lit8 v4, p1, 0x4

    .line 406
    aget-char v4, p0, v4

    add-int/lit8 v5, p1, 0x5

    .line 407
    aget-char v5, p0, v5

    add-int/lit8 v6, p1, 0x6

    .line 408
    aget-char v6, p0, v6

    add-int/lit8 p1, p1, 0x7

    .line 409
    aget-char v7, p0, p1

    .line 411
    invoke-static/range {v0 .. v7}, Laay;->a(CCCCCCCC)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 5923
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 5929
    :cond_1
    sget-object v1, Labf;->B:Ljava/util/function/ToIntFunction;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    sget-object v1, Labf;->C:Ljava/util/function/Function;

    if-eqz v1, :cond_2

    sget-object v1, Labf;->B:Ljava/util/function/ToIntFunction;

    invoke-interface {v1, p0}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_2

    .line 5930
    sget-object v1, Labf;->C:Ljava/util/function/Function;

    invoke-interface {v1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 5931
    array-length v3, v1

    invoke-static {v1, v2, v3, p1}, Laay;->a([BIILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    goto :goto_0

    .line 5933
    :cond_2
    invoke-static {p0}, Labf;->a(Ljava/lang/String;)[C

    move-result-object v1

    .line 5934
    array-length v3, v1

    invoke-static {v1, v2, v3, p1}, Laay;->b([CIILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_9

    const/4 p1, -0x1

    .line 5938
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v3, 0x30

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v3, :cond_5

    const v3, 0x33c587

    if-eq v1, v3, :cond_4

    const v3, 0x4f8288e0    # 4.3800166E9f

    if-eq v1, v3, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "0000-00-00"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move p1, v4

    goto :goto_1

    :cond_4
    const-string v1, "null"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move p1, v2

    goto :goto_1

    :cond_5
    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move p1, v5

    :cond_6
    :goto_1
    if-eqz p1, :cond_8

    if-eq p1, v5, :cond_8

    if-ne p1, v4, :cond_7

    goto :goto_2

    .line 5944
    :cond_7
    new-instance p1, Ljava/time/format/DateTimeParseException;

    invoke-direct {p1, p0, p0, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw p1

    :cond_8
    :goto_2
    return-object v0

    :cond_9
    return-object p1
.end method

.method public static b([CIILjava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 61

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    if-nez v2, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    const/16 v4, 0x10

    if-ne v2, v4, :cond_2

    .line 7001
    invoke-static {v0, v1, v3}, Laay;->a([CILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v4, 0x13

    if-lt v2, v4, :cond_95

    .line 7011
    aget-char v6, v0, v1

    add-int/lit8 v7, v1, 0x1

    .line 7012
    aget-char v7, v0, v7

    add-int/lit8 v8, v1, 0x2

    .line 7013
    aget-char v8, v0, v8

    add-int/lit8 v9, v1, 0x3

    .line 7014
    aget-char v10, v0, v9

    add-int/lit8 v11, v1, 0x4

    .line 7015
    aget-char v11, v0, v11

    add-int/lit8 v12, v1, 0x5

    .line 7016
    aget-char v12, v0, v12

    add-int/lit8 v13, v1, 0x6

    .line 7017
    aget-char v13, v0, v13

    add-int/lit8 v14, v1, 0x7

    .line 7018
    aget-char v14, v0, v14

    add-int/lit8 v15, v1, 0x8

    .line 7019
    aget-char v15, v0, v15

    add-int/lit8 v16, v1, 0x9

    .line 7020
    aget-char v4, v0, v16

    add-int/lit8 v16, v1, 0xa

    .line 7021
    aget-char v5, v0, v16

    add-int/lit8 v16, v1, 0xb

    move/from16 v18, v9

    .line 7022
    aget-char v9, v0, v16

    add-int/lit8 v16, v1, 0xc

    .line 7023
    aget-char v3, v0, v16

    add-int/lit8 v16, v1, 0xd

    move/from16 v19, v4

    .line 7024
    aget-char v4, v0, v16

    add-int/lit8 v16, v1, 0xe

    move/from16 v20, v15

    .line 7025
    aget-char v15, v0, v16

    add-int/lit8 v16, v1, 0xf

    move/from16 v21, v3

    .line 7026
    aget-char v3, v0, v16

    add-int/lit8 v16, v1, 0x10

    move/from16 v22, v3

    .line 7027
    aget-char v3, v0, v16

    add-int/lit8 v16, v1, 0x11

    move/from16 v23, v6

    .line 7028
    aget-char v6, v0, v16

    add-int/lit8 v16, v1, 0x12

    move/from16 v24, v7

    .line 7029
    aget-char v7, v0, v16

    move/from16 v16, v7

    const/16 v7, 0x13

    move/from16 v25, v10

    if-ne v2, v7, :cond_3

    const/16 v7, 0x20

    goto :goto_0

    :cond_3
    add-int/lit8 v7, v1, 0x13

    .line 7030
    aget-char v7, v0, v7

    :goto_0
    const/16 v26, 0x30

    packed-switch v2, :pswitch_data_0

    add-int/lit8 v27, v1, 0x14

    .line 7102
    aget-char v27, v0, v27

    add-int/lit8 v28, v1, 0x15

    .line 7103
    aget-char v28, v0, v28

    add-int/lit8 v29, v1, 0x16

    .line 7104
    aget-char v29, v0, v29

    add-int/lit8 v30, v1, 0x17

    .line 7105
    aget-char v30, v0, v30

    add-int/lit8 v31, v1, 0x18

    .line 7106
    aget-char v31, v0, v31

    add-int/lit8 v32, v1, 0x19

    .line 7107
    aget-char v32, v0, v32

    add-int/lit8 v33, v1, 0x1a

    .line 7108
    aget-char v33, v0, v33

    add-int/lit8 v34, v1, 0x1b

    .line 7109
    aget-char v34, v0, v34

    add-int/lit8 v35, v1, 0x1c

    .line 7110
    aget-char v35, v0, v35

    add-int/lit8 v36, v1, 0x1d

    .line 7111
    aget-char v36, v0, v36

    move/from16 v39, v27

    move/from16 v37, v28

    move/from16 v38, v29

    move/from16 v40, v30

    move/from16 v41, v31

    move/from16 v42, v32

    move/from16 v43, v33

    move/from16 v44, v34

    move/from16 v45, v35

    move/from16 v46, v36

    goto/16 :goto_2

    :pswitch_0
    add-int/lit8 v27, v1, 0x14

    .line 7091
    aget-char v27, v0, v27

    add-int/lit8 v28, v1, 0x15

    .line 7092
    aget-char v28, v0, v28

    add-int/lit8 v29, v1, 0x16

    .line 7093
    aget-char v29, v0, v29

    add-int/lit8 v30, v1, 0x17

    .line 7094
    aget-char v30, v0, v30

    add-int/lit8 v31, v1, 0x18

    .line 7095
    aget-char v31, v0, v31

    add-int/lit8 v32, v1, 0x19

    .line 7096
    aget-char v32, v0, v32

    add-int/lit8 v33, v1, 0x1a

    .line 7097
    aget-char v33, v0, v33

    add-int/lit8 v34, v1, 0x1b

    .line 7098
    aget-char v34, v0, v34

    add-int/lit8 v35, v1, 0x1c

    .line 7099
    aget-char v35, v0, v35

    move/from16 v39, v27

    move/from16 v37, v28

    move/from16 v38, v29

    move/from16 v40, v30

    move/from16 v41, v31

    move/from16 v42, v32

    move/from16 v43, v33

    move/from16 v44, v34

    move/from16 v45, v35

    goto/16 :goto_1

    :pswitch_1
    add-int/lit8 v27, v1, 0x14

    .line 7081
    aget-char v27, v0, v27

    add-int/lit8 v28, v1, 0x15

    .line 7082
    aget-char v28, v0, v28

    add-int/lit8 v29, v1, 0x16

    .line 7083
    aget-char v29, v0, v29

    add-int/lit8 v30, v1, 0x17

    .line 7084
    aget-char v30, v0, v30

    add-int/lit8 v31, v1, 0x18

    .line 7085
    aget-char v31, v0, v31

    add-int/lit8 v32, v1, 0x19

    .line 7086
    aget-char v32, v0, v32

    add-int/lit8 v33, v1, 0x1a

    .line 7087
    aget-char v33, v0, v33

    add-int/lit8 v34, v1, 0x1b

    .line 7088
    aget-char v34, v0, v34

    move/from16 v45, v26

    move/from16 v39, v27

    move/from16 v37, v28

    move/from16 v38, v29

    move/from16 v40, v30

    move/from16 v41, v31

    move/from16 v42, v32

    move/from16 v43, v33

    move/from16 v44, v34

    goto/16 :goto_1

    :pswitch_2
    add-int/lit8 v27, v1, 0x14

    .line 7072
    aget-char v27, v0, v27

    add-int/lit8 v28, v1, 0x15

    .line 7073
    aget-char v28, v0, v28

    add-int/lit8 v29, v1, 0x16

    .line 7074
    aget-char v29, v0, v29

    add-int/lit8 v30, v1, 0x17

    .line 7075
    aget-char v30, v0, v30

    add-int/lit8 v31, v1, 0x18

    .line 7076
    aget-char v31, v0, v31

    add-int/lit8 v32, v1, 0x19

    .line 7077
    aget-char v32, v0, v32

    add-int/lit8 v33, v1, 0x1a

    .line 7078
    aget-char v33, v0, v33

    move/from16 v44, v26

    move/from16 v45, v44

    move/from16 v39, v27

    move/from16 v37, v28

    move/from16 v38, v29

    move/from16 v40, v30

    move/from16 v41, v31

    move/from16 v42, v32

    move/from16 v43, v33

    goto/16 :goto_1

    :pswitch_3
    add-int/lit8 v27, v1, 0x14

    .line 7064
    aget-char v27, v0, v27

    add-int/lit8 v28, v1, 0x15

    .line 7065
    aget-char v28, v0, v28

    add-int/lit8 v29, v1, 0x16

    .line 7066
    aget-char v29, v0, v29

    add-int/lit8 v30, v1, 0x17

    .line 7067
    aget-char v30, v0, v30

    add-int/lit8 v31, v1, 0x18

    .line 7068
    aget-char v31, v0, v31

    add-int/lit8 v32, v1, 0x19

    .line 7069
    aget-char v32, v0, v32

    move/from16 v43, v26

    move/from16 v44, v43

    move/from16 v45, v44

    move/from16 v39, v27

    move/from16 v37, v28

    move/from16 v38, v29

    move/from16 v40, v30

    move/from16 v41, v31

    move/from16 v42, v32

    goto/16 :goto_1

    :pswitch_4
    add-int/lit8 v27, v1, 0x14

    .line 7057
    aget-char v27, v0, v27

    add-int/lit8 v28, v1, 0x15

    .line 7058
    aget-char v28, v0, v28

    add-int/lit8 v29, v1, 0x16

    .line 7059
    aget-char v29, v0, v29

    add-int/lit8 v30, v1, 0x17

    .line 7060
    aget-char v30, v0, v30

    add-int/lit8 v31, v1, 0x18

    .line 7061
    aget-char v31, v0, v31

    move/from16 v42, v26

    move/from16 v43, v42

    move/from16 v44, v43

    move/from16 v45, v44

    move/from16 v39, v27

    move/from16 v37, v28

    move/from16 v38, v29

    move/from16 v40, v30

    move/from16 v41, v31

    goto/16 :goto_1

    :pswitch_5
    add-int/lit8 v27, v1, 0x14

    .line 7051
    aget-char v27, v0, v27

    add-int/lit8 v28, v1, 0x15

    .line 7052
    aget-char v28, v0, v28

    add-int/lit8 v29, v1, 0x16

    .line 7053
    aget-char v29, v0, v29

    add-int/lit8 v30, v1, 0x17

    .line 7054
    aget-char v30, v0, v30

    move/from16 v41, v26

    move/from16 v42, v41

    move/from16 v43, v42

    move/from16 v44, v43

    move/from16 v45, v44

    move/from16 v39, v27

    move/from16 v37, v28

    move/from16 v38, v29

    move/from16 v40, v30

    goto/16 :goto_1

    :pswitch_6
    add-int/lit8 v27, v1, 0x14

    .line 7046
    aget-char v27, v0, v27

    add-int/lit8 v28, v1, 0x15

    .line 7047
    aget-char v28, v0, v28

    add-int/lit8 v29, v1, 0x16

    .line 7048
    aget-char v29, v0, v29

    move/from16 v40, v26

    move/from16 v41, v40

    move/from16 v42, v41

    move/from16 v43, v42

    move/from16 v44, v43

    move/from16 v45, v44

    move/from16 v39, v27

    move/from16 v37, v28

    move/from16 v38, v29

    goto :goto_1

    :pswitch_7
    add-int/lit8 v27, v1, 0x14

    .line 7042
    aget-char v27, v0, v27

    add-int/lit8 v28, v1, 0x15

    .line 7043
    aget-char v28, v0, v28

    move/from16 v38, v26

    move/from16 v40, v38

    move/from16 v41, v40

    move/from16 v42, v41

    move/from16 v43, v42

    move/from16 v44, v43

    move/from16 v45, v44

    move/from16 v39, v27

    move/from16 v37, v28

    goto :goto_1

    :pswitch_8
    add-int/lit8 v27, v1, 0x14

    .line 7039
    aget-char v27, v0, v27

    move/from16 v37, v26

    move/from16 v38, v37

    move/from16 v40, v38

    move/from16 v41, v40

    move/from16 v42, v41

    move/from16 v43, v42

    move/from16 v44, v43

    move/from16 v45, v44

    move/from16 v39, v27

    goto :goto_1

    :pswitch_9
    move/from16 v37, v26

    move/from16 v38, v37

    move/from16 v40, v38

    move/from16 v41, v40

    move/from16 v42, v41

    move/from16 v43, v42

    move/from16 v44, v43

    move/from16 v45, v44

    const/16 v39, 0x0

    :goto_1
    const/16 v46, 0x0

    :goto_2
    const/16 v10, 0x2d

    const/16 v0, 0x3a

    if-ne v11, v10, :cond_7

    if-ne v14, v10, :cond_7

    const/16 v10, 0x20

    if-eq v5, v10, :cond_4

    const/16 v10, 0x54

    if-ne v5, v10, :cond_6

    :cond_4
    if-ne v4, v0, :cond_6

    if-ne v3, v0, :cond_6

    const/16 v10, 0x5b

    if-eq v7, v10, :cond_5

    const/16 v10, 0x5a

    if-eq v7, v10, :cond_5

    const/16 v10, 0x2b

    if-eq v7, v10, :cond_5

    const/16 v10, 0x2d

    if-eq v7, v10, :cond_5

    const/16 v10, 0x20

    if-ne v7, v10, :cond_6

    :cond_5
    const/16 v10, 0x13

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v49, v6

    move/from16 v39, v8

    move/from16 v41, v12

    move/from16 v42, v13

    move/from16 v47, v15

    move/from16 v50, v16

    move/from16 v44, v19

    move/from16 v43, v20

    move/from16 v4, v21

    move/from16 v48, v22

    move/from16 v37, v23

    move/from16 v38, v24

    move/from16 v40, v25

    move/from16 v51, v26

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v58, v57

    move/from16 v59, v58

    const/4 v5, 0x0

    const/16 v17, 0x0

    goto/16 :goto_3b

    :cond_6
    const/16 v10, 0x2d

    :cond_7
    if-ne v11, v10, :cond_8

    if-ne v14, v10, :cond_8

    const/16 v10, 0x20

    if-ne v5, v10, :cond_8

    if-ne v9, v10, :cond_8

    if-ne v15, v0, :cond_8

    if-ne v6, v0, :cond_8

    const/16 v10, 0x14

    if-ne v2, v10, :cond_9

    move-object/from16 v0, p0

    move/from16 v48, v3

    move/from16 v50, v7

    move/from16 v39, v8

    move/from16 v41, v12

    move/from16 v42, v13

    move/from16 v49, v16

    move/from16 v44, v19

    move/from16 v43, v20

    move/from16 v9, v21

    move/from16 v47, v22

    move/from16 v37, v23

    move/from16 v38, v24

    move/from16 v40, v25

    move/from16 v51, v26

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v58, v57

    move/from16 v59, v58

    const/4 v5, 0x0

    :goto_3
    const/16 v17, 0x0

    :goto_4
    const/4 v3, 0x0

    goto/16 :goto_3b

    :cond_8
    const/16 v10, 0x14

    :cond_9
    if-ne v2, v10, :cond_b

    const/16 v10, 0x20

    if-ne v8, v10, :cond_b

    if-ne v13, v10, :cond_b

    if-ne v9, v10, :cond_b

    if-ne v15, v0, :cond_b

    if-ne v6, v0, :cond_b

    move/from16 v10, v25

    .line 7188
    invoke-static {v10, v11, v12}, Laay;->a(CCC)I

    move-result v0

    if-lez v0, :cond_a

    .line 7190
    div-int/lit8 v6, v0, 0xa

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    .line 7191
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    goto :goto_5

    :cond_a
    move/from16 v0, v26

    move v6, v0

    :goto_5
    move/from16 v42, v0

    move/from16 v48, v3

    move/from16 v40, v5

    move/from16 v41, v6

    move/from16 v50, v7

    move/from16 v37, v14

    move/from16 v49, v16

    move/from16 v39, v19

    move/from16 v38, v20

    move/from16 v9, v21

    move/from16 v47, v22

    move/from16 v43, v23

    move/from16 v44, v24

    move/from16 v51, v26

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v58, v57

    move/from16 v59, v58

    const/4 v5, 0x0

    const/16 v10, 0x14

    const/16 v17, 0x0

    const/4 v3, 0x0

    :goto_6
    move-object/from16 v0, p0

    goto/16 :goto_3b

    :cond_b
    move/from16 v10, v25

    const/16 v0, 0x2d

    if-ne v11, v0, :cond_12

    if-ne v14, v0, :cond_12

    const/16 v0, 0x20

    if-eq v5, v0, :cond_c

    const/16 v0, 0x54

    if-ne v5, v0, :cond_10

    :cond_c
    const/16 v0, 0x3a

    if-ne v4, v0, :cond_10

    if-ne v3, v0, :cond_10

    const/16 v0, 0x2e

    if-ne v7, v0, :cond_10

    const/16 v0, 0x15

    if-eq v2, v0, :cond_d

    const/16 v0, 0x5b

    move/from16 v1, v37

    if-eq v1, v0, :cond_e

    const/16 v0, 0x2b

    if-eq v1, v0, :cond_e

    const/16 v0, 0x2d

    if-eq v1, v0, :cond_e

    const/16 v0, 0x5a

    if-ne v1, v0, :cond_11

    goto :goto_7

    :cond_d
    move/from16 v1, v37

    :cond_e
    :goto_7
    const/16 v0, 0x7c

    if-ne v1, v0, :cond_f

    const/4 v5, 0x1

    goto :goto_8

    :cond_f
    const/4 v5, 0x0

    :goto_8
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v49, v6

    move/from16 v40, v10

    move/from16 v41, v12

    move/from16 v42, v13

    move/from16 v47, v15

    move/from16 v50, v16

    move/from16 v44, v19

    move/from16 v43, v20

    move/from16 v4, v21

    move/from16 v48, v22

    move/from16 v37, v23

    move/from16 v38, v24

    move/from16 v52, v26

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v58, v57

    move/from16 v59, v58

    move/from16 v51, v39

    const/16 v10, 0x15

    :goto_9
    const/16 v17, 0x0

    move/from16 v39, v8

    goto/16 :goto_3b

    :cond_10
    move/from16 v1, v37

    :cond_11
    const/16 v0, 0x2d

    goto :goto_a

    :cond_12
    move/from16 v1, v37

    :goto_a
    if-ne v11, v0, :cond_19

    if-ne v14, v0, :cond_19

    const/16 v0, 0x20

    if-eq v5, v0, :cond_13

    const/16 v0, 0x54

    if-ne v5, v0, :cond_17

    :cond_13
    const/16 v0, 0x3a

    if-ne v4, v0, :cond_17

    if-ne v3, v0, :cond_17

    const/16 v0, 0x2e

    if-ne v7, v0, :cond_17

    const/16 v0, 0x16

    if-eq v2, v0, :cond_14

    const/16 v0, 0x5b

    move/from16 v29, v15

    move/from16 v15, v38

    if-eq v15, v0, :cond_15

    const/16 v0, 0x2b

    if-eq v15, v0, :cond_15

    const/16 v0, 0x2d

    if-eq v15, v0, :cond_15

    const/16 v0, 0x5a

    if-ne v15, v0, :cond_18

    goto :goto_b

    :cond_14
    move/from16 v29, v15

    move/from16 v15, v38

    :cond_15
    :goto_b
    const/16 v0, 0x7c

    if-ne v15, v0, :cond_16

    const/4 v5, 0x1

    goto :goto_c

    :cond_16
    const/4 v5, 0x0

    :goto_c
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v52, v1

    move/from16 v49, v6

    move/from16 v40, v10

    move/from16 v41, v12

    move/from16 v42, v13

    move/from16 v50, v16

    move/from16 v44, v19

    move/from16 v43, v20

    move/from16 v4, v21

    move/from16 v48, v22

    move/from16 v37, v23

    move/from16 v38, v24

    move/from16 v53, v26

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v58, v57

    move/from16 v59, v58

    move/from16 v47, v29

    move/from16 v51, v39

    const/16 v10, 0x16

    goto :goto_9

    :cond_17
    move/from16 v29, v15

    move/from16 v15, v38

    :cond_18
    const/16 v0, 0x2d

    goto :goto_d

    :cond_19
    move/from16 v29, v15

    move/from16 v15, v38

    :goto_d
    if-ne v11, v0, :cond_1b

    if-ne v14, v0, :cond_1b

    const/16 v0, 0x20

    if-eq v5, v0, :cond_1a

    const/16 v0, 0x54

    if-ne v5, v0, :cond_1b

    :cond_1a
    const/16 v0, 0x3a

    if-ne v4, v0, :cond_1b

    const/16 v0, 0x5a

    if-ne v3, v0, :cond_1b

    const/16 v0, 0x5b

    if-ne v6, v0, :cond_1b

    const/16 v0, 0x5d

    if-ne v1, v0, :cond_1b

    const/16 v0, 0x16

    if-ne v2, v0, :cond_1c

    const/16 v0, 0x11

    const/4 v3, 0x0

    move/from16 v39, v8

    move/from16 v40, v10

    move/from16 v41, v12

    move/from16 v42, v13

    move/from16 v44, v19

    move/from16 v43, v20

    move/from16 v4, v21

    move/from16 v48, v22

    move/from16 v37, v23

    move/from16 v38, v24

    move/from16 v49, v26

    move/from16 v50, v49

    move/from16 v51, v50

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v58, v57

    move/from16 v59, v58

    move/from16 v47, v29

    const/4 v5, 0x1

    const/16 v17, 0x0

    :goto_e
    move v10, v0

    goto/16 :goto_6

    :cond_1b
    const/16 v0, 0x16

    :cond_1c
    if-ne v2, v0, :cond_22

    const/16 v0, 0x20

    if-ne v10, v0, :cond_22

    move/from16 v37, v11

    const/16 v11, 0x2c

    if-ne v12, v11, :cond_23

    if-ne v13, v0, :cond_23

    if-ne v9, v0, :cond_23

    const/16 v11, 0x3a

    if-ne v4, v11, :cond_23

    if-ne v3, v11, :cond_23

    if-ne v7, v0, :cond_23

    const/16 v0, 0x41

    move/from16 v11, v39

    if-eq v11, v0, :cond_1e

    const/16 v0, 0x50

    if-ne v11, v0, :cond_1d

    goto :goto_f

    :cond_1d
    const/16 v0, 0x16

    move/from16 v60, v23

    move/from16 v23, v14

    move/from16 v14, v24

    move/from16 v24, v60

    goto/16 :goto_13

    :cond_1e
    :goto_f
    const/16 v0, 0x4d

    if-ne v1, v0, :cond_21

    move/from16 v0, v23

    move/from16 v23, v14

    move/from16 v14, v24

    .line 7333
    invoke-static {v0, v14, v8}, Laay;->a(CCC)I

    move-result v0

    if-lez v0, :cond_1f

    .line 7335
    div-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 7336
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    move v7, v0

    goto :goto_10

    :cond_1f
    move/from16 v1, v26

    move v7, v1

    :goto_10
    const/16 v0, 0x50

    if-ne v11, v0, :cond_20

    const/4 v0, 0x1

    goto :goto_11

    :cond_20
    const/4 v0, 0x0

    :goto_11
    move v3, v0

    move/from16 v41, v1

    move/from16 v40, v5

    move/from16 v49, v6

    move/from16 v42, v7

    move/from16 v50, v16

    move/from16 v39, v19

    move/from16 v38, v20

    move/from16 v4, v21

    move/from16 v48, v22

    move/from16 v9, v26

    move/from16 v43, v9

    move/from16 v51, v43

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v58, v57

    move/from16 v59, v58

    move/from16 v47, v29

    move/from16 v44, v37

    const/4 v5, 0x0

    const/16 v10, 0x16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v37, v23

    goto/16 :goto_3b

    :cond_21
    move/from16 v0, v23

    goto :goto_12

    :cond_22
    move/from16 v37, v11

    :cond_23
    move/from16 v0, v23

    move/from16 v11, v39

    :goto_12
    move/from16 v23, v14

    move/from16 v14, v24

    move/from16 v24, v0

    const/16 v0, 0x16

    :goto_13
    if-ne v2, v0, :cond_26

    const/16 v0, 0x2f

    if-ne v8, v0, :cond_26

    const/16 v0, 0x2f

    if-ne v12, v0, :cond_26

    const/16 v0, 0x20

    if-ne v5, v0, :cond_26

    const/16 v0, 0x3a

    if-ne v4, v0, :cond_26

    if-ne v3, v0, :cond_26

    const/16 v0, 0x20

    if-ne v7, v0, :cond_26

    const/16 v0, 0x41

    if-eq v11, v0, :cond_24

    const/16 v0, 0x50

    if-ne v11, v0, :cond_26

    :cond_24
    const/16 v0, 0x4d

    if-ne v1, v0, :cond_26

    const/16 v0, 0x50

    if-ne v11, v0, :cond_25

    const/4 v5, 0x1

    goto :goto_14

    :cond_25
    const/4 v5, 0x0

    :goto_14
    move-object/from16 v0, p0

    move v3, v5

    move/from16 v49, v6

    move/from16 v43, v10

    move/from16 v42, v14

    move/from16 v50, v16

    move/from16 v40, v19

    move/from16 v39, v20

    move/from16 v4, v21

    move/from16 v48, v22

    move/from16 v38, v23

    move/from16 v41, v24

    move/from16 v51, v26

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v58, v57

    move/from16 v59, v58

    move/from16 v47, v29

    move/from16 v44, v37

    const/4 v5, 0x0

    const/16 v10, 0x16

    const/16 v17, 0x0

    move/from16 v37, v13

    goto/16 :goto_3b

    :cond_26
    const/16 v0, 0x17

    if-ne v2, v0, :cond_2b

    const/16 v0, 0x20

    if-ne v10, v0, :cond_2b

    move/from16 v38, v7

    const/16 v7, 0x2c

    if-ne v12, v7, :cond_2c

    if-ne v13, v0, :cond_2c

    if-ne v9, v0, :cond_2c

    move/from16 v7, v29

    const/16 v0, 0x3a

    if-ne v7, v0, :cond_2a

    if-ne v6, v0, :cond_2a

    const/16 v0, 0x20

    if-ne v11, v0, :cond_2a

    const/16 v0, 0x41

    if-eq v1, v0, :cond_27

    const/16 v0, 0x50

    if-ne v1, v0, :cond_2a

    :cond_27
    const/16 v0, 0x4d

    if-ne v15, v0, :cond_2a

    move/from16 v0, v24

    .line 7411
    invoke-static {v0, v14, v8}, Laay;->a(CCC)I

    move-result v0

    if-lez v0, :cond_28

    .line 7413
    div-int/lit8 v6, v0, 0xa

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    .line 7414
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    move v7, v0

    goto :goto_15

    :cond_28
    move/from16 v6, v26

    move v7, v6

    :goto_15
    const/16 v0, 0x50

    if-ne v1, v0, :cond_29

    const/4 v0, 0x1

    goto :goto_16

    :cond_29
    const/4 v0, 0x0

    :goto_16
    move/from16 v48, v3

    move/from16 v40, v5

    move/from16 v41, v6

    move/from16 v42, v7

    move/from16 v49, v16

    move/from16 v39, v19

    move/from16 v9, v21

    move/from16 v47, v22

    move/from16 v43, v26

    move/from16 v51, v43

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v58, v57

    move/from16 v59, v58

    move/from16 v44, v37

    move/from16 v50, v38

    const/4 v5, 0x0

    const/16 v10, 0x17

    const/16 v17, 0x0

    move v3, v0

    move/from16 v38, v20

    move/from16 v37, v23

    goto/16 :goto_6

    :cond_2a
    move/from16 v0, v24

    goto :goto_17

    :cond_2b
    move/from16 v38, v7

    :cond_2c
    move/from16 v0, v24

    move/from16 v7, v29

    :goto_17
    move/from16 v24, v9

    const/16 v9, 0x17

    if-ne v2, v9, :cond_30

    const/16 v9, 0x20

    if-ne v10, v9, :cond_30

    move/from16 v29, v12

    const/16 v12, 0x2c

    if-ne v13, v12, :cond_31

    move/from16 v12, v23

    if-ne v12, v9, :cond_32

    move/from16 v23, v3

    move/from16 v3, v21

    if-ne v3, v9, :cond_33

    const/16 v9, 0x3a

    if-ne v7, v9, :cond_33

    if-ne v6, v9, :cond_33

    const/16 v9, 0x20

    if-ne v11, v9, :cond_33

    const/16 v9, 0x41

    if-eq v1, v9, :cond_2d

    const/16 v9, 0x50

    if-ne v1, v9, :cond_33

    :cond_2d
    const/16 v9, 0x4d

    if-ne v15, v9, :cond_33

    .line 7453
    invoke-static {v0, v14, v8}, Laay;->a(CCC)I

    move-result v0

    if-lez v0, :cond_2e

    .line 7455
    div-int/lit8 v3, v0, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 7456
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    move v7, v0

    move v6, v3

    goto :goto_18

    :cond_2e
    move/from16 v6, v26

    move v7, v6

    :goto_18
    const/16 v0, 0x50

    if-ne v1, v0, :cond_2f

    const/4 v0, 0x1

    goto :goto_19

    :cond_2f
    const/4 v0, 0x0

    :goto_19
    move v3, v0

    move/from16 v39, v5

    move/from16 v41, v6

    move/from16 v42, v7

    move/from16 v49, v16

    move/from16 v47, v22

    move/from16 v48, v23

    move/from16 v40, v24

    move/from16 v9, v26

    move/from16 v51, v9

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v58, v57

    move/from16 v59, v58

    move/from16 v44, v29

    move/from16 v43, v37

    move/from16 v50, v38

    const/4 v5, 0x0

    const/16 v10, 0x17

    :goto_1a
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v38, v19

    move/from16 v37, v20

    goto/16 :goto_3b

    :cond_30
    move/from16 v29, v12

    :cond_31
    move/from16 v12, v23

    :cond_32
    move/from16 v23, v3

    move/from16 v3, v21

    :cond_33
    const/16 v9, 0x18

    if-ne v2, v9, :cond_38

    const/16 v9, 0x20

    if-ne v10, v9, :cond_38

    move/from16 v21, v11

    const/16 v11, 0x2c

    if-ne v13, v11, :cond_39

    if-ne v12, v9, :cond_39

    if-ne v3, v9, :cond_39

    move/from16 v11, v22

    const/16 v9, 0x3a

    if-ne v11, v9, :cond_3a

    move/from16 v22, v3

    move/from16 v3, v16

    if-ne v3, v9, :cond_3b

    const/16 v9, 0x20

    if-ne v1, v9, :cond_3b

    const/16 v9, 0x41

    if-eq v15, v9, :cond_35

    const/16 v9, 0x50

    if-ne v15, v9, :cond_34

    goto :goto_1b

    :cond_34
    move/from16 v16, v1

    move/from16 v9, v37

    move/from16 v1, v40

    goto/16 :goto_1e

    :cond_35
    :goto_1b
    const/16 v9, 0x4d

    move/from16 v16, v1

    move/from16 v1, v40

    if-ne v1, v9, :cond_3c

    .line 7495
    invoke-static {v0, v14, v8}, Laay;->a(CCC)I

    move-result v0

    if-lez v0, :cond_36

    .line 7497
    div-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 7498
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    goto :goto_1c

    :cond_36
    move/from16 v0, v26

    move v1, v0

    :goto_1c
    const/16 v3, 0x50

    if-ne v15, v3, :cond_37

    const/4 v3, 0x1

    goto :goto_1d

    :cond_37
    const/4 v3, 0x0

    :goto_1d
    move/from16 v42, v0

    move/from16 v41, v1

    move v9, v4

    move/from16 v39, v5

    move/from16 v48, v6

    move v4, v7

    move/from16 v50, v21

    move/from16 v47, v23

    move/from16 v40, v24

    move/from16 v51, v26

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v58, v57

    move/from16 v59, v58

    move/from16 v44, v29

    move/from16 v43, v37

    move/from16 v49, v38

    const/4 v5, 0x0

    const/16 v10, 0x18

    goto/16 :goto_1a

    :cond_38
    move/from16 v21, v11

    :cond_39
    move/from16 v11, v22

    :cond_3a
    move/from16 v22, v3

    move/from16 v3, v16

    :cond_3b
    move/from16 v16, v1

    move/from16 v1, v40

    :cond_3c
    move/from16 v9, v37

    :goto_1e
    move/from16 v37, v0

    const/16 v0, 0x2d

    if-ne v9, v0, :cond_45

    if-ne v12, v0, :cond_45

    const/16 v0, 0x20

    if-eq v5, v0, :cond_3e

    const/16 v0, 0x54

    if-ne v5, v0, :cond_3d

    goto :goto_1f

    :cond_3d
    move/from16 v39, v8

    move/from16 v8, v23

    const/16 v0, 0x2d

    goto/16 :goto_21

    :cond_3e
    :goto_1f
    const/16 v0, 0x3a

    if-ne v4, v0, :cond_42

    move/from16 v39, v8

    move/from16 v8, v23

    if-ne v8, v0, :cond_43

    const/16 v0, 0x2e

    move/from16 v23, v14

    move/from16 v14, v38

    if-ne v14, v0, :cond_44

    const/16 v0, 0x17

    if-eq v2, v0, :cond_3f

    const/16 v0, 0x5b

    if-eq v1, v0, :cond_3f

    const/16 v0, 0x7c

    if-eq v1, v0, :cond_40

    const/16 v0, 0x2b

    if-eq v1, v0, :cond_3f

    const/16 v0, 0x2d

    if-eq v1, v0, :cond_3f

    const/16 v0, 0x5a

    if-ne v1, v0, :cond_44

    :cond_3f
    const/16 v0, 0x7c

    :cond_40
    if-ne v1, v0, :cond_41

    const/4 v5, 0x1

    goto :goto_20

    :cond_41
    const/4 v5, 0x0

    :goto_20
    move-object/from16 v0, p0

    move/from16 v50, v3

    move/from16 v49, v6

    move/from16 v47, v7

    move/from16 v40, v10

    move/from16 v48, v11

    move/from16 v42, v13

    move/from16 v53, v15

    move/from16 v52, v16

    move/from16 v44, v19

    move/from16 v43, v20

    move/from16 v51, v21

    move/from16 v4, v22

    move/from16 v38, v23

    move/from16 v9, v24

    move/from16 v54, v26

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v58, v57

    move/from16 v59, v58

    move/from16 v41, v29

    const/16 v10, 0x17

    goto/16 :goto_3

    :cond_42
    move/from16 v39, v8

    move/from16 v8, v23

    :cond_43
    move/from16 v23, v14

    move/from16 v14, v38

    :cond_44
    const/16 v0, 0x2d

    goto :goto_22

    :cond_45
    move/from16 v39, v8

    move/from16 v8, v23

    :goto_21
    move/from16 v23, v14

    move/from16 v14, v38

    :goto_22
    if-ne v9, v0, :cond_4d

    if-ne v12, v0, :cond_4d

    const/16 v0, 0x20

    if-eq v5, v0, :cond_46

    const/16 v0, 0x54

    if-ne v5, v0, :cond_4b

    :cond_46
    const/16 v0, 0x3a

    if-ne v4, v0, :cond_4b

    if-ne v8, v0, :cond_4b

    const/16 v0, 0x2e

    if-ne v14, v0, :cond_4b

    const/16 v0, 0x18

    if-eq v2, v0, :cond_47

    const/16 v0, 0x5b

    move/from16 v38, v7

    move/from16 v7, v41

    if-eq v7, v0, :cond_48

    const/16 v0, 0x7c

    if-eq v7, v0, :cond_49

    const/16 v0, 0x2b

    if-eq v7, v0, :cond_48

    const/16 v0, 0x2d

    if-eq v7, v0, :cond_48

    const/16 v0, 0x5a

    if-ne v7, v0, :cond_4c

    goto :goto_23

    :cond_47
    move/from16 v38, v7

    move/from16 v7, v41

    :cond_48
    :goto_23
    const/16 v0, 0x7c

    :cond_49
    if-ne v7, v0, :cond_4a

    const/4 v5, 0x1

    goto :goto_24

    :cond_4a
    const/4 v5, 0x0

    :goto_24
    move-object/from16 v0, p0

    move/from16 v54, v1

    move/from16 v50, v3

    move/from16 v49, v6

    move/from16 v40, v10

    move/from16 v48, v11

    move/from16 v42, v13

    move/from16 v53, v15

    move/from16 v52, v16

    move/from16 v44, v19

    move/from16 v43, v20

    move/from16 v51, v21

    move/from16 v4, v22

    move/from16 v9, v24

    move/from16 v55, v26

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v58, v57

    move/from16 v59, v58

    move/from16 v41, v29

    move/from16 v47, v38

    const/16 v10, 0x18

    const/16 v17, 0x0

    const/4 v3, 0x0

    move/from16 v38, v23

    goto/16 :goto_3b

    :cond_4b
    move/from16 v38, v7

    move/from16 v7, v41

    :cond_4c
    const/16 v0, 0x2d

    goto :goto_25

    :cond_4d
    move/from16 v38, v7

    move/from16 v7, v41

    :goto_25
    if-ne v9, v0, :cond_54

    if-ne v12, v0, :cond_54

    const/16 v0, 0x20

    if-eq v5, v0, :cond_4e

    const/16 v0, 0x54

    if-ne v5, v0, :cond_52

    :cond_4e
    const/16 v0, 0x3a

    if-ne v4, v0, :cond_52

    if-ne v8, v0, :cond_52

    const/16 v0, 0x2e

    if-ne v14, v0, :cond_52

    const/16 v0, 0x19

    if-eq v2, v0, :cond_4f

    const/16 v0, 0x5b

    move/from16 v40, v6

    move/from16 v6, v42

    if-eq v6, v0, :cond_50

    const/16 v0, 0x7c

    if-eq v6, v0, :cond_50

    const/16 v0, 0x2b

    if-eq v6, v0, :cond_50

    const/16 v0, 0x2d

    if-eq v6, v0, :cond_50

    const/16 v0, 0x5a

    if-ne v6, v0, :cond_53

    goto :goto_26

    :cond_4f
    move/from16 v40, v6

    move/from16 v6, v42

    :cond_50
    :goto_26
    const/16 v0, 0x19

    const/16 v4, 0x7c

    if-ne v6, v4, :cond_51

    const/4 v5, 0x1

    goto :goto_27

    :cond_51
    const/4 v5, 0x0

    :goto_27
    move/from16 v54, v1

    move/from16 v50, v3

    move/from16 v55, v7

    move/from16 v48, v11

    move/from16 v42, v13

    move/from16 v53, v15

    move/from16 v52, v16

    move/from16 v44, v19

    move/from16 v43, v20

    move/from16 v51, v21

    move/from16 v4, v22

    move/from16 v9, v24

    move/from16 v56, v26

    move/from16 v57, v56

    move/from16 v58, v57

    move/from16 v59, v58

    move/from16 v41, v29

    move/from16 v47, v38

    move/from16 v49, v40

    const/16 v17, 0x0

    const/4 v3, 0x0

    move/from16 v40, v10

    move/from16 v38, v23

    goto/16 :goto_e

    :cond_52
    move/from16 v40, v6

    move/from16 v6, v42

    :cond_53
    const/16 v0, 0x2d

    goto :goto_28

    :cond_54
    move/from16 v40, v6

    move/from16 v6, v42

    :goto_28
    if-ne v9, v0, :cond_5b

    if-ne v12, v0, :cond_5b

    const/16 v0, 0x20

    if-eq v5, v0, :cond_55

    const/16 v0, 0x54

    if-ne v5, v0, :cond_59

    :cond_55
    const/16 v0, 0x3a

    if-ne v4, v0, :cond_59

    if-ne v8, v0, :cond_59

    const/16 v0, 0x2e

    if-ne v14, v0, :cond_59

    const/16 v0, 0x1a

    if-eq v2, v0, :cond_56

    const/16 v0, 0x5b

    move/from16 v41, v6

    move/from16 v6, v43

    if-eq v6, v0, :cond_57

    const/16 v0, 0x7c

    if-eq v6, v0, :cond_57

    const/16 v0, 0x2b

    if-eq v6, v0, :cond_57

    const/16 v0, 0x2d

    if-eq v6, v0, :cond_57

    const/16 v0, 0x5a

    if-ne v6, v0, :cond_5a

    goto :goto_29

    :cond_56
    move/from16 v41, v6

    move/from16 v6, v43

    :cond_57
    :goto_29
    const/16 v0, 0x1a

    const/16 v4, 0x7c

    if-ne v6, v4, :cond_58

    const/4 v5, 0x1

    goto :goto_2a

    :cond_58
    const/4 v5, 0x0

    :goto_2a
    move/from16 v54, v1

    move/from16 v50, v3

    move/from16 v55, v7

    move/from16 v48, v11

    move/from16 v42, v13

    move/from16 v53, v15

    move/from16 v52, v16

    move/from16 v44, v19

    move/from16 v43, v20

    move/from16 v51, v21

    move/from16 v4, v22

    move/from16 v9, v24

    move/from16 v57, v26

    move/from16 v58, v57

    move/from16 v59, v58

    move/from16 v47, v38

    move/from16 v49, v40

    move/from16 v56, v41

    const/16 v17, 0x0

    const/4 v3, 0x0

    move/from16 v40, v10

    :goto_2b
    move/from16 v38, v23

    move/from16 v41, v29

    goto/16 :goto_e

    :cond_59
    move/from16 v41, v6

    move/from16 v6, v43

    :cond_5a
    const/16 v0, 0x2d

    goto :goto_2c

    :cond_5b
    move/from16 v41, v6

    move/from16 v6, v43

    :goto_2c
    if-ne v9, v0, :cond_63

    if-ne v12, v0, :cond_63

    const/16 v0, 0x20

    if-eq v5, v0, :cond_5c

    const/16 v0, 0x54

    if-ne v5, v0, :cond_61

    :cond_5c
    const/16 v0, 0x3a

    if-ne v4, v0, :cond_61

    if-ne v8, v0, :cond_61

    const/16 v0, 0x2e

    if-ne v14, v0, :cond_61

    const/16 v0, 0x1b

    if-eq v2, v0, :cond_5d

    const/16 v0, 0x5b

    move/from16 v42, v6

    move/from16 v6, v44

    if-eq v6, v0, :cond_5e

    const/16 v0, 0x7c

    if-eq v6, v0, :cond_5e

    const/16 v0, 0x2b

    if-eq v6, v0, :cond_5e

    const/16 v0, 0x2d

    if-eq v6, v0, :cond_5e

    const/16 v0, 0x5a

    if-ne v6, v0, :cond_62

    goto :goto_2d

    :cond_5d
    move/from16 v42, v6

    move/from16 v6, v44

    :cond_5e
    :goto_2d
    const/16 v0, 0x20

    if-ne v1, v0, :cond_5f

    move-object/from16 v0, p0

    move/from16 v50, v3

    move/from16 v48, v11

    move/from16 v42, v13

    move/from16 v53, v15

    move/from16 v52, v16

    move/from16 v44, v19

    move/from16 v43, v20

    move/from16 v51, v21

    move/from16 v4, v22

    move/from16 v9, v24

    move/from16 v54, v26

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v58, v57

    move/from16 v59, v58

    move/from16 v41, v29

    move/from16 v47, v38

    move/from16 v49, v40

    const/4 v5, 0x0

    const/16 v17, 0x0

    const/4 v3, 0x0

    move/from16 v40, v10

    move/from16 v38, v23

    const/16 v10, 0x17

    goto/16 :goto_3b

    :cond_5f
    const/16 v0, 0x1b

    const/16 v4, 0x7c

    if-ne v6, v4, :cond_60

    const/4 v5, 0x1

    goto :goto_2e

    :cond_60
    const/4 v5, 0x0

    :goto_2e
    move/from16 v54, v1

    move/from16 v50, v3

    move/from16 v55, v7

    move/from16 v48, v11

    move/from16 v53, v15

    move/from16 v52, v16

    move/from16 v44, v19

    move/from16 v43, v20

    move/from16 v51, v21

    move/from16 v4, v22

    move/from16 v9, v24

    move/from16 v58, v26

    move/from16 v59, v58

    goto/16 :goto_32

    :cond_61
    move/from16 v42, v6

    move/from16 v6, v44

    :cond_62
    const/16 v0, 0x2d

    goto :goto_2f

    :cond_63
    move/from16 v42, v6

    move/from16 v6, v44

    :goto_2f
    if-ne v9, v0, :cond_68

    if-ne v12, v0, :cond_68

    const/16 v0, 0x20

    if-eq v5, v0, :cond_64

    const/16 v0, 0x54

    if-ne v5, v0, :cond_68

    :cond_64
    const/16 v0, 0x3a

    if-ne v4, v0, :cond_68

    if-ne v8, v0, :cond_68

    const/16 v0, 0x2e

    if-ne v14, v0, :cond_68

    const/16 v0, 0x1c

    if-eq v2, v0, :cond_65

    const/16 v0, 0x5b

    move/from16 v32, v6

    move/from16 v6, v45

    if-eq v6, v0, :cond_66

    const/16 v0, 0x7c

    if-eq v6, v0, :cond_66

    const/16 v0, 0x2b

    if-eq v6, v0, :cond_66

    const/16 v0, 0x2d

    if-eq v6, v0, :cond_66

    const/16 v0, 0x5a

    if-ne v6, v0, :cond_69

    goto :goto_30

    :cond_65
    move/from16 v32, v6

    move/from16 v6, v45

    :cond_66
    :goto_30
    const/16 v0, 0x1c

    const/16 v4, 0x7c

    if-ne v6, v4, :cond_67

    const/4 v5, 0x1

    goto :goto_31

    :cond_67
    const/4 v5, 0x0

    :goto_31
    move/from16 v54, v1

    move/from16 v50, v3

    move/from16 v55, v7

    move/from16 v48, v11

    move/from16 v53, v15

    move/from16 v52, v16

    move/from16 v44, v19

    move/from16 v43, v20

    move/from16 v51, v21

    move/from16 v4, v22

    move/from16 v9, v24

    move/from16 v59, v26

    move/from16 v58, v32

    :goto_32
    move/from16 v47, v38

    move/from16 v49, v40

    move/from16 v56, v41

    move/from16 v57, v42

    const/16 v17, 0x0

    const/4 v3, 0x0

    move/from16 v40, v10

    move/from16 v42, v13

    goto/16 :goto_2b

    :cond_68
    move/from16 v32, v6

    move/from16 v6, v45

    :cond_69
    const/16 v0, 0x1c

    if-ne v2, v0, :cond_6c

    const/16 v0, 0x20

    if-ne v10, v0, :cond_6c

    if-ne v12, v0, :cond_6c

    if-ne v5, v0, :cond_6c

    const/16 v0, 0x3a

    if-ne v4, v0, :cond_6b

    if-ne v8, v0, :cond_6b

    const/16 v0, 0x20

    if-ne v14, v0, :cond_6c

    if-ne v1, v0, :cond_6c

    move/from16 v0, v29

    .line 7749
    invoke-static {v9, v0, v13}, Laay;->a(CCC)I

    move-result v0

    if-lez v0, :cond_6a

    .line 7751
    div-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 7752
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    move v6, v1

    goto :goto_33

    :cond_6a
    move/from16 v0, v26

    move v6, v0

    :goto_33
    const/16 v10, 0x13

    .line 7785
    new-instance v4, Ljava/lang/String;

    move/from16 v1, p1

    add-int/lit8 v5, v1, 0x14

    const/4 v8, 0x3

    move-object/from16 v9, p0

    invoke-direct {v4, v9, v5, v8}, Ljava/lang/String;-><init>([CII)V

    move/from16 v50, v3

    move-object/from16 v17, v4

    move/from16 v37, v7

    move/from16 v48, v11

    move/from16 v44, v19

    move/from16 v43, v20

    move/from16 v4, v22

    move/from16 v51, v26

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v58, v57

    move/from16 v59, v58

    move/from16 v47, v38

    move/from16 v49, v40

    move/from16 v38, v41

    move/from16 v39, v42

    const/4 v3, 0x0

    const/4 v5, 0x0

    move/from16 v42, v0

    move/from16 v41, v6

    move-object v0, v9

    move/from16 v9, v24

    move/from16 v40, v32

    goto/16 :goto_3b

    :cond_6b
    move/from16 v25, v1

    move/from16 v1, v16

    move/from16 v16, v6

    move v6, v0

    move-object/from16 v0, p0

    goto :goto_34

    :cond_6c
    move-object/from16 v0, p0

    move/from16 v25, v1

    move/from16 v1, v16

    move/from16 v16, v6

    const/16 v6, 0x3a

    :goto_34
    const/16 v6, 0x1c

    if-ne v2, v6, :cond_6e

    const/16 v6, 0x2c

    if-ne v10, v6, :cond_6e

    const/16 v6, 0x20

    if-ne v9, v6, :cond_6e

    if-ne v13, v6, :cond_6e

    if-ne v5, v6, :cond_6e

    if-ne v11, v6, :cond_6e

    const/16 v6, 0x3a

    if-ne v3, v6, :cond_6e

    if-ne v1, v6, :cond_6e

    const/16 v6, 0x20

    if-ne v7, v6, :cond_6e

    move/from16 v3, v19

    move/from16 v6, v20

    .line 7794
    invoke-static {v12, v6, v3}, Laay;->a(CCC)I

    move-result v1

    if-lez v1, :cond_6d

    .line 7796
    div-int/lit8 v3, v1, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 7797
    rem-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    move v7, v1

    move v6, v3

    goto :goto_35

    :cond_6d
    move/from16 v6, v26

    move v7, v6

    :goto_35
    move/from16 v39, v4

    move/from16 v41, v6

    move/from16 v42, v7

    move v9, v8

    move/from16 v47, v14

    move/from16 v49, v15

    move/from16 v48, v21

    move/from16 v37, v24

    move/from16 v50, v25

    move/from16 v43, v26

    move/from16 v51, v43

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v58, v57

    move/from16 v59, v58

    move/from16 v44, v29

    move/from16 v4, v40

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/16 v10, 0x18

    const/16 v17, 0x0

    move/from16 v40, v38

    move/from16 v38, v22

    goto/16 :goto_3b

    :cond_6e
    move/from16 v6, v20

    move/from16 v60, v19

    move/from16 v19, v3

    move/from16 v3, v60

    move/from16 v20, v7

    const/16 v7, 0x1d

    if-ne v2, v7, :cond_71

    const/16 v7, 0x2c

    if-ne v10, v7, :cond_71

    const/16 v7, 0x20

    if-ne v9, v7, :cond_71

    if-ne v12, v7, :cond_71

    move/from16 v28, v10

    move/from16 v10, v24

    if-ne v10, v7, :cond_70

    if-ne v8, v7, :cond_70

    const/16 v7, 0x3a

    if-ne v14, v7, :cond_70

    if-ne v15, v7, :cond_70

    move/from16 v24, v1

    move/from16 v7, v41

    const/16 v1, 0x20

    if-ne v7, v1, :cond_72

    .line 7836
    invoke-static {v6, v3, v5}, Laay;->a(CCC)I

    move-result v1

    if-lez v1, :cond_6f

    .line 7838
    div-int/lit8 v3, v1, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 7839
    rem-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    move v7, v1

    move v6, v3

    goto :goto_36

    :cond_6f
    move/from16 v6, v26

    move v7, v6

    :goto_36
    const/16 v10, 0x19

    move/from16 v41, v6

    move/from16 v42, v7

    move/from16 v44, v13

    move/from16 v50, v20

    move/from16 v47, v21

    move/from16 v37, v22

    move/from16 v48, v24

    move/from16 v49, v25

    move/from16 v51, v26

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v58, v57

    move/from16 v59, v58

    move/from16 v43, v29

    move/from16 v39, v38

    move/from16 v9, v40

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/16 v17, 0x0

    move/from16 v38, v4

    move/from16 v40, v11

    move/from16 v4, v19

    goto/16 :goto_3b

    :cond_70
    move/from16 v24, v1

    move/from16 v7, v41

    goto :goto_37

    :cond_71
    move/from16 v28, v10

    move/from16 v10, v24

    move/from16 v7, v41

    move/from16 v24, v1

    :cond_72
    :goto_37
    const/16 v1, 0x2d

    if-ne v9, v1, :cond_77

    if-ne v12, v1, :cond_77

    const/16 v1, 0x20

    if-eq v5, v1, :cond_73

    const/16 v1, 0x54

    if-ne v5, v1, :cond_77

    :cond_73
    const/16 v1, 0x3a

    if-ne v4, v1, :cond_77

    if-ne v8, v1, :cond_77

    const/16 v1, 0x2e

    if-ne v14, v1, :cond_77

    const/16 v1, 0x1d

    if-eq v2, v1, :cond_74

    const/16 v1, 0x5b

    move/from16 v41, v9

    move/from16 v9, v46

    if-eq v9, v1, :cond_75

    const/16 v1, 0x7c

    if-eq v9, v1, :cond_75

    const/16 v1, 0x2b

    if-eq v9, v1, :cond_75

    const/16 v1, 0x2d

    if-eq v9, v1, :cond_75

    const/16 v1, 0x5a

    if-ne v9, v1, :cond_78

    goto :goto_38

    :cond_74
    move/from16 v9, v46

    :cond_75
    :goto_38
    const/16 v1, 0x1d

    const/16 v4, 0x7c

    if-ne v9, v4, :cond_76

    const/4 v5, 0x1

    goto :goto_39

    :cond_76
    const/4 v5, 0x0

    :goto_39
    move/from16 v44, v3

    move/from16 v43, v6

    move/from16 v56, v7

    move v9, v10

    move/from16 v48, v11

    move/from16 v53, v15

    move/from16 v59, v16

    move/from16 v50, v19

    move/from16 v55, v20

    move/from16 v51, v21

    move/from16 v4, v22

    move/from16 v52, v24

    move/from16 v54, v25

    move/from16 v41, v29

    move/from16 v58, v32

    move/from16 v47, v38

    move/from16 v49, v40

    move/from16 v57, v42

    const/4 v3, 0x0

    const/16 v17, 0x0

    move v10, v1

    move/from16 v42, v13

    move/from16 v38, v23

    move/from16 v40, v28

    goto :goto_3b

    :cond_77
    move/from16 v41, v9

    :cond_78
    const/16 v1, 0x16

    if-ne v2, v1, :cond_8a

    move/from16 v1, v40

    const/16 v9, 0x2b

    if-eq v1, v9, :cond_7a

    const/16 v9, 0x2d

    if-ne v1, v9, :cond_79

    goto :goto_3a

    :cond_79
    move/from16 v9, p1

    move/from16 v40, v1

    goto/16 :goto_43

    :cond_7a
    :goto_3a
    const/16 v1, 0x11

    move/from16 v50, v4

    move/from16 v47, v5

    move v9, v6

    move/from16 v53, v8

    move/from16 v48, v10

    move/from16 v52, v11

    move/from16 v44, v12

    move/from16 v43, v13

    move/from16 v49, v22

    move/from16 v54, v26

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v58, v57

    move/from16 v59, v58

    move/from16 v40, v28

    move/from16 v42, v29

    move/from16 v51, v38

    const/4 v5, 0x0

    const/16 v17, 0x0

    move v10, v1

    move v4, v3

    move/from16 v38, v23

    goto/16 :goto_4

    :goto_3b
    if-eqz v3, :cond_7b

    .line 7960
    invoke-static {v9, v4}, Laay;->a(CC)I

    move-result v1

    shr-int/lit8 v3, v1, 0x10

    int-to-char v9, v3

    int-to-short v1, v1

    int-to-char v4, v1

    :cond_7b
    move/from16 v46, v4

    move/from16 v45, v9

    .line 7965
    invoke-static/range {v37 .. v59}, Laay;->a(CCCCCCCCCCCCCCCCCCCCCCC)Ljava/time/LocalDateTime;

    move-result-object v1

    if-nez v1, :cond_7c

    const/4 v0, 0x0

    return-object v0

    :cond_7c
    if-eqz v5, :cond_81

    .line 7980
    new-instance v3, Ljava/lang/String;

    sub-int/2addr v2, v10

    invoke-direct {v3, v0, v10, v2}, Ljava/lang/String;-><init>([CII)V

    const/4 v5, -0x1

    .line 7981
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v2, 0x14984

    if-eq v0, v2, :cond_7e

    const v2, 0x52a4234

    if-eq v0, v2, :cond_7d

    goto :goto_3c

    :cond_7d
    const-string v0, "[UTC]"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    const/4 v5, 0x1

    goto :goto_3c

    :cond_7e
    const-string v0, "UTC"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    const/4 v5, 0x0

    :cond_7f
    :goto_3c
    if-eqz v5, :cond_80

    const/4 v0, 0x1

    if-eq v5, v0, :cond_80

    .line 7987
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 7988
    invoke-virtual {v0}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v0

    goto :goto_3d

    .line 7984
    :cond_80
    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    goto :goto_3d

    :cond_81
    if-ne v10, v2, :cond_82

    move-object/from16 v0, p3

    move-object v2, v0

    goto :goto_41

    :cond_82
    move/from16 v9, p1

    add-int v3, v9, v10

    .line 7995
    aget-char v4, v0, v3

    const/16 v5, 0x5a

    if-ne v4, v5, :cond_83

    .line 7997
    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    :goto_3d
    move-object v2, v0

    move-object/from16 v0, p3

    goto :goto_41

    :cond_83
    if-nez v17, :cond_87

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_86

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_84

    goto :goto_3e

    :cond_84
    const/16 v5, 0x20

    if-ne v4, v5, :cond_85

    .line 8004
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x1

    add-int/2addr v3, v5

    sub-int/2addr v2, v10

    sub-int/2addr v2, v5

    invoke-direct {v4, v0, v3, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3f

    :cond_85
    const/4 v5, 0x1

    if-ge v10, v2, :cond_87

    .line 8007
    new-instance v4, Ljava/lang/String;

    add-int/2addr v3, v5

    sub-int/2addr v2, v10

    add-int/lit8 v2, v2, -0x2

    invoke-direct {v4, v0, v3, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3f

    .line 8001
    :cond_86
    :goto_3e
    new-instance v4, Ljava/lang/String;

    sub-int/2addr v2, v10

    invoke-direct {v4, v0, v3, v2}, Ljava/lang/String;-><init>([CII)V

    :goto_3f
    move-object/from16 v0, p3

    goto :goto_40

    :cond_87
    move-object/from16 v0, p3

    move-object/from16 v4, v17

    .line 8012
    :goto_40
    invoke-static {v4, v0}, Laay;->c(Ljava/lang/String;Ljava/time/ZoneId;)Ljava/time/ZoneId;

    move-result-object v2

    :goto_41
    if-nez v2, :cond_88

    goto :goto_42

    :cond_88
    move-object v0, v2

    :goto_42
    if-nez v0, :cond_89

    .line 8021
    sget-object v0, Laay;->a:Ljava/time/ZoneId;

    :cond_89
    const/4 v2, 0x0

    .line 8024
    invoke-static {v1, v0, v2}, Ljava/time/ZonedDateTime;->ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_8a
    move/from16 v9, p1

    :goto_43
    move/from16 v17, v4

    move/from16 v1, v22

    const/16 v4, 0x20

    if-ne v2, v4, :cond_8b

    move/from16 v23, v8

    const/16 v8, 0x2c

    if-ne v13, v8, :cond_8c

    if-ne v12, v4, :cond_8c

    const/16 v8, 0x2d

    if-ne v5, v8, :cond_8c

    move/from16 v13, v38

    if-ne v13, v8, :cond_8c

    if-ne v14, v4, :cond_8c

    const/16 v8, 0x3a

    if-ne v15, v8, :cond_8c

    if-ne v7, v8, :cond_8c

    add-int/lit8 v8, v9, 0x1c

    .line 7936
    aget-char v8, v0, v8

    if-eq v8, v4, :cond_8f

    goto :goto_44

    :cond_8b
    move/from16 v23, v8

    :cond_8c
    :goto_44
    const/16 v4, 0x21

    if-ne v2, v4, :cond_8d

    const/16 v4, 0x2c

    if-ne v12, v4, :cond_8d

    const/16 v4, 0x20

    if-ne v6, v4, :cond_8d

    const/16 v8, 0x2d

    if-ne v10, v8, :cond_8d

    if-ne v11, v8, :cond_8d

    move/from16 v8, v21

    if-ne v8, v4, :cond_8d

    move/from16 v8, v25

    const/16 v10, 0x3a

    if-ne v8, v10, :cond_8d

    move/from16 v8, v42

    if-ne v8, v10, :cond_8d

    add-int/lit8 v8, v9, 0x1d

    aget-char v8, v0, v8

    if-eq v8, v4, :cond_8f

    :cond_8d
    const/16 v4, 0x22

    if-ne v2, v4, :cond_8e

    const/16 v4, 0x2c

    if-ne v6, v4, :cond_8e

    const/16 v4, 0x20

    if-ne v3, v4, :cond_8e

    const/16 v6, 0x2d

    if-ne v1, v6, :cond_8e

    move/from16 v1, v23

    if-ne v1, v6, :cond_8e

    move/from16 v1, v24

    if-ne v1, v4, :cond_8e

    move/from16 v1, v20

    const/16 v6, 0x3a

    if-ne v1, v6, :cond_8e

    move/from16 v1, v32

    if-ne v1, v6, :cond_8e

    add-int/lit8 v1, v9, 0x1e

    aget-char v1, v0, v1

    if-eq v1, v4, :cond_8f

    :cond_8e
    const/16 v1, 0x23

    if-ne v2, v1, :cond_90

    const/16 v1, 0x2c

    if-ne v3, v1, :cond_90

    const/16 v1, 0x20

    if-ne v5, v1, :cond_90

    move/from16 v3, v17

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_90

    move/from16 v3, v40

    if-ne v3, v4, :cond_90

    if-ne v15, v1, :cond_90

    const/16 v3, 0x3a

    if-ne v7, v3, :cond_90

    move/from16 v4, v16

    if-ne v4, v3, :cond_90

    add-int/lit8 v3, v9, 0x1f

    aget-char v3, v0, v3

    if-ne v3, v1, :cond_90

    .line 7941
    :cond_8f
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v9, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v1}, Laay;->d(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_90
    const/16 v1, 0x22

    if-ne v2, v1, :cond_92

    .line 7943
    sget-object v1, Laay;->f:Ljava/time/format/DateTimeFormatter;

    if-nez v1, :cond_91

    .line 7945
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "EEE MMM dd HH:mm:ss O yyyy"

    invoke-static {v3, v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Laay;->f:Ljava/time/format/DateTimeFormatter;

    .line 7947
    :cond_91
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v9, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v3, v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_92
    const/16 v1, 0x1f

    if-ne v2, v1, :cond_94

    .line 7948
    aget-char v1, v0, v18

    const/16 v3, 0x2c

    if-ne v1, v3, :cond_94

    .line 7950
    sget-object v1, Laay;->i:Ljava/time/format/DateTimeFormatter;

    if-nez v1, :cond_93

    .line 7952
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "EEE, dd MMM yyyy HH:mm:ss Z"

    invoke-static {v3, v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Laay;->i:Ljava/time/format/DateTimeFormatter;

    .line 7954
    :cond_93
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v9, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v3, v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_94
    const/4 v0, 0x0

    return-object v0

    :cond_95
    move v9, v1

    .line 7005
    new-instance v1, Ljava/lang/String;

    array-length v2, v0

    sub-int/2addr v2, v9

    invoke-direct {v1, v0, v9, v2}, Ljava/lang/String;-><init>([CII)V

    .line 7006
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal input "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_9
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

.method public static c(Ljava/lang/String;)Ljava/time/LocalDate;
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1151
    :cond_0
    sget-object v1, Labf;->B:Ljava/util/function/ToIntFunction;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    sget-object v1, Labf;->C:Ljava/util/function/Function;

    if-eqz v1, :cond_1

    sget-object v1, Labf;->B:Ljava/util/function/ToIntFunction;

    invoke-interface {v1, p0}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1152
    sget-object v1, Labf;->C:Ljava/util/function/Function;

    invoke-interface {v1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 1153
    array-length v3, v1

    invoke-static {v1, v2, v3}, Laay;->b([BII)Ljava/time/LocalDate;

    move-result-object v1

    goto :goto_0

    .line 1155
    :cond_1
    invoke-static {p0}, Labf;->a(Ljava/lang/String;)[C

    move-result-object v1

    .line 1156
    array-length v3, v1

    invoke-static {v1, v2, v3}, Laay;->b([CII)Ljava/time/LocalDate;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_b

    const/4 v1, -0x1

    .line 1160
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x794e6996

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v3, v4, :cond_7

    const v4, -0x45f8e800

    if-eq v3, v4, :cond_6

    if-eqz v3, :cond_5

    const v4, 0x33c587

    if-eq v3, v4, :cond_4

    const v4, 0x52cad51

    if-eq v3, v4, :cond_3

    const v4, 0x4f8288e0    # 4.3800166E9f

    if-eq v3, v4, :cond_2

    goto :goto_1

    :cond_2
    const-string v3, "0000-00-00"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v1, v5

    goto :goto_1

    :cond_3
    const-string v3, "0000\u5e7400\u670800\u65e5"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v1, v7

    goto :goto_1

    :cond_4
    const-string v3, "null"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v1, v9

    goto :goto_1

    :cond_5
    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v1, v2

    goto :goto_1

    :cond_6
    const-string v3, "00000000"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v1, v8

    goto :goto_1

    :cond_7
    const-string v3, "0000-0-00"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v1, v6

    :cond_8
    :goto_1
    if-eqz v1, :cond_a

    if-eq v1, v9, :cond_a

    if-eq v1, v8, :cond_a

    if-eq v1, v7, :cond_a

    if-eq v1, v6, :cond_a

    if-ne v1, v5, :cond_9

    goto :goto_2

    .line 1169
    :cond_9
    new-instance v0, Ljava/time/format/DateTimeParseException;

    invoke-direct {v0, p0, p0, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_a
    :goto_2
    return-object v0

    :cond_b
    return-object v1
.end method

.method public static c([BII)Ljava/time/LocalDateTime;
    .locals 32

    move/from16 v0, p2

    if-eqz p0, :cond_5

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const/16 v2, 0x15

    if-lt v0, v2, :cond_4

    const/16 v3, 0x1d

    if-le v0, v3, :cond_1

    goto/16 :goto_5

    .line 5631
    :cond_1
    aget-byte v3, p0, p1

    int-to-char v4, v3

    add-int/lit8 v3, p1, 0x1

    .line 5632
    aget-byte v3, p0, v3

    int-to-char v5, v3

    add-int/lit8 v3, p1, 0x2

    .line 5633
    aget-byte v3, p0, v3

    int-to-char v6, v3

    add-int/lit8 v3, p1, 0x3

    .line 5634
    aget-byte v3, p0, v3

    int-to-char v7, v3

    add-int/lit8 v3, p1, 0x4

    .line 5635
    aget-byte v3, p0, v3

    int-to-char v3, v3

    add-int/lit8 v8, p1, 0x5

    .line 5636
    aget-byte v8, p0, v8

    int-to-char v8, v8

    add-int/lit8 v9, p1, 0x6

    .line 5637
    aget-byte v9, p0, v9

    int-to-char v9, v9

    add-int/lit8 v10, p1, 0x7

    .line 5638
    aget-byte v10, p0, v10

    int-to-char v10, v10

    add-int/lit8 v11, p1, 0x8

    .line 5639
    aget-byte v11, p0, v11

    int-to-char v11, v11

    add-int/lit8 v12, p1, 0x9

    .line 5640
    aget-byte v12, p0, v12

    int-to-char v12, v12

    add-int/lit8 v13, p1, 0xa

    .line 5641
    aget-byte v13, p0, v13

    int-to-char v13, v13

    add-int/lit8 v14, p1, 0xb

    .line 5642
    aget-byte v14, p0, v14

    int-to-char v14, v14

    add-int/lit8 v15, p1, 0xc

    .line 5643
    aget-byte v15, p0, v15

    int-to-char v15, v15

    add-int/lit8 v16, p1, 0xd

    .line 5644
    aget-byte v1, p0, v16

    int-to-char v1, v1

    add-int/lit8 v16, p1, 0xe

    .line 5645
    aget-byte v2, p0, v16

    int-to-char v2, v2

    add-int/lit8 v16, p1, 0xf

    move/from16 v19, v2

    .line 5646
    aget-byte v2, p0, v16

    int-to-char v2, v2

    add-int/lit8 v16, p1, 0x10

    move/from16 v20, v2

    .line 5647
    aget-byte v2, p0, v16

    int-to-char v2, v2

    add-int/lit8 v16, p1, 0x11

    move/from16 v21, v15

    .line 5648
    aget-byte v15, p0, v16

    int-to-char v15, v15

    add-int/lit8 v16, p1, 0x12

    move/from16 v22, v15

    .line 5649
    aget-byte v15, p0, v16

    int-to-char v15, v15

    add-int/lit8 v16, p1, 0x13

    move/from16 v23, v15

    .line 5650
    aget-byte v15, p0, v16

    int-to-char v15, v15

    const/16 v16, 0x30

    packed-switch v0, :pswitch_data_0

    add-int/lit8 v0, p1, 0x14

    .line 5706
    aget-byte v0, p0, v0

    int-to-char v0, v0

    add-int/lit8 v16, p1, 0x15

    move/from16 v18, v0

    .line 5707
    aget-byte v0, p0, v16

    int-to-char v0, v0

    add-int/lit8 v16, p1, 0x16

    move/from16 v24, v0

    .line 5708
    aget-byte v0, p0, v16

    int-to-char v0, v0

    add-int/lit8 v16, p1, 0x17

    move/from16 v25, v0

    .line 5709
    aget-byte v0, p0, v16

    int-to-char v0, v0

    add-int/lit8 v16, p1, 0x18

    move/from16 v26, v0

    .line 5710
    aget-byte v0, p0, v16

    int-to-char v0, v0

    add-int/lit8 v16, p1, 0x19

    move/from16 v27, v0

    .line 5711
    aget-byte v0, p0, v16

    int-to-char v0, v0

    add-int/lit8 v16, p1, 0x1a

    move/from16 v28, v0

    .line 5712
    aget-byte v0, p0, v16

    int-to-char v0, v0

    add-int/lit8 v16, p1, 0x1b

    move/from16 v29, v0

    .line 5713
    aget-byte v0, p0, v16

    int-to-char v0, v0

    add-int/lit8 v16, p1, 0x1c

    move/from16 p2, v0

    .line 5714
    aget-byte v0, p0, v16

    int-to-char v0, v0

    move/from16 p0, p2

    move/from16 v30, v0

    move/from16 v31, v25

    move/from16 v25, v24

    move/from16 v24, v29

    move/from16 v29, v28

    move/from16 v28, v27

    move/from16 v27, v26

    move/from16 v26, v31

    goto/16 :goto_4

    :pswitch_0
    add-int/lit8 v0, p1, 0x14

    .line 5696
    aget-byte v0, p0, v0

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x15

    move/from16 v24, v0

    .line 5697
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x16

    move/from16 v25, v0

    .line 5698
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x17

    move/from16 v26, v0

    .line 5699
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x18

    move/from16 p2, v0

    .line 5700
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x19

    move/from16 v27, v0

    .line 5701
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x1a

    move/from16 v28, v0

    .line 5702
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x1b

    move/from16 v29, v0

    .line 5703
    aget-byte v0, p0, v18

    int-to-char v0, v0

    move/from16 p0, v0

    move/from16 v30, v16

    move/from16 v18, v24

    move/from16 v24, v29

    move/from16 v29, v28

    move/from16 v28, v27

    move/from16 v27, p2

    goto/16 :goto_4

    :pswitch_1
    add-int/lit8 v0, p1, 0x14

    .line 5687
    aget-byte v0, p0, v0

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x15

    move/from16 v24, v0

    .line 5688
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x16

    move/from16 v25, v0

    .line 5689
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x17

    move/from16 v26, v0

    .line 5690
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x18

    move/from16 v27, v0

    .line 5691
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x19

    move/from16 v28, v0

    .line 5692
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x1a

    move/from16 v29, v0

    .line 5693
    aget-byte v0, p0, v18

    int-to-char v0, v0

    move/from16 p0, v16

    move/from16 v30, p0

    move/from16 v18, v24

    move/from16 v24, v0

    goto/16 :goto_4

    :pswitch_2
    add-int/lit8 v0, p1, 0x14

    .line 5679
    aget-byte v0, p0, v0

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x15

    move/from16 v24, v0

    .line 5680
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x16

    move/from16 v25, v0

    .line 5681
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x17

    move/from16 v26, v0

    .line 5682
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x18

    move/from16 v27, v0

    .line 5683
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x19

    move/from16 v28, v0

    .line 5684
    aget-byte v0, p0, v18

    int-to-char v0, v0

    move/from16 v29, v0

    move/from16 p0, v16

    move/from16 v30, p0

    goto/16 :goto_3

    :pswitch_3
    add-int/lit8 v0, p1, 0x14

    .line 5672
    aget-byte v0, p0, v0

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x15

    move/from16 v24, v0

    .line 5673
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x16

    move/from16 v25, v0

    .line 5674
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x17

    move/from16 v26, v0

    .line 5675
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x18

    move/from16 v27, v0

    .line 5676
    aget-byte v0, p0, v18

    int-to-char v0, v0

    move/from16 v28, v0

    move/from16 p0, v16

    move/from16 v29, p0

    goto :goto_2

    :pswitch_4
    add-int/lit8 v0, p1, 0x14

    .line 5666
    aget-byte v0, p0, v0

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x15

    move/from16 v24, v0

    .line 5667
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x16

    move/from16 v25, v0

    .line 5668
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x17

    move/from16 v26, v0

    .line 5669
    aget-byte v0, p0, v18

    int-to-char v0, v0

    move/from16 v27, v0

    move/from16 p0, v16

    move/from16 v28, p0

    goto :goto_1

    :pswitch_5
    add-int/lit8 v0, p1, 0x14

    .line 5661
    aget-byte v0, p0, v0

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x15

    move/from16 v24, v0

    .line 5662
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x16

    move/from16 v25, v0

    .line 5663
    aget-byte v0, p0, v18

    int-to-char v0, v0

    move/from16 v26, v0

    move/from16 p0, v16

    move/from16 v27, p0

    goto :goto_0

    :pswitch_6
    add-int/lit8 v0, p1, 0x14

    .line 5657
    aget-byte v0, p0, v0

    int-to-char v0, v0

    const/16 v18, 0x15

    add-int/lit8 v18, p1, 0x15

    move/from16 v24, v0

    .line 5658
    aget-byte v0, p0, v18

    int-to-char v0, v0

    move/from16 v25, v0

    move/from16 p0, v16

    move/from16 v26, p0

    move/from16 v27, v26

    :goto_0
    move/from16 v28, v27

    :goto_1
    move/from16 v29, v28

    :goto_2
    move/from16 v30, v29

    :goto_3
    move/from16 v18, v24

    move/from16 v24, v30

    goto :goto_4

    :pswitch_7
    add-int/lit8 v0, p1, 0x14

    .line 5654
    aget-byte v0, p0, v0

    int-to-char v0, v0

    move/from16 v18, v0

    move/from16 p0, v16

    move/from16 v24, p0

    move/from16 v25, v24

    move/from16 v26, v25

    move/from16 v27, v26

    move/from16 v28, v27

    move/from16 v29, v28

    move/from16 v30, v29

    :goto_4
    const/16 v0, 0x2d

    if-ne v3, v0, :cond_3

    if-ne v10, v0, :cond_3

    const/16 v0, 0x20

    if-eq v13, v0, :cond_2

    const/16 v0, 0x54

    if-ne v13, v0, :cond_3

    :cond_2
    const/16 v0, 0x3a

    if-ne v1, v0, :cond_3

    if-ne v2, v0, :cond_3

    const/16 v0, 0x2e

    if-ne v15, v0, :cond_3

    move v10, v11

    move v11, v12

    move v12, v14

    move/from16 v13, v21

    move/from16 v14, v19

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v15, v20

    move/from16 v16, v0

    move/from16 v17, v1

    move/from16 v19, v25

    move/from16 v20, v26

    move/from16 v21, v27

    move/from16 v22, v28

    move/from16 v23, v29

    move/from16 v25, p0

    move/from16 v26, v30

    .line 5753
    invoke-static/range {v4 .. v26}, Laay;->a(CCCCCCCCCCCCCCCCCCCCCCC)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0

    :cond_4
    :goto_5
    const/4 v0, 0x0

    return-object v0

    :cond_5
    :goto_6
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x15
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

.method public static c([CII)Ljava/time/LocalDateTime;
    .locals 32

    move/from16 v0, p2

    if-eqz p0, :cond_5

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    const/16 v2, 0x15

    if-lt v0, v2, :cond_4

    const/16 v3, 0x1d

    if-le v0, v3, :cond_1

    goto/16 :goto_6

    .line 5497
    :cond_1
    aget-char v4, p0, p1

    add-int/lit8 v3, p1, 0x1

    .line 5498
    aget-char v5, p0, v3

    add-int/lit8 v3, p1, 0x2

    .line 5499
    aget-char v6, p0, v3

    add-int/lit8 v3, p1, 0x3

    .line 5500
    aget-char v7, p0, v3

    add-int/lit8 v3, p1, 0x4

    .line 5501
    aget-char v3, p0, v3

    add-int/lit8 v8, p1, 0x5

    .line 5502
    aget-char v8, p0, v8

    add-int/lit8 v9, p1, 0x6

    .line 5503
    aget-char v9, p0, v9

    add-int/lit8 v10, p1, 0x7

    .line 5504
    aget-char v10, p0, v10

    add-int/lit8 v11, p1, 0x8

    .line 5505
    aget-char v11, p0, v11

    add-int/lit8 v12, p1, 0x9

    .line 5506
    aget-char v12, p0, v12

    add-int/lit8 v13, p1, 0xa

    .line 5507
    aget-char v13, p0, v13

    add-int/lit8 v14, p1, 0xb

    .line 5508
    aget-char v14, p0, v14

    add-int/lit8 v15, p1, 0xc

    .line 5509
    aget-char v15, p0, v15

    add-int/lit8 v16, p1, 0xd

    .line 5510
    aget-char v1, p0, v16

    add-int/lit8 v16, p1, 0xe

    .line 5511
    aget-char v16, p0, v16

    add-int/lit8 v18, p1, 0xf

    .line 5512
    aget-char v18, p0, v18

    add-int/lit8 v19, p1, 0x10

    .line 5513
    aget-char v2, p0, v19

    add-int/lit8 v19, p1, 0x11

    .line 5514
    aget-char v19, p0, v19

    add-int/lit8 v21, p1, 0x12

    .line 5515
    aget-char v21, p0, v21

    add-int/lit8 v22, p1, 0x13

    move/from16 v23, v15

    .line 5516
    aget-char v15, p0, v22

    const/16 v22, 0x30

    packed-switch v0, :pswitch_data_0

    add-int/lit8 v0, p1, 0x14

    .line 5572
    aget-char v0, p0, v0

    add-int/lit8 v20, p1, 0x15

    .line 5573
    aget-char v20, p0, v20

    add-int/lit8 v22, p1, 0x16

    .line 5574
    aget-char v22, p0, v22

    add-int/lit8 v24, p1, 0x17

    .line 5575
    aget-char v24, p0, v24

    add-int/lit8 v25, p1, 0x18

    .line 5576
    aget-char v25, p0, v25

    add-int/lit8 v26, p1, 0x19

    .line 5577
    aget-char v26, p0, v26

    add-int/lit8 v27, p1, 0x1a

    .line 5578
    aget-char v27, p0, v27

    add-int/lit8 v28, p1, 0x1b

    .line 5579
    aget-char v28, p0, v28

    add-int/lit8 v29, p1, 0x1c

    .line 5580
    aget-char v29, p0, v29

    move/from16 p0, v0

    move/from16 v30, v24

    move/from16 v24, v22

    move/from16 v22, v25

    move/from16 v25, v30

    move/from16 v31, v27

    move/from16 v27, v26

    move/from16 v26, v29

    move/from16 v29, v28

    move/from16 v28, v31

    goto/16 :goto_5

    :pswitch_0
    add-int/lit8 v0, p1, 0x14

    .line 5562
    aget-char v0, p0, v0

    add-int/lit8 v20, p1, 0x15

    .line 5563
    aget-char v20, p0, v20

    add-int/lit8 v24, p1, 0x16

    .line 5564
    aget-char v24, p0, v24

    add-int/lit8 v25, p1, 0x17

    .line 5565
    aget-char v25, p0, v25

    add-int/lit8 v26, p1, 0x18

    .line 5566
    aget-char v26, p0, v26

    add-int/lit8 v27, p1, 0x19

    .line 5567
    aget-char v27, p0, v27

    add-int/lit8 v28, p1, 0x1a

    .line 5568
    aget-char v28, p0, v28

    add-int/lit8 v29, p1, 0x1b

    .line 5569
    aget-char v29, p0, v29

    move/from16 p0, v0

    move/from16 v30, v26

    move/from16 v26, v22

    move/from16 v22, v30

    goto/16 :goto_5

    :pswitch_1
    add-int/lit8 v0, p1, 0x14

    .line 5553
    aget-char v0, p0, v0

    add-int/lit8 v20, p1, 0x15

    .line 5554
    aget-char v20, p0, v20

    add-int/lit8 v24, p1, 0x16

    .line 5555
    aget-char v24, p0, v24

    add-int/lit8 v25, p1, 0x17

    .line 5556
    aget-char v25, p0, v25

    add-int/lit8 v26, p1, 0x18

    .line 5557
    aget-char v26, p0, v26

    add-int/lit8 v27, p1, 0x19

    .line 5558
    aget-char v27, p0, v27

    add-int/lit8 v28, p1, 0x1a

    .line 5559
    aget-char v28, p0, v28

    move/from16 p0, v0

    move/from16 v29, v22

    goto :goto_1

    :pswitch_2
    add-int/lit8 v0, p1, 0x14

    .line 5545
    aget-char v0, p0, v0

    add-int/lit8 v20, p1, 0x15

    .line 5546
    aget-char v20, p0, v20

    add-int/lit8 v24, p1, 0x16

    .line 5547
    aget-char v24, p0, v24

    add-int/lit8 v25, p1, 0x17

    .line 5548
    aget-char v25, p0, v25

    add-int/lit8 v26, p1, 0x18

    .line 5549
    aget-char v26, p0, v26

    add-int/lit8 v27, p1, 0x19

    .line 5550
    aget-char v27, p0, v27

    move/from16 p0, v0

    move/from16 v28, v22

    goto :goto_0

    :pswitch_3
    add-int/lit8 v0, p1, 0x14

    .line 5538
    aget-char v0, p0, v0

    add-int/lit8 v20, p1, 0x15

    .line 5539
    aget-char v20, p0, v20

    add-int/lit8 v24, p1, 0x16

    .line 5540
    aget-char v24, p0, v24

    add-int/lit8 v25, p1, 0x17

    .line 5541
    aget-char v25, p0, v25

    add-int/lit8 v26, p1, 0x18

    .line 5542
    aget-char v26, p0, v26

    move/from16 p0, v0

    move/from16 v27, v22

    move/from16 v28, v27

    :goto_0
    move/from16 v29, v28

    :goto_1
    move/from16 v22, v26

    move/from16 v26, v29

    goto :goto_5

    :pswitch_4
    add-int/lit8 v0, p1, 0x14

    .line 5532
    aget-char v0, p0, v0

    add-int/lit8 v20, p1, 0x15

    .line 5533
    aget-char v20, p0, v20

    add-int/lit8 v24, p1, 0x16

    .line 5534
    aget-char v24, p0, v24

    add-int/lit8 v25, p1, 0x17

    .line 5535
    aget-char v25, p0, v25

    move/from16 p0, v0

    move/from16 v26, v22

    goto :goto_4

    :pswitch_5
    add-int/lit8 v0, p1, 0x14

    .line 5527
    aget-char v0, p0, v0

    add-int/lit8 v20, p1, 0x15

    .line 5528
    aget-char v20, p0, v20

    add-int/lit8 v24, p1, 0x16

    .line 5529
    aget-char v24, p0, v24

    move/from16 p0, v0

    move/from16 v25, v22

    goto :goto_3

    :pswitch_6
    add-int/lit8 v0, p1, 0x14

    .line 5523
    aget-char v0, p0, v0

    const/16 v20, 0x15

    add-int/lit8 v20, p1, 0x15

    .line 5524
    aget-char v20, p0, v20

    move/from16 p0, v0

    move/from16 v24, v22

    goto :goto_2

    :pswitch_7
    add-int/lit8 v0, p1, 0x14

    .line 5520
    aget-char v0, p0, v0

    move/from16 p0, v0

    move/from16 v20, v22

    move/from16 v24, v20

    :goto_2
    move/from16 v25, v24

    :goto_3
    move/from16 v26, v25

    :goto_4
    move/from16 v27, v26

    move/from16 v28, v27

    move/from16 v29, v28

    :goto_5
    const/16 v0, 0x2d

    if-ne v3, v0, :cond_3

    if-ne v10, v0, :cond_3

    const/16 v0, 0x20

    if-eq v13, v0, :cond_2

    const/16 v0, 0x54

    if-ne v13, v0, :cond_3

    :cond_2
    const/16 v0, 0x3a

    if-ne v1, v0, :cond_3

    if-ne v2, v0, :cond_3

    const/16 v0, 0x2e

    if-ne v15, v0, :cond_3

    move v10, v11

    move v11, v12

    move v12, v14

    move/from16 v13, v23

    move/from16 v14, v16

    move/from16 v15, v18

    move/from16 v16, v19

    move/from16 v17, v21

    move/from16 v18, p0

    move/from16 v19, v20

    move/from16 v20, v24

    move/from16 v21, v25

    move/from16 v23, v27

    move/from16 v24, v28

    move/from16 v25, v29

    .line 5619
    invoke-static/range {v4 .. v26}, Laay;->a(CCCCCCCCCCCCCCCCCCCCCCC)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0

    :cond_4
    :goto_6
    const/4 v0, 0x0

    return-object v0

    :cond_5
    :goto_7
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x15
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

.method public static c([BI)Ljava/time/LocalTime;
    .locals 10

    add-int/lit8 v0, p1, 0xa

    .line 467
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 471
    :cond_0
    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 472
    aget-byte v1, p0, v1

    add-int/lit8 v3, p1, 0x2

    .line 473
    aget-byte v3, p0, v3

    add-int/lit8 v4, p1, 0x3

    .line 474
    aget-byte v4, p0, v4

    add-int/lit8 v5, p1, 0x4

    .line 475
    aget-byte v5, p0, v5

    add-int/lit8 v6, p1, 0x5

    .line 476
    aget-byte v6, p0, v6

    add-int/lit8 v7, p1, 0x6

    .line 477
    aget-byte v7, p0, v7

    add-int/lit8 v8, p1, 0x7

    .line 478
    aget-byte v8, p0, v8

    add-int/lit8 v9, p1, 0x8

    .line 479
    aget-byte v9, p0, v9

    add-int/lit8 p1, p1, 0x9

    .line 480
    aget-byte p0, p0, p1

    const/16 p1, 0x3a

    if-ne v3, p1, :cond_1

    if-ne v6, p1, :cond_1

    const/16 p1, 0x2e

    if-ne v9, p1, :cond_1

    const/16 p1, 0x30

    if-lt v0, p1, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    if-lt v1, p1, :cond_1

    if-gt v1, v3, :cond_1

    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    if-lt v4, p1, :cond_1

    if-gt v4, v3, :cond_1

    if-lt v5, p1, :cond_1

    if-gt v5, v3, :cond_1

    sub-int/2addr v4, p1

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr v5, p1

    add-int/2addr v4, v5

    if-lt v7, p1, :cond_1

    if-gt v7, v3, :cond_1

    if-lt v8, p1, :cond_1

    if-gt v8, v3, :cond_1

    sub-int/2addr v7, p1

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr v8, p1

    add-int/2addr v7, v8

    if-lt p0, p1, :cond_1

    if-gt p0, v3, :cond_1

    sub-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x64

    const p1, 0xf4240

    mul-int/2addr p0, p1

    .line 530
    invoke-static {v0, v4, v7, p0}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2
.end method

.method public static c([CI)Ljava/time/LocalTime;
    .locals 10

    add-int/lit8 v0, p1, 0xa

    .line 534
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 538
    :cond_0
    aget-char v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 539
    aget-char v1, p0, v1

    add-int/lit8 v3, p1, 0x2

    .line 540
    aget-char v3, p0, v3

    add-int/lit8 v4, p1, 0x3

    .line 541
    aget-char v4, p0, v4

    add-int/lit8 v5, p1, 0x4

    .line 542
    aget-char v5, p0, v5

    add-int/lit8 v6, p1, 0x5

    .line 543
    aget-char v6, p0, v6

    add-int/lit8 v7, p1, 0x6

    .line 544
    aget-char v7, p0, v7

    add-int/lit8 v8, p1, 0x7

    .line 545
    aget-char v8, p0, v8

    add-int/lit8 v9, p1, 0x8

    .line 546
    aget-char v9, p0, v9

    add-int/lit8 p1, p1, 0x9

    .line 547
    aget-char p0, p0, p1

    const/16 p1, 0x3a

    if-ne v3, p1, :cond_1

    if-ne v6, p1, :cond_1

    const/16 p1, 0x2e

    if-ne v9, p1, :cond_1

    const/16 p1, 0x30

    if-lt v0, p1, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    if-lt v1, p1, :cond_1

    if-gt v1, v3, :cond_1

    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    if-lt v4, p1, :cond_1

    if-gt v4, v3, :cond_1

    if-lt v5, p1, :cond_1

    if-gt v5, v3, :cond_1

    sub-int/2addr v4, p1

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr v5, p1

    add-int/2addr v4, v5

    if-lt v7, p1, :cond_1

    if-gt v7, v3, :cond_1

    if-lt v8, p1, :cond_1

    if-gt v8, v3, :cond_1

    sub-int/2addr v7, p1

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr v8, p1

    add-int/2addr v7, v8

    if-lt p0, p1, :cond_1

    if-gt p0, v3, :cond_1

    sub-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x64

    const p1, 0xf4240

    mul-int/2addr p0, p1

    .line 597
    invoke-static {v0, v4, v7, p0}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2
.end method

.method public static c(Ljava/lang/String;Ljava/time/ZoneId;)Ljava/time/ZoneId;
    .locals 5

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 8049
    :cond_0
    sget-object p1, Laay;->a:Ljava/time/ZoneId;

    :goto_0
    return-object p1

    :cond_1
    const/4 p1, -0x1

    .line 8054
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xba30

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v1, :cond_4

    const v1, 0x105e4

    if-eq v0, v1, :cond_3

    const v1, 0x4c1f1f67    # 4.1713052E7f

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "+08:00"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move p1, v4

    goto :goto_1

    :cond_3
    const-string v0, "CST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move p1, v3

    goto :goto_1

    :cond_4
    const-string v0, "000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move p1, v2

    :cond_5
    :goto_1
    if-eqz p1, :cond_b

    if-eq p1, v4, :cond_a

    if-eq p1, v3, :cond_9

    .line 8066
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x5d

    if-lez p1, :cond_7

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x2b

    if-eq p1, v1, :cond_6

    const/16 v1, 0x2d

    if-ne p1, v1, :cond_7

    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-eq p1, v0, :cond_7

    .line 8067
    invoke-static {p0}, Ljava/time/ZoneOffset;->of(Ljava/lang/String;)Ljava/time/ZoneOffset;

    move-result-object p0

    goto :goto_2

    :cond_7
    const/16 p1, 0x5b

    .line 8068
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-lez p1, :cond_8

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-lez v0, :cond_8

    add-int/2addr p1, v4

    .line 8069
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 8070
    invoke-static {p0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object p0

    goto :goto_2

    .line 8072
    :cond_8
    invoke-static {p0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object p0

    goto :goto_2

    .line 8062
    :cond_9
    sget-object p0, Laay;->b:Ljava/time/ZoneId;

    goto :goto_2

    .line 8059
    :cond_a
    sget-object p0, Laay;->d:Ljava/time/ZoneId;

    goto :goto_2

    .line 8056
    :cond_b
    sget-object p0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    :goto_2
    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/time/ZoneId;)J
    .locals 34

    move-object/from16 v0, p0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 8085
    :cond_0
    sget v1, Labf;->d:I

    const/16 v2, 0xb

    const/16 v3, 0x9

    const/4 v4, 0x6

    const/16 v5, 0x8

    const/16 v6, 0xc

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/16 v10, 0xa

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-ne v1, v5, :cond_2

    .line 8086
    invoke-static/range {p0 .. p0}, Labf;->a(Ljava/lang/String;)[C

    move-result-object v1

    .line 8087
    array-length v13, v1

    const/16 v14, 0x13

    if-ne v13, v14, :cond_1

    .line 8091
    aget-char v13, v1, v12

    .line 8092
    aget-char v14, v1, v11

    .line 8093
    aget-char v15, v1, v8

    .line 8094
    aget-char v9, v1, v9

    .line 8095
    aget-char v16, v1, v7

    const/16 v17, 0x5

    .line 8096
    aget-char v17, v1, v17

    .line 8097
    aget-char v18, v1, v4

    const/16 v19, 0x7

    .line 8098
    aget-char v19, v1, v19

    .line 8099
    aget-char v5, v1, v5

    .line 8100
    aget-char v20, v1, v3

    .line 8101
    aget-char v21, v1, v10

    .line 8102
    aget-char v22, v1, v2

    .line 8103
    aget-char v23, v1, v6

    const/16 v24, 0xd

    .line 8104
    aget-char v24, v1, v24

    const/16 v25, 0xe

    .line 8105
    aget-char v25, v1, v25

    const/16 v26, 0xf

    .line 8106
    aget-char v26, v1, v26

    const/16 v27, 0x10

    .line 8107
    aget-char v27, v1, v27

    const/16 v28, 0x11

    .line 8108
    aget-char v28, v1, v28

    const/16 v29, 0x12

    .line 8109
    aget-char v1, v1, v29

    move/from16 v32, v1

    move/from16 v3, v16

    move/from16 v7, v17

    move/from16 v11, v18

    move/from16 v2, v19

    move/from16 v12, v20

    move/from16 v8, v21

    move/from16 v10, v22

    move/from16 v1, v23

    move/from16 v6, v24

    move/from16 v24, v25

    move/from16 v30, v26

    move/from16 v4, v27

    move/from16 v31, v28

    goto/16 :goto_0

    .line 8088
    :cond_1
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal input "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v12}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    .line 8110
    :cond_2
    sget-object v1, Labf;->B:Ljava/util/function/ToIntFunction;

    if-eqz v1, :cond_4

    sget-object v1, Labf;->B:Ljava/util/function/ToIntFunction;

    .line 8111
    invoke-interface {v1, v0}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Labf;->C:Ljava/util/function/Function;

    if-eqz v1, :cond_4

    .line 8114
    sget-object v1, Labf;->C:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 8115
    array-length v13, v1

    const/16 v14, 0x13

    if-ne v13, v14, :cond_3

    .line 8119
    aget-byte v13, v1, v12

    int-to-char v13, v13

    .line 8120
    aget-byte v14, v1, v11

    int-to-char v14, v14

    .line 8121
    aget-byte v15, v1, v8

    int-to-char v15, v15

    .line 8122
    aget-byte v9, v1, v9

    int-to-char v9, v9

    .line 8123
    aget-byte v8, v1, v7

    int-to-char v8, v8

    const/16 v17, 0x5

    .line 8124
    aget-byte v7, v1, v17

    int-to-char v7, v7

    .line 8125
    aget-byte v11, v1, v4

    int-to-char v11, v11

    const/16 v19, 0x7

    .line 8126
    aget-byte v4, v1, v19

    int-to-char v4, v4

    .line 8127
    aget-byte v5, v1, v5

    int-to-char v5, v5

    .line 8128
    aget-byte v12, v1, v3

    int-to-char v12, v12

    .line 8129
    aget-byte v3, v1, v10

    int-to-char v3, v3

    .line 8130
    aget-byte v10, v1, v2

    int-to-char v10, v10

    .line 8131
    aget-byte v2, v1, v6

    int-to-char v2, v2

    const/16 v24, 0xd

    .line 8132
    aget-byte v6, v1, v24

    int-to-char v6, v6

    const/16 v24, 0xe

    move/from16 v26, v2

    .line 8133
    aget-byte v2, v1, v24

    int-to-char v2, v2

    const/16 v24, 0xf

    move/from16 v27, v2

    .line 8134
    aget-byte v2, v1, v24

    int-to-char v2, v2

    const/16 v24, 0x10

    move/from16 v28, v2

    .line 8135
    aget-byte v2, v1, v24

    int-to-char v2, v2

    const/16 v24, 0x11

    move/from16 v29, v2

    .line 8136
    aget-byte v2, v1, v24

    int-to-char v2, v2

    const/16 v24, 0x12

    .line 8137
    aget-byte v1, v1, v24

    int-to-char v1, v1

    move/from16 v32, v1

    move/from16 v31, v2

    move v2, v4

    move/from16 v1, v26

    move/from16 v24, v27

    move/from16 v30, v28

    move/from16 v4, v29

    move/from16 v33, v8

    move v8, v3

    move/from16 v3, v33

    goto/16 :goto_0

    .line 8116
    :cond_3
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal input "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_4
    move v3, v12

    .line 8139
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_1f

    .line 8143
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/4 v1, 0x1

    .line 8144
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/4 v2, 0x2

    .line 8145
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 8146
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/4 v2, 0x4

    .line 8147
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v2, 0x5

    .line 8148
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/4 v2, 0x6

    .line 8149
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v2, 0x7

    .line 8150
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 8151
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x9

    .line 8152
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v6, 0xa

    .line 8153
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v6, 0xb

    .line 8154
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v6, 0xc

    .line 8155
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v6, 0xd

    .line 8156
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v24

    const/16 v6, 0xe

    .line 8157
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v12, 0xf

    .line 8158
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v12, 0x10

    .line 8159
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v27

    const/16 v12, 0x11

    .line 8160
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v28

    const/16 v12, 0x12

    .line 8161
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    move v1, v11

    move/from16 v32, v12

    move/from16 v30, v26

    move/from16 v31, v28

    move v11, v4

    move v12, v7

    move/from16 v7, v17

    move/from16 v4, v27

    move/from16 v33, v24

    move/from16 v24, v6

    move/from16 v6, v33

    :goto_0
    const/16 v0, 0x2d

    move/from16 v26, v1

    const-string v1, "illegal input"

    if-ne v3, v0, :cond_1e

    const/16 v0, 0x2d

    if-ne v2, v0, :cond_1e

    const/16 v0, 0x20

    if-ne v8, v0, :cond_1e

    const/16 v0, 0x3a

    if-ne v6, v0, :cond_1e

    const/16 v0, 0x3a

    if-ne v4, v0, :cond_1e

    const/16 v0, 0x30

    if-lt v13, v0, :cond_1d

    const/16 v2, 0x39

    if-gt v13, v2, :cond_1d

    if-lt v14, v0, :cond_1d

    if-gt v14, v2, :cond_1d

    if-lt v15, v0, :cond_1d

    if-gt v15, v2, :cond_1d

    if-lt v9, v0, :cond_1d

    if-gt v9, v2, :cond_1d

    sub-int/2addr v13, v0

    mul-int/lit16 v13, v13, 0x3e8

    sub-int/2addr v14, v0

    mul-int/lit8 v14, v14, 0x64

    add-int/2addr v13, v14

    sub-int/2addr v15, v0

    const/16 v3, 0xa

    mul-int/2addr v15, v3

    add-int/2addr v13, v15

    sub-int/2addr v9, v0

    add-int/2addr v13, v9

    if-lt v7, v0, :cond_1c

    if-gt v7, v2, :cond_1c

    if-lt v11, v0, :cond_1c

    if-gt v11, v2, :cond_1c

    sub-int/2addr v7, v0

    mul-int/2addr v7, v3

    sub-int/2addr v11, v0

    add-int/2addr v11, v7

    if-nez v11, :cond_5

    if-nez v13, :cond_1b

    :cond_5
    const/16 v3, 0xc

    if-gt v11, v3, :cond_1b

    if-lt v5, v0, :cond_1a

    if-gt v5, v2, :cond_1a

    if-lt v12, v0, :cond_1a

    if-gt v12, v2, :cond_1a

    sub-int/2addr v5, v0

    const/16 v3, 0xa

    mul-int/2addr v5, v3

    sub-int/2addr v12, v0

    add-int v3, v5, v12

    const/16 v4, 0x1f

    const/4 v5, 0x2

    if-eq v11, v5, :cond_7

    const/4 v5, 0x4

    if-eq v11, v5, :cond_6

    const/4 v5, 0x6

    if-eq v11, v5, :cond_6

    const/16 v5, 0x9

    if-eq v11, v5, :cond_6

    const/16 v5, 0xb

    if-eq v11, v5, :cond_6

    goto :goto_2

    :cond_6
    const/16 v4, 0x1e

    goto :goto_2

    :cond_7
    and-int/lit8 v4, v13, 0x3

    if-nez v4, :cond_9

    .line 8221
    rem-int/lit8 v4, v13, 0x64

    if-nez v4, :cond_8

    rem-int/lit16 v4, v13, 0x190

    if-nez v4, :cond_9

    :cond_8
    const/4 v4, 0x1

    goto :goto_1

    :cond_9
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_a

    const/16 v4, 0x1d

    goto :goto_2

    :cond_a
    const/16 v4, 0x1c

    :goto_2
    if-nez v3, :cond_b

    if-nez v13, :cond_19

    :cond_b
    if-gt v3, v4, :cond_19

    if-lt v10, v0, :cond_18

    if-gt v10, v2, :cond_18

    move/from16 v4, v26

    if-lt v4, v0, :cond_18

    if-gt v4, v2, :cond_18

    sub-int/2addr v10, v0

    const/16 v5, 0xa

    mul-int/2addr v10, v5

    sub-int/2addr v4, v0

    add-int/2addr v10, v4

    move/from16 v6, v24

    if-lt v6, v0, :cond_17

    if-gt v6, v2, :cond_17

    move/from16 v4, v30

    if-lt v4, v0, :cond_17

    if-gt v4, v2, :cond_17

    add-int/lit8 v24, v6, -0x30

    mul-int/lit8 v24, v24, 0xa

    add-int/lit8 v30, v4, -0x30

    add-int v4, v24, v30

    move/from16 v6, v31

    if-lt v6, v0, :cond_16

    if-gt v6, v2, :cond_16

    move/from16 v12, v32

    if-lt v12, v0, :cond_16

    if-gt v12, v2, :cond_16

    add-int/lit8 v31, v6, -0x30

    mul-int/lit8 v31, v31, 0xa

    add-int/lit8 v32, v12, -0x30

    add-int v0, v31, v32

    if-nez v13, :cond_c

    if-nez v11, :cond_c

    if-nez v3, :cond_c

    const/16 v13, 0x7b2

    const/4 v3, 0x1

    const/4 v11, 0x1

    :cond_c
    mul-int/lit16 v1, v13, 0x16d

    add-int/lit8 v2, v13, 0x3

    const/4 v5, 0x4

    .line 8277
    div-int/2addr v2, v5

    add-int/lit8 v5, v13, 0x63

    div-int/lit8 v5, v5, 0x64

    sub-int/2addr v2, v5

    add-int/lit16 v5, v13, 0x18f

    div-int/lit16 v5, v5, 0x190

    add-int/2addr v2, v5

    add-int/2addr v1, v2

    mul-int/lit16 v2, v11, 0x16f

    add-int/lit16 v2, v2, -0x16a

    const/16 v5, 0xc

    div-int/2addr v2, v5

    add-int/2addr v1, v2

    add-int/lit8 v2, v3, -0x1

    add-int/2addr v1, v2

    int-to-long v1, v1

    const/4 v5, 0x2

    if-le v11, v5, :cond_f

    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    and-int/lit8 v5, v13, 0x3

    if-nez v5, :cond_e

    .line 8284
    rem-int/lit8 v5, v13, 0x64

    if-nez v5, :cond_d

    rem-int/lit16 v5, v13, 0x190

    if-nez v5, :cond_e

    :cond_d
    const/4 v5, 0x1

    goto :goto_3

    :cond_e
    const/4 v5, 0x0

    :goto_3
    if-nez v5, :cond_f

    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    :cond_f
    const-wide/32 v5, 0xafaa8

    sub-long/2addr v1, v5

    const-wide/32 v5, 0x15180

    mul-long/2addr v1, v5

    mul-int/lit16 v5, v10, 0xe10

    int-to-long v5, v5

    add-long/2addr v1, v5

    mul-int/lit8 v5, v4, 0x3c

    int-to-long v5, v5

    add-long/2addr v1, v5

    int-to-long v5, v0

    add-long/2addr v1, v5

    if-nez p1, :cond_10

    .line 8300
    sget-object v5, Laay;->a:Ljava/time/ZoneId;

    goto :goto_4

    :cond_10
    move-object/from16 v5, p1

    .line 8302
    :goto_4
    sget-object v6, Laay;->b:Ljava/time/ZoneId;

    if-eq v5, v6, :cond_12

    invoke-virtual {v5}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v6

    sget-object v7, Laay;->c:Ljava/time/zone/ZoneRules;

    if-ne v6, v7, :cond_11

    goto :goto_5

    :cond_11
    const/16 v17, 0x0

    goto :goto_6

    :cond_12
    :goto_5
    const/16 v17, 0x1

    :goto_6
    const-wide/32 v6, 0x28d2bea0

    if-eqz v17, :cond_13

    cmp-long v6, v1, v6

    if-ltz v6, :cond_13

    const/16 v12, 0x7080

    goto :goto_8

    .line 8306
    :cond_13
    sget-object v6, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    if-eq v5, v6, :cond_15

    invoke-virtual {v5}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTC"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    goto :goto_7

    .line 8309
    :cond_14
    invoke-static {v13, v11, v3}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v3

    const/4 v6, 0x0

    .line 8310
    invoke-static {v10, v4, v0, v6}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v0

    .line 8311
    invoke-static {v3, v0}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 8312
    invoke-virtual {v5}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/LocalDateTime;)Ljava/time/ZoneOffset;

    move-result-object v0

    .line 8313
    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v12

    goto :goto_8

    :cond_15
    :goto_7
    const/4 v12, 0x0

    :goto_8
    int-to-long v3, v12

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    return-wide v1

    .line 8263
    :cond_16
    new-instance v0, Ljava/time/format/DateTimeParseException;

    const/4 v3, 0x0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_17
    const/4 v3, 0x0

    move-object/from16 v2, p0

    .line 8254
    new-instance v0, Ljava/time/format/DateTimeParseException;

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_18
    const/4 v3, 0x0

    move-object/from16 v2, p0

    .line 8245
    new-instance v0, Ljava/time/format/DateTimeParseException;

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_19
    const/4 v3, 0x0

    move-object/from16 v2, p0

    .line 8233
    new-instance v0, Ljava/time/format/DateTimeParseException;

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_1a
    const/4 v3, 0x0

    move-object/from16 v2, p0

    .line 8236
    new-instance v0, Ljava/time/format/DateTimeParseException;

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_1b
    const/4 v3, 0x0

    move-object/from16 v2, p0

    .line 8206
    new-instance v0, Ljava/time/format/DateTimeParseException;

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_1c
    const/4 v3, 0x0

    move-object/from16 v2, p0

    .line 8209
    new-instance v0, Ljava/time/format/DateTimeParseException;

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_1d
    const/4 v3, 0x0

    move-object/from16 v2, p0

    .line 8196
    new-instance v0, Ljava/time/format/DateTimeParseException;

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_1e
    const/4 v3, 0x0

    move-object/from16 v2, p0

    .line 8165
    new-instance v0, Ljava/time/format/DateTimeParseException;

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_1f
    move-object v2, v0

    .line 8140
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal input "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0
.end method

.method public static d([BI)Ljava/time/LocalTime;
    .locals 11

    add-int/lit8 v0, p1, 0xb

    .line 601
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 605
    :cond_0
    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 606
    aget-byte v1, p0, v1

    add-int/lit8 v3, p1, 0x2

    .line 607
    aget-byte v3, p0, v3

    add-int/lit8 v4, p1, 0x3

    .line 608
    aget-byte v4, p0, v4

    add-int/lit8 v5, p1, 0x4

    .line 609
    aget-byte v5, p0, v5

    add-int/lit8 v6, p1, 0x5

    .line 610
    aget-byte v6, p0, v6

    add-int/lit8 v7, p1, 0x6

    .line 611
    aget-byte v7, p0, v7

    add-int/lit8 v8, p1, 0x7

    .line 612
    aget-byte v8, p0, v8

    add-int/lit8 v9, p1, 0x8

    .line 613
    aget-byte v9, p0, v9

    add-int/lit8 v10, p1, 0x9

    .line 614
    aget-byte v10, p0, v10

    add-int/lit8 p1, p1, 0xa

    .line 615
    aget-byte p0, p0, p1

    const/16 p1, 0x3a

    if-ne v3, p1, :cond_1

    if-ne v6, p1, :cond_1

    const/16 p1, 0x2e

    if-ne v9, p1, :cond_1

    const/16 p1, 0x30

    if-lt v0, p1, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    if-lt v1, p1, :cond_1

    if-gt v1, v3, :cond_1

    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    if-lt v4, p1, :cond_1

    if-gt v4, v3, :cond_1

    if-lt v5, p1, :cond_1

    if-gt v5, v3, :cond_1

    sub-int/2addr v4, p1

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr v5, p1

    add-int/2addr v4, v5

    if-lt v7, p1, :cond_1

    if-gt v7, v3, :cond_1

    if-lt v8, p1, :cond_1

    if-gt v8, v3, :cond_1

    sub-int/2addr v7, p1

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr v8, p1

    add-int/2addr v7, v8

    if-lt v10, p1, :cond_1

    if-gt v10, v3, :cond_1

    if-lt p0, p1, :cond_1

    if-gt p0, v3, :cond_1

    sub-int/2addr v10, p1

    mul-int/lit8 v10, v10, 0x64

    sub-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0xa

    add-int/2addr v10, p0

    const p0, 0xf4240

    mul-int/2addr v10, p0

    .line 668
    invoke-static {v0, v4, v7, v10}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2
.end method

.method public static d([CI)Ljava/time/LocalTime;
    .locals 11

    add-int/lit8 v0, p1, 0xb

    .line 672
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 676
    :cond_0
    aget-char v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 677
    aget-char v1, p0, v1

    add-int/lit8 v3, p1, 0x2

    .line 678
    aget-char v3, p0, v3

    add-int/lit8 v4, p1, 0x3

    .line 679
    aget-char v4, p0, v4

    add-int/lit8 v5, p1, 0x4

    .line 680
    aget-char v5, p0, v5

    add-int/lit8 v6, p1, 0x5

    .line 681
    aget-char v6, p0, v6

    add-int/lit8 v7, p1, 0x6

    .line 682
    aget-char v7, p0, v7

    add-int/lit8 v8, p1, 0x7

    .line 683
    aget-char v8, p0, v8

    add-int/lit8 v9, p1, 0x8

    .line 684
    aget-char v9, p0, v9

    add-int/lit8 v10, p1, 0x9

    .line 685
    aget-char v10, p0, v10

    add-int/lit8 p1, p1, 0xa

    .line 686
    aget-char p0, p0, p1

    const/16 p1, 0x3a

    if-ne v3, p1, :cond_1

    if-ne v6, p1, :cond_1

    const/16 p1, 0x2e

    if-ne v9, p1, :cond_1

    const/16 p1, 0x30

    if-lt v0, p1, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    if-lt v1, p1, :cond_1

    if-gt v1, v3, :cond_1

    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    if-lt v4, p1, :cond_1

    if-gt v4, v3, :cond_1

    if-lt v5, p1, :cond_1

    if-gt v5, v3, :cond_1

    sub-int/2addr v4, p1

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr v5, p1

    add-int/2addr v4, v5

    if-lt v7, p1, :cond_1

    if-gt v7, v3, :cond_1

    if-lt v8, p1, :cond_1

    if-gt v8, v3, :cond_1

    sub-int/2addr v7, p1

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr v8, p1

    add-int/2addr v7, v8

    if-lt v10, p1, :cond_1

    if-gt v10, v3, :cond_1

    if-lt p0, p1, :cond_1

    if-gt p0, v3, :cond_1

    sub-int/2addr v10, p1

    mul-int/lit8 v10, v10, 0x64

    sub-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0xa

    add-int/2addr v10, p0

    const p0, 0xf4240

    mul-int/2addr v10, p0

    .line 738
    invoke-static {v0, v4, v7, v10}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2
.end method

.method static d(Ljava/lang/String;)Ljava/time/ZonedDateTime;
    .locals 3

    const-string v0, " CST"

    .line 8028
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8029
    sget-object v0, Laay;->h:Ljava/time/format/DateTimeFormatter;

    if-nez v0, :cond_0

    .line 8031
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "EEEE, dd-MMM-yyyy HH:mm:ss"

    invoke-static {v1, v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 8032
    sput-object v0, Laay;->h:Ljava/time/format/DateTimeFormatter;

    :cond_0
    const/4 v1, 0x0

    .line 8034
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 8035
    invoke-static {p0, v0}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object p0

    .line 8036
    sget-object v0, Laay;->b:Ljava/time/ZoneId;

    invoke-static {p0, v0}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0

    .line 8039
    :cond_1
    sget-object v0, Laay;->g:Ljava/time/format/DateTimeFormatter;

    if-nez v0, :cond_2

    .line 8041
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "EEEE, dd-MMM-yyyy HH:mm:ss zzz"

    invoke-static {v1, v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 8042
    sput-object v0, Laay;->g:Ljava/time/format/DateTimeFormatter;

    .line 8044
    :cond_2
    invoke-static {p0, v0}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static d([BII)Ljava/time/ZonedDateTime;
    .locals 1

    .line 5952
    sget-object v0, Laay;->a:Ljava/time/ZoneId;

    invoke-static {p0, p1, p2, v0}, Laay;->a([BIILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static d([CII)Ljava/time/ZonedDateTime;
    .locals 1

    .line 5956
    sget-object v0, Laay;->a:Ljava/time/ZoneId;

    invoke-static {p0, p1, p2, v0}, Laay;->b([CIILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static e([BII)I
    .locals 4

    const v0, 0x186a0

    const v1, 0xf4240

    const v2, 0x989680

    const v3, 0x5f5e100

    packed-switch p1, :pswitch_data_0

    .line 11876
    aget-byte p1, p0, p2

    add-int/lit8 p1, p1, -0x30

    mul-int/2addr p1, v3

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p0, v3

    add-int/lit8 v3, v3, -0x30

    mul-int/2addr v3, v2

    add-int/2addr p1, v3

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p0, v2

    add-int/lit8 v2, v2, -0x30

    mul-int/2addr v2, v1

    add-int/2addr p1, v2

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p0, v1

    add-int/lit8 v1, v1, -0x30

    mul-int/2addr v1, v0

    add-int/2addr p1, v1

    add-int/lit8 v0, p2, 0x4

    aget-byte v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x2710

    add-int/2addr p1, v0

    add-int/lit8 v0, p2, 0x5

    aget-byte v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr p1, v0

    add-int/lit8 v0, p2, 0x6

    aget-byte v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0x64

    add-int/2addr p1, v0

    add-int/lit8 v0, p2, 0x7

    aget-byte v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr p1, v0

    add-int/lit8 p2, p2, 0x8

    aget-byte p0, p0, p2

    add-int/2addr p1, p0

    add-int/lit8 p1, p1, -0x30

    return p1

    .line 11867
    :pswitch_0
    aget-byte p1, p0, p2

    add-int/lit8 p1, p1, -0x30

    mul-int/2addr p1, v3

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p0, v3

    add-int/lit8 v3, v3, -0x30

    mul-int/2addr v3, v2

    add-int/2addr p1, v3

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p0, v2

    add-int/lit8 v2, v2, -0x30

    mul-int/2addr v2, v1

    add-int/2addr p1, v2

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p0, v1

    add-int/lit8 v1, v1, -0x30

    mul-int/2addr v1, v0

    add-int/2addr p1, v1

    add-int/lit8 v0, p2, 0x4

    aget-byte v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x2710

    add-int/2addr p1, v0

    add-int/lit8 v0, p2, 0x5

    aget-byte v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr p1, v0

    add-int/lit8 v0, p2, 0x6

    aget-byte v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0x64

    add-int/2addr p1, v0

    add-int/lit8 p2, p2, 0x7

    aget-byte p0, p0, p2

    add-int/lit8 p0, p0, -0x30

    mul-int/lit8 p0, p0, 0xa

    add-int/2addr p1, p0

    return p1

    .line 11859
    :pswitch_1
    aget-byte p1, p0, p2

    add-int/lit8 p1, p1, -0x30

    mul-int/2addr p1, v3

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p0, v3

    add-int/lit8 v3, v3, -0x30

    mul-int/2addr v3, v2

    add-int/2addr p1, v3

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p0, v2

    add-int/lit8 v2, v2, -0x30

    mul-int/2addr v2, v1

    add-int/2addr p1, v2

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p0, v1

    add-int/lit8 v1, v1, -0x30

    mul-int/2addr v1, v0

    add-int/2addr p1, v1

    add-int/lit8 v0, p2, 0x4

    aget-byte v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x2710

    add-int/2addr p1, v0

    add-int/lit8 v0, p2, 0x5

    aget-byte v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr p1, v0

    add-int/lit8 p2, p2, 0x6

    aget-byte p0, p0, p2

    add-int/lit8 p0, p0, -0x30

    mul-int/lit8 p0, p0, 0x64

    add-int/2addr p1, p0

    return p1

    .line 11852
    :pswitch_2
    aget-byte p1, p0, p2

    add-int/lit8 p1, p1, -0x30

    mul-int/2addr p1, v3

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p0, v3

    add-int/lit8 v3, v3, -0x30

    mul-int/2addr v3, v2

    add-int/2addr p1, v3

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p0, v2

    add-int/lit8 v2, v2, -0x30

    mul-int/2addr v2, v1

    add-int/2addr p1, v2

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p0, v1

    add-int/lit8 v1, v1, -0x30

    mul-int/2addr v1, v0

    add-int/2addr p1, v1

    add-int/lit8 v0, p2, 0x4

    aget-byte v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x2710

    add-int/2addr p1, v0

    add-int/lit8 p2, p2, 0x5

    aget-byte p0, p0, p2

    add-int/lit8 p0, p0, -0x30

    mul-int/lit16 p0, p0, 0x3e8

    add-int/2addr p1, p0

    return p1

    .line 11846
    :pswitch_3
    aget-byte p1, p0, p2

    add-int/lit8 p1, p1, -0x30

    mul-int/2addr p1, v3

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p0, v3

    add-int/lit8 v3, v3, -0x30

    mul-int/2addr v3, v2

    add-int/2addr p1, v3

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p0, v2

    add-int/lit8 v2, v2, -0x30

    mul-int/2addr v2, v1

    add-int/2addr p1, v2

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p0, v1

    add-int/lit8 v1, v1, -0x30

    mul-int/2addr v1, v0

    add-int/2addr p1, v1

    add-int/lit8 p2, p2, 0x4

    aget-byte p0, p0, p2

    add-int/lit8 p0, p0, -0x30

    mul-int/lit16 p0, p0, 0x2710

    add-int/2addr p1, p0

    return p1

    .line 11841
    :pswitch_4
    aget-byte p1, p0, p2

    add-int/lit8 p1, p1, -0x30

    mul-int/2addr p1, v3

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p0, v3

    add-int/lit8 v3, v3, -0x30

    mul-int/2addr v3, v2

    add-int/2addr p1, v3

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p0, v2

    add-int/lit8 v2, v2, -0x30

    mul-int/2addr v2, v1

    add-int/2addr p1, v2

    add-int/lit8 p2, p2, 0x3

    aget-byte p0, p0, p2

    add-int/lit8 p0, p0, -0x30

    mul-int/2addr p0, v0

    add-int/2addr p1, p0

    return p1

    .line 11837
    :pswitch_5
    aget-byte p1, p0, p2

    add-int/lit8 p1, p1, -0x30

    mul-int/2addr p1, v3

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/2addr v0, v2

    add-int/2addr p1, v0

    add-int/lit8 p2, p2, 0x2

    aget-byte p0, p0, p2

    add-int/lit8 p0, p0, -0x30

    mul-int/2addr p0, v1

    add-int/2addr p1, p0

    return p1

    .line 11835
    :pswitch_6
    aget-byte p1, p0, p2

    add-int/lit8 p1, p1, -0x30

    mul-int/2addr p1, v3

    add-int/lit8 p2, p2, 0x1

    aget-byte p0, p0, p2

    add-int/lit8 p0, p0, -0x30

    mul-int/2addr p0, v2

    add-int/2addr p1, p0

    return p1

    .line 11833
    :pswitch_7
    aget-byte p0, p0, p2

    add-int/lit8 p0, p0, -0x30

    mul-int/2addr p0, v3

    return p0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static e([CII)I
    .locals 4

    const v0, 0x186a0

    const v1, 0xf4240

    const v2, 0x989680

    const v3, 0x5f5e100

    packed-switch p1, :pswitch_data_0

    .line 11818
    aget-char p1, p0, p2

    add-int/lit8 p1, p1, -0x30

    mul-int/2addr p1, v3

    add-int/lit8 v3, p2, 0x1

    aget-char v3, p0, v3

    add-int/lit8 v3, v3, -0x30

    mul-int/2addr v3, v2

    add-int/2addr p1, v3

    add-int/lit8 v2, p2, 0x2

    aget-char v2, p0, v2

    add-int/lit8 v2, v2, -0x30

    mul-int/2addr v2, v1

    add-int/2addr p1, v2

    add-int/lit8 v1, p2, 0x3

    aget-char v1, p0, v1

    add-int/lit8 v1, v1, -0x30

    mul-int/2addr v1, v0

    add-int/2addr p1, v1

    add-int/lit8 v0, p2, 0x4

    aget-char v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x2710

    add-int/2addr p1, v0

    add-int/lit8 v0, p2, 0x5

    aget-char v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr p1, v0

    add-int/lit8 v0, p2, 0x6

    aget-char v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0x64

    add-int/2addr p1, v0

    add-int/lit8 v0, p2, 0x7

    aget-char v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr p1, v0

    add-int/lit8 p2, p2, 0x8

    aget-char p0, p0, p2

    add-int/2addr p1, p0

    add-int/lit8 p1, p1, -0x30

    return p1

    .line 11809
    :pswitch_0
    aget-char p1, p0, p2

    add-int/lit8 p1, p1, -0x30

    mul-int/2addr p1, v3

    add-int/lit8 v3, p2, 0x1

    aget-char v3, p0, v3

    add-int/lit8 v3, v3, -0x30

    mul-int/2addr v3, v2

    add-int/2addr p1, v3

    add-int/lit8 v2, p2, 0x2

    aget-char v2, p0, v2

    add-int/lit8 v2, v2, -0x30

    mul-int/2addr v2, v1

    add-int/2addr p1, v2

    add-int/lit8 v1, p2, 0x3

    aget-char v1, p0, v1

    add-int/lit8 v1, v1, -0x30

    mul-int/2addr v1, v0

    add-int/2addr p1, v1

    add-int/lit8 v0, p2, 0x4

    aget-char v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x2710

    add-int/2addr p1, v0

    add-int/lit8 v0, p2, 0x5

    aget-char v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr p1, v0

    add-int/lit8 v0, p2, 0x6

    aget-char v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0x64

    add-int/2addr p1, v0

    add-int/lit8 p2, p2, 0x7

    aget-char p0, p0, p2

    add-int/lit8 p0, p0, -0x30

    mul-int/lit8 p0, p0, 0xa

    add-int/2addr p1, p0

    return p1

    .line 11801
    :pswitch_1
    aget-char p1, p0, p2

    add-int/lit8 p1, p1, -0x30

    mul-int/2addr p1, v3

    add-int/lit8 v3, p2, 0x1

    aget-char v3, p0, v3

    add-int/lit8 v3, v3, -0x30

    mul-int/2addr v3, v2

    add-int/2addr p1, v3

    add-int/lit8 v2, p2, 0x2

    aget-char v2, p0, v2

    add-int/lit8 v2, v2, -0x30

    mul-int/2addr v2, v1

    add-int/2addr p1, v2

    add-int/lit8 v1, p2, 0x3

    aget-char v1, p0, v1

    add-int/lit8 v1, v1, -0x30

    mul-int/2addr v1, v0

    add-int/2addr p1, v1

    add-int/lit8 v0, p2, 0x4

    aget-char v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x2710

    add-int/2addr p1, v0

    add-int/lit8 v0, p2, 0x5

    aget-char v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr p1, v0

    add-int/lit8 p2, p2, 0x6

    aget-char p0, p0, p2

    add-int/lit8 p0, p0, -0x30

    mul-int/lit8 p0, p0, 0x64

    add-int/2addr p1, p0

    return p1

    .line 11794
    :pswitch_2
    aget-char p1, p0, p2

    add-int/lit8 p1, p1, -0x30

    mul-int/2addr p1, v3

    add-int/lit8 v3, p2, 0x1

    aget-char v3, p0, v3

    add-int/lit8 v3, v3, -0x30

    mul-int/2addr v3, v2

    add-int/2addr p1, v3

    add-int/lit8 v2, p2, 0x2

    aget-char v2, p0, v2

    add-int/lit8 v2, v2, -0x30

    mul-int/2addr v2, v1

    add-int/2addr p1, v2

    add-int/lit8 v1, p2, 0x3

    aget-char v1, p0, v1

    add-int/lit8 v1, v1, -0x30

    mul-int/2addr v1, v0

    add-int/2addr p1, v1

    add-int/lit8 v0, p2, 0x4

    aget-char v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x2710

    add-int/2addr p1, v0

    add-int/lit8 p2, p2, 0x5

    aget-char p0, p0, p2

    add-int/lit8 p0, p0, -0x30

    mul-int/lit16 p0, p0, 0x3e8

    add-int/2addr p1, p0

    return p1

    .line 11788
    :pswitch_3
    aget-char p1, p0, p2

    add-int/lit8 p1, p1, -0x30

    mul-int/2addr p1, v3

    add-int/lit8 v3, p2, 0x1

    aget-char v3, p0, v3

    add-int/lit8 v3, v3, -0x30

    mul-int/2addr v3, v2

    add-int/2addr p1, v3

    add-int/lit8 v2, p2, 0x2

    aget-char v2, p0, v2

    add-int/lit8 v2, v2, -0x30

    mul-int/2addr v2, v1

    add-int/2addr p1, v2

    add-int/lit8 v1, p2, 0x3

    aget-char v1, p0, v1

    add-int/lit8 v1, v1, -0x30

    mul-int/2addr v1, v0

    add-int/2addr p1, v1

    add-int/lit8 p2, p2, 0x4

    aget-char p0, p0, p2

    add-int/lit8 p0, p0, -0x30

    mul-int/lit16 p0, p0, 0x2710

    add-int/2addr p1, p0

    return p1

    .line 11783
    :pswitch_4
    aget-char p1, p0, p2

    add-int/lit8 p1, p1, -0x30

    mul-int/2addr p1, v3

    add-int/lit8 v3, p2, 0x1

    aget-char v3, p0, v3

    add-int/lit8 v3, v3, -0x30

    mul-int/2addr v3, v2

    add-int/2addr p1, v3

    add-int/lit8 v2, p2, 0x2

    aget-char v2, p0, v2

    add-int/lit8 v2, v2, -0x30

    mul-int/2addr v2, v1

    add-int/2addr p1, v2

    add-int/lit8 p2, p2, 0x3

    aget-char p0, p0, p2

    add-int/lit8 p0, p0, -0x30

    mul-int/2addr p0, v0

    add-int/2addr p1, p0

    return p1

    .line 11779
    :pswitch_5
    aget-char p1, p0, p2

    add-int/lit8 p1, p1, -0x30

    mul-int/2addr p1, v3

    add-int/lit8 v0, p2, 0x1

    aget-char v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/2addr v0, v2

    add-int/2addr p1, v0

    add-int/lit8 p2, p2, 0x2

    aget-char p0, p0, p2

    add-int/lit8 p0, p0, -0x30

    mul-int/2addr p0, v1

    add-int/2addr p1, p0

    return p1

    .line 11776
    :pswitch_6
    aget-char p1, p0, p2

    add-int/lit8 p1, p1, -0x30

    mul-int/2addr p1, v3

    add-int/lit8 p2, p2, 0x1

    aget-char p0, p0, p2

    add-int/lit8 p0, p0, -0x30

    mul-int/2addr p0, v2

    add-int/2addr p1, p0

    return p1

    .line 11774
    :pswitch_7
    aget-char p0, p0, p2

    add-int/lit8 p0, p0, -0x30

    mul-int/2addr p0, v3

    return p0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static e(Ljava/lang/String;Ljava/time/ZoneId;)J
    .locals 31

    move-object/from16 v0, p0

    if-eqz v0, :cond_31

    .line 8842
    sget v1, Labf;->d:I

    const/16 v2, 0x9

    const/4 v3, 0x6

    const/16 v4, 0x8

    const/16 v5, 0xc

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x1

    const-string v10, "illegal input "

    const/16 v11, 0xa

    const/4 v12, 0x0

    if-ne v1, v4, :cond_1

    .line 8843
    invoke-static/range {p0 .. p0}, Labf;->a(Ljava/lang/String;)[C

    move-result-object v1

    .line 8844
    array-length v13, v1

    const/16 v14, 0x13

    if-ne v13, v14, :cond_0

    .line 8848
    aget-char v13, v1, v12

    .line 8849
    aget-char v14, v1, v9

    .line 8850
    aget-char v15, v1, v7

    .line 8851
    aget-char v8, v1, v8

    .line 8852
    aget-char v16, v1, v6

    const/16 v17, 0x5

    .line 8853
    aget-char v17, v1, v17

    .line 8854
    aget-char v18, v1, v3

    const/16 v19, 0x7

    .line 8855
    aget-char v19, v1, v19

    .line 8856
    aget-char v4, v1, v4

    .line 8857
    aget-char v20, v1, v2

    .line 8858
    aget-char v21, v1, v11

    const/16 v22, 0xb

    .line 8859
    aget-char v22, v1, v22

    .line 8860
    aget-char v23, v1, v5

    const/16 v24, 0xd

    .line 8861
    aget-char v24, v1, v24

    const/16 v25, 0xe

    .line 8862
    aget-char v25, v1, v25

    const/16 v26, 0xf

    .line 8863
    aget-char v26, v1, v26

    const/16 v27, 0x10

    .line 8864
    aget-char v27, v1, v27

    const/16 v28, 0x11

    .line 8865
    aget-char v28, v1, v28

    const/16 v29, 0x12

    .line 8866
    aget-char v1, v1, v29

    move/from16 v29, v1

    move/from16 v3, v16

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v2, v19

    move/from16 v9, v21

    move/from16 v1, v22

    move/from16 v5, v24

    move/from16 v11, v25

    move/from16 v12, v28

    move/from16 v22, v4

    move/from16 v24, v20

    move/from16 v28, v26

    move/from16 v4, v27

    move/from16 v27, v13

    move/from16 v26, v23

    goto/16 :goto_0

    .line 8845
    :cond_0
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v12}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    .line 8867
    :cond_1
    sget-object v1, Labf;->B:Ljava/util/function/ToIntFunction;

    if-eqz v1, :cond_3

    sget-object v1, Labf;->C:Ljava/util/function/Function;

    if-eqz v1, :cond_3

    sget-object v1, Labf;->B:Ljava/util/function/ToIntFunction;

    invoke-interface {v1, v0}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_3

    .line 8868
    sget-object v1, Labf;->C:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 8869
    array-length v13, v1

    const/16 v14, 0x13

    if-ne v13, v14, :cond_2

    .line 8873
    aget-byte v13, v1, v12

    int-to-char v13, v13

    .line 8874
    aget-byte v14, v1, v9

    int-to-char v14, v14

    .line 8875
    aget-byte v15, v1, v7

    int-to-char v15, v15

    .line 8876
    aget-byte v8, v1, v8

    int-to-char v8, v8

    .line 8877
    aget-byte v7, v1, v6

    int-to-char v7, v7

    const/16 v17, 0x5

    .line 8878
    aget-byte v6, v1, v17

    int-to-char v6, v6

    .line 8879
    aget-byte v9, v1, v3

    int-to-char v9, v9

    const/16 v19, 0x7

    .line 8880
    aget-byte v3, v1, v19

    int-to-char v3, v3

    .line 8881
    aget-byte v4, v1, v4

    int-to-char v4, v4

    .line 8882
    aget-byte v12, v1, v2

    int-to-char v12, v12

    .line 8883
    aget-byte v2, v1, v11

    int-to-char v2, v2

    const/16 v22, 0xb

    .line 8884
    aget-byte v11, v1, v22

    int-to-char v11, v11

    move/from16 v22, v2

    .line 8885
    aget-byte v2, v1, v5

    int-to-char v2, v2

    const/16 v24, 0xd

    .line 8886
    aget-byte v5, v1, v24

    int-to-char v5, v5

    const/16 v24, 0xe

    move/from16 v26, v2

    .line 8887
    aget-byte v2, v1, v24

    int-to-char v2, v2

    const/16 v24, 0xf

    move/from16 v27, v2

    .line 8888
    aget-byte v2, v1, v24

    int-to-char v2, v2

    const/16 v24, 0x10

    move/from16 v28, v2

    .line 8889
    aget-byte v2, v1, v24

    int-to-char v2, v2

    const/16 v24, 0x11

    move/from16 v29, v2

    .line 8890
    aget-byte v2, v1, v24

    int-to-char v2, v2

    const/16 v24, 0x12

    .line 8891
    aget-byte v1, v1, v24

    int-to-char v1, v1

    move/from16 v24, v12

    move v12, v2

    move v2, v3

    move v3, v7

    move v7, v9

    move/from16 v9, v22

    move/from16 v22, v4

    move/from16 v4, v29

    move/from16 v29, v1

    move v1, v11

    move/from16 v11, v27

    move/from16 v27, v13

    goto/16 :goto_0

    .line 8870
    :cond_2
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_3
    move v3, v12

    .line 8893
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_30

    .line 8897
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/4 v1, 0x1

    .line 8898
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/4 v2, 0x2

    .line 8899
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 8900
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v2, 0x4

    .line 8901
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v2, 0x5

    .line 8902
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/4 v2, 0x6

    .line 8903
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v2, 0x7

    .line 8904
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 8905
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x9

    .line 8906
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v6, 0xa

    .line 8907
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v6, 0xb

    .line 8908
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v22

    const/16 v6, 0xc

    .line 8909
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v6, 0xd

    .line 8910
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v24

    const/16 v6, 0xe

    .line 8911
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v12, 0xf

    .line 8912
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v12, 0x10

    .line 8913
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v27

    const/16 v12, 0x11

    .line 8914
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v28

    const/16 v12, 0x12

    .line 8915
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    move/from16 v29, v12

    move/from16 v1, v22

    move/from16 v12, v28

    move/from16 v22, v4

    move/from16 v28, v26

    move/from16 v4, v27

    move/from16 v26, v11

    move/from16 v27, v13

    move v11, v6

    move/from16 v6, v17

    move/from16 v30, v7

    move v7, v5

    move/from16 v5, v24

    move/from16 v24, v30

    :goto_0
    const/16 v13, 0x2d

    if-ne v3, v13, :cond_5

    const/16 v13, 0x2d

    if-ne v2, v13, :cond_5

    const/16 v13, 0x20

    if-eq v9, v13, :cond_4

    const/16 v13, 0x54

    if-ne v9, v13, :cond_5

    :cond_4
    const/16 v13, 0x3a

    if-ne v5, v13, :cond_5

    if-ne v4, v13, :cond_5

    goto :goto_1

    :cond_5
    const/16 v13, 0x2f

    if-ne v3, v13, :cond_7

    const/16 v13, 0x2f

    if-ne v2, v13, :cond_7

    const/16 v13, 0x20

    if-eq v9, v13, :cond_6

    const/16 v13, 0x54

    if-ne v9, v13, :cond_7

    :cond_6
    const/16 v13, 0x3a

    if-ne v5, v13, :cond_7

    if-ne v4, v13, :cond_7

    :goto_1
    move v5, v1

    move v3, v7

    move v9, v8

    move v13, v12

    move/from16 v1, v22

    move/from16 v4, v24

    move/from16 v7, v26

    move/from16 v2, v27

    move/from16 v12, v28

    move v8, v6

    :goto_2
    const/16 v6, 0x30

    goto/16 :goto_4

    :cond_7
    const/16 v13, 0x2f

    if-ne v15, v13, :cond_8

    const/16 v13, 0x2f

    if-ne v6, v13, :cond_8

    const/16 v13, 0x20

    if-ne v9, v13, :cond_8

    const/16 v13, 0x3a

    if-ne v5, v13, :cond_8

    if-ne v4, v13, :cond_8

    goto :goto_3

    :cond_8
    const/16 v13, 0x2e

    if-ne v15, v13, :cond_9

    const/16 v13, 0x2e

    if-ne v6, v13, :cond_9

    const/16 v13, 0x20

    if-ne v9, v13, :cond_a

    const/16 v13, 0x3a

    if-ne v5, v13, :cond_9

    if-ne v4, v13, :cond_9

    :goto_3
    move v5, v1

    move v13, v12

    move v4, v14

    move/from16 v15, v22

    move/from16 v9, v24

    move/from16 v1, v27

    move/from16 v12, v28

    const/16 v6, 0x30

    move v14, v2

    move v2, v7

    move/from16 v7, v26

    goto/16 :goto_4

    :cond_9
    const/16 v13, 0x20

    :cond_a
    if-ne v14, v13, :cond_d

    if-ne v6, v13, :cond_d

    if-ne v9, v13, :cond_d

    const/16 v13, 0x3a

    if-ne v5, v13, :cond_c

    if-ne v4, v13, :cond_c

    .line 9011
    invoke-static {v15, v8, v3}, Laay;->a(CCC)I

    move-result v3

    if-lez v3, :cond_b

    .line 9013
    div-int/lit8 v4, v3, 0xa

    const/16 v5, 0x30

    add-int/2addr v4, v5

    int-to-char v8, v4

    const/16 v4, 0xa

    .line 9014
    rem-int/2addr v3, v4

    add-int/2addr v3, v5

    int-to-char v3, v3

    move v5, v1

    move v14, v2

    move v2, v7

    move v13, v12

    move/from16 v15, v22

    move/from16 v9, v24

    move/from16 v7, v26

    move/from16 v4, v27

    move/from16 v12, v28

    const/16 v1, 0x30

    goto :goto_2

    .line 9016
    :cond_b
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_c
    const/16 v13, 0x20

    :cond_d
    if-ne v15, v13, :cond_10

    if-ne v7, v13, :cond_10

    if-ne v1, v13, :cond_10

    const/16 v13, 0x3a

    if-ne v5, v13, :cond_f

    if-ne v4, v13, :cond_f

    .line 9038
    invoke-static {v8, v3, v6}, Laay;->a(CCC)I

    move-result v1

    if-lez v1, :cond_e

    .line 9040
    div-int/lit8 v3, v1, 0xa

    const/16 v4, 0x30

    add-int/2addr v3, v4

    int-to-char v8, v3

    const/16 v3, 0xa

    .line 9041
    rem-int/2addr v1, v3

    add-int/2addr v1, v4

    int-to-char v3, v1

    move v13, v12

    move v4, v14

    move/from16 v14, v22

    move/from16 v15, v24

    move/from16 v7, v26

    move/from16 v1, v27

    move/from16 v12, v28

    const/16 v5, 0x30

    goto/16 :goto_2

    .line 9043
    :cond_e
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_f
    const/16 v13, 0x20

    :cond_10
    if-ne v15, v13, :cond_13

    if-ne v7, v13, :cond_13

    if-ne v1, v13, :cond_13

    const/16 v13, 0x3a

    if-ne v11, v13, :cond_12

    if-ne v4, v13, :cond_12

    .line 9065
    invoke-static {v8, v3, v6}, Laay;->a(CCC)I

    move-result v1

    if-lez v1, :cond_11

    .line 9067
    div-int/lit8 v3, v1, 0xa

    const/16 v4, 0x30

    add-int/2addr v3, v4

    int-to-char v8, v3

    const/16 v3, 0xa

    .line 9068
    rem-int/2addr v1, v3

    add-int/2addr v1, v4

    int-to-char v3, v1

    move v7, v5

    move v13, v12

    move v4, v14

    move/from16 v14, v22

    move/from16 v15, v24

    move/from16 v5, v26

    move/from16 v1, v27

    move/from16 v12, v28

    const/16 v6, 0x30

    const/16 v11, 0x30

    goto :goto_4

    .line 9070
    :cond_11
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_12
    const/16 v13, 0x20

    :cond_13
    if-ne v15, v13, :cond_2f

    if-ne v7, v13, :cond_2f

    if-ne v1, v13, :cond_2f

    const/16 v1, 0x3a

    if-ne v11, v1, :cond_2f

    if-ne v12, v1, :cond_2f

    .line 9092
    invoke-static {v8, v3, v6}, Laay;->a(CCC)I

    move-result v1

    if-lez v1, :cond_2e

    .line 9094
    div-int/lit8 v3, v1, 0xa

    const/16 v6, 0x30

    add-int/2addr v3, v6

    int-to-char v8, v3

    const/16 v3, 0xa

    .line 9095
    rem-int/2addr v1, v3

    add-int/2addr v1, v6

    int-to-char v3, v1

    move v12, v4

    move v7, v5

    move v13, v6

    move v4, v14

    move/from16 v14, v22

    move/from16 v15, v24

    move/from16 v5, v26

    move/from16 v1, v27

    move/from16 v11, v28

    :goto_4
    if-lt v2, v6, :cond_2d

    const/16 v0, 0x39

    if-gt v2, v0, :cond_2c

    if-lt v14, v6, :cond_2c

    if-gt v14, v0, :cond_2c

    if-lt v15, v6, :cond_2c

    if-gt v15, v0, :cond_2c

    if-lt v9, v6, :cond_2c

    if-gt v9, v0, :cond_2c

    sub-int/2addr v2, v6

    mul-int/lit16 v2, v2, 0x3e8

    sub-int/2addr v14, v6

    mul-int/lit8 v14, v14, 0x64

    add-int/2addr v2, v14

    sub-int/2addr v15, v6

    const/16 v14, 0xa

    mul-int/2addr v15, v14

    add-int/2addr v2, v15

    sub-int/2addr v9, v6

    add-int/2addr v2, v9

    if-lt v8, v6, :cond_2b

    if-gt v8, v0, :cond_2b

    if-lt v3, v6, :cond_2b

    if-gt v3, v0, :cond_2b

    sub-int/2addr v8, v6

    mul-int/2addr v8, v14

    sub-int/2addr v3, v6

    add-int v9, v8, v3

    if-nez v9, :cond_14

    if-nez v2, :cond_2a

    :cond_14
    const/16 v3, 0xc

    if-gt v9, v3, :cond_2a

    if-lt v1, v6, :cond_29

    if-gt v1, v0, :cond_29

    if-lt v4, v6, :cond_29

    if-gt v4, v0, :cond_29

    sub-int/2addr v1, v6

    const/16 v3, 0xa

    mul-int/2addr v1, v3

    sub-int/2addr v4, v6

    add-int/2addr v1, v4

    const/16 v3, 0x1f

    const/4 v4, 0x2

    if-eq v9, v4, :cond_16

    const/4 v4, 0x4

    if-eq v9, v4, :cond_15

    const/4 v4, 0x6

    if-eq v9, v4, :cond_15

    const/16 v4, 0x9

    if-eq v9, v4, :cond_15

    const/16 v4, 0xb

    if-eq v9, v4, :cond_15

    goto :goto_6

    :cond_15
    const/16 v3, 0x1e

    goto :goto_6

    :cond_16
    and-int/lit8 v3, v2, 0x3

    if-nez v3, :cond_18

    .line 9150
    rem-int/lit8 v3, v2, 0x64

    if-nez v3, :cond_17

    rem-int/lit16 v3, v2, 0x190

    if-nez v3, :cond_18

    :cond_17
    const/4 v3, 0x1

    goto :goto_5

    :cond_18
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_19

    const/16 v3, 0x1d

    goto :goto_6

    :cond_19
    const/16 v3, 0x1c

    :goto_6
    if-nez v1, :cond_1a

    if-nez v2, :cond_28

    :cond_1a
    if-gt v1, v3, :cond_28

    const/16 v3, 0x30

    if-lt v5, v3, :cond_27

    if-gt v5, v0, :cond_27

    if-lt v7, v3, :cond_27

    if-gt v7, v0, :cond_27

    sub-int/2addr v5, v3

    const/16 v4, 0xa

    mul-int/2addr v5, v4

    sub-int/2addr v7, v3

    add-int/2addr v5, v7

    if-lt v11, v3, :cond_26

    if-gt v11, v0, :cond_26

    if-lt v12, v3, :cond_26

    if-gt v12, v0, :cond_26

    sub-int/2addr v11, v3

    mul-int/2addr v11, v4

    sub-int/2addr v12, v3

    add-int/2addr v11, v12

    if-lt v13, v3, :cond_25

    if-gt v13, v0, :cond_25

    move/from16 v12, v29

    if-lt v12, v3, :cond_25

    if-gt v12, v0, :cond_25

    sub-int/2addr v13, v3

    mul-int/2addr v13, v4

    add-int/lit8 v29, v12, -0x30

    add-int v13, v13, v29

    if-nez v2, :cond_1b

    if-nez v9, :cond_1b

    if-nez v1, :cond_1b

    const/16 v2, 0x7b2

    const/4 v1, 0x1

    const/4 v9, 0x1

    :cond_1b
    mul-int/lit16 v0, v2, 0x16d

    add-int/lit8 v3, v2, 0x3

    const/4 v4, 0x4

    .line 9206
    div-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x63

    div-int/lit8 v4, v4, 0x64

    sub-int/2addr v3, v4

    add-int/lit16 v4, v2, 0x18f

    div-int/lit16 v4, v4, 0x190

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    mul-int/lit16 v3, v9, 0x16f

    add-int/lit16 v3, v3, -0x16a

    const/16 v4, 0xc

    div-int/2addr v3, v4

    add-int/2addr v0, v3

    add-int/lit8 v3, v1, -0x1

    add-int/2addr v0, v3

    int-to-long v3, v0

    const/4 v0, 0x2

    if-le v9, v0, :cond_1e

    const-wide/16 v6, 0x1

    sub-long/2addr v3, v6

    and-int/lit8 v0, v2, 0x3

    if-nez v0, :cond_1d

    .line 9213
    rem-int/lit8 v0, v2, 0x64

    if-nez v0, :cond_1c

    rem-int/lit16 v0, v2, 0x190

    if-nez v0, :cond_1d

    :cond_1c
    const/4 v0, 0x1

    goto :goto_7

    :cond_1d
    const/4 v0, 0x0

    :goto_7
    if-nez v0, :cond_1e

    const-wide/16 v6, 0x1

    sub-long/2addr v3, v6

    :cond_1e
    const-wide/32 v6, 0xafaa8

    sub-long/2addr v3, v6

    const-wide/32 v6, 0x15180

    mul-long/2addr v3, v6

    mul-int/lit16 v0, v5, 0xe10

    int-to-long v6, v0

    add-long/2addr v3, v6

    mul-int/lit8 v0, v11, 0x3c

    int-to-long v6, v0

    add-long/2addr v3, v6

    int-to-long v6, v13

    add-long/2addr v3, v6

    if-nez p1, :cond_1f

    .line 9229
    sget-object v0, Laay;->a:Ljava/time/ZoneId;

    goto :goto_8

    :cond_1f
    move-object/from16 v0, p1

    .line 9231
    :goto_8
    sget-object v6, Laay;->b:Ljava/time/ZoneId;

    if-eq v0, v6, :cond_21

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v6

    sget-object v7, Laay;->c:Ljava/time/zone/ZoneRules;

    if-ne v6, v7, :cond_20

    goto :goto_9

    :cond_20
    const/16 v17, 0x0

    goto :goto_a

    :cond_21
    :goto_9
    const/16 v17, 0x1

    :goto_a
    const-wide/32 v6, 0x28d2bea0

    if-eqz v17, :cond_22

    cmp-long v6, v3, v6

    if-ltz v6, :cond_22

    const/16 v12, 0x7080

    goto :goto_c

    .line 9235
    :cond_22
    sget-object v6, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    if-eq v0, v6, :cond_24

    invoke-virtual {v0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTC"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    goto :goto_b

    .line 9238
    :cond_23
    invoke-static {v2, v9, v1}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v1

    const/4 v2, 0x0

    .line 9239
    invoke-static {v5, v11, v13, v2}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v2

    .line 9240
    invoke-static {v1, v2}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 9241
    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/LocalDateTime;)Ljava/time/ZoneOffset;

    move-result-object v0

    .line 9242
    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v12

    goto :goto_c

    :cond_24
    :goto_b
    const/4 v12, 0x0

    :goto_c
    int-to-long v0, v12

    sub-long/2addr v3, v0

    const-wide/16 v0, 0x3e8

    mul-long/2addr v3, v0

    return-wide v3

    .line 9192
    :cond_25
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_26
    move-object/from16 v2, p0

    .line 9183
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_27
    move-object/from16 v2, p0

    .line 9174
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_28
    const/4 v3, 0x0

    move-object/from16 v2, p0

    .line 9162
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_29
    move-object/from16 v2, p0

    .line 9165
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_2a
    const/4 v3, 0x0

    move-object/from16 v2, p0

    .line 9135
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_2b
    move-object/from16 v2, p0

    .line 9138
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_2c
    move-object/from16 v2, p0

    goto :goto_d

    :cond_2d
    move-object v2, v0

    .line 9125
    :goto_d
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_2e
    move-object v2, v0

    const/4 v3, 0x0

    .line 9097
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_2f
    move-object v2, v0

    .line 9114
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_30
    move-object v2, v0

    .line 8894
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    .line 8838
    :cond_31
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static e([BI)Ljava/time/LocalTime;
    .locals 12

    add-int/lit8 v0, p1, 0xc

    .line 742
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 746
    :cond_0
    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 747
    aget-byte v1, p0, v1

    add-int/lit8 v3, p1, 0x2

    .line 748
    aget-byte v3, p0, v3

    add-int/lit8 v4, p1, 0x3

    .line 749
    aget-byte v4, p0, v4

    add-int/lit8 v5, p1, 0x4

    .line 750
    aget-byte v5, p0, v5

    add-int/lit8 v6, p1, 0x5

    .line 751
    aget-byte v6, p0, v6

    add-int/lit8 v7, p1, 0x6

    .line 752
    aget-byte v7, p0, v7

    add-int/lit8 v8, p1, 0x7

    .line 753
    aget-byte v8, p0, v8

    add-int/lit8 v9, p1, 0x8

    .line 754
    aget-byte v9, p0, v9

    add-int/lit8 v10, p1, 0x9

    .line 755
    aget-byte v10, p0, v10

    add-int/lit8 v11, p1, 0xa

    .line 756
    aget-byte v11, p0, v11

    add-int/lit8 p1, p1, 0xb

    .line 757
    aget-byte p0, p0, p1

    const/16 p1, 0x3a

    if-ne v3, p1, :cond_1

    if-ne v6, p1, :cond_1

    const/16 p1, 0x2e

    if-ne v9, p1, :cond_1

    const/16 p1, 0x30

    if-lt v0, p1, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    if-lt v1, p1, :cond_1

    if-gt v1, v3, :cond_1

    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    if-lt v4, p1, :cond_1

    if-gt v4, v3, :cond_1

    if-lt v5, p1, :cond_1

    if-gt v5, v3, :cond_1

    sub-int/2addr v4, p1

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr v5, p1

    add-int/2addr v4, v5

    if-lt v7, p1, :cond_1

    if-gt v7, v3, :cond_1

    if-lt v8, p1, :cond_1

    if-gt v8, v3, :cond_1

    sub-int/2addr v7, p1

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr v8, p1

    add-int/2addr v7, v8

    if-lt v10, p1, :cond_1

    if-gt v10, v3, :cond_1

    if-lt v11, p1, :cond_1

    if-gt v11, v3, :cond_1

    if-lt p0, p1, :cond_1

    if-gt p0, v3, :cond_1

    sub-int/2addr v10, p1

    mul-int/lit8 v10, v10, 0x64

    sub-int/2addr v11, p1

    mul-int/lit8 v11, v11, 0xa

    add-int/2addr v10, v11

    sub-int/2addr p0, p1

    add-int/2addr v10, p0

    const p0, 0xf4240

    mul-int/2addr v10, p0

    .line 812
    invoke-static {v0, v4, v7, v10}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2
.end method

.method public static e([CI)Ljava/time/LocalTime;
    .locals 12

    add-int/lit8 v0, p1, 0xc

    .line 816
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 820
    :cond_0
    aget-char v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 821
    aget-char v1, p0, v1

    add-int/lit8 v3, p1, 0x2

    .line 822
    aget-char v3, p0, v3

    add-int/lit8 v4, p1, 0x3

    .line 823
    aget-char v4, p0, v4

    add-int/lit8 v5, p1, 0x4

    .line 824
    aget-char v5, p0, v5

    add-int/lit8 v6, p1, 0x5

    .line 825
    aget-char v6, p0, v6

    add-int/lit8 v7, p1, 0x6

    .line 826
    aget-char v7, p0, v7

    add-int/lit8 v8, p1, 0x7

    .line 827
    aget-char v8, p0, v8

    add-int/lit8 v9, p1, 0x8

    .line 828
    aget-char v9, p0, v9

    add-int/lit8 v10, p1, 0x9

    .line 829
    aget-char v10, p0, v10

    add-int/lit8 v11, p1, 0xa

    .line 830
    aget-char v11, p0, v11

    add-int/lit8 p1, p1, 0xb

    .line 831
    aget-char p0, p0, p1

    const/16 p1, 0x3a

    if-ne v3, p1, :cond_1

    if-ne v6, p1, :cond_1

    const/16 p1, 0x2e

    if-ne v9, p1, :cond_1

    const/16 p1, 0x30

    if-lt v0, p1, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    if-lt v1, p1, :cond_1

    if-gt v1, v3, :cond_1

    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    if-lt v4, p1, :cond_1

    if-gt v4, v3, :cond_1

    if-lt v5, p1, :cond_1

    if-gt v5, v3, :cond_1

    sub-int/2addr v4, p1

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr v5, p1

    add-int/2addr v4, v5

    if-lt v7, p1, :cond_1

    if-gt v7, v3, :cond_1

    if-lt v8, p1, :cond_1

    if-gt v8, v3, :cond_1

    sub-int/2addr v7, p1

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr v8, p1

    add-int/2addr v7, v8

    if-lt v10, p1, :cond_1

    if-gt v10, v3, :cond_1

    if-lt v11, p1, :cond_1

    if-gt v11, v3, :cond_1

    if-lt p0, p1, :cond_1

    if-gt p0, v3, :cond_1

    sub-int/2addr v10, p1

    mul-int/lit8 v10, v10, 0x64

    sub-int/2addr v11, p1

    mul-int/lit8 v11, v11, 0xa

    add-int/2addr v10, v11

    sub-int/2addr p0, p1

    add-int/2addr v10, p0

    const p0, 0xf4240

    mul-int/2addr v10, p0

    .line 886
    invoke-static {v0, v4, v7, v10}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 15

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    .line 11573
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 11577
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x9

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-ne v1, v3, :cond_9

    const/4 v1, 0x4

    .line 11578
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_9

    const/4 v5, 0x7

    .line 11579
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_9

    .line 11582
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 11583
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v7, 0x2

    .line 11584
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v9, 0x3

    .line 11585
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/4 v11, 0x5

    .line 11586
    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/4 v12, 0x6

    .line 11587
    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x8

    .line 11588
    invoke-virtual {p0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 11589
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    add-int/lit8 v5, v5, -0x30

    mul-int/lit16 v5, v5, 0x3e8

    add-int/lit8 v6, v6, -0x30

    mul-int/lit8 v6, v6, 0x64

    add-int/2addr v5, v6

    add-int/lit8 v8, v8, -0x30

    mul-int/2addr v8, v3

    add-int/2addr v5, v8

    add-int/lit8 v10, v10, -0x30

    add-int/2addr v5, v10

    add-int/lit8 v11, v11, -0x30

    mul-int/2addr v11, v3

    add-int/lit8 v13, v13, -0x30

    add-int/2addr v11, v13

    add-int/lit8 v14, v14, -0x30

    mul-int/2addr v14, v3

    add-int/lit8 p0, p0, -0x30

    add-int/2addr v14, p0

    const/16 p0, 0xc

    if-le v11, p0, :cond_1

    return v0

    :cond_1
    const/16 p0, 0x1c

    if-le v14, p0, :cond_8

    const/16 v3, 0x1f

    if-eq v11, v7, :cond_3

    if-eq v11, v1, :cond_2

    if-eq v11, v12, :cond_2

    if-eq v11, v2, :cond_2

    const/16 p0, 0xb

    if-eq v11, p0, :cond_2

    goto :goto_2

    :cond_2
    const/16 v3, 0x1e

    goto :goto_2

    :cond_3
    and-int/lit8 v1, v5, 0xf

    if-nez v1, :cond_4

    and-int/lit8 v1, v5, 0x3

    if-nez v1, :cond_5

    :goto_0
    move v1, v4

    goto :goto_1

    :cond_4
    and-int/lit8 v1, v5, 0x3

    if-nez v1, :cond_5

    .line 11603
    rem-int/lit8 v5, v5, 0x64

    if-eqz v5, :cond_5

    goto :goto_0

    :cond_5
    move v1, v0

    :goto_1
    if-eqz v1, :cond_6

    const/16 p0, 0x1d

    :cond_6
    move v3, p0

    :goto_2
    if-gt v14, v3, :cond_7

    move v0, v4

    :cond_7
    return v0

    :cond_8
    return v4

    .line 11619
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x28

    if-le v1, v2, :cond_a

    goto :goto_3

    .line 11624
    :cond_a
    :try_start_0
    invoke-static {p0}, Laay;->c(Ljava/lang/String;)Ljava/time/LocalDate;

    move-result-object p0
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_b

    move v0, v4

    :catch_0
    :cond_b
    :goto_3
    return v0
.end method

.method public static f([BI)Ljava/time/LocalTime;
    .locals 19

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x12

    .line 890
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 894
    :cond_0
    aget-byte v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    .line 895
    aget-byte v2, v0, v2

    add-int/lit8 v4, p1, 0x2

    .line 896
    aget-byte v4, v0, v4

    add-int/lit8 v5, p1, 0x3

    .line 897
    aget-byte v5, v0, v5

    add-int/lit8 v6, p1, 0x4

    .line 898
    aget-byte v6, v0, v6

    add-int/lit8 v7, p1, 0x5

    .line 899
    aget-byte v7, v0, v7

    add-int/lit8 v8, p1, 0x6

    .line 900
    aget-byte v8, v0, v8

    add-int/lit8 v9, p1, 0x7

    .line 901
    aget-byte v9, v0, v9

    add-int/lit8 v10, p1, 0x8

    .line 902
    aget-byte v10, v0, v10

    add-int/lit8 v11, p1, 0x9

    .line 903
    aget-byte v11, v0, v11

    add-int/lit8 v12, p1, 0xa

    .line 904
    aget-byte v12, v0, v12

    add-int/lit8 v13, p1, 0xb

    .line 905
    aget-byte v13, v0, v13

    add-int/lit8 v14, p1, 0xc

    .line 906
    aget-byte v14, v0, v14

    add-int/lit8 v15, p1, 0xd

    .line 907
    aget-byte v15, v0, v15

    add-int/lit8 v16, p1, 0xe

    .line 908
    aget-byte v3, v0, v16

    add-int/lit8 v16, p1, 0xf

    move/from16 v17, v3

    .line 909
    aget-byte v3, v0, v16

    add-int/lit8 v16, p1, 0x10

    move/from16 v18, v3

    .line 910
    aget-byte v3, v0, v16

    add-int/lit8 v16, p1, 0x11

    .line 911
    aget-byte v0, v0, v16

    move/from16 p0, v0

    const/16 v0, 0x3a

    if-ne v4, v0, :cond_5

    if-ne v7, v0, :cond_5

    const/16 v0, 0x2e

    if-ne v10, v0, :cond_5

    const/16 v0, 0x30

    if-lt v1, v0, :cond_4

    const/16 v4, 0x39

    if-gt v1, v4, :cond_4

    if-lt v2, v0, :cond_4

    if-gt v2, v4, :cond_4

    sub-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr v2, v0

    add-int/2addr v1, v2

    if-lt v5, v0, :cond_3

    if-gt v5, v4, :cond_3

    if-lt v6, v0, :cond_3

    if-gt v6, v4, :cond_3

    sub-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0xa

    sub-int/2addr v6, v0

    add-int/2addr v5, v6

    if-lt v8, v0, :cond_2

    if-gt v8, v4, :cond_2

    if-lt v9, v0, :cond_2

    if-gt v9, v4, :cond_2

    sub-int/2addr v8, v0

    mul-int/lit8 v8, v8, 0xa

    sub-int/2addr v9, v0

    add-int/2addr v8, v9

    if-lt v11, v0, :cond_1

    if-gt v11, v4, :cond_1

    if-lt v12, v0, :cond_1

    if-gt v12, v4, :cond_1

    if-lt v13, v0, :cond_1

    if-gt v13, v4, :cond_1

    if-lt v14, v0, :cond_1

    if-gt v14, v4, :cond_1

    if-lt v15, v0, :cond_1

    if-gt v15, v4, :cond_1

    move/from16 v2, v17

    if-lt v2, v0, :cond_1

    if-gt v2, v4, :cond_1

    move/from16 v6, v18

    if-lt v6, v0, :cond_1

    if-gt v6, v4, :cond_1

    if-lt v3, v0, :cond_1

    if-gt v3, v4, :cond_1

    move/from16 v7, p0

    if-lt v7, v0, :cond_1

    if-gt v7, v4, :cond_1

    sub-int/2addr v11, v0

    const v4, 0x5f5e100

    mul-int/2addr v11, v4

    sub-int/2addr v12, v0

    const v4, 0x989680

    mul-int/2addr v12, v4

    add-int/2addr v11, v12

    sub-int/2addr v13, v0

    const v4, 0xf4240

    mul-int/2addr v13, v4

    add-int/2addr v11, v13

    sub-int/2addr v14, v0

    const v4, 0x186a0

    mul-int/2addr v14, v4

    add-int/2addr v11, v14

    sub-int/2addr v15, v0

    mul-int/lit16 v15, v15, 0x2710

    add-int/2addr v11, v15

    sub-int/2addr v2, v0

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v11, v2

    add-int/lit8 v2, v6, -0x30

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v11, v2

    sub-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v11, v3

    add-int/lit8 v0, v7, -0x30

    add-int/2addr v11, v0

    .line 985
    invoke-static {v1, v5, v8, v11}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public static f([CI)Ljava/time/LocalTime;
    .locals 19

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x12

    .line 989
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 993
    :cond_0
    aget-char v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    .line 994
    aget-char v2, v0, v2

    add-int/lit8 v4, p1, 0x2

    .line 995
    aget-char v4, v0, v4

    add-int/lit8 v5, p1, 0x3

    .line 996
    aget-char v5, v0, v5

    add-int/lit8 v6, p1, 0x4

    .line 997
    aget-char v6, v0, v6

    add-int/lit8 v7, p1, 0x5

    .line 998
    aget-char v7, v0, v7

    add-int/lit8 v8, p1, 0x6

    .line 999
    aget-char v8, v0, v8

    add-int/lit8 v9, p1, 0x7

    .line 1000
    aget-char v9, v0, v9

    add-int/lit8 v10, p1, 0x8

    .line 1001
    aget-char v10, v0, v10

    add-int/lit8 v11, p1, 0x9

    .line 1002
    aget-char v11, v0, v11

    add-int/lit8 v12, p1, 0xa

    .line 1003
    aget-char v12, v0, v12

    add-int/lit8 v13, p1, 0xb

    .line 1004
    aget-char v13, v0, v13

    add-int/lit8 v14, p1, 0xc

    .line 1005
    aget-char v14, v0, v14

    add-int/lit8 v15, p1, 0xd

    .line 1006
    aget-char v15, v0, v15

    add-int/lit8 v16, p1, 0xe

    .line 1007
    aget-char v3, v0, v16

    add-int/lit8 v16, p1, 0xf

    move/from16 v17, v3

    .line 1008
    aget-char v3, v0, v16

    add-int/lit8 v16, p1, 0x10

    move/from16 v18, v3

    .line 1009
    aget-char v3, v0, v16

    add-int/lit8 v16, p1, 0x11

    .line 1010
    aget-char v0, v0, v16

    move/from16 p0, v0

    const/16 v0, 0x3a

    if-ne v4, v0, :cond_5

    if-ne v7, v0, :cond_5

    const/16 v0, 0x2e

    if-ne v10, v0, :cond_5

    const/16 v0, 0x30

    if-lt v1, v0, :cond_4

    const/16 v4, 0x39

    if-gt v1, v4, :cond_4

    if-lt v2, v0, :cond_4

    if-gt v2, v4, :cond_4

    sub-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr v2, v0

    add-int/2addr v1, v2

    if-lt v5, v0, :cond_3

    if-gt v5, v4, :cond_3

    if-lt v6, v0, :cond_3

    if-gt v6, v4, :cond_3

    sub-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0xa

    sub-int/2addr v6, v0

    add-int/2addr v5, v6

    if-lt v8, v0, :cond_2

    if-gt v8, v4, :cond_2

    if-lt v9, v0, :cond_2

    if-gt v9, v4, :cond_2

    sub-int/2addr v8, v0

    mul-int/lit8 v8, v8, 0xa

    sub-int/2addr v9, v0

    add-int/2addr v8, v9

    if-lt v11, v0, :cond_1

    if-gt v11, v4, :cond_1

    if-lt v12, v0, :cond_1

    if-gt v12, v4, :cond_1

    if-lt v13, v0, :cond_1

    if-gt v13, v4, :cond_1

    if-lt v14, v0, :cond_1

    if-gt v14, v4, :cond_1

    if-lt v15, v0, :cond_1

    if-gt v15, v4, :cond_1

    move/from16 v2, v17

    if-lt v2, v0, :cond_1

    if-gt v2, v4, :cond_1

    move/from16 v6, v18

    if-lt v6, v0, :cond_1

    if-gt v6, v4, :cond_1

    if-lt v3, v0, :cond_1

    if-gt v3, v4, :cond_1

    move/from16 v7, p0

    if-lt v7, v0, :cond_1

    if-gt v7, v4, :cond_1

    sub-int/2addr v11, v0

    const v4, 0x5f5e100

    mul-int/2addr v11, v4

    sub-int/2addr v12, v0

    const v4, 0x989680

    mul-int/2addr v12, v4

    add-int/2addr v11, v12

    sub-int/2addr v13, v0

    const v4, 0xf4240

    mul-int/2addr v13, v4

    add-int/2addr v11, v13

    sub-int/2addr v14, v0

    const v4, 0x186a0

    mul-int/2addr v14, v4

    add-int/2addr v11, v14

    sub-int/2addr v15, v0

    mul-int/lit16 v15, v15, 0x2710

    add-int/2addr v11, v15

    sub-int/2addr v2, v0

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v11, v2

    add-int/lit8 v2, v6, -0x30

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v11, v2

    sub-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v11, v3

    add-int/lit8 v0, v7, -0x30

    add-int/2addr v11, v0

    .line 1084
    invoke-static {v1, v5, v8, v11}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 11631
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_6

    .line 11636
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x13

    const/4 v4, 0x1

    if-ne v2, v3, :cond_e

    const/4 v2, 0x4

    .line 11637
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x2d

    if-ne v3, v5, :cond_e

    const/4 v3, 0x7

    .line 11638
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_e

    const/16 v3, 0xa

    .line 11639
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-eq v5, v6, :cond_1

    const/16 v6, 0x54

    if-ne v5, v6, :cond_e

    :cond_1
    const/16 v5, 0xd

    .line 11640
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3a

    if-ne v5, v6, :cond_e

    const/16 v5, 0x10

    .line 11641
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_e

    .line 11644
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 11645
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v7, 0x2

    .line 11646
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v9, 0x3

    .line 11647
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/4 v11, 0x5

    .line 11648
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/4 v12, 0x6

    .line 11649
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x8

    .line 11650
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x9

    .line 11651
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v9, 0xb

    .line 11652
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v9, 0xc

    .line 11653
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v2, 0xe

    .line 11654
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v7, 0xf

    .line 11655
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v1, 0x11

    .line 11656
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v9, 0x12

    .line 11657
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v9, 0x30

    if-lt v5, v9, :cond_d

    const/16 v3, 0x39

    if-gt v5, v3, :cond_d

    if-lt v6, v9, :cond_d

    if-gt v6, v3, :cond_d

    if-lt v8, v9, :cond_d

    if-gt v8, v3, :cond_d

    if-lt v10, v9, :cond_d

    if-gt v10, v3, :cond_d

    if-lt v11, v9, :cond_d

    if-gt v11, v3, :cond_d

    if-lt v13, v9, :cond_d

    if-gt v13, v3, :cond_d

    if-lt v14, v9, :cond_d

    if-gt v14, v3, :cond_d

    if-lt v4, v9, :cond_d

    if-gt v4, v3, :cond_d

    if-lt v15, v9, :cond_d

    if-gt v15, v3, :cond_d

    if-lt v12, v9, :cond_d

    if-gt v12, v3, :cond_d

    if-lt v2, v9, :cond_d

    if-gt v2, v3, :cond_d

    if-lt v7, v9, :cond_d

    if-gt v7, v3, :cond_d

    if-lt v1, v9, :cond_d

    if-gt v1, v3, :cond_d

    if-lt v0, v9, :cond_d

    if-le v0, v3, :cond_2

    goto/16 :goto_4

    :cond_2
    sub-int/2addr v5, v9

    mul-int/lit16 v5, v5, 0x3e8

    sub-int/2addr v6, v9

    mul-int/lit8 v6, v6, 0x64

    add-int/2addr v5, v6

    sub-int/2addr v8, v9

    const/16 v3, 0xa

    mul-int/2addr v8, v3

    add-int/2addr v5, v8

    sub-int/2addr v10, v9

    add-int/2addr v5, v10

    sub-int/2addr v11, v9

    mul-int/2addr v11, v3

    sub-int/2addr v13, v9

    add-int/2addr v11, v13

    sub-int/2addr v14, v9

    mul-int/2addr v14, v3

    sub-int/2addr v4, v9

    add-int/2addr v14, v4

    sub-int/2addr v15, v9

    mul-int/2addr v15, v3

    sub-int/2addr v12, v9

    add-int/2addr v15, v12

    sub-int/2addr v2, v9

    mul-int/2addr v2, v3

    sub-int/2addr v7, v9

    add-int/2addr v2, v7

    sub-int/2addr v1, v9

    mul-int/2addr v1, v3

    sub-int/2addr v0, v9

    add-int/2addr v1, v0

    const/16 v0, 0xc

    if-le v11, v0, :cond_3

    const/4 v0, 0x0

    return v0

    :cond_3
    const/16 v0, 0x1c

    if-le v14, v0, :cond_9

    const/16 v0, 0x1f

    const/4 v3, 0x2

    if-eq v11, v3, :cond_5

    const/4 v3, 0x4

    if-eq v11, v3, :cond_4

    const/4 v3, 0x6

    if-eq v11, v3, :cond_4

    const/16 v3, 0x9

    if-eq v11, v3, :cond_4

    const/16 v3, 0xb

    if-eq v11, v3, :cond_4

    goto :goto_2

    :cond_4
    const/16 v0, 0x1e

    goto :goto_2

    :cond_5
    and-int/lit8 v0, v5, 0xf

    if-nez v0, :cond_6

    const/4 v0, 0x3

    and-int/2addr v0, v5

    if-nez v0, :cond_7

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    and-int/lit8 v0, v5, 0x3

    if-nez v0, :cond_7

    .line 11692
    rem-int/lit8 v5, v5, 0x64

    if-eqz v5, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_8

    const/16 v0, 0x1d

    goto :goto_2

    :cond_8
    const/16 v0, 0x1c

    :goto_2
    if-le v14, v0, :cond_9

    const/4 v0, 0x0

    return v0

    :cond_9
    const/4 v0, 0x0

    const/16 v3, 0x18

    if-le v15, v3, :cond_a

    return v0

    :cond_a
    const/16 v3, 0x3c

    if-le v2, v3, :cond_b

    return v0

    :cond_b
    const/16 v0, 0x3d

    if-gt v1, v0, :cond_c

    const/16 v16, 0x1

    goto :goto_3

    :cond_c
    const/16 v16, 0x0

    :goto_3
    return v16

    :cond_d
    :goto_4
    const/4 v0, 0x0

    return v0

    .line 11719
    :cond_e
    :try_start_0
    sget-object v1, Laay;->a:Ljava/time/ZoneId;

    invoke-static {v0, v1}, Laay;->a(Ljava/lang/String;Ljava/time/ZoneId;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    const/16 v16, 0x1

    goto :goto_5

    :cond_f
    const/16 v16, 0x0

    :goto_5
    return v16

    :catch_0
    const/4 v0, 0x0

    return v0

    :cond_10
    :goto_6
    move v0, v1

    return v0
.end method

.method public static g([BI)Ljava/time/LocalDate;
    .locals 10

    add-int/lit8 v0, p1, 0x8

    .line 1459
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 1463
    :cond_0
    aget-byte v0, p0, p1

    int-to-char v0, v0

    add-int/lit8 v1, p1, 0x1

    .line 1464
    aget-byte v1, p0, v1

    int-to-char v1, v1

    add-int/lit8 v3, p1, 0x2

    .line 1465
    aget-byte v3, p0, v3

    int-to-char v3, v3

    add-int/lit8 v4, p1, 0x3

    .line 1466
    aget-byte v4, p0, v4

    int-to-char v4, v4

    add-int/lit8 v5, p1, 0x4

    .line 1467
    aget-byte v5, p0, v5

    int-to-char v5, v5

    add-int/lit8 v6, p1, 0x5

    .line 1468
    aget-byte v6, p0, v6

    int-to-char v6, v6

    add-int/lit8 v7, p1, 0x6

    .line 1469
    aget-byte v7, p0, v7

    int-to-char v7, v7

    add-int/lit8 p1, p1, 0x7

    .line 1470
    aget-byte p0, p0, p1

    int-to-char p0, p0

    const/16 p1, 0x2d

    const/16 v8, 0x30

    if-ne v5, p1, :cond_1

    if-ne v7, p1, :cond_1

    move p1, p0

    move p0, v4

    move v5, v8

    move v7, v5

    goto :goto_0

    :cond_1
    const/16 v9, 0x2f

    if-ne v1, v9, :cond_2

    if-ne v4, v9, :cond_2

    move p1, v3

    move v1, v6

    move v3, v7

    move v7, v8

    move v6, v0

    move v0, v5

    move v5, v7

    goto :goto_0

    :cond_2
    if-ne v1, p1, :cond_4

    if-ne v6, p1, :cond_4

    .line 1500
    invoke-static {v3, v4, v5}, Laay;->a(CCC)I

    move-result p1

    if-lez p1, :cond_3

    .line 1502
    div-int/lit8 v1, p1, 0xa

    add-int/2addr v1, v8

    int-to-char v5, v1

    .line 1503
    rem-int/lit8 p1, p1, 0xa

    add-int/2addr p1, v8

    int-to-char p1, p1

    const/16 v1, 0x32

    move v6, p1

    move p1, v0

    move v0, v1

    move v3, v7

    move v1, v8

    move v7, v1

    goto :goto_0

    :cond_3
    return-object v2

    :cond_4
    move p1, p0

    move p0, v4

    :goto_0
    if-lt v0, v8, :cond_6

    const/16 v4, 0x39

    if-gt v0, v4, :cond_6

    if-lt v1, v8, :cond_6

    if-gt v1, v4, :cond_6

    if-lt v3, v8, :cond_6

    if-gt v3, v4, :cond_6

    if-lt p0, v8, :cond_6

    if-gt p0, v4, :cond_6

    sub-int/2addr v0, v8

    mul-int/lit16 v0, v0, 0x3e8

    sub-int/2addr v1, v8

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    sub-int/2addr v3, v8

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    sub-int/2addr p0, v8

    add-int/2addr v0, p0

    if-lt v5, v8, :cond_6

    if-gt v5, v4, :cond_6

    if-lt v6, v8, :cond_6

    if-gt v6, v4, :cond_6

    sub-int/2addr v5, v8

    mul-int/lit8 v5, v5, 0xa

    sub-int/2addr v6, v8

    add-int/2addr v5, v6

    if-lt v7, v8, :cond_6

    if-gt v7, v4, :cond_6

    if-lt p1, v8, :cond_6

    if-gt p1, v4, :cond_6

    sub-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr p1, v8

    add-int/2addr v7, p1

    if-nez v0, :cond_5

    if-nez v5, :cond_5

    if-nez v7, :cond_5

    return-object v2

    .line 1558
    :cond_5
    invoke-static {v0, v5, v7}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v2
.end method

.method public static g([CI)Ljava/time/LocalDate;
    .locals 10

    add-int/lit8 v0, p1, 0x8

    .line 1567
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 1571
    :cond_0
    aget-char v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 1572
    aget-char v1, p0, v1

    add-int/lit8 v3, p1, 0x2

    .line 1573
    aget-char v3, p0, v3

    add-int/lit8 v4, p1, 0x3

    .line 1574
    aget-char v4, p0, v4

    add-int/lit8 v5, p1, 0x4

    .line 1575
    aget-char v5, p0, v5

    add-int/lit8 v6, p1, 0x5

    .line 1576
    aget-char v6, p0, v6

    add-int/lit8 v7, p1, 0x6

    .line 1577
    aget-char v7, p0, v7

    add-int/lit8 p1, p1, 0x7

    .line 1578
    aget-char p0, p0, p1

    const/16 p1, 0x2d

    const/16 v8, 0x30

    if-ne v5, p1, :cond_1

    if-ne v7, p1, :cond_1

    move p1, p0

    move p0, v4

    move v5, v8

    move v7, v5

    goto :goto_0

    :cond_1
    const/16 v9, 0x2f

    if-ne v1, v9, :cond_2

    if-ne v4, v9, :cond_2

    move p1, v3

    move v1, v6

    move v3, v7

    move v7, v8

    move v6, v0

    move v0, v5

    move v5, v7

    goto :goto_0

    :cond_2
    if-ne v1, p1, :cond_4

    if-ne v6, p1, :cond_4

    .line 1608
    invoke-static {v3, v4, v5}, Laay;->a(CCC)I

    move-result p1

    if-lez p1, :cond_3

    .line 1610
    div-int/lit8 v1, p1, 0xa

    add-int/2addr v1, v8

    int-to-char v5, v1

    .line 1611
    rem-int/lit8 p1, p1, 0xa

    add-int/2addr p1, v8

    int-to-char p1, p1

    const/16 v1, 0x32

    move v6, p1

    move p1, v0

    move v0, v1

    move v3, v7

    move v1, v8

    move v7, v1

    goto :goto_0

    :cond_3
    return-object v2

    :cond_4
    move p1, p0

    move p0, v4

    :goto_0
    if-lt v0, v8, :cond_6

    const/16 v4, 0x39

    if-gt v0, v4, :cond_6

    if-lt v1, v8, :cond_6

    if-gt v1, v4, :cond_6

    if-lt v3, v8, :cond_6

    if-gt v3, v4, :cond_6

    if-lt p0, v8, :cond_6

    if-gt p0, v4, :cond_6

    sub-int/2addr v0, v8

    mul-int/lit16 v0, v0, 0x3e8

    sub-int/2addr v1, v8

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    sub-int/2addr v3, v8

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    sub-int/2addr p0, v8

    add-int/2addr v0, p0

    if-lt v5, v8, :cond_6

    if-gt v5, v4, :cond_6

    if-lt v6, v8, :cond_6

    if-gt v6, v4, :cond_6

    sub-int/2addr v5, v8

    mul-int/lit8 v5, v5, 0xa

    sub-int/2addr v6, v8

    add-int/2addr v5, v6

    if-lt v7, v8, :cond_6

    if-gt v7, v4, :cond_6

    if-lt p1, v8, :cond_6

    if-gt p1, v4, :cond_6

    sub-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr p1, v8

    add-int/2addr v7, p1

    if-nez v0, :cond_5

    if-nez v5, :cond_5

    if-nez v7, :cond_5

    return-object v2

    .line 1666
    :cond_5
    invoke-static {v0, v5, v7}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v2
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 11726
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 11731
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ne v1, v2, :cond_4

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_4

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_4

    .line 11732
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 11733
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v4, 0x3

    .line 11734
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x4

    .line 11735
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v6, 0x6

    .line 11736
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v7, 0x7

    .line 11737
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v7, 0x30

    if-lt v1, v7, :cond_3

    const/16 v8, 0x32

    if-gt v1, v8, :cond_3

    if-lt v2, v7, :cond_3

    const/16 v8, 0x39

    if-gt v2, v8, :cond_3

    if-lt v4, v7, :cond_3

    const/16 v9, 0x36

    if-gt v4, v9, :cond_3

    if-lt v5, v7, :cond_3

    if-gt v5, v8, :cond_3

    if-lt v6, v7, :cond_3

    if-gt v6, v9, :cond_3

    if-lt p0, v7, :cond_3

    if-gt p0, v8, :cond_3

    sub-int/2addr v1, v7

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr v2, v7

    add-int/2addr v1, v2

    const/16 v2, 0x18

    if-le v1, v2, :cond_1

    return v0

    :cond_1
    sub-int/2addr v4, v7

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr v5, v7

    add-int/2addr v4, v5

    const/16 v1, 0x3c

    if-le v4, v1, :cond_2

    return v0

    :cond_2
    sub-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0xa

    sub-int/2addr p0, v7

    add-int/2addr v6, p0

    const/16 p0, 0x3d

    if-gt v6, p0, :cond_3

    move v0, v3

    :cond_3
    return v0

    .line 11740
    :cond_4
    :try_start_0
    invoke-static {p0}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalTime;
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    :cond_5
    :goto_0
    return v0
.end method

.method public static h([BI)Ljava/time/LocalDate;
    .locals 13

    add-int/lit8 v0, p1, 0x9

    .line 1675
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 1679
    :cond_0
    aget-byte v0, p0, p1

    int-to-char v0, v0

    add-int/lit8 v1, p1, 0x1

    .line 1680
    aget-byte v1, p0, v1

    int-to-char v1, v1

    add-int/lit8 v3, p1, 0x2

    .line 1681
    aget-byte v3, p0, v3

    int-to-char v3, v3

    add-int/lit8 v4, p1, 0x3

    .line 1682
    aget-byte v4, p0, v4

    int-to-char v4, v4

    add-int/lit8 v5, p1, 0x4

    .line 1683
    aget-byte v5, p0, v5

    int-to-char v5, v5

    add-int/lit8 v6, p1, 0x5

    .line 1684
    aget-byte v6, p0, v6

    int-to-char v6, v6

    add-int/lit8 v7, p1, 0x6

    .line 1685
    aget-byte v7, p0, v7

    int-to-char v7, v7

    add-int/lit8 v8, p1, 0x7

    .line 1686
    aget-byte v8, p0, v8

    int-to-char v8, v8

    add-int/lit8 p1, p1, 0x8

    .line 1687
    aget-byte p0, p0, p1

    int-to-char p0, p0

    const/16 p1, 0x2d

    const/16 v9, 0x30

    if-ne v5, p1, :cond_1

    if-ne v8, p1, :cond_1

    :goto_0
    move v8, v3

    move v3, v6

    move v6, v0

    move v0, v9

    move v12, v1

    move v1, p0

    move p0, v4

    move v4, v7

    move v7, v12

    goto/16 :goto_5

    :cond_1
    if-ne v5, p1, :cond_2

    if-ne v7, p1, :cond_2

    :goto_1
    move v7, v1

    move v1, p0

    move p0, v4

    move v4, v6

    move v6, v0

    move v0, v8

    move v8, v3

    :goto_2
    move v3, v9

    goto/16 :goto_5

    :cond_2
    const/16 v10, 0x2f

    if-ne v5, v10, :cond_3

    if-ne v8, v10, :cond_3

    goto :goto_0

    :cond_3
    if-ne v5, v10, :cond_4

    if-ne v7, v10, :cond_4

    goto :goto_1

    :cond_4
    const/16 v11, 0x2e

    if-ne v1, v11, :cond_5

    if-ne v5, v11, :cond_5

    :goto_3
    move v1, v0

    move v0, v9

    goto :goto_5

    :cond_5
    if-ne v3, v11, :cond_6

    if-ne v5, v11, :cond_6

    :goto_4
    goto :goto_2

    :cond_6
    if-ne v1, p1, :cond_7

    if-ne v5, p1, :cond_7

    goto :goto_3

    :cond_7
    if-ne v3, p1, :cond_8

    if-ne v5, p1, :cond_8

    goto :goto_4

    :cond_8
    if-ne v3, p1, :cond_a

    if-ne v7, p1, :cond_a

    .line 1783
    invoke-static {v4, v5, v6}, Laay;->a(CCC)I

    move-result p1

    if-lez p1, :cond_9

    .line 1785
    div-int/lit8 v3, p1, 0xa

    add-int/2addr v3, v9

    int-to-char v3, v3

    .line 1786
    rem-int/lit8 p1, p1, 0xa

    add-int/2addr p1, v9

    int-to-char p1, p1

    const/16 v4, 0x32

    move v6, v4

    move v7, v9

    move v4, p1

    goto :goto_5

    :cond_9
    return-object v2

    :cond_a
    if-ne v1, v10, :cond_b

    if-ne v5, v10, :cond_b

    move v1, v4

    move v4, v0

    move v0, v3

    goto :goto_2

    :cond_b
    if-ne v3, v10, :cond_d

    if-ne v5, v10, :cond_d

    move v3, v0

    move v0, v9

    move v12, v4

    move v4, v1

    move v1, v12

    :goto_5
    if-lt v6, v9, :cond_d

    const/16 p1, 0x39

    if-gt v6, p1, :cond_d

    if-lt v7, v9, :cond_d

    if-gt v7, p1, :cond_d

    if-lt v8, v9, :cond_d

    if-gt v8, p1, :cond_d

    if-lt p0, v9, :cond_d

    if-gt p0, p1, :cond_d

    sub-int/2addr v6, v9

    mul-int/lit16 v6, v6, 0x3e8

    sub-int/2addr v7, v9

    mul-int/lit8 v7, v7, 0x64

    add-int/2addr v6, v7

    sub-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0xa

    add-int/2addr v6, v8

    sub-int/2addr p0, v9

    add-int/2addr v6, p0

    if-lt v3, v9, :cond_d

    if-gt v3, p1, :cond_d

    if-lt v4, v9, :cond_d

    if-gt v4, p1, :cond_d

    sub-int/2addr v3, v9

    mul-int/lit8 v3, v3, 0xa

    sub-int/2addr v4, v9

    add-int/2addr v3, v4

    if-lt v0, v9, :cond_d

    if-gt v0, p1, :cond_d

    if-lt v1, v9, :cond_d

    if-gt v1, p1, :cond_d

    sub-int/2addr v0, v9

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, v9

    add-int/2addr v0, v1

    if-nez v6, :cond_c

    if-nez v3, :cond_c

    if-nez v0, :cond_c

    return-object v2

    .line 1856
    :cond_c
    invoke-static {v6, v3, v0}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    :cond_d
    return-object v2
.end method

.method public static h([CI)Ljava/time/LocalDate;
    .locals 13

    add-int/lit8 v0, p1, 0x9

    .line 1865
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 1869
    :cond_0
    aget-char v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 1870
    aget-char v1, p0, v1

    add-int/lit8 v3, p1, 0x2

    .line 1871
    aget-char v3, p0, v3

    add-int/lit8 v4, p1, 0x3

    .line 1872
    aget-char v4, p0, v4

    add-int/lit8 v5, p1, 0x4

    .line 1873
    aget-char v5, p0, v5

    add-int/lit8 v6, p1, 0x5

    .line 1874
    aget-char v6, p0, v6

    add-int/lit8 v7, p1, 0x6

    .line 1875
    aget-char v7, p0, v7

    add-int/lit8 v8, p1, 0x7

    .line 1876
    aget-char v8, p0, v8

    add-int/lit8 p1, p1, 0x8

    .line 1877
    aget-char p0, p0, p1

    const/16 p1, 0x2d

    const/16 v9, 0x30

    if-ne v5, p1, :cond_1

    if-ne v8, p1, :cond_1

    :goto_0
    move v5, p0

    move v8, v3

    move p0, v4

    move v3, v6

    move v4, v7

    :goto_1
    move p1, v9

    goto/16 :goto_7

    :cond_1
    if-ne v5, p1, :cond_2

    if-ne v7, p1, :cond_2

    :goto_2
    move v5, p0

    move p0, v4

    move v4, v6

    move p1, v8

    move v8, v3

    :goto_3
    move v3, v9

    goto/16 :goto_7

    :cond_2
    const/16 v10, 0x2f

    if-ne v5, v10, :cond_3

    if-ne v8, v10, :cond_3

    goto :goto_0

    :cond_3
    if-ne v5, v10, :cond_4

    if-ne v7, v10, :cond_4

    goto :goto_2

    :cond_4
    const/16 v11, 0x2e

    if-ne v1, v11, :cond_5

    if-ne v5, v11, :cond_5

    :goto_4
    move v5, v0

    move v0, v6

    move v1, v7

    goto :goto_1

    :cond_5
    if-ne v3, v11, :cond_6

    if-ne v5, v11, :cond_6

    :goto_5
    move p1, v0

    move v5, v1

    move v0, v6

    move v1, v7

    goto :goto_3

    :cond_6
    if-ne v1, p1, :cond_7

    if-ne v5, p1, :cond_7

    goto :goto_4

    :cond_7
    if-ne v3, p1, :cond_8

    if-ne v5, p1, :cond_8

    goto :goto_5

    :cond_8
    const/16 v11, 0x5e74

    if-ne v5, v11, :cond_9

    const/16 v11, 0x6708

    if-ne v7, v11, :cond_9

    const/16 v11, 0x65e5

    if-ne p0, v11, :cond_9

    :goto_6
    move p0, v4

    move v4, v6

    move v5, v8

    move p1, v9

    move v8, v3

    move v3, p1

    goto :goto_7

    :cond_9
    const v11, 0xb144

    if-ne v5, v11, :cond_a

    const v11, 0xc6d4

    if-ne v7, v11, :cond_a

    const v11, 0xc77c

    if-ne p0, v11, :cond_a

    goto :goto_6

    :cond_a
    if-ne v3, p1, :cond_c

    if-ne v7, p1, :cond_c

    .line 1995
    invoke-static {v4, v5, v6}, Laay;->a(CCC)I

    move-result p1

    if-lez p1, :cond_b

    .line 1997
    div-int/lit8 v3, p1, 0xa

    add-int/2addr v3, v9

    int-to-char v3, v3

    .line 1998
    rem-int/lit8 p1, p1, 0xa

    add-int/2addr p1, v9

    int-to-char p1, p1

    const/16 v4, 0x32

    move v5, v1

    move v1, v9

    move v12, v4

    move v4, p1

    move p1, v0

    move v0, v12

    goto :goto_7

    :cond_b
    return-object v2

    :cond_c
    if-ne v1, v10, :cond_d

    if-ne v5, v10, :cond_d

    move p1, v3

    move v5, v4

    move v1, v7

    move v3, v9

    move v4, v0

    move v0, v6

    goto :goto_7

    :cond_d
    if-ne v3, v10, :cond_f

    if-ne v5, v10, :cond_f

    move v3, v0

    move v5, v4

    move v0, v6

    move p1, v9

    move v4, v1

    move v1, v7

    :goto_7
    if-lt v0, v9, :cond_f

    const/16 v6, 0x39

    if-gt v0, v6, :cond_f

    if-lt v1, v9, :cond_f

    if-gt v1, v6, :cond_f

    if-lt v8, v9, :cond_f

    if-gt v8, v6, :cond_f

    if-lt p0, v9, :cond_f

    if-gt p0, v6, :cond_f

    sub-int/2addr v0, v9

    mul-int/lit16 v0, v0, 0x3e8

    sub-int/2addr v1, v9

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    sub-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0xa

    add-int/2addr v0, v8

    sub-int/2addr p0, v9

    add-int/2addr v0, p0

    if-lt v3, v9, :cond_f

    if-gt v3, v6, :cond_f

    if-lt v4, v9, :cond_f

    if-gt v4, v6, :cond_f

    sub-int/2addr v3, v9

    mul-int/lit8 v3, v3, 0xa

    sub-int/2addr v4, v9

    add-int/2addr v3, v4

    if-lt p1, v9, :cond_f

    if-gt p1, v6, :cond_f

    if-lt v5, v9, :cond_f

    if-gt v5, v6, :cond_f

    sub-int/2addr p1, v9

    mul-int/lit8 p1, p1, 0xa

    sub-int/2addr v5, v9

    add-int/2addr p1, v5

    if-nez v0, :cond_e

    if-nez v3, :cond_e

    if-nez p1, :cond_e

    return-object v2

    .line 2068
    :cond_e
    invoke-static {v0, v3, p1}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    :cond_f
    return-object v2
.end method

.method public static i([BI)Ljava/time/LocalDate;
    .locals 14

    add-int/lit8 v0, p1, 0xa

    .line 2081
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 2085
    :cond_0
    aget-byte v0, p0, p1

    int-to-char v0, v0

    add-int/lit8 v1, p1, 0x1

    .line 2086
    aget-byte v1, p0, v1

    int-to-char v1, v1

    add-int/lit8 v3, p1, 0x2

    .line 2087
    aget-byte v3, p0, v3

    int-to-char v3, v3

    add-int/lit8 v4, p1, 0x3

    .line 2088
    aget-byte v4, p0, v4

    int-to-char v4, v4

    add-int/lit8 v5, p1, 0x4

    .line 2089
    aget-byte v5, p0, v5

    int-to-char v5, v5

    add-int/lit8 v6, p1, 0x5

    .line 2090
    aget-byte v6, p0, v6

    int-to-char v6, v6

    add-int/lit8 v7, p1, 0x6

    .line 2091
    aget-byte v7, p0, v7

    int-to-char v7, v7

    add-int/lit8 v8, p1, 0x7

    .line 2092
    aget-byte v8, p0, v8

    int-to-char v8, v8

    add-int/lit8 v9, p1, 0x8

    .line 2093
    aget-byte v9, p0, v9

    int-to-char v9, v9

    add-int/lit8 p1, p1, 0x9

    .line 2094
    aget-byte p0, p0, p1

    int-to-char p0, p0

    const/16 p1, 0x2d

    const/16 v10, 0x30

    if-ne v5, p1, :cond_1

    if-ne v8, p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v11, 0x2f

    if-ne v5, v11, :cond_2

    if-ne v8, v11, :cond_2

    :goto_0
    move v8, v1

    move p1, v7

    move v1, p0

    move v7, v0

    move p0, v4

    move v0, v6

    move v4, v9

    move v9, v3

    goto :goto_3

    :cond_2
    const/16 v12, 0x2e

    if-ne v3, v12, :cond_3

    if-ne v6, v12, :cond_3

    goto :goto_1

    :cond_3
    if-ne v3, p1, :cond_4

    if-ne v6, p1, :cond_4

    :goto_1
    move p1, v5

    move v13, v4

    move v4, v0

    :goto_2
    move v0, v13

    goto :goto_3

    :cond_4
    if-ne v3, v11, :cond_5

    if-ne v6, v11, :cond_5

    move p1, v1

    move v1, v5

    goto :goto_3

    :cond_5
    const/16 p1, 0x20

    if-ne v1, p1, :cond_7

    if-ne v6, p1, :cond_7

    .line 2164
    invoke-static {v3, v4, v5}, Laay;->a(CCC)I

    move-result p1

    if-lez p1, :cond_7

    .line 2166
    div-int/lit8 v1, p1, 0xa

    add-int/2addr v1, v10

    int-to-char v1, v1

    .line 2167
    rem-int/lit8 p1, p1, 0xa

    add-int/2addr p1, v10

    int-to-char p1, p1

    move v4, v10

    move v13, v1

    move v1, v0

    goto :goto_2

    :goto_3
    if-lt v7, v10, :cond_7

    const/16 v3, 0x39

    if-gt v7, v3, :cond_7

    if-lt v8, v10, :cond_7

    if-gt v8, v3, :cond_7

    if-lt v9, v10, :cond_7

    if-gt v9, v3, :cond_7

    if-lt p0, v10, :cond_7

    if-gt p0, v3, :cond_7

    sub-int/2addr v7, v10

    mul-int/lit16 v7, v7, 0x3e8

    sub-int/2addr v8, v10

    mul-int/lit8 v8, v8, 0x64

    add-int/2addr v7, v8

    sub-int/2addr v9, v10

    mul-int/lit8 v9, v9, 0xa

    add-int/2addr v7, v9

    sub-int/2addr p0, v10

    add-int/2addr v7, p0

    if-lt v0, v10, :cond_7

    if-gt v0, v3, :cond_7

    if-lt p1, v10, :cond_7

    if-gt p1, v3, :cond_7

    sub-int/2addr v0, v10

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr p1, v10

    add-int/2addr v0, p1

    if-lt v4, v10, :cond_7

    if-gt v4, v3, :cond_7

    if-lt v1, v10, :cond_7

    if-gt v1, v3, :cond_7

    sub-int/2addr v4, v10

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr v1, v10

    add-int/2addr v4, v1

    if-nez v7, :cond_6

    if-nez v0, :cond_6

    if-nez v4, :cond_6

    return-object v2

    .line 2211
    :cond_6
    invoke-static {v7, v0, v4}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    :cond_7
    return-object v2
.end method

.method public static i([CI)Ljava/time/LocalDate;
    .locals 16

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0xa

    .line 2224
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 2228
    :cond_0
    aget-char v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    .line 2229
    aget-char v2, v0, v2

    add-int/lit8 v4, p1, 0x2

    .line 2230
    aget-char v4, v0, v4

    add-int/lit8 v5, p1, 0x3

    .line 2231
    aget-char v5, v0, v5

    add-int/lit8 v6, p1, 0x4

    .line 2232
    aget-char v6, v0, v6

    add-int/lit8 v7, p1, 0x5

    .line 2233
    aget-char v7, v0, v7

    add-int/lit8 v8, p1, 0x6

    .line 2234
    aget-char v8, v0, v8

    add-int/lit8 v9, p1, 0x7

    .line 2235
    aget-char v9, v0, v9

    add-int/lit8 v10, p1, 0x8

    .line 2236
    aget-char v10, v0, v10

    add-int/lit8 v11, p1, 0x9

    .line 2237
    aget-char v0, v0, v11

    const/16 v11, 0x2d

    if-ne v6, v11, :cond_1

    if-ne v9, v11, :cond_1

    goto :goto_0

    :cond_1
    const/16 v13, 0x2f

    if-ne v6, v13, :cond_2

    if-ne v9, v13, :cond_2

    :goto_0
    move v9, v10

    :goto_1
    move v10, v4

    const/16 v4, 0x30

    goto/16 :goto_5

    :cond_2
    const/16 v14, 0x2e

    if-ne v4, v14, :cond_3

    if-ne v7, v14, :cond_3

    goto :goto_2

    :cond_3
    if-ne v4, v11, :cond_4

    if-ne v7, v11, :cond_4

    :goto_2
    move v7, v5

    const/16 v4, 0x30

    move v5, v0

    move v0, v2

    move v2, v9

    move v9, v1

    move v1, v8

    move v8, v6

    goto/16 :goto_5

    :cond_4
    if-ne v4, v13, :cond_5

    if-ne v7, v13, :cond_5

    move v7, v1

    move v1, v8

    const/16 v4, 0x30

    move v8, v2

    move v2, v9

    move v9, v5

    move v5, v0

    move v0, v6

    goto :goto_5

    :cond_5
    const/16 v11, 0x65e5

    const/16 v13, 0x6708

    const/16 v14, 0x5e74

    if-ne v6, v14, :cond_6

    if-ne v8, v13, :cond_6

    if-ne v0, v11, :cond_6

    :goto_3
    move v8, v7

    move v0, v10

    const/16 v7, 0x30

    goto :goto_1

    :cond_6
    const v15, 0xc77c

    const v3, 0xc6d4

    const v12, 0xb144

    if-ne v6, v12, :cond_7

    if-ne v8, v3, :cond_7

    if-ne v0, v15, :cond_7

    goto :goto_3

    :cond_7
    if-ne v6, v14, :cond_8

    if-ne v9, v13, :cond_8

    if-ne v0, v11, :cond_8

    :goto_4
    move v0, v10

    const/16 v9, 0x30

    goto :goto_1

    :cond_8
    if-ne v6, v12, :cond_9

    if-ne v9, v3, :cond_9

    if-ne v0, v15, :cond_9

    goto :goto_4

    :cond_9
    const/16 v3, 0x20

    if-ne v2, v3, :cond_f

    if-ne v7, v3, :cond_f

    .line 2355
    invoke-static {v4, v5, v6}, Laay;->a(CCC)I

    move-result v2

    if-lez v2, :cond_e

    .line 2357
    div-int/lit8 v3, v2, 0xa

    const/16 v4, 0x30

    add-int/2addr v3, v4

    int-to-char v3, v3

    .line 2358
    rem-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v4

    int-to-char v2, v2

    move v5, v0

    move v0, v1

    move v7, v3

    move v1, v8

    move v8, v2

    move v2, v9

    move v9, v4

    :goto_5
    if-lt v1, v4, :cond_d

    const/16 v3, 0x39

    if-gt v1, v3, :cond_d

    if-lt v2, v4, :cond_d

    if-gt v2, v3, :cond_d

    if-lt v10, v4, :cond_d

    if-gt v10, v3, :cond_d

    if-lt v5, v4, :cond_d

    if-gt v5, v3, :cond_d

    sub-int/2addr v1, v4

    mul-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    sub-int/2addr v10, v4

    mul-int/lit8 v10, v10, 0xa

    add-int/2addr v1, v10

    sub-int/2addr v5, v4

    add-int/2addr v1, v5

    if-lt v7, v4, :cond_c

    if-gt v7, v3, :cond_c

    if-lt v8, v4, :cond_c

    if-gt v8, v3, :cond_c

    sub-int/2addr v7, v4

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr v8, v4

    add-int/2addr v7, v8

    if-lt v9, v4, :cond_b

    if-gt v9, v3, :cond_b

    if-lt v0, v4, :cond_b

    if-gt v0, v3, :cond_b

    sub-int/2addr v9, v4

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v0, v4

    add-int/2addr v9, v0

    if-nez v1, :cond_a

    if-nez v7, :cond_a

    if-nez v9, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 2402
    :cond_a
    invoke-static {v1, v7, v9}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0

    :cond_c
    const/4 v0, 0x0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0

    :cond_e
    const/4 v0, 0x0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static j([BI)Ljava/time/LocalDate;
    .locals 12

    add-int/lit8 v0, p1, 0xb

    .line 2520
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 2524
    :cond_0
    aget-byte v0, p0, p1

    int-to-char v0, v0

    add-int/lit8 v1, p1, 0x1

    .line 2525
    aget-byte v1, p0, v1

    int-to-char v1, v1

    add-int/lit8 v3, p1, 0x2

    .line 2526
    aget-byte v3, p0, v3

    int-to-char v3, v3

    add-int/lit8 v4, p1, 0x3

    .line 2527
    aget-byte v4, p0, v4

    int-to-char v4, v4

    add-int/lit8 v5, p1, 0x4

    .line 2528
    aget-byte v5, p0, v5

    int-to-char v5, v5

    add-int/lit8 v6, p1, 0x5

    .line 2529
    aget-byte v6, p0, v6

    int-to-char v6, v6

    add-int/lit8 v7, p1, 0x6

    .line 2530
    aget-byte v7, p0, v7

    int-to-char v7, v7

    add-int/lit8 v8, p1, 0x7

    .line 2531
    aget-byte v8, p0, v8

    int-to-char v8, v8

    add-int/lit8 v9, p1, 0x8

    .line 2532
    aget-byte v9, p0, v9

    int-to-char v9, v9

    add-int/lit8 v10, p1, 0x9

    .line 2533
    aget-byte v10, p0, v10

    int-to-char v10, v10

    add-int/lit8 p1, p1, 0xa

    .line 2534
    aget-byte p0, p0, p1

    int-to-char p0, p0

    const/16 p1, 0x2d

    const/16 v11, 0x30

    if-ne v5, p1, :cond_1

    if-ne v8, p1, :cond_1

    const/16 p1, 0x5a

    if-ne p0, p1, :cond_1

    move p0, v4

    goto :goto_0

    :cond_1
    const/16 p1, 0x20

    if-ne v3, p1, :cond_3

    if-ne v7, p1, :cond_3

    .line 2554
    invoke-static {v4, v5, v6}, Laay;->a(CCC)I

    move-result p1

    if-lez p1, :cond_3

    .line 2556
    div-int/lit8 v3, p1, 0xa

    add-int/2addr v3, v11

    int-to-char v6, v3

    .line 2557
    rem-int/lit8 p1, p1, 0xa

    add-int/2addr p1, v11

    int-to-char v7, p1

    move v3, v10

    move v10, v1

    move v1, v9

    move v9, v0

    move v0, v8

    :goto_0
    if-lt v0, v11, :cond_3

    const/16 p1, 0x39

    if-gt v0, p1, :cond_3

    if-lt v1, v11, :cond_3

    if-gt v1, p1, :cond_3

    if-lt v3, v11, :cond_3

    if-gt v3, p1, :cond_3

    if-lt p0, v11, :cond_3

    if-gt p0, p1, :cond_3

    sub-int/2addr v0, v11

    mul-int/lit16 v0, v0, 0x3e8

    sub-int/2addr v1, v11

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    sub-int/2addr v3, v11

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    sub-int/2addr p0, v11

    add-int/2addr v0, p0

    if-lt v6, v11, :cond_3

    if-gt v6, p1, :cond_3

    if-lt v7, v11, :cond_3

    if-gt v7, p1, :cond_3

    sub-int/2addr v6, v11

    mul-int/lit8 v6, v6, 0xa

    sub-int/2addr v7, v11

    add-int/2addr v6, v7

    if-lt v9, v11, :cond_3

    if-gt v9, p1, :cond_3

    if-lt v10, v11, :cond_3

    if-gt v10, p1, :cond_3

    sub-int/2addr v9, v11

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v10, v11

    add-int/2addr v9, v10

    if-nez v0, :cond_2

    if-nez v6, :cond_2

    if-nez v9, :cond_2

    return-object v2

    .line 2601
    :cond_2
    invoke-static {v0, v6, v9}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v2
.end method

.method public static j([CI)Ljava/time/LocalDate;
    .locals 12

    add-int/lit8 v0, p1, 0xb

    .line 2410
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 2414
    :cond_0
    aget-char v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 2415
    aget-char v1, p0, v1

    add-int/lit8 v3, p1, 0x2

    .line 2416
    aget-char v3, p0, v3

    add-int/lit8 v4, p1, 0x3

    .line 2417
    aget-char v4, p0, v4

    add-int/lit8 v5, p1, 0x4

    .line 2418
    aget-char v5, p0, v5

    add-int/lit8 v6, p1, 0x5

    .line 2419
    aget-char v6, p0, v6

    add-int/lit8 v7, p1, 0x6

    .line 2420
    aget-char v7, p0, v7

    add-int/lit8 v8, p1, 0x7

    .line 2421
    aget-char v8, p0, v8

    add-int/lit8 v9, p1, 0x8

    .line 2422
    aget-char v9, p0, v9

    add-int/lit8 v10, p1, 0x9

    .line 2423
    aget-char v10, p0, v10

    add-int/lit8 p1, p1, 0xa

    .line 2424
    aget-char p0, p0, p1

    const/16 p1, 0x5e74

    const/16 v11, 0x30

    if-ne v5, p1, :cond_1

    const/16 p1, 0x6708

    if-ne v8, p1, :cond_1

    const/16 p1, 0x65e5

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x2d

    if-ne v5, p1, :cond_2

    if-ne v8, p1, :cond_2

    const/16 p1, 0x5a

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    const p1, 0xb144

    if-ne v5, p1, :cond_3

    const p1, 0xc6d4

    if-ne v8, p1, :cond_3

    const p1, 0xc77c

    if-ne p0, p1, :cond_3

    :goto_0
    move p0, v4

    goto :goto_1

    :cond_3
    const/16 p1, 0x20

    if-ne v3, p1, :cond_5

    if-ne v7, p1, :cond_5

    .line 2466
    invoke-static {v4, v5, v6}, Laay;->a(CCC)I

    move-result p1

    if-lez p1, :cond_5

    .line 2468
    div-int/lit8 v3, p1, 0xa

    add-int/2addr v3, v11

    int-to-char v6, v3

    .line 2469
    rem-int/lit8 p1, p1, 0xa

    add-int/2addr p1, v11

    int-to-char v7, p1

    move v3, v10

    move v10, v1

    move v1, v9

    move v9, v0

    move v0, v8

    :goto_1
    if-lt v0, v11, :cond_5

    const/16 p1, 0x39

    if-gt v0, p1, :cond_5

    if-lt v1, v11, :cond_5

    if-gt v1, p1, :cond_5

    if-lt v3, v11, :cond_5

    if-gt v3, p1, :cond_5

    if-lt p0, v11, :cond_5

    if-gt p0, p1, :cond_5

    sub-int/2addr v0, v11

    mul-int/lit16 v0, v0, 0x3e8

    sub-int/2addr v1, v11

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    sub-int/2addr v3, v11

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    sub-int/2addr p0, v11

    add-int/2addr v0, p0

    if-lt v6, v11, :cond_5

    if-gt v6, p1, :cond_5

    if-lt v7, v11, :cond_5

    if-gt v7, p1, :cond_5

    sub-int/2addr v6, v11

    mul-int/lit8 v6, v6, 0xa

    sub-int/2addr v7, v11

    add-int/2addr v6, v7

    if-lt v9, v11, :cond_5

    if-gt v9, p1, :cond_5

    if-lt v10, v11, :cond_5

    if-gt v10, p1, :cond_5

    sub-int/2addr v9, v11

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v10, v11

    add-int/2addr v9, v10

    if-nez v0, :cond_4

    if-nez v6, :cond_4

    if-nez v9, :cond_4

    return-object v2

    .line 2513
    :cond_4
    invoke-static {v0, v6, v9}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v2
.end method

.method public static k([BI)Ljava/time/LocalDateTime;
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    add-int/lit8 v2, v1, 0xc

    .line 2686
    array-length v3, v0

    const-string v5, "illegal input "

    if-gt v2, v3, :cond_7

    .line 2691
    aget-byte v3, v0, v1

    int-to-char v3, v3

    add-int/lit8 v6, v1, 0x1

    .line 2692
    aget-byte v6, v0, v6

    int-to-char v6, v6

    add-int/lit8 v7, v1, 0x2

    .line 2693
    aget-byte v7, v0, v7

    int-to-char v7, v7

    add-int/lit8 v8, v1, 0x3

    .line 2694
    aget-byte v8, v0, v8

    int-to-char v8, v8

    add-int/lit8 v9, v1, 0x4

    .line 2695
    aget-byte v9, v0, v9

    int-to-char v9, v9

    add-int/lit8 v10, v1, 0x5

    .line 2696
    aget-byte v10, v0, v10

    int-to-char v10, v10

    add-int/lit8 v11, v1, 0x6

    .line 2697
    aget-byte v11, v0, v11

    int-to-char v11, v11

    add-int/lit8 v12, v1, 0x7

    .line 2698
    aget-byte v12, v0, v12

    int-to-char v12, v12

    add-int/lit8 v13, v1, 0x8

    .line 2699
    aget-byte v13, v0, v13

    int-to-char v13, v13

    add-int/lit8 v14, v1, 0x9

    .line 2700
    aget-byte v14, v0, v14

    int-to-char v14, v14

    add-int/lit8 v15, v1, 0xa

    .line 2701
    aget-byte v15, v0, v15

    int-to-char v15, v15

    add-int/lit8 v16, v1, 0xb

    .line 2702
    aget-byte v4, v0, v16

    int-to-char v4, v4

    move-object/from16 v16, v5

    const/16 v5, 0x30

    if-lt v3, v5, :cond_6

    const/16 v0, 0x39

    if-gt v3, v0, :cond_5

    if-lt v6, v5, :cond_5

    if-gt v6, v0, :cond_5

    if-lt v7, v5, :cond_5

    if-gt v7, v0, :cond_5

    if-lt v8, v5, :cond_5

    if-gt v8, v0, :cond_5

    sub-int/2addr v3, v5

    mul-int/lit16 v3, v3, 0x3e8

    sub-int/2addr v6, v5

    mul-int/lit8 v6, v6, 0x64

    add-int/2addr v3, v6

    sub-int/2addr v7, v5

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v3, v7

    sub-int/2addr v8, v5

    add-int v17, v3, v8

    if-lt v9, v5, :cond_4

    if-gt v9, v0, :cond_4

    if-lt v10, v5, :cond_4

    if-gt v10, v0, :cond_4

    sub-int/2addr v9, v5

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v10, v5

    add-int v18, v9, v10

    if-lt v11, v5, :cond_3

    if-gt v11, v0, :cond_3

    if-lt v12, v5, :cond_3

    if-gt v12, v0, :cond_3

    sub-int/2addr v11, v5

    mul-int/lit8 v11, v11, 0xa

    sub-int/2addr v12, v5

    add-int v19, v11, v12

    if-lt v13, v5, :cond_2

    if-gt v13, v0, :cond_2

    if-lt v14, v5, :cond_2

    if-gt v14, v0, :cond_2

    sub-int/2addr v13, v5

    mul-int/lit8 v13, v13, 0xa

    sub-int/2addr v14, v5

    add-int v20, v13, v14

    if-lt v15, v5, :cond_1

    if-gt v15, v0, :cond_1

    if-lt v4, v5, :cond_1

    if-gt v4, v0, :cond_1

    sub-int/2addr v15, v5

    mul-int/lit8 v15, v15, 0xa

    sub-int/2addr v4, v5

    add-int v21, v15, v4

    if-nez v17, :cond_0

    if-nez v18, :cond_0

    if-nez v19, :cond_0

    if-nez v20, :cond_0

    if-nez v21, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/16 v22, 0x0

    .line 2760
    invoke-static/range {v17 .. v22}, Ljava/time/LocalDateTime;->of(IIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    .line 2752
    :cond_1
    new-instance v0, Ljava/lang/String;

    move-object/from16 v3, p0

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 2753
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v16

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_2
    move-object/from16 v3, p0

    move-object/from16 v4, v16

    .line 2742
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 2743
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_3
    move-object/from16 v3, p0

    move-object/from16 v4, v16

    .line 2732
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 2733
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_4
    move-object/from16 v3, p0

    move-object/from16 v4, v16

    .line 2722
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 2723
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_5
    move-object/from16 v3, p0

    goto :goto_0

    :cond_6
    move-object v3, v0

    :goto_0
    move-object/from16 v4, v16

    .line 2712
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 2713
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_7
    move-object v3, v0

    move-object v4, v5

    .line 2687
    new-instance v0, Ljava/lang/String;

    array-length v2, v3

    sub-int/2addr v2, v1

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 2688
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1
.end method

.method public static k([CI)Ljava/time/LocalDateTime;
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    add-int/lit8 v2, v1, 0xc

    .line 2605
    array-length v3, v0

    const-string v5, "illegal input "

    if-gt v2, v3, :cond_7

    .line 2610
    aget-char v3, v0, v1

    add-int/lit8 v6, v1, 0x1

    .line 2611
    aget-char v6, v0, v6

    add-int/lit8 v7, v1, 0x2

    .line 2612
    aget-char v7, v0, v7

    add-int/lit8 v8, v1, 0x3

    .line 2613
    aget-char v8, v0, v8

    add-int/lit8 v9, v1, 0x4

    .line 2614
    aget-char v9, v0, v9

    add-int/lit8 v10, v1, 0x5

    .line 2615
    aget-char v10, v0, v10

    add-int/lit8 v11, v1, 0x6

    .line 2616
    aget-char v11, v0, v11

    add-int/lit8 v12, v1, 0x7

    .line 2617
    aget-char v12, v0, v12

    add-int/lit8 v13, v1, 0x8

    .line 2618
    aget-char v13, v0, v13

    add-int/lit8 v14, v1, 0x9

    .line 2619
    aget-char v14, v0, v14

    add-int/lit8 v15, v1, 0xa

    .line 2620
    aget-char v15, v0, v15

    add-int/lit8 v16, v1, 0xb

    .line 2621
    aget-char v4, v0, v16

    move-object/from16 v16, v5

    const/16 v5, 0x30

    if-lt v3, v5, :cond_6

    const/16 v0, 0x39

    if-gt v3, v0, :cond_5

    if-lt v6, v5, :cond_5

    if-gt v6, v0, :cond_5

    if-lt v7, v5, :cond_5

    if-gt v7, v0, :cond_5

    if-lt v8, v5, :cond_5

    if-gt v8, v0, :cond_5

    sub-int/2addr v3, v5

    mul-int/lit16 v3, v3, 0x3e8

    sub-int/2addr v6, v5

    mul-int/lit8 v6, v6, 0x64

    add-int/2addr v3, v6

    sub-int/2addr v7, v5

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v3, v7

    sub-int/2addr v8, v5

    add-int v17, v3, v8

    if-lt v9, v5, :cond_4

    if-gt v9, v0, :cond_4

    if-lt v10, v5, :cond_4

    if-gt v10, v0, :cond_4

    sub-int/2addr v9, v5

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v10, v5

    add-int v18, v9, v10

    if-lt v11, v5, :cond_3

    if-gt v11, v0, :cond_3

    if-lt v12, v5, :cond_3

    if-gt v12, v0, :cond_3

    sub-int/2addr v11, v5

    mul-int/lit8 v11, v11, 0xa

    sub-int/2addr v12, v5

    add-int v19, v11, v12

    if-lt v13, v5, :cond_2

    if-gt v13, v0, :cond_2

    if-lt v14, v5, :cond_2

    if-gt v14, v0, :cond_2

    sub-int/2addr v13, v5

    mul-int/lit8 v13, v13, 0xa

    sub-int/2addr v14, v5

    add-int v20, v13, v14

    if-lt v15, v5, :cond_1

    if-gt v15, v0, :cond_1

    if-lt v4, v5, :cond_1

    if-gt v4, v0, :cond_1

    sub-int/2addr v15, v5

    mul-int/lit8 v15, v15, 0xa

    sub-int/2addr v4, v5

    add-int v21, v15, v4

    if-nez v17, :cond_0

    if-nez v18, :cond_0

    if-nez v19, :cond_0

    if-nez v20, :cond_0

    if-nez v21, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/16 v22, 0x0

    .line 2679
    invoke-static/range {v17 .. v22}, Ljava/time/LocalDateTime;->of(IIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    .line 2671
    :cond_1
    new-instance v0, Ljava/lang/String;

    move-object/from16 v3, p0

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 2672
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v16

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_2
    move-object/from16 v3, p0

    move-object/from16 v4, v16

    .line 2661
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 2662
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_3
    move-object/from16 v3, p0

    move-object/from16 v4, v16

    .line 2651
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 2652
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_4
    move-object/from16 v3, p0

    move-object/from16 v4, v16

    .line 2641
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 2642
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_5
    move-object/from16 v3, p0

    goto :goto_0

    :cond_6
    move-object v3, v0

    :goto_0
    move-object/from16 v4, v16

    .line 2631
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 2632
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_7
    move-object v3, v0

    move-object v4, v5

    .line 2606
    new-instance v0, Ljava/lang/String;

    array-length v2, v3

    sub-int/2addr v2, v1

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 2607
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1
.end method

.method public static l([BI)Ljava/time/LocalDateTime;
    .locals 22

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0xe

    .line 2849
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 2853
    :cond_0
    aget-byte v1, v0, p1

    int-to-char v1, v1

    add-int/lit8 v2, p1, 0x1

    .line 2854
    aget-byte v2, v0, v2

    int-to-char v2, v2

    add-int/lit8 v4, p1, 0x2

    .line 2855
    aget-byte v4, v0, v4

    int-to-char v4, v4

    add-int/lit8 v5, p1, 0x3

    .line 2856
    aget-byte v5, v0, v5

    int-to-char v5, v5

    add-int/lit8 v6, p1, 0x4

    .line 2857
    aget-byte v6, v0, v6

    int-to-char v6, v6

    add-int/lit8 v7, p1, 0x5

    .line 2858
    aget-byte v7, v0, v7

    int-to-char v7, v7

    add-int/lit8 v8, p1, 0x6

    .line 2859
    aget-byte v8, v0, v8

    int-to-char v8, v8

    add-int/lit8 v9, p1, 0x7

    .line 2860
    aget-byte v9, v0, v9

    int-to-char v9, v9

    add-int/lit8 v10, p1, 0x8

    .line 2861
    aget-byte v10, v0, v10

    int-to-char v10, v10

    add-int/lit8 v11, p1, 0x9

    .line 2862
    aget-byte v11, v0, v11

    int-to-char v11, v11

    add-int/lit8 v12, p1, 0xa

    .line 2863
    aget-byte v12, v0, v12

    int-to-char v12, v12

    add-int/lit8 v13, p1, 0xb

    .line 2864
    aget-byte v13, v0, v13

    int-to-char v13, v13

    add-int/lit8 v14, p1, 0xc

    .line 2865
    aget-byte v14, v0, v14

    int-to-char v14, v14

    add-int/lit8 v15, p1, 0xd

    .line 2866
    aget-byte v0, v0, v15

    int-to-char v0, v0

    const/16 v15, 0x30

    if-lt v1, v15, :cond_7

    const/16 v3, 0x39

    if-gt v1, v3, :cond_6

    if-lt v2, v15, :cond_6

    if-gt v2, v3, :cond_6

    if-lt v4, v15, :cond_6

    if-gt v4, v3, :cond_6

    if-lt v5, v15, :cond_6

    if-gt v5, v3, :cond_6

    sub-int/2addr v1, v15

    mul-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v2, v15

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    sub-int/2addr v4, v15

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v1, v4

    sub-int/2addr v5, v15

    add-int v16, v1, v5

    if-lt v6, v15, :cond_5

    if-gt v6, v3, :cond_5

    if-lt v7, v15, :cond_5

    if-gt v7, v3, :cond_5

    sub-int/2addr v6, v15

    mul-int/lit8 v6, v6, 0xa

    sub-int/2addr v7, v15

    add-int v17, v6, v7

    if-lt v8, v15, :cond_4

    if-gt v8, v3, :cond_4

    if-lt v9, v15, :cond_4

    if-gt v9, v3, :cond_4

    sub-int/2addr v8, v15

    mul-int/lit8 v8, v8, 0xa

    sub-int/2addr v9, v15

    add-int v18, v8, v9

    if-lt v10, v15, :cond_3

    if-gt v10, v3, :cond_3

    if-lt v11, v15, :cond_3

    if-gt v11, v3, :cond_3

    sub-int/2addr v10, v15

    mul-int/lit8 v10, v10, 0xa

    sub-int/2addr v11, v15

    add-int v19, v10, v11

    if-lt v12, v15, :cond_2

    if-gt v12, v3, :cond_2

    if-lt v13, v15, :cond_2

    if-gt v13, v3, :cond_2

    sub-int/2addr v12, v15

    mul-int/lit8 v12, v12, 0xa

    sub-int/2addr v13, v15

    add-int v20, v12, v13

    if-lt v14, v15, :cond_1

    if-gt v14, v3, :cond_1

    if-lt v0, v15, :cond_1

    if-gt v0, v3, :cond_1

    sub-int/2addr v14, v15

    mul-int/lit8 v14, v14, 0xa

    sub-int/2addr v0, v15

    add-int v21, v14, v0

    .line 2924
    invoke-static/range {v16 .. v21}, Ljava/time/LocalDateTime;->of(IIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    move-object v0, v3

    :goto_0
    return-object v0
.end method

.method public static l([CI)Ljava/time/LocalDateTime;
    .locals 22

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0xe

    .line 2767
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 2771
    :cond_0
    aget-char v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    .line 2772
    aget-char v2, v0, v2

    add-int/lit8 v4, p1, 0x2

    .line 2773
    aget-char v4, v0, v4

    add-int/lit8 v5, p1, 0x3

    .line 2774
    aget-char v5, v0, v5

    add-int/lit8 v6, p1, 0x4

    .line 2775
    aget-char v6, v0, v6

    add-int/lit8 v7, p1, 0x5

    .line 2776
    aget-char v7, v0, v7

    add-int/lit8 v8, p1, 0x6

    .line 2777
    aget-char v8, v0, v8

    add-int/lit8 v9, p1, 0x7

    .line 2778
    aget-char v9, v0, v9

    add-int/lit8 v10, p1, 0x8

    .line 2779
    aget-char v10, v0, v10

    add-int/lit8 v11, p1, 0x9

    .line 2780
    aget-char v11, v0, v11

    add-int/lit8 v12, p1, 0xa

    .line 2781
    aget-char v12, v0, v12

    add-int/lit8 v13, p1, 0xb

    .line 2782
    aget-char v13, v0, v13

    add-int/lit8 v14, p1, 0xc

    .line 2783
    aget-char v14, v0, v14

    add-int/lit8 v15, p1, 0xd

    .line 2784
    aget-char v0, v0, v15

    const/16 v15, 0x30

    if-lt v1, v15, :cond_7

    const/16 v3, 0x39

    if-gt v1, v3, :cond_6

    if-lt v2, v15, :cond_6

    if-gt v2, v3, :cond_6

    if-lt v4, v15, :cond_6

    if-gt v4, v3, :cond_6

    if-lt v5, v15, :cond_6

    if-gt v5, v3, :cond_6

    sub-int/2addr v1, v15

    mul-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v2, v15

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    sub-int/2addr v4, v15

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v1, v4

    sub-int/2addr v5, v15

    add-int v16, v1, v5

    if-lt v6, v15, :cond_5

    if-gt v6, v3, :cond_5

    if-lt v7, v15, :cond_5

    if-gt v7, v3, :cond_5

    sub-int/2addr v6, v15

    mul-int/lit8 v6, v6, 0xa

    sub-int/2addr v7, v15

    add-int v17, v6, v7

    if-lt v8, v15, :cond_4

    if-gt v8, v3, :cond_4

    if-lt v9, v15, :cond_4

    if-gt v9, v3, :cond_4

    sub-int/2addr v8, v15

    mul-int/lit8 v8, v8, 0xa

    sub-int/2addr v9, v15

    add-int v18, v8, v9

    if-lt v10, v15, :cond_3

    if-gt v10, v3, :cond_3

    if-lt v11, v15, :cond_3

    if-gt v11, v3, :cond_3

    sub-int/2addr v10, v15

    mul-int/lit8 v10, v10, 0xa

    sub-int/2addr v11, v15

    add-int v19, v10, v11

    if-lt v12, v15, :cond_2

    if-gt v12, v3, :cond_2

    if-lt v13, v15, :cond_2

    if-gt v13, v3, :cond_2

    sub-int/2addr v12, v15

    mul-int/lit8 v12, v12, 0xa

    sub-int/2addr v13, v15

    add-int v20, v12, v13

    if-lt v14, v15, :cond_1

    if-gt v14, v3, :cond_1

    if-lt v0, v15, :cond_1

    if-gt v0, v3, :cond_1

    sub-int/2addr v14, v15

    mul-int/lit8 v14, v14, 0xa

    sub-int/2addr v0, v15

    add-int v21, v14, v0

    .line 2842
    invoke-static/range {v16 .. v21}, Ljava/time/LocalDateTime;->of(IIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    move-object v0, v3

    :goto_0
    return-object v0
.end method

.method public static m([BI)Ljava/time/LocalDateTime;
    .locals 25

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x10

    .line 3127
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 3131
    :cond_0
    aget-byte v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    .line 3132
    aget-byte v2, v0, v2

    add-int/lit8 v4, p1, 0x2

    .line 3133
    aget-byte v4, v0, v4

    add-int/lit8 v5, p1, 0x3

    .line 3134
    aget-byte v5, v0, v5

    add-int/lit8 v6, p1, 0x4

    .line 3135
    aget-byte v6, v0, v6

    add-int/lit8 v7, p1, 0x5

    .line 3136
    aget-byte v7, v0, v7

    add-int/lit8 v8, p1, 0x6

    .line 3137
    aget-byte v8, v0, v8

    add-int/lit8 v9, p1, 0x7

    .line 3138
    aget-byte v9, v0, v9

    add-int/lit8 v10, p1, 0x8

    .line 3139
    aget-byte v10, v0, v10

    add-int/lit8 v11, p1, 0x9

    .line 3140
    aget-byte v11, v0, v11

    add-int/lit8 v12, p1, 0xa

    .line 3141
    aget-byte v12, v0, v12

    add-int/lit8 v13, p1, 0xb

    .line 3142
    aget-byte v13, v0, v13

    add-int/lit8 v14, p1, 0xc

    .line 3143
    aget-byte v14, v0, v14

    add-int/lit8 v15, p1, 0xd

    .line 3144
    aget-byte v15, v0, v15

    add-int/lit8 v16, p1, 0xe

    .line 3145
    aget-byte v3, v0, v16

    add-int/lit8 v16, p1, 0xf

    .line 3146
    aget-byte v0, v0, v16

    move/from16 p0, v0

    const/16 v0, 0x2d

    if-ne v6, v0, :cond_2

    if-ne v9, v0, :cond_2

    const/16 v0, 0x54

    if-eq v12, v0, :cond_1

    const/16 v0, 0x20

    if-ne v12, v0, :cond_2

    :cond_1
    const/16 v0, 0x3a

    if-ne v15, v0, :cond_2

    int-to-char v0, v1

    int-to-char v1, v2

    int-to-char v2, v4

    int-to-char v4, v5

    int-to-char v5, v7

    int-to-char v6, v8

    int-to-char v7, v10

    int-to-char v8, v11

    int-to-char v9, v13

    int-to-char v10, v14

    int-to-char v3, v3

    move/from16 v11, p0

    int-to-char v11, v11

    move v12, v11

    const/16 v13, 0x30

    const/16 v14, 0x30

    move v11, v3

    move v3, v5

    move v5, v7

    goto :goto_0

    :cond_2
    move/from16 v0, p0

    move/from16 v20, v3

    const/16 v3, 0x54

    if-ne v10, v3, :cond_3

    const/16 v3, 0x5a

    if-ne v0, v3, :cond_3

    int-to-char v0, v1

    int-to-char v1, v2

    int-to-char v2, v4

    int-to-char v4, v5

    int-to-char v3, v6

    int-to-char v6, v7

    int-to-char v5, v8

    int-to-char v8, v9

    int-to-char v7, v11

    int-to-char v9, v12

    int-to-char v10, v13

    int-to-char v11, v14

    int-to-char v12, v15

    move/from16 v13, v20

    int-to-char v13, v13

    move v14, v13

    move v13, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v7

    :goto_0
    const/16 v7, 0x30

    goto/16 :goto_2

    :cond_3
    move/from16 v3, v20

    move/from16 v20, v14

    const/16 v14, -0x1b

    move/from16 v23, v13

    const/16 v13, -0x1a

    if-ne v6, v14, :cond_4

    const/16 v14, -0x47

    if-ne v7, v14, :cond_4

    const/16 v14, -0x4c

    if-ne v8, v14, :cond_4

    if-ne v10, v13, :cond_4

    const/16 v14, -0x64

    if-ne v11, v14, :cond_4

    const/16 v14, -0x78

    if-ne v12, v14, :cond_4

    if-ne v15, v13, :cond_4

    const/16 v14, -0x69

    if-ne v3, v14, :cond_4

    const/16 v14, -0x5b

    if-ne v0, v14, :cond_4

    int-to-char v0, v1

    int-to-char v1, v2

    int-to-char v2, v4

    int-to-char v4, v5

    int-to-char v6, v9

    move/from16 v14, v23

    int-to-char v3, v14

    move/from16 v5, v20

    int-to-char v8, v5

    move v5, v3

    const/16 v3, 0x30

    :goto_1
    const/16 v7, 0x30

    const/16 v9, 0x30

    const/16 v10, 0x30

    const/16 v11, 0x30

    const/16 v12, 0x30

    const/16 v13, 0x30

    const/16 v14, 0x30

    goto/16 :goto_2

    :cond_4
    move/from16 v24, v20

    move/from16 v14, v23

    const/16 v13, -0x1b

    if-ne v6, v13, :cond_5

    const/16 v13, -0x47

    if-ne v7, v13, :cond_5

    const/16 v13, -0x4c

    if-ne v8, v13, :cond_5

    const/16 v13, -0x1a

    if-ne v11, v13, :cond_5

    const/16 v13, -0x64

    if-ne v12, v13, :cond_5

    const/16 v13, -0x78

    if-ne v14, v13, :cond_5

    const/16 v13, -0x1a

    if-ne v15, v13, :cond_5

    const/16 v13, -0x69

    if-ne v3, v13, :cond_5

    const/16 v13, -0x5b

    if-ne v0, v13, :cond_5

    int-to-char v0, v1

    int-to-char v1, v2

    int-to-char v2, v4

    int-to-char v4, v5

    int-to-char v3, v9

    int-to-char v6, v10

    move/from16 v13, v24

    int-to-char v8, v13

    const/16 v5, 0x30

    goto :goto_1

    :cond_5
    move/from16 v13, v24

    move/from16 p0, v0

    const/16 v0, 0x2d

    if-ne v6, v0, :cond_7

    if-ne v9, v0, :cond_7

    const/16 v0, 0x54

    if-eq v12, v0, :cond_6

    const/16 v0, 0x20

    if-ne v12, v0, :cond_8

    :cond_6
    const/16 v0, 0x3a

    if-ne v13, v0, :cond_7

    if-ne v3, v0, :cond_7

    int-to-char v0, v1

    int-to-char v1, v2

    int-to-char v2, v4

    int-to-char v4, v5

    int-to-char v3, v7

    int-to-char v6, v8

    int-to-char v5, v10

    int-to-char v8, v11

    int-to-char v7, v14

    int-to-char v9, v15

    move/from16 v10, p0

    int-to-char v10, v10

    move v12, v9

    move v14, v10

    const/16 v9, 0x30

    const/16 v11, 0x30

    const/16 v13, 0x30

    move v10, v7

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x20

    :cond_8
    if-ne v2, v0, :cond_a

    if-ne v7, v0, :cond_a

    if-ne v12, v0, :cond_a

    const/16 v0, 0x3a

    if-ne v15, v0, :cond_a

    int-to-char v0, v8

    int-to-char v2, v9

    int-to-char v7, v10

    int-to-char v8, v11

    int-to-char v4, v4

    int-to-char v5, v5

    int-to-char v6, v6

    .line 3246
    invoke-static {v4, v5, v6}, Laay;->a(CCC)I

    move-result v4

    if-lez v4, :cond_9

    .line 3248
    div-int/lit8 v5, v4, 0xa

    const/16 v6, 0x30

    add-int/2addr v5, v6

    int-to-char v5, v5

    .line 3249
    rem-int/lit8 v4, v4, 0xa

    add-int/2addr v4, v6

    int-to-char v6, v4

    int-to-char v1, v1

    int-to-char v4, v14

    int-to-char v9, v13

    int-to-char v3, v3

    move/from16 v10, p0

    int-to-char v10, v10

    move v11, v3

    move v3, v5

    move v12, v10

    const/16 v5, 0x30

    const/16 v13, 0x30

    const/16 v14, 0x30

    move v10, v9

    move v9, v4

    move v4, v8

    move v8, v1

    move v1, v2

    move v2, v7

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    return-object v0

    :cond_a
    const/16 v0, 0x20

    if-ne v2, v0, :cond_12

    if-ne v7, v0, :cond_12

    if-ne v12, v0, :cond_12

    const/16 v0, 0x3a

    if-ne v13, v0, :cond_12

    if-ne v3, v0, :cond_12

    int-to-char v0, v1

    int-to-char v1, v4

    int-to-char v2, v5

    int-to-char v3, v6

    .line 3268
    invoke-static {v1, v2, v3}, Laay;->a(CCC)I

    move-result v1

    if-lez v1, :cond_11

    .line 3270
    div-int/lit8 v2, v1, 0xa

    const/16 v7, 0x30

    add-int/2addr v2, v7

    int-to-char v2, v2

    .line 3271
    rem-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v7

    int-to-char v6, v1

    int-to-char v1, v8

    int-to-char v3, v9

    int-to-char v4, v10

    int-to-char v5, v11

    int-to-char v8, v14

    int-to-char v9, v15

    move/from16 v10, p0

    int-to-char v10, v10

    move v11, v7

    move v13, v11

    move v12, v9

    move v14, v10

    move v9, v13

    move v10, v8

    move v8, v0

    move v0, v1

    move v1, v3

    move v3, v2

    move v2, v4

    move v4, v5

    move v5, v9

    :goto_2
    if-lt v0, v7, :cond_10

    const/16 v15, 0x39

    if-gt v0, v15, :cond_10

    if-lt v1, v7, :cond_10

    if-gt v1, v15, :cond_10

    if-lt v2, v7, :cond_10

    if-gt v2, v15, :cond_10

    if-lt v4, v7, :cond_10

    if-gt v4, v15, :cond_10

    sub-int/2addr v0, v7

    mul-int/lit16 v0, v0, 0x3e8

    sub-int/2addr v1, v7

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    sub-int/2addr v2, v7

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v0, v2

    sub-int/2addr v4, v7

    add-int v17, v0, v4

    if-lt v3, v7, :cond_f

    if-gt v3, v15, :cond_f

    if-lt v6, v7, :cond_f

    if-gt v6, v15, :cond_f

    sub-int/2addr v3, v7

    mul-int/lit8 v3, v3, 0xa

    sub-int/2addr v6, v7

    add-int v18, v3, v6

    if-lt v5, v7, :cond_e

    if-gt v5, v15, :cond_e

    if-lt v8, v7, :cond_e

    if-gt v8, v15, :cond_e

    sub-int/2addr v5, v7

    mul-int/lit8 v5, v5, 0xa

    sub-int/2addr v8, v7

    add-int v19, v5, v8

    if-lt v9, v7, :cond_d

    if-gt v9, v15, :cond_d

    if-lt v10, v7, :cond_d

    if-gt v10, v15, :cond_d

    sub-int/2addr v9, v7

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v10, v7

    add-int v20, v9, v10

    if-lt v11, v7, :cond_c

    if-gt v11, v15, :cond_c

    if-lt v12, v7, :cond_c

    if-gt v12, v15, :cond_c

    sub-int/2addr v11, v7

    mul-int/lit8 v11, v11, 0xa

    sub-int/2addr v12, v7

    add-int v21, v11, v12

    if-lt v13, v7, :cond_b

    if-gt v13, v15, :cond_b

    if-lt v14, v7, :cond_b

    if-gt v14, v15, :cond_b

    sub-int/2addr v13, v7

    mul-int/lit8 v13, v13, 0xa

    sub-int/2addr v14, v7

    add-int v22, v13, v14

    .line 3348
    invoke-static/range {v17 .. v22}, Ljava/time/LocalDateTime;->of(IIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0

    :cond_c
    const/4 v0, 0x0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0

    :cond_e
    const/4 v0, 0x0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0

    :cond_10
    const/4 v0, 0x0

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0

    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public static m([CI)Ljava/time/LocalDateTime;
    .locals 24

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x10

    .line 2935
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 2939
    :cond_0
    aget-char v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    .line 2940
    aget-char v2, v0, v2

    add-int/lit8 v4, p1, 0x2

    .line 2941
    aget-char v4, v0, v4

    add-int/lit8 v5, p1, 0x3

    .line 2942
    aget-char v5, v0, v5

    add-int/lit8 v6, p1, 0x4

    .line 2943
    aget-char v6, v0, v6

    add-int/lit8 v7, p1, 0x5

    .line 2944
    aget-char v7, v0, v7

    add-int/lit8 v8, p1, 0x6

    .line 2945
    aget-char v8, v0, v8

    add-int/lit8 v9, p1, 0x7

    .line 2946
    aget-char v9, v0, v9

    add-int/lit8 v10, p1, 0x8

    .line 2947
    aget-char v10, v0, v10

    add-int/lit8 v11, p1, 0x9

    .line 2948
    aget-char v11, v0, v11

    add-int/lit8 v12, p1, 0xa

    .line 2949
    aget-char v12, v0, v12

    add-int/lit8 v13, p1, 0xb

    .line 2950
    aget-char v13, v0, v13

    add-int/lit8 v14, p1, 0xc

    .line 2951
    aget-char v14, v0, v14

    add-int/lit8 v15, p1, 0xd

    .line 2952
    aget-char v15, v0, v15

    add-int/lit8 v16, p1, 0xe

    .line 2953
    aget-char v3, v0, v16

    add-int/lit8 v16, p1, 0xf

    .line 2954
    aget-char v0, v0, v16

    move/from16 v16, v1

    const/16 v1, 0x2d

    if-ne v6, v1, :cond_2

    if-ne v9, v1, :cond_2

    const/16 v1, 0x54

    if-eq v12, v1, :cond_1

    const/16 v1, 0x20

    if-ne v12, v1, :cond_2

    :cond_1
    const/16 v1, 0x3a

    if-ne v15, v1, :cond_2

    move v15, v0

    move v6, v7

    move v7, v8

    move v0, v10

    move/from16 v8, v16

    const/16 v1, 0x30

    const/16 v9, 0x30

    :goto_0
    move v10, v4

    const/16 v4, 0x30

    goto/16 :goto_1

    :cond_2
    const/16 v1, 0x54

    if-ne v10, v1, :cond_3

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_3

    move v10, v4

    move v0, v8

    move v1, v15

    move/from16 v8, v16

    const/16 v4, 0x30

    move v15, v14

    move v14, v12

    move/from16 v23, v9

    move v9, v3

    move v3, v13

    move v13, v11

    move/from16 v11, v23

    goto/16 :goto_1

    :cond_3
    const/16 v1, 0x2d

    if-ne v6, v1, :cond_5

    if-ne v9, v1, :cond_5

    const/16 v1, 0x54

    if-eq v12, v1, :cond_4

    const/16 v1, 0x20

    if-ne v12, v1, :cond_6

    :cond_4
    const/16 v1, 0x3a

    if-ne v14, v1, :cond_5

    if-ne v3, v1, :cond_5

    move v9, v0

    move v6, v7

    move v7, v8

    move v0, v10

    move v14, v13

    move/from16 v8, v16

    const/16 v1, 0x30

    const/16 v3, 0x30

    const/16 v13, 0x30

    goto :goto_0

    :cond_5
    const/16 v1, 0x20

    :cond_6
    if-ne v2, v1, :cond_9

    if-ne v7, v1, :cond_9

    if-ne v12, v1, :cond_9

    const/16 v1, 0x3a

    if-ne v15, v1, :cond_8

    .line 3014
    invoke-static {v4, v5, v6}, Laay;->a(CCC)I

    move-result v1

    if-lez v1, :cond_7

    .line 3016
    div-int/lit8 v2, v1, 0xa

    const/16 v4, 0x30

    add-int/2addr v2, v4

    int-to-char v6, v2

    .line 3017
    rem-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v4

    int-to-char v7, v1

    move v15, v0

    move v2, v9

    move v5, v11

    move/from16 v11, v16

    const/16 v0, 0x30

    const/16 v1, 0x30

    const/16 v4, 0x30

    const/16 v9, 0x30

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    return-object v0

    :cond_8
    const/16 v1, 0x20

    :cond_9
    if-ne v2, v1, :cond_11

    if-ne v7, v1, :cond_11

    if-ne v12, v1, :cond_11

    const/16 v1, 0x3a

    if-ne v14, v1, :cond_11

    if-ne v3, v1, :cond_11

    .line 3036
    invoke-static {v4, v5, v6}, Laay;->a(CCC)I

    move-result v1

    if-lez v1, :cond_10

    .line 3038
    div-int/lit8 v2, v1, 0xa

    const/16 v4, 0x30

    add-int/2addr v2, v4

    int-to-char v6, v2

    .line 3039
    rem-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v4

    int-to-char v7, v1

    move v1, v4

    move v3, v1

    move v2, v9

    move v5, v11

    move v14, v13

    move/from16 v11, v16

    move v9, v0

    move v0, v3

    move v13, v0

    :goto_1
    if-lt v8, v4, :cond_f

    const/16 v12, 0x39

    if-gt v8, v12, :cond_f

    if-lt v2, v4, :cond_f

    if-gt v2, v12, :cond_f

    if-lt v10, v4, :cond_f

    if-gt v10, v12, :cond_f

    if-lt v5, v4, :cond_f

    if-gt v5, v12, :cond_f

    sub-int/2addr v8, v4

    mul-int/lit16 v8, v8, 0x3e8

    sub-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v8, v2

    sub-int/2addr v10, v4

    mul-int/lit8 v10, v10, 0xa

    add-int/2addr v8, v10

    sub-int/2addr v5, v4

    add-int v17, v8, v5

    if-lt v6, v4, :cond_e

    if-gt v6, v12, :cond_e

    if-lt v7, v4, :cond_e

    if-gt v7, v12, :cond_e

    sub-int/2addr v6, v4

    mul-int/lit8 v6, v6, 0xa

    sub-int/2addr v7, v4

    add-int v18, v6, v7

    if-lt v0, v4, :cond_d

    if-gt v0, v12, :cond_d

    if-lt v11, v4, :cond_d

    if-gt v11, v12, :cond_d

    sub-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v11, v4

    add-int v19, v0, v11

    if-lt v13, v4, :cond_c

    if-gt v13, v12, :cond_c

    if-lt v14, v4, :cond_c

    if-gt v14, v12, :cond_c

    sub-int/2addr v13, v4

    mul-int/lit8 v13, v13, 0xa

    sub-int/2addr v14, v4

    add-int v20, v13, v14

    if-lt v3, v4, :cond_b

    if-gt v3, v12, :cond_b

    if-lt v15, v4, :cond_b

    if-gt v15, v12, :cond_b

    sub-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0xa

    sub-int/2addr v15, v4

    add-int v21, v3, v15

    if-lt v1, v4, :cond_a

    if-gt v1, v12, :cond_a

    if-lt v9, v4, :cond_a

    if-gt v9, v12, :cond_a

    sub-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr v9, v4

    add-int v22, v1, v9

    .line 3116
    invoke-static/range {v17 .. v22}, Ljava/time/LocalDateTime;->of(IIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_a
    const/4 v0, 0x0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0

    :cond_c
    const/4 v0, 0x0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0

    :cond_e
    const/4 v0, 0x0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0

    :cond_10
    const/4 v0, 0x0

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public static n([BI)Ljava/time/LocalDateTime;
    .locals 33

    move-object/from16 v0, p0

    move/from16 v1, p1

    add-int/lit8 v2, v1, 0x11

    .line 3653
    array-length v3, v0

    const-string v4, "illegal input "

    if-gt v2, v3, :cond_18

    .line 3658
    aget-byte v2, v0, v1

    add-int/lit8 v3, v1, 0x1

    .line 3659
    aget-byte v3, v0, v3

    add-int/lit8 v6, v1, 0x2

    .line 3660
    aget-byte v6, v0, v6

    add-int/lit8 v7, v1, 0x3

    .line 3661
    aget-byte v7, v0, v7

    add-int/lit8 v8, v1, 0x4

    .line 3662
    aget-byte v8, v0, v8

    add-int/lit8 v9, v1, 0x5

    .line 3663
    aget-byte v9, v0, v9

    add-int/lit8 v10, v1, 0x6

    .line 3664
    aget-byte v10, v0, v10

    add-int/lit8 v11, v1, 0x7

    .line 3665
    aget-byte v11, v0, v11

    add-int/lit8 v12, v1, 0x8

    .line 3666
    aget-byte v12, v0, v12

    add-int/lit8 v13, v1, 0x9

    .line 3667
    aget-byte v13, v0, v13

    add-int/lit8 v14, v1, 0xa

    .line 3668
    aget-byte v14, v0, v14

    add-int/lit8 v15, v1, 0xb

    .line 3669
    aget-byte v15, v0, v15

    add-int/lit8 v16, v1, 0xc

    .line 3670
    aget-byte v5, v0, v16

    add-int/lit8 v16, v1, 0xd

    move-object/from16 v17, v4

    .line 3671
    aget-byte v4, v0, v16

    add-int/lit8 v16, v1, 0xe

    move/from16 v18, v5

    .line 3672
    aget-byte v5, v0, v16

    add-int/lit8 v16, v1, 0xf

    move/from16 v19, v5

    .line 3673
    aget-byte v5, v0, v16

    add-int/lit8 v16, v1, 0x10

    .line 3674
    aget-byte v1, v0, v16

    const/16 v0, 0x2d

    if-ne v8, v0, :cond_1

    if-ne v11, v0, :cond_1

    const/16 v0, 0x54

    if-eq v14, v0, :cond_0

    const/16 v0, 0x20

    if-ne v14, v0, :cond_1

    :cond_0
    const/16 v0, 0x3a

    if-ne v4, v0, :cond_1

    const/16 v0, 0x5a

    if-ne v1, v0, :cond_1

    int-to-char v0, v2

    int-to-char v1, v3

    int-to-char v2, v6

    int-to-char v3, v7

    int-to-char v4, v9

    int-to-char v6, v10

    int-to-char v7, v12

    int-to-char v8, v13

    int-to-char v9, v15

    move/from16 v10, v18

    int-to-char v10, v10

    move/from16 v11, v19

    int-to-char v11, v11

    int-to-char v5, v5

    move v15, v5

    move v14, v11

    move-object/from16 v31, v17

    const/16 v11, 0x30

    const/16 v12, 0x30

    const/16 v26, 0x0

    move v5, v2

    move v2, v7

    move v7, v3

    move v3, v1

    move v1, v0

    :goto_0
    const/16 v0, 0x30

    goto/16 :goto_4

    :cond_1
    move/from16 v0, v18

    move/from16 v18, v1

    move/from16 v1, v19

    move/from16 v19, v5

    const/16 v5, 0x2d

    if-ne v8, v5, :cond_3

    if-ne v10, v5, :cond_3

    const/16 v5, 0x20

    if-eq v12, v5, :cond_2

    const/16 v5, 0x54

    if-ne v12, v5, :cond_3

    :cond_2
    const/16 v5, 0x3a

    if-ne v15, v5, :cond_3

    if-ne v1, v5, :cond_3

    int-to-char v1, v2

    int-to-char v2, v3

    int-to-char v3, v6

    int-to-char v5, v7

    int-to-char v6, v9

    int-to-char v8, v11

    int-to-char v7, v13

    int-to-char v9, v14

    int-to-char v0, v0

    int-to-char v4, v4

    move/from16 v10, v19

    int-to-char v10, v10

    move/from16 v11, v18

    int-to-char v11, v11

    move v14, v0

    move v15, v4

    move v12, v11

    move-object/from16 v31, v17

    const/16 v0, 0x30

    const/16 v4, 0x30

    const/16 v26, 0x0

    move v11, v10

    move v10, v9

    move v9, v7

    move v7, v5

    move v5, v3

    move v3, v2

    const/16 v2, 0x30

    goto/16 :goto_4

    :cond_3
    move/from16 v16, v4

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v18, v0

    const/16 v0, -0x1b

    if-ne v8, v0, :cond_4

    const/16 v0, -0x47

    if-ne v9, v0, :cond_4

    const/16 v0, -0x4c

    if-ne v10, v0, :cond_4

    const/16 v0, -0x1a

    if-ne v13, v0, :cond_4

    const/16 v0, -0x64

    if-ne v14, v0, :cond_4

    const/16 v0, -0x78

    if-ne v15, v0, :cond_4

    const/16 v0, -0x1a

    if-ne v1, v0, :cond_4

    const/16 v0, -0x69

    if-ne v5, v0, :cond_4

    const/16 v0, -0x5b

    if-ne v4, v0, :cond_4

    int-to-char v0, v2

    int-to-char v1, v3

    int-to-char v2, v6

    int-to-char v3, v7

    int-to-char v4, v11

    int-to-char v6, v12

    move/from16 v5, v18

    int-to-char v5, v5

    move/from16 v7, v16

    int-to-char v8, v7

    move v7, v3

    move-object/from16 v31, v17

    const/16 v9, 0x30

    const/16 v10, 0x30

    const/16 v11, 0x30

    const/16 v12, 0x30

    const/16 v14, 0x30

    const/16 v15, 0x30

    const/16 v26, 0x0

    move v3, v1

    move v1, v0

    const/16 v0, 0x30

    move/from16 v32, v5

    move v5, v2

    move/from16 v2, v32

    goto/16 :goto_4

    :cond_4
    move/from16 v0, v18

    move/from16 v18, v4

    move/from16 v4, v16

    move/from16 v19, v5

    const/16 v5, 0x20

    if-ne v6, v5, :cond_6

    if-ne v10, v5, :cond_6

    if-ne v15, v5, :cond_6

    const/16 v5, 0x3a

    if-ne v1, v5, :cond_6

    int-to-char v1, v11

    int-to-char v5, v12

    int-to-char v6, v13

    int-to-char v10, v14

    int-to-char v7, v7

    int-to-char v8, v8

    int-to-char v9, v9

    .line 3747
    invoke-static {v7, v8, v9}, Laay;->a(CCC)I

    move-result v7

    if-lez v7, :cond_5

    .line 3749
    div-int/lit8 v8, v7, 0xa

    const/16 v9, 0x30

    add-int/2addr v8, v9

    int-to-char v8, v8

    .line 3750
    rem-int/lit8 v7, v7, 0xa

    add-int/2addr v7, v9

    int-to-char v7, v7

    int-to-char v2, v2

    int-to-char v3, v3

    int-to-char v0, v0

    int-to-char v4, v4

    move/from16 v9, v19

    int-to-char v9, v9

    move/from16 v11, v18

    int-to-char v11, v11

    move v14, v9

    move v15, v11

    move-object/from16 v31, v17

    const/16 v11, 0x30

    const/16 v12, 0x30

    const/16 v26, 0x0

    move v9, v0

    const/16 v0, 0x30

    move/from16 v32, v8

    move v8, v3

    move v3, v5

    move v5, v6

    move v6, v7

    move v7, v10

    move v10, v4

    move/from16 v4, v32

    goto/16 :goto_4

    .line 3752
    :cond_5
    new-instance v0, Ljava/lang/String;

    const/16 v2, 0x11

    move-object/from16 v5, p0

    move/from16 v1, p1

    invoke-direct {v0, v5, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 3753
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v17

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_6
    move-object/from16 v23, v17

    move/from16 v22, v18

    const/16 v5, 0x20

    if-ne v3, v5, :cond_8

    if-ne v9, v5, :cond_8

    if-ne v14, v5, :cond_8

    const/16 v5, 0x3a

    if-ne v0, v5, :cond_8

    if-ne v1, v5, :cond_8

    int-to-char v0, v2

    int-to-char v1, v6

    int-to-char v2, v7

    int-to-char v3, v8

    .line 3773
    invoke-static {v1, v2, v3}, Laay;->a(CCC)I

    move-result v1

    if-lez v1, :cond_7

    .line 3775
    div-int/lit8 v2, v1, 0xa

    const/16 v3, 0x30

    add-int/2addr v2, v3

    int-to-char v2, v2

    .line 3776
    rem-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v3

    int-to-char v6, v1

    int-to-char v1, v10

    int-to-char v3, v11

    int-to-char v5, v12

    int-to-char v7, v13

    int-to-char v8, v15

    int-to-char v4, v4

    move/from16 v9, v19

    int-to-char v9, v9

    move/from16 v10, v22

    int-to-char v10, v10

    move v15, v4

    move v11, v9

    move v12, v10

    move-object/from16 v31, v23

    const/16 v9, 0x30

    const/16 v14, 0x30

    :goto_1
    const/16 v26, 0x0

    move v4, v2

    move v10, v8

    const/16 v2, 0x30

    move v8, v0

    goto/16 :goto_0

    .line 3778
    :cond_7
    new-instance v0, Ljava/lang/String;

    const/16 v2, 0x11

    move-object/from16 v5, p0

    move/from16 v1, p1

    invoke-direct {v0, v5, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 3779
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v23

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_8
    move/from16 v5, v19

    move/from16 v24, v22

    move-object/from16 v25, v23

    move/from16 v19, v1

    const/16 v1, 0x20

    if-ne v3, v1, :cond_b

    if-ne v9, v1, :cond_b

    if-ne v14, v1, :cond_b

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_a

    if-ne v5, v1, :cond_a

    int-to-char v0, v2

    int-to-char v1, v6

    int-to-char v2, v7

    int-to-char v3, v8

    .line 3801
    invoke-static {v1, v2, v3}, Laay;->a(CCC)I

    move-result v1

    if-lez v1, :cond_9

    .line 3803
    div-int/lit8 v2, v1, 0xa

    const/16 v3, 0x30

    add-int/2addr v2, v3

    int-to-char v2, v2

    .line 3804
    rem-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v3

    int-to-char v6, v1

    int-to-char v1, v10

    int-to-char v3, v11

    int-to-char v5, v12

    int-to-char v7, v13

    int-to-char v8, v15

    int-to-char v4, v4

    move/from16 v9, v19

    int-to-char v9, v9

    move/from16 v10, v24

    int-to-char v10, v10

    move v14, v4

    move v15, v9

    move v12, v10

    move-object/from16 v31, v25

    const/16 v9, 0x30

    const/16 v11, 0x30

    goto :goto_1

    .line 3806
    :cond_9
    new-instance v0, Ljava/lang/String;

    const/16 v3, 0x11

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 3807
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_a
    move/from16 v26, v24

    move-object/from16 v27, v25

    const/16 v1, 0x20

    goto :goto_2

    :cond_b
    move/from16 v26, v24

    move-object/from16 v27, v25

    :goto_2
    if-ne v3, v1, :cond_e

    if-ne v9, v1, :cond_e

    if-ne v14, v1, :cond_e

    const/16 v1, 0x3a

    if-ne v4, v1, :cond_d

    if-ne v5, v1, :cond_d

    int-to-char v1, v2

    int-to-char v2, v6

    int-to-char v3, v7

    int-to-char v4, v8

    .line 3829
    invoke-static {v2, v3, v4}, Laay;->a(CCC)I

    move-result v2

    if-lez v2, :cond_c

    .line 3831
    div-int/lit8 v3, v2, 0xa

    const/16 v4, 0x30

    add-int/2addr v3, v4

    int-to-char v3, v3

    .line 3832
    rem-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v4

    int-to-char v6, v2

    int-to-char v2, v10

    int-to-char v4, v11

    int-to-char v5, v12

    int-to-char v7, v13

    int-to-char v8, v15

    int-to-char v0, v0

    move/from16 v9, v19

    int-to-char v9, v9

    move/from16 v10, v26

    int-to-char v10, v10

    move v15, v9

    move v12, v10

    move-object/from16 v31, v27

    const/16 v11, 0x30

    const/16 v14, 0x30

    const/16 v26, 0x0

    move v10, v0

    move v9, v8

    const/16 v0, 0x30

    move v8, v1

    move v1, v2

    const/16 v2, 0x30

    move/from16 v32, v4

    move v4, v3

    move/from16 v3, v32

    goto/16 :goto_4

    .line 3834
    :cond_c
    new-instance v0, Ljava/lang/String;

    const/16 v3, 0x11

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 3835
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_d
    move/from16 v28, v26

    move-object/from16 v29, v27

    const/16 v1, 0x20

    goto :goto_3

    :cond_e
    move/from16 v28, v26

    move-object/from16 v29, v27

    :goto_3
    if-ne v6, v1, :cond_10

    if-ne v10, v1, :cond_10

    if-ne v15, v1, :cond_10

    const/16 v1, 0x3a

    if-ne v4, v1, :cond_10

    if-ne v5, v1, :cond_10

    int-to-char v1, v2

    int-to-char v2, v3

    int-to-char v3, v7

    int-to-char v4, v8

    int-to-char v5, v9

    .line 3857
    invoke-static {v3, v4, v5}, Laay;->a(CCC)I

    move-result v3

    if-lez v3, :cond_f

    .line 3859
    div-int/lit8 v4, v3, 0xa

    const/16 v5, 0x30

    add-int/2addr v4, v5

    int-to-char v4, v4

    .line 3860
    rem-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v5

    int-to-char v6, v3

    int-to-char v3, v11

    int-to-char v5, v12

    int-to-char v7, v13

    int-to-char v8, v14

    int-to-char v0, v0

    move/from16 v9, v19

    int-to-char v9, v9

    move/from16 v10, v28

    int-to-char v10, v10

    move v15, v9

    move v12, v10

    move-object/from16 v31, v29

    const/16 v9, 0x30

    const/16 v11, 0x30

    const/16 v14, 0x30

    const/16 v26, 0x0

    move v10, v0

    const/16 v0, 0x30

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move v3, v5

    move v5, v7

    move v7, v8

    move/from16 v8, v32

    goto/16 :goto_4

    .line 3862
    :cond_f
    new-instance v0, Ljava/lang/String;

    const/16 v3, 0x11

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 3863
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_10
    move/from16 v1, v19

    move/from16 v30, v28

    move-object/from16 v31, v29

    int-to-char v2, v2

    int-to-char v3, v3

    int-to-char v6, v6

    int-to-char v7, v7

    int-to-char v8, v8

    int-to-char v9, v9

    int-to-char v10, v10

    int-to-char v11, v11

    int-to-char v12, v12

    int-to-char v13, v13

    int-to-char v14, v14

    int-to-char v15, v15

    int-to-char v0, v0

    int-to-char v4, v4

    move/from16 v16, v0

    const/16 v0, 0x30

    if-lt v1, v0, :cond_17

    move/from16 v17, v2

    const/16 v2, 0x39

    if-gt v1, v2, :cond_17

    if-lt v5, v0, :cond_17

    if-gt v5, v2, :cond_17

    move/from16 v18, v3

    move/from16 v3, v30

    if-lt v3, v0, :cond_17

    if-gt v3, v2, :cond_17

    sub-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x64

    sub-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v1, v5

    add-int/lit8 v2, v3, -0x30

    add-int/2addr v1, v2

    const v2, 0xf4240

    mul-int v5, v1, v2

    move/from16 v26, v5

    move v5, v6

    move v6, v9

    move v2, v10

    move v9, v12

    move v10, v13

    move/from16 v1, v17

    move/from16 v3, v18

    move v12, v4

    move v4, v8

    move v8, v11

    move/from16 v11, v16

    :goto_4
    if-lt v1, v0, :cond_16

    const/16 v13, 0x39

    if-gt v1, v13, :cond_16

    if-lt v3, v0, :cond_16

    if-gt v3, v13, :cond_16

    if-lt v5, v0, :cond_16

    if-gt v5, v13, :cond_16

    if-lt v7, v0, :cond_16

    if-gt v7, v13, :cond_16

    sub-int/2addr v1, v0

    mul-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v1, v3

    sub-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v1, v5

    sub-int/2addr v7, v0

    add-int v20, v1, v7

    if-lt v4, v0, :cond_15

    const/16 v1, 0x39

    if-gt v4, v1, :cond_15

    if-lt v6, v0, :cond_15

    if-gt v6, v1, :cond_15

    sub-int/2addr v4, v0

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr v6, v0

    add-int v21, v4, v6

    if-lt v2, v0, :cond_14

    if-gt v2, v1, :cond_14

    if-lt v8, v0, :cond_14

    if-gt v8, v1, :cond_14

    sub-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0xa

    sub-int/2addr v8, v0

    add-int v22, v2, v8

    if-lt v9, v0, :cond_13

    if-gt v9, v1, :cond_13

    if-lt v10, v0, :cond_13

    if-gt v10, v1, :cond_13

    sub-int/2addr v9, v0

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v10, v0

    add-int v23, v9, v10

    if-lt v14, v0, :cond_12

    if-gt v14, v1, :cond_12

    if-lt v15, v0, :cond_12

    if-gt v15, v1, :cond_12

    sub-int/2addr v14, v0

    mul-int/lit8 v14, v14, 0xa

    sub-int/2addr v15, v0

    add-int v24, v14, v15

    if-lt v11, v0, :cond_11

    if-gt v11, v1, :cond_11

    if-lt v12, v0, :cond_11

    if-gt v12, v1, :cond_11

    sub-int/2addr v11, v0

    mul-int/lit8 v11, v11, 0xa

    sub-int/2addr v12, v0

    add-int v25, v11, v12

    .line 3972
    invoke-static/range {v20 .. v26}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    .line 3968
    :cond_11
    new-instance v0, Ljava/lang/String;

    const/16 v3, 0x11

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 3969
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v31

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_12
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, v31

    .line 3958
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v4}, Ljava/lang/String;-><init>([BII)V

    .line 3959
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_13
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, v31

    .line 3948
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v4}, Ljava/lang/String;-><init>([BII)V

    .line 3949
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_14
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, v31

    .line 3938
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v4}, Ljava/lang/String;-><init>([BII)V

    .line 3939
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_15
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, v31

    .line 3928
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v4}, Ljava/lang/String;-><init>([BII)V

    .line 3929
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_16
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, v31

    .line 3918
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v4}, Ljava/lang/String;-><init>([BII)V

    .line 3919
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_17
    const/4 v0, 0x0

    return-object v0

    :cond_18
    move v2, v1

    move-object v3, v4

    move-object v1, v0

    .line 3654
    new-instance v0, Ljava/lang/String;

    array-length v4, v1

    sub-int/2addr v4, v2

    invoke-direct {v0, v1, v2, v4}, Ljava/lang/String;-><init>([BII)V

    .line 3655
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1
.end method

.method public static n([CI)Ljava/time/LocalDateTime;
    .locals 28

    move-object/from16 v0, p0

    move/from16 v1, p1

    add-int/lit8 v2, v1, 0x11

    .line 3358
    array-length v3, v0

    if-gt v2, v3, :cond_14

    .line 3363
    aget-char v2, v0, v1

    add-int/lit8 v3, v1, 0x1

    .line 3364
    aget-char v3, v0, v3

    add-int/lit8 v5, v1, 0x2

    .line 3365
    aget-char v5, v0, v5

    add-int/lit8 v6, v1, 0x3

    .line 3366
    aget-char v6, v0, v6

    add-int/lit8 v7, v1, 0x4

    .line 3367
    aget-char v7, v0, v7

    add-int/lit8 v8, v1, 0x5

    .line 3368
    aget-char v8, v0, v8

    add-int/lit8 v9, v1, 0x6

    .line 3369
    aget-char v9, v0, v9

    add-int/lit8 v10, v1, 0x7

    .line 3370
    aget-char v10, v0, v10

    add-int/lit8 v11, v1, 0x8

    .line 3371
    aget-char v11, v0, v11

    add-int/lit8 v12, v1, 0x9

    .line 3372
    aget-char v12, v0, v12

    add-int/lit8 v13, v1, 0xa

    .line 3373
    aget-char v13, v0, v13

    add-int/lit8 v14, v1, 0xb

    .line 3374
    aget-char v14, v0, v14

    add-int/lit8 v15, v1, 0xc

    .line 3375
    aget-char v15, v0, v15

    add-int/lit8 v16, v1, 0xd

    .line 3376
    aget-char v4, v0, v16

    add-int/lit8 v16, v1, 0xe

    move/from16 v17, v2

    .line 3377
    aget-char v2, v0, v16

    add-int/lit8 v16, v1, 0xf

    move/from16 v18, v12

    .line 3378
    aget-char v12, v0, v16

    add-int/lit8 v1, v1, 0x10

    .line 3379
    aget-char v0, v0, v1

    const/16 v16, 0x0

    const/16 v1, 0x2d

    if-ne v7, v1, :cond_2

    if-ne v10, v1, :cond_2

    const/16 v1, 0x54

    if-eq v13, v1, :cond_0

    const/16 v1, 0x20

    if-ne v13, v1, :cond_1

    :cond_0
    const/16 v1, 0x3a

    if-ne v4, v1, :cond_1

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_1

    move v10, v3

    move v7, v8

    move v8, v9

    move v4, v12

    move/from16 v9, v17

    move/from16 v3, v18

    const/16 v0, 0x30

    const/16 v1, 0x30

    :goto_0
    const/16 v12, 0x30

    :goto_1
    const/16 v26, 0x0

    goto/16 :goto_2

    :cond_1
    const/16 v1, 0x2d

    :cond_2
    if-ne v7, v1, :cond_4

    if-ne v9, v1, :cond_4

    const/16 v1, 0x20

    if-eq v11, v1, :cond_3

    const/16 v1, 0x54

    if-ne v11, v1, :cond_4

    :cond_3
    const/16 v1, 0x3a

    if-ne v14, v1, :cond_4

    if-ne v2, v1, :cond_4

    move v2, v15

    move/from16 v9, v17

    move/from16 v14, v18

    const/16 v1, 0x30

    const/16 v7, 0x30

    const/16 v11, 0x30

    const/16 v26, 0x0

    move v15, v13

    move/from16 v27, v10

    move v10, v3

    move/from16 v3, v27

    goto/16 :goto_2

    :cond_4
    const/16 v1, 0x20

    if-ne v5, v1, :cond_7

    if-ne v9, v1, :cond_7

    if-ne v14, v1, :cond_7

    const/16 v1, 0x3a

    if-ne v2, v1, :cond_6

    .line 3429
    invoke-static {v6, v7, v8}, Laay;->a(CCC)I

    move-result v1

    if-lez v1, :cond_5

    .line 3431
    div-int/lit8 v2, v1, 0xa

    const/16 v5, 0x30

    add-int/2addr v2, v5

    int-to-char v7, v2

    .line 3432
    rem-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v5

    int-to-char v8, v1

    move v9, v10

    move v10, v11

    move v2, v12

    move v6, v13

    move v14, v15

    move/from16 v11, v17

    move/from16 v5, v18

    const/16 v1, 0x30

    const/16 v12, 0x30

    const/16 v26, 0x0

    move v15, v4

    move v4, v0

    const/16 v0, 0x30

    goto/16 :goto_2

    :cond_5
    return-object v16

    :cond_6
    const/16 v1, 0x20

    :cond_7
    if-ne v3, v1, :cond_a

    if-ne v8, v1, :cond_a

    if-ne v13, v1, :cond_a

    const/16 v1, 0x3a

    if-ne v15, v1, :cond_9

    if-ne v2, v1, :cond_9

    .line 3454
    invoke-static {v5, v6, v7}, Laay;->a(CCC)I

    move-result v1

    if-lez v1, :cond_8

    .line 3456
    div-int/lit8 v2, v1, 0xa

    const/16 v3, 0x30

    add-int/2addr v2, v3

    int-to-char v7, v2

    .line 3457
    rem-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v3

    int-to-char v8, v1

    move v5, v11

    move v15, v14

    move/from16 v3, v17

    move/from16 v6, v18

    const/16 v1, 0x30

    const/16 v2, 0x30

    const/16 v11, 0x30

    const/16 v14, 0x30

    goto/16 :goto_1

    :cond_8
    return-object v16

    :cond_9
    const/16 v1, 0x20

    :cond_a
    if-ne v3, v1, :cond_d

    if-ne v8, v1, :cond_d

    if-ne v13, v1, :cond_d

    const/16 v1, 0x3a

    if-ne v15, v1, :cond_c

    if-ne v12, v1, :cond_c

    .line 3481
    invoke-static {v5, v6, v7}, Laay;->a(CCC)I

    move-result v1

    if-lez v1, :cond_b

    .line 3483
    div-int/lit8 v3, v1, 0xa

    const/16 v5, 0x30

    add-int/2addr v3, v5

    int-to-char v7, v3

    .line 3484
    rem-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v5

    int-to-char v8, v1

    move v5, v11

    move v15, v14

    move/from16 v3, v17

    move/from16 v6, v18

    const/16 v1, 0x30

    const/16 v11, 0x30

    const/16 v12, 0x30

    const/16 v14, 0x30

    const/16 v26, 0x0

    move/from16 v27, v4

    move v4, v2

    move/from16 v2, v27

    goto/16 :goto_2

    :cond_b
    return-object v16

    :cond_c
    const/16 v1, 0x20

    :cond_d
    if-ne v3, v1, :cond_10

    if-ne v8, v1, :cond_10

    if-ne v13, v1, :cond_10

    const/16 v1, 0x3a

    if-ne v4, v1, :cond_f

    if-ne v12, v1, :cond_f

    .line 3508
    invoke-static {v5, v6, v7}, Laay;->a(CCC)I

    move-result v1

    if-lez v1, :cond_e

    .line 3510
    div-int/lit8 v3, v1, 0xa

    const/16 v4, 0x30

    add-int/2addr v3, v4

    int-to-char v7, v3

    .line 3511
    rem-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v4

    int-to-char v8, v1

    move v4, v2

    move v5, v11

    move/from16 v3, v17

    move/from16 v6, v18

    const/16 v1, 0x30

    const/16 v2, 0x30

    const/16 v11, 0x30

    goto/16 :goto_0

    :cond_e
    return-object v16

    :cond_f
    const/16 v1, 0x20

    :cond_10
    if-ne v5, v1, :cond_12

    if-ne v9, v1, :cond_12

    if-ne v14, v1, :cond_12

    const/16 v1, 0x3a

    if-ne v4, v1, :cond_12

    if-ne v12, v1, :cond_12

    .line 3535
    invoke-static {v6, v7, v8}, Laay;->a(CCC)I

    move-result v1

    if-lez v1, :cond_11

    .line 3537
    div-int/lit8 v4, v1, 0xa

    const/16 v5, 0x30

    add-int/2addr v4, v5

    int-to-char v7, v4

    .line 3538
    rem-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v5

    int-to-char v8, v1

    move v4, v2

    move v1, v5

    move v2, v1

    move v12, v2

    move v14, v12

    move v9, v10

    move v10, v11

    move v6, v13

    move/from16 v11, v17

    move/from16 v5, v18

    goto/16 :goto_1

    :cond_11
    return-object v16

    :cond_12
    const/16 v1, 0x30

    if-lt v2, v1, :cond_13

    move/from16 v19, v3

    const/16 v3, 0x39

    if-gt v2, v3, :cond_13

    if-lt v12, v1, :cond_13

    if-gt v12, v3, :cond_13

    if-lt v0, v1, :cond_13

    if-gt v0, v3, :cond_13

    add-int/lit8 v2, v2, -0x30

    mul-int/lit8 v2, v2, 0x64

    add-int/lit8 v12, v12, -0x30

    mul-int/lit8 v12, v12, 0xa

    add-int/2addr v2, v12

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v2, v0

    const v0, 0xf4240

    mul-int/2addr v0, v2

    move/from16 v26, v0

    move v0, v4

    move v3, v10

    move v2, v13

    move v4, v14

    move v12, v15

    move/from16 v15, v18

    move/from16 v10, v19

    const/16 v1, 0x30

    move v14, v11

    move v11, v9

    move/from16 v9, v17

    :goto_2
    if-lt v9, v1, :cond_13

    const/16 v13, 0x39

    if-gt v9, v13, :cond_13

    if-lt v10, v1, :cond_13

    if-gt v10, v13, :cond_13

    if-lt v5, v1, :cond_13

    if-gt v5, v13, :cond_13

    if-lt v6, v1, :cond_13

    if-gt v6, v13, :cond_13

    sub-int/2addr v9, v1

    mul-int/lit16 v9, v9, 0x3e8

    sub-int/2addr v10, v1

    mul-int/lit8 v10, v10, 0x64

    add-int/2addr v9, v10

    sub-int/2addr v5, v1

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v9, v5

    sub-int/2addr v6, v1

    add-int v20, v9, v6

    if-lt v7, v1, :cond_13

    const/16 v5, 0x39

    if-gt v7, v5, :cond_13

    if-lt v8, v1, :cond_13

    if-gt v8, v5, :cond_13

    sub-int/2addr v7, v1

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr v8, v1

    add-int v21, v7, v8

    if-lt v11, v1, :cond_13

    if-gt v11, v5, :cond_13

    if-lt v3, v1, :cond_13

    if-gt v3, v5, :cond_13

    sub-int/2addr v11, v1

    mul-int/lit8 v11, v11, 0xa

    sub-int/2addr v3, v1

    add-int v22, v11, v3

    if-lt v14, v1, :cond_13

    if-gt v14, v5, :cond_13

    if-lt v15, v1, :cond_13

    if-gt v15, v5, :cond_13

    sub-int/2addr v14, v1

    mul-int/lit8 v14, v14, 0xa

    sub-int/2addr v15, v1

    add-int v23, v14, v15

    if-lt v2, v1, :cond_13

    if-gt v2, v5, :cond_13

    if-lt v4, v1, :cond_13

    if-gt v4, v5, :cond_13

    sub-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0xa

    sub-int/2addr v4, v1

    add-int v24, v2, v4

    if-lt v12, v1, :cond_13

    if-gt v12, v5, :cond_13

    if-lt v0, v1, :cond_13

    if-gt v0, v5, :cond_13

    sub-int/2addr v12, v1

    mul-int/lit8 v12, v12, 0xa

    sub-int/2addr v0, v1

    add-int v25, v12, v0

    .line 3643
    invoke-static/range {v20 .. v26}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_13
    return-object v16

    .line 3359
    :cond_14
    new-instance v2, Ljava/lang/String;

    array-length v3, v0

    sub-int/2addr v3, v1

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 3360
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal input "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0
.end method

.method public static o([BI)Ljava/time/LocalDateTime;
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p1

    add-int/lit8 v2, v1, 0x12

    .line 4364
    array-length v3, v0

    const-string v5, "illegal input "

    if-gt v2, v3, :cond_26

    .line 4369
    aget-byte v2, v0, v1

    int-to-char v2, v2

    add-int/lit8 v3, v1, 0x1

    .line 4370
    aget-byte v3, v0, v3

    int-to-char v3, v3

    add-int/lit8 v6, v1, 0x2

    .line 4371
    aget-byte v6, v0, v6

    int-to-char v6, v6

    add-int/lit8 v7, v1, 0x3

    .line 4372
    aget-byte v7, v0, v7

    int-to-char v7, v7

    add-int/lit8 v8, v1, 0x4

    .line 4373
    aget-byte v8, v0, v8

    int-to-char v8, v8

    add-int/lit8 v9, v1, 0x5

    .line 4374
    aget-byte v9, v0, v9

    int-to-char v9, v9

    add-int/lit8 v10, v1, 0x6

    .line 4375
    aget-byte v10, v0, v10

    int-to-char v10, v10

    add-int/lit8 v11, v1, 0x7

    .line 4376
    aget-byte v11, v0, v11

    int-to-char v11, v11

    add-int/lit8 v12, v1, 0x8

    .line 4377
    aget-byte v12, v0, v12

    int-to-char v12, v12

    add-int/lit8 v13, v1, 0x9

    .line 4378
    aget-byte v13, v0, v13

    int-to-char v13, v13

    add-int/lit8 v14, v1, 0xa

    .line 4379
    aget-byte v14, v0, v14

    int-to-char v14, v14

    add-int/lit8 v15, v1, 0xb

    .line 4380
    aget-byte v15, v0, v15

    int-to-char v15, v15

    add-int/lit8 v16, v1, 0xc

    .line 4381
    aget-byte v4, v0, v16

    int-to-char v4, v4

    add-int/lit8 v16, v1, 0xd

    move/from16 v17, v2

    .line 4382
    aget-byte v2, v0, v16

    int-to-char v2, v2

    add-int/lit8 v16, v1, 0xe

    move/from16 v18, v12

    .line 4383
    aget-byte v12, v0, v16

    int-to-char v12, v12

    add-int/lit8 v16, v1, 0xf

    move/from16 v19, v12

    .line 4384
    aget-byte v12, v0, v16

    int-to-char v12, v12

    add-int/lit8 v16, v1, 0x10

    move/from16 v20, v15

    .line 4385
    aget-byte v15, v0, v16

    int-to-char v15, v15

    add-int/lit8 v16, v1, 0x11

    move-object/from16 v21, v5

    .line 4386
    aget-byte v5, v0, v16

    int-to-char v5, v5

    move/from16 v16, v5

    const/16 v5, 0x2d

    if-ne v8, v5, :cond_2

    if-ne v10, v5, :cond_2

    const/16 v5, 0x20

    if-eq v13, v5, :cond_0

    const/16 v5, 0x54

    if-ne v13, v5, :cond_1

    :cond_0
    const/16 v5, 0x3a

    if-ne v4, v5, :cond_1

    if-ne v12, v5, :cond_1

    move v12, v2

    move v13, v6

    move v2, v9

    move v5, v15

    move/from16 v10, v17

    move/from16 v4, v18

    move/from16 v15, v19

    move/from16 v8, v20

    const/16 v6, 0x30

    const/16 v9, 0x30

    goto/16 :goto_4

    :cond_1
    const/16 v5, 0x2d

    :cond_2
    if-ne v8, v5, :cond_5

    if-ne v11, v5, :cond_5

    const/16 v5, 0x20

    if-eq v13, v5, :cond_3

    const/16 v5, 0x54

    if-ne v13, v5, :cond_4

    :cond_3
    const/16 v5, 0x3a

    if-ne v4, v5, :cond_4

    if-ne v12, v5, :cond_4

    move v12, v2

    move v13, v6

    move v2, v10

    move v5, v15

    move/from16 v10, v17

    move/from16 v4, v18

    move/from16 v15, v19

    move/from16 v8, v20

    const/16 v6, 0x30

    const/16 v11, 0x30

    goto/16 :goto_4

    :cond_4
    const/16 v5, 0x2d

    :cond_5
    if-ne v8, v5, :cond_8

    if-ne v11, v5, :cond_8

    const/16 v5, 0x20

    if-eq v14, v5, :cond_6

    const/16 v5, 0x54

    if-ne v14, v5, :cond_7

    :cond_6
    const/16 v5, 0x3a

    if-ne v4, v5, :cond_7

    if-ne v12, v5, :cond_7

    move v12, v2

    move v2, v10

    move v4, v13

    move v5, v15

    move/from16 v10, v17

    move/from16 v11, v18

    move/from16 v15, v19

    move/from16 v8, v20

    const/16 v14, 0x30

    :goto_0
    move v13, v6

    const/16 v6, 0x30

    goto/16 :goto_4

    :cond_7
    const/16 v5, 0x2d

    :cond_8
    if-ne v8, v5, :cond_b

    if-ne v11, v5, :cond_b

    const/16 v5, 0x20

    if-eq v14, v5, :cond_9

    const/16 v5, 0x54

    if-ne v14, v5, :cond_a

    :cond_9
    const/16 v5, 0x3a

    if-ne v2, v5, :cond_a

    if-ne v12, v5, :cond_a

    move v8, v4

    move v2, v10

    move v4, v13

    move v5, v15

    move/from16 v10, v17

    move/from16 v11, v18

    move/from16 v15, v19

    move/from16 v14, v20

    const/16 v12, 0x30

    goto :goto_0

    :cond_a
    const/16 v5, 0x2d

    :cond_b
    if-ne v8, v5, :cond_d

    if-ne v11, v5, :cond_d

    const/16 v5, 0x20

    if-eq v14, v5, :cond_c

    const/16 v5, 0x54

    if-ne v14, v5, :cond_d

    :cond_c
    const/16 v5, 0x3a

    if-ne v2, v5, :cond_d

    if-ne v15, v5, :cond_d

    move v8, v4

    move v2, v10

    move v15, v12

    move v4, v13

    move/from16 v10, v17

    move/from16 v11, v18

    move/from16 v12, v19

    move/from16 v14, v20

    const/16 v5, 0x30

    goto :goto_0

    :cond_d
    const/16 v5, 0x20

    if-ne v3, v5, :cond_f

    if-ne v9, v5, :cond_f

    if-ne v14, v5, :cond_f

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_f

    if-ne v12, v5, :cond_f

    .line 4495
    invoke-static {v6, v7, v8}, Laay;->a(CCC)I

    move-result v3

    if-lez v3, :cond_e

    .line 4497
    div-int/lit8 v4, v3, 0xa

    const/16 v5, 0x30

    add-int/2addr v4, v5

    int-to-char v9, v4

    .line 4498
    rem-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v5

    int-to-char v3, v3

    move v12, v2

    move v2, v3

    move v3, v11

    move v7, v13

    move v5, v15

    move/from16 v4, v17

    move/from16 v13, v18

    move/from16 v15, v19

    move/from16 v8, v20

    const/16 v6, 0x30

    const/16 v11, 0x30

    const/16 v14, 0x30

    goto/16 :goto_4

    .line 4500
    :cond_e
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 4501
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v21

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_f
    move-object/from16 v5, v21

    move/from16 v21, v4

    const/16 v4, 0x20

    if-ne v3, v4, :cond_12

    if-ne v9, v4, :cond_12

    if-ne v14, v4, :cond_12

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_11

    if-ne v12, v4, :cond_11

    .line 4523
    invoke-static {v6, v7, v8}, Laay;->a(CCC)I

    move-result v2

    if-lez v2, :cond_10

    .line 4525
    div-int/lit8 v3, v2, 0xa

    const/16 v4, 0x30

    add-int/2addr v3, v4

    int-to-char v9, v3

    .line 4526
    rem-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v4

    int-to-char v2, v2

    move v3, v11

    move v7, v13

    move/from16 v4, v17

    move/from16 v13, v18

    move/from16 v14, v20

    move/from16 v8, v21

    const/16 v6, 0x30

    const/16 v11, 0x30

    const/16 v12, 0x30

    move-object/from16 v21, v5

    move v5, v15

    move/from16 v15, v19

    goto/16 :goto_4

    .line 4528
    :cond_10
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 4529
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_11
    const/16 v4, 0x20

    :cond_12
    if-ne v3, v4, :cond_15

    if-ne v9, v4, :cond_15

    if-ne v14, v4, :cond_15

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_14

    if-ne v15, v4, :cond_14

    .line 4551
    invoke-static {v6, v7, v8}, Laay;->a(CCC)I

    move-result v2

    if-lez v2, :cond_13

    .line 4553
    div-int/lit8 v3, v2, 0xa

    const/16 v4, 0x30

    add-int/2addr v3, v4

    int-to-char v9, v3

    .line 4554
    rem-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v4

    int-to-char v2, v2

    move v3, v11

    move v15, v12

    move v7, v13

    move/from16 v4, v17

    move/from16 v13, v18

    move/from16 v12, v19

    move/from16 v14, v20

    move/from16 v8, v21

    const/16 v6, 0x30

    const/16 v11, 0x30

    :goto_1
    move-object/from16 v21, v5

    :goto_2
    const/16 v5, 0x30

    goto/16 :goto_4

    .line 4556
    :cond_13
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 4557
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_14
    const/16 v4, 0x20

    :cond_15
    if-ne v6, v4, :cond_18

    if-ne v10, v4, :cond_18

    move/from16 v22, v3

    move/from16 v3, v20

    if-ne v3, v4, :cond_17

    move/from16 v4, v19

    move/from16 v19, v11

    const/16 v11, 0x3a

    if-ne v4, v11, :cond_19

    if-ne v15, v11, :cond_19

    .line 4579
    invoke-static {v7, v8, v9}, Laay;->a(CCC)I

    move-result v3

    if-lez v3, :cond_16

    .line 4581
    div-int/lit8 v4, v3, 0xa

    const/16 v6, 0x30

    add-int/2addr v4, v6

    int-to-char v9, v4

    .line 4582
    rem-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v6

    int-to-char v3, v3

    move v8, v2

    move v2, v3

    move v15, v12

    move v7, v14

    move/from16 v11, v17

    move/from16 v3, v18

    move/from16 v10, v19

    move/from16 v14, v21

    move/from16 v4, v22

    const/16 v6, 0x30

    const/16 v12, 0x30

    goto :goto_1

    .line 4584
    :cond_16
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 4585
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_17
    move/from16 v4, v19

    goto :goto_3

    :cond_18
    move/from16 v22, v3

    move/from16 v4, v19

    move/from16 v3, v20

    :goto_3
    move/from16 v19, v11

    :cond_19
    const/16 v11, 0x20

    if-ne v6, v11, :cond_1c

    if-ne v10, v11, :cond_1c

    if-ne v3, v11, :cond_1c

    const/16 v11, 0x3a

    if-ne v2, v11, :cond_1b

    if-ne v15, v11, :cond_1b

    .line 4607
    invoke-static {v7, v8, v9}, Laay;->a(CCC)I

    move-result v2

    if-lez v2, :cond_1a

    .line 4609
    div-int/lit8 v3, v2, 0xa

    const/16 v6, 0x30

    add-int/2addr v3, v6

    int-to-char v9, v3

    .line 4610
    rem-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v6

    int-to-char v2, v2

    move v15, v12

    move v7, v14

    move/from16 v11, v17

    move/from16 v3, v18

    move/from16 v10, v19

    move/from16 v8, v21

    const/16 v6, 0x30

    const/16 v14, 0x30

    move v12, v4

    move-object/from16 v21, v5

    move/from16 v4, v22

    goto/16 :goto_2

    .line 4612
    :cond_1a
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 4613
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_1b
    const/16 v11, 0x20

    :cond_1c
    if-ne v6, v11, :cond_25

    if-ne v10, v11, :cond_25

    if-ne v3, v11, :cond_25

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_25

    if-ne v12, v3, :cond_25

    .line 4635
    invoke-static {v7, v8, v9}, Laay;->a(CCC)I

    move-result v2

    if-lez v2, :cond_24

    .line 4637
    div-int/lit8 v3, v2, 0xa

    const/16 v6, 0x30

    add-int/2addr v3, v6

    int-to-char v9, v3

    .line 4638
    rem-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v6

    int-to-char v2, v2

    move v12, v6

    move v7, v14

    move/from16 v11, v17

    move/from16 v3, v18

    move/from16 v10, v19

    move/from16 v8, v21

    move-object/from16 v21, v5

    move v14, v12

    move v5, v15

    move v15, v4

    move/from16 v4, v22

    :goto_4
    if-lt v10, v6, :cond_23

    const/16 v0, 0x39

    if-gt v10, v0, :cond_22

    if-lt v3, v6, :cond_22

    if-gt v3, v0, :cond_22

    if-lt v13, v6, :cond_22

    if-gt v13, v0, :cond_22

    if-lt v7, v6, :cond_22

    if-gt v7, v0, :cond_22

    sub-int/2addr v10, v6

    mul-int/lit16 v10, v10, 0x3e8

    sub-int/2addr v3, v6

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v10, v3

    sub-int/2addr v13, v6

    mul-int/lit8 v13, v13, 0xa

    add-int/2addr v10, v13

    sub-int/2addr v7, v6

    add-int v23, v10, v7

    if-lt v9, v6, :cond_21

    if-gt v9, v0, :cond_21

    if-lt v2, v6, :cond_21

    if-gt v2, v0, :cond_21

    sub-int/2addr v9, v6

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v2, v6

    add-int v24, v9, v2

    if-lt v11, v6, :cond_20

    if-gt v11, v0, :cond_20

    if-lt v4, v6, :cond_20

    if-gt v4, v0, :cond_20

    sub-int/2addr v11, v6

    mul-int/lit8 v11, v11, 0xa

    sub-int/2addr v4, v6

    add-int v25, v11, v4

    if-lt v14, v6, :cond_1f

    if-gt v14, v0, :cond_1f

    if-lt v8, v6, :cond_1f

    if-gt v8, v0, :cond_1f

    sub-int/2addr v14, v6

    mul-int/lit8 v14, v14, 0xa

    sub-int/2addr v8, v6

    add-int v26, v14, v8

    if-lt v12, v6, :cond_1e

    if-gt v12, v0, :cond_1e

    if-lt v15, v6, :cond_1e

    if-gt v15, v0, :cond_1e

    sub-int/2addr v12, v6

    mul-int/lit8 v12, v12, 0xa

    sub-int/2addr v15, v6

    add-int v27, v12, v15

    if-lt v5, v6, :cond_1d

    if-gt v5, v0, :cond_1d

    move/from16 v2, v16

    if-lt v2, v6, :cond_1d

    if-gt v2, v0, :cond_1d

    sub-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0xa

    add-int/lit8 v0, v2, -0x30

    add-int v28, v5, v0

    .line 4724
    invoke-static/range {v23 .. v28}, Ljava/time/LocalDateTime;->of(IIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    .line 4720
    :cond_1d
    new-instance v0, Ljava/lang/String;

    const/16 v3, 0x12

    move-object/from16 v2, p0

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 4721
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v21

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_1e
    move-object/from16 v2, p0

    move-object/from16 v3, v21

    .line 4710
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x12

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 4711
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_1f
    move-object/from16 v2, p0

    move-object/from16 v3, v21

    .line 4700
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x12

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 4701
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_20
    move-object/from16 v2, p0

    move-object/from16 v3, v21

    .line 4690
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x12

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 4691
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_21
    move-object/from16 v2, p0

    move-object/from16 v3, v21

    .line 4680
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x12

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 4681
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_22
    move-object/from16 v2, p0

    goto :goto_5

    :cond_23
    move-object v2, v0

    :goto_5
    move-object/from16 v3, v21

    .line 4670
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x12

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 4671
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v0, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_24
    move-object v2, v0

    move-object v3, v5

    const/16 v4, 0x12

    const/4 v5, 0x0

    .line 4640
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 4641
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_25
    move-object v2, v0

    move-object v3, v5

    .line 4658
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x12

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 4659
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_26
    move-object v2, v0

    move-object v3, v5

    .line 4365
    new-instance v0, Ljava/lang/String;

    array-length v4, v2

    sub-int/2addr v4, v1

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 4366
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1
.end method

.method public static o([CI)Ljava/time/LocalDateTime;
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p1

    add-int/lit8 v2, v1, 0x12

    .line 3988
    array-length v3, v0

    const-string v5, "illegal input "

    if-gt v2, v3, :cond_26

    .line 3993
    aget-char v2, v0, v1

    add-int/lit8 v3, v1, 0x1

    .line 3994
    aget-char v3, v0, v3

    add-int/lit8 v6, v1, 0x2

    .line 3995
    aget-char v6, v0, v6

    add-int/lit8 v7, v1, 0x3

    .line 3996
    aget-char v7, v0, v7

    add-int/lit8 v8, v1, 0x4

    .line 3997
    aget-char v8, v0, v8

    add-int/lit8 v9, v1, 0x5

    .line 3998
    aget-char v9, v0, v9

    add-int/lit8 v10, v1, 0x6

    .line 3999
    aget-char v10, v0, v10

    add-int/lit8 v11, v1, 0x7

    .line 4000
    aget-char v11, v0, v11

    add-int/lit8 v12, v1, 0x8

    .line 4001
    aget-char v12, v0, v12

    add-int/lit8 v13, v1, 0x9

    .line 4002
    aget-char v13, v0, v13

    add-int/lit8 v14, v1, 0xa

    .line 4003
    aget-char v14, v0, v14

    add-int/lit8 v15, v1, 0xb

    .line 4004
    aget-char v15, v0, v15

    add-int/lit8 v16, v1, 0xc

    .line 4005
    aget-char v4, v0, v16

    add-int/lit8 v16, v1, 0xd

    move/from16 v17, v2

    .line 4006
    aget-char v2, v0, v16

    add-int/lit8 v16, v1, 0xe

    move/from16 v18, v12

    .line 4007
    aget-char v12, v0, v16

    add-int/lit8 v16, v1, 0xf

    move/from16 v19, v12

    .line 4008
    aget-char v12, v0, v16

    add-int/lit8 v16, v1, 0x10

    move/from16 v20, v15

    .line 4009
    aget-char v15, v0, v16

    add-int/lit8 v16, v1, 0x11

    move-object/from16 v21, v5

    .line 4010
    aget-char v5, v0, v16

    move/from16 v16, v5

    const/16 v5, 0x2d

    if-ne v8, v5, :cond_2

    if-ne v10, v5, :cond_2

    const/16 v5, 0x20

    if-eq v13, v5, :cond_0

    const/16 v5, 0x54

    if-ne v13, v5, :cond_1

    :cond_0
    const/16 v5, 0x3a

    if-ne v4, v5, :cond_1

    if-ne v12, v5, :cond_1

    move v12, v2

    move v13, v6

    move v2, v9

    move v5, v15

    move/from16 v10, v17

    move/from16 v4, v18

    move/from16 v15, v19

    move/from16 v8, v20

    const/16 v6, 0x30

    const/16 v9, 0x30

    goto/16 :goto_4

    :cond_1
    const/16 v5, 0x2d

    :cond_2
    if-ne v8, v5, :cond_5

    if-ne v11, v5, :cond_5

    const/16 v5, 0x20

    if-eq v13, v5, :cond_3

    const/16 v5, 0x54

    if-ne v13, v5, :cond_4

    :cond_3
    const/16 v5, 0x3a

    if-ne v4, v5, :cond_4

    if-ne v12, v5, :cond_4

    move v12, v2

    move v13, v6

    move v2, v10

    move v5, v15

    move/from16 v10, v17

    move/from16 v4, v18

    move/from16 v15, v19

    move/from16 v8, v20

    const/16 v6, 0x30

    const/16 v11, 0x30

    goto/16 :goto_4

    :cond_4
    const/16 v5, 0x2d

    :cond_5
    if-ne v8, v5, :cond_8

    if-ne v11, v5, :cond_8

    const/16 v5, 0x20

    if-eq v14, v5, :cond_6

    const/16 v5, 0x54

    if-ne v14, v5, :cond_7

    :cond_6
    const/16 v5, 0x3a

    if-ne v4, v5, :cond_7

    if-ne v12, v5, :cond_7

    move v12, v2

    move v2, v10

    move v4, v13

    move v5, v15

    move/from16 v10, v17

    move/from16 v11, v18

    move/from16 v15, v19

    move/from16 v8, v20

    const/16 v14, 0x30

    :goto_0
    move v13, v6

    const/16 v6, 0x30

    goto/16 :goto_4

    :cond_7
    const/16 v5, 0x2d

    :cond_8
    if-ne v8, v5, :cond_b

    if-ne v11, v5, :cond_b

    const/16 v5, 0x20

    if-eq v14, v5, :cond_9

    const/16 v5, 0x54

    if-ne v14, v5, :cond_a

    :cond_9
    const/16 v5, 0x3a

    if-ne v2, v5, :cond_a

    if-ne v12, v5, :cond_a

    move v8, v4

    move v2, v10

    move v4, v13

    move v5, v15

    move/from16 v10, v17

    move/from16 v11, v18

    move/from16 v15, v19

    move/from16 v14, v20

    const/16 v12, 0x30

    goto :goto_0

    :cond_a
    const/16 v5, 0x2d

    :cond_b
    if-ne v8, v5, :cond_d

    if-ne v11, v5, :cond_d

    const/16 v5, 0x20

    if-eq v14, v5, :cond_c

    const/16 v5, 0x54

    if-ne v14, v5, :cond_d

    :cond_c
    const/16 v5, 0x3a

    if-ne v2, v5, :cond_d

    if-ne v15, v5, :cond_d

    move v8, v4

    move v2, v10

    move v15, v12

    move v4, v13

    move/from16 v10, v17

    move/from16 v11, v18

    move/from16 v12, v19

    move/from16 v14, v20

    const/16 v5, 0x30

    goto :goto_0

    :cond_d
    const/16 v5, 0x20

    if-ne v3, v5, :cond_f

    if-ne v9, v5, :cond_f

    if-ne v14, v5, :cond_f

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_f

    if-ne v12, v5, :cond_f

    .line 4119
    invoke-static {v6, v7, v8}, Laay;->a(CCC)I

    move-result v3

    if-lez v3, :cond_e

    .line 4121
    div-int/lit8 v4, v3, 0xa

    const/16 v5, 0x30

    add-int/2addr v4, v5

    int-to-char v9, v4

    .line 4122
    rem-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v5

    int-to-char v3, v3

    move v12, v2

    move v2, v3

    move v3, v11

    move v7, v13

    move v5, v15

    move/from16 v4, v17

    move/from16 v13, v18

    move/from16 v15, v19

    move/from16 v8, v20

    const/16 v6, 0x30

    const/16 v11, 0x30

    const/16 v14, 0x30

    goto/16 :goto_4

    .line 4124
    :cond_e
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 4125
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v21

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_f
    move-object/from16 v5, v21

    move/from16 v21, v4

    const/16 v4, 0x20

    if-ne v3, v4, :cond_12

    if-ne v9, v4, :cond_12

    if-ne v14, v4, :cond_12

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_11

    if-ne v12, v4, :cond_11

    .line 4147
    invoke-static {v6, v7, v8}, Laay;->a(CCC)I

    move-result v2

    if-lez v2, :cond_10

    .line 4149
    div-int/lit8 v3, v2, 0xa

    const/16 v4, 0x30

    add-int/2addr v3, v4

    int-to-char v9, v3

    .line 4150
    rem-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v4

    int-to-char v2, v2

    move v3, v11

    move v7, v13

    move/from16 v4, v17

    move/from16 v13, v18

    move/from16 v14, v20

    move/from16 v8, v21

    const/16 v6, 0x30

    const/16 v11, 0x30

    const/16 v12, 0x30

    move-object/from16 v21, v5

    move v5, v15

    move/from16 v15, v19

    goto/16 :goto_4

    .line 4152
    :cond_10
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 4153
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_11
    const/16 v4, 0x20

    :cond_12
    if-ne v3, v4, :cond_15

    if-ne v9, v4, :cond_15

    if-ne v14, v4, :cond_15

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_14

    if-ne v15, v4, :cond_14

    .line 4175
    invoke-static {v6, v7, v8}, Laay;->a(CCC)I

    move-result v2

    if-lez v2, :cond_13

    .line 4177
    div-int/lit8 v3, v2, 0xa

    const/16 v4, 0x30

    add-int/2addr v3, v4

    int-to-char v9, v3

    .line 4178
    rem-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v4

    int-to-char v2, v2

    move v3, v11

    move v15, v12

    move v7, v13

    move/from16 v4, v17

    move/from16 v13, v18

    move/from16 v12, v19

    move/from16 v14, v20

    move/from16 v8, v21

    const/16 v6, 0x30

    const/16 v11, 0x30

    :goto_1
    move-object/from16 v21, v5

    :goto_2
    const/16 v5, 0x30

    goto/16 :goto_4

    .line 4180
    :cond_13
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 4181
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_14
    const/16 v4, 0x20

    :cond_15
    if-ne v6, v4, :cond_18

    if-ne v10, v4, :cond_18

    move/from16 v22, v3

    move/from16 v3, v20

    if-ne v3, v4, :cond_17

    move/from16 v4, v19

    move/from16 v19, v11

    const/16 v11, 0x3a

    if-ne v4, v11, :cond_19

    if-ne v15, v11, :cond_19

    .line 4203
    invoke-static {v7, v8, v9}, Laay;->a(CCC)I

    move-result v3

    if-lez v3, :cond_16

    .line 4205
    div-int/lit8 v4, v3, 0xa

    const/16 v6, 0x30

    add-int/2addr v4, v6

    int-to-char v9, v4

    .line 4206
    rem-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v6

    int-to-char v3, v3

    move v8, v2

    move v2, v3

    move v15, v12

    move v7, v14

    move/from16 v11, v17

    move/from16 v3, v18

    move/from16 v10, v19

    move/from16 v14, v21

    move/from16 v4, v22

    const/16 v6, 0x30

    const/16 v12, 0x30

    goto :goto_1

    .line 4208
    :cond_16
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 4209
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_17
    move/from16 v4, v19

    goto :goto_3

    :cond_18
    move/from16 v22, v3

    move/from16 v4, v19

    move/from16 v3, v20

    :goto_3
    move/from16 v19, v11

    :cond_19
    const/16 v11, 0x20

    if-ne v6, v11, :cond_1c

    if-ne v10, v11, :cond_1c

    if-ne v3, v11, :cond_1c

    const/16 v11, 0x3a

    if-ne v2, v11, :cond_1b

    if-ne v15, v11, :cond_1b

    .line 4231
    invoke-static {v7, v8, v9}, Laay;->a(CCC)I

    move-result v2

    if-lez v2, :cond_1a

    .line 4233
    div-int/lit8 v3, v2, 0xa

    const/16 v6, 0x30

    add-int/2addr v3, v6

    int-to-char v9, v3

    .line 4234
    rem-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v6

    int-to-char v2, v2

    move v15, v12

    move v7, v14

    move/from16 v11, v17

    move/from16 v3, v18

    move/from16 v10, v19

    move/from16 v8, v21

    const/16 v6, 0x30

    const/16 v14, 0x30

    move v12, v4

    move-object/from16 v21, v5

    move/from16 v4, v22

    goto/16 :goto_2

    .line 4236
    :cond_1a
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 4237
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_1b
    const/16 v11, 0x20

    :cond_1c
    if-ne v6, v11, :cond_25

    if-ne v10, v11, :cond_25

    if-ne v3, v11, :cond_25

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_25

    if-ne v12, v3, :cond_25

    .line 4259
    invoke-static {v7, v8, v9}, Laay;->a(CCC)I

    move-result v2

    if-lez v2, :cond_24

    .line 4261
    div-int/lit8 v3, v2, 0xa

    const/16 v6, 0x30

    add-int/2addr v3, v6

    int-to-char v9, v3

    .line 4262
    rem-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v6

    int-to-char v2, v2

    move v12, v6

    move v7, v14

    move/from16 v11, v17

    move/from16 v3, v18

    move/from16 v10, v19

    move/from16 v8, v21

    move-object/from16 v21, v5

    move v14, v12

    move v5, v15

    move v15, v4

    move/from16 v4, v22

    :goto_4
    if-lt v10, v6, :cond_23

    const/16 v0, 0x39

    if-gt v10, v0, :cond_22

    if-lt v3, v6, :cond_22

    if-gt v3, v0, :cond_22

    if-lt v13, v6, :cond_22

    if-gt v13, v0, :cond_22

    if-lt v7, v6, :cond_22

    if-gt v7, v0, :cond_22

    sub-int/2addr v10, v6

    mul-int/lit16 v10, v10, 0x3e8

    sub-int/2addr v3, v6

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v10, v3

    sub-int/2addr v13, v6

    mul-int/lit8 v13, v13, 0xa

    add-int/2addr v10, v13

    sub-int/2addr v7, v6

    add-int v23, v10, v7

    if-lt v9, v6, :cond_21

    if-gt v9, v0, :cond_21

    if-lt v2, v6, :cond_21

    if-gt v2, v0, :cond_21

    sub-int/2addr v9, v6

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v2, v6

    add-int v24, v9, v2

    if-lt v11, v6, :cond_20

    if-gt v11, v0, :cond_20

    if-lt v4, v6, :cond_20

    if-gt v4, v0, :cond_20

    sub-int/2addr v11, v6

    mul-int/lit8 v11, v11, 0xa

    sub-int/2addr v4, v6

    add-int v25, v11, v4

    if-lt v14, v6, :cond_1f

    if-gt v14, v0, :cond_1f

    if-lt v8, v6, :cond_1f

    if-gt v8, v0, :cond_1f

    sub-int/2addr v14, v6

    mul-int/lit8 v14, v14, 0xa

    sub-int/2addr v8, v6

    add-int v26, v14, v8

    if-lt v12, v6, :cond_1e

    if-gt v12, v0, :cond_1e

    if-lt v15, v6, :cond_1e

    if-gt v15, v0, :cond_1e

    sub-int/2addr v12, v6

    mul-int/lit8 v12, v12, 0xa

    sub-int/2addr v15, v6

    add-int v27, v12, v15

    if-lt v5, v6, :cond_1d

    if-gt v5, v0, :cond_1d

    move/from16 v2, v16

    if-lt v2, v6, :cond_1d

    if-gt v2, v0, :cond_1d

    sub-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0xa

    add-int/lit8 v0, v2, -0x30

    add-int v28, v5, v0

    .line 4348
    invoke-static/range {v23 .. v28}, Ljava/time/LocalDateTime;->of(IIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    .line 4344
    :cond_1d
    new-instance v0, Ljava/lang/String;

    const/16 v3, 0x12

    move-object/from16 v2, p0

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 4345
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v21

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_1e
    move-object/from16 v2, p0

    move-object/from16 v3, v21

    .line 4334
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x12

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 4335
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_1f
    move-object/from16 v2, p0

    move-object/from16 v3, v21

    .line 4324
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x12

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 4325
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_20
    move-object/from16 v2, p0

    move-object/from16 v3, v21

    .line 4314
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x12

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 4315
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_21
    move-object/from16 v2, p0

    move-object/from16 v3, v21

    .line 4304
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x12

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 4305
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_22
    move-object/from16 v2, p0

    goto :goto_5

    :cond_23
    move-object v2, v0

    :goto_5
    move-object/from16 v3, v21

    .line 4294
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x12

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 4295
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v0, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_24
    move-object v2, v0

    move-object v3, v5

    const/16 v4, 0x12

    const/4 v5, 0x0

    .line 4264
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 4265
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_25
    move-object v2, v0

    move-object v3, v5

    .line 4282
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x12

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 4283
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_26
    move-object v2, v0

    move-object v3, v5

    .line 3989
    new-instance v0, Ljava/lang/String;

    array-length v4, v2

    sub-int/2addr v4, v1

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 3990
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1
.end method

.method public static p([BI)Ljava/time/LocalDateTime;
    .locals 28

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x13

    .line 4879
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 4883
    :cond_0
    aget-byte v1, v0, p1

    int-to-char v1, v1

    add-int/lit8 v2, p1, 0x1

    .line 4884
    aget-byte v2, v0, v2

    int-to-char v2, v2

    add-int/lit8 v4, p1, 0x2

    .line 4885
    aget-byte v4, v0, v4

    int-to-char v4, v4

    add-int/lit8 v5, p1, 0x3

    .line 4886
    aget-byte v5, v0, v5

    int-to-char v5, v5

    add-int/lit8 v6, p1, 0x4

    .line 4887
    aget-byte v6, v0, v6

    int-to-char v6, v6

    add-int/lit8 v7, p1, 0x5

    .line 4888
    aget-byte v7, v0, v7

    int-to-char v7, v7

    add-int/lit8 v8, p1, 0x6

    .line 4889
    aget-byte v8, v0, v8

    int-to-char v8, v8

    add-int/lit8 v9, p1, 0x7

    .line 4890
    aget-byte v9, v0, v9

    int-to-char v9, v9

    add-int/lit8 v10, p1, 0x8

    .line 4891
    aget-byte v10, v0, v10

    int-to-char v10, v10

    add-int/lit8 v11, p1, 0x9

    .line 4892
    aget-byte v11, v0, v11

    int-to-char v11, v11

    add-int/lit8 v12, p1, 0xa

    .line 4893
    aget-byte v12, v0, v12

    int-to-char v12, v12

    add-int/lit8 v13, p1, 0xb

    .line 4894
    aget-byte v13, v0, v13

    int-to-char v13, v13

    add-int/lit8 v14, p1, 0xc

    .line 4895
    aget-byte v14, v0, v14

    int-to-char v15, v14

    add-int/lit8 v14, p1, 0xd

    .line 4896
    aget-byte v14, v0, v14

    int-to-char v14, v14

    add-int/lit8 v16, p1, 0xe

    .line 4897
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0xf

    move/from16 v18, v1

    .line 4898
    aget-byte v1, v0, v16

    int-to-char v1, v1

    add-int/lit8 v16, p1, 0x10

    move/from16 v19, v8

    .line 4899
    aget-byte v8, v0, v16

    int-to-char v8, v8

    add-int/lit8 v16, p1, 0x11

    move/from16 v20, v10

    .line 4900
    aget-byte v10, v0, v16

    int-to-char v10, v10

    add-int/lit8 v16, p1, 0x12

    .line 4901
    aget-byte v0, v0, v16

    int-to-char v0, v0

    move/from16 v16, v11

    const/16 v21, 0x30

    const/16 v11, 0x2d

    if-ne v6, v11, :cond_2

    if-ne v9, v11, :cond_2

    const/16 v11, 0x20

    if-eq v12, v11, :cond_1

    const/16 v11, 0x54

    if-ne v12, v11, :cond_2

    :cond_1
    const/16 v11, 0x3a

    if-ne v14, v11, :cond_2

    if-ne v8, v11, :cond_2

    goto :goto_0

    :cond_2
    const/16 v11, 0x2f

    if-ne v6, v11, :cond_5

    if-ne v9, v11, :cond_5

    const/16 v11, 0x20

    if-eq v12, v11, :cond_3

    const/16 v11, 0x54

    if-ne v12, v11, :cond_4

    :cond_3
    const/16 v11, 0x3a

    if-ne v14, v11, :cond_4

    if-ne v8, v11, :cond_4

    :goto_0
    move v9, v2

    move/from16 v17, v5

    move/from16 v21, v16

    move/from16 v14, v18

    move/from16 v16, v4

    move/from16 v18, v7

    goto :goto_3

    :cond_4
    const/16 v11, 0x2f

    :cond_5
    if-ne v4, v11, :cond_7

    if-ne v7, v11, :cond_7

    const/16 v11, 0x20

    if-eq v12, v11, :cond_6

    const/16 v11, 0x54

    if-ne v12, v11, :cond_7

    :cond_6
    const/16 v11, 0x3a

    if-ne v14, v11, :cond_7

    if-ne v8, v11, :cond_7

    move/from16 v21, v2

    move/from16 v17, v16

    move/from16 v14, v19

    move/from16 v16, v20

    move/from16 v19, v6

    move/from16 v20, v18

    :goto_1
    move/from16 v18, v5

    goto :goto_3

    :cond_7
    const/16 v11, 0x20

    if-ne v2, v11, :cond_9

    if-ne v7, v11, :cond_9

    if-ne v12, v11, :cond_9

    const/16 v2, 0x3a

    if-ne v14, v2, :cond_9

    if-ne v8, v2, :cond_9

    .line 4970
    invoke-static {v4, v5, v6}, Laay;->a(CCC)I

    move-result v2

    if-lez v2, :cond_8

    .line 4972
    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    .line 4973
    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    move v6, v2

    move v5, v4

    goto :goto_2

    :cond_8
    move/from16 v5, v21

    move v6, v5

    :goto_2
    move/from16 v17, v16

    move/from16 v14, v19

    move/from16 v16, v20

    move/from16 v20, v21

    move/from16 v19, v6

    move/from16 v21, v18

    goto :goto_1

    :goto_3
    move v2, v15

    move v15, v9

    move/from16 v22, v13

    move/from16 v23, v2

    move/from16 v24, v3

    move/from16 v25, v1

    move/from16 v26, v10

    move/from16 v27, v0

    .line 4994
    invoke-static/range {v14 .. v27}, Laay;->a(CCCCCCCCCCCCCC)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public static p([CI)Ljava/time/LocalDateTime;
    .locals 28

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x13

    .line 4734
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 4738
    :cond_0
    aget-char v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    .line 4739
    aget-char v2, v0, v2

    add-int/lit8 v4, p1, 0x2

    .line 4740
    aget-char v4, v0, v4

    add-int/lit8 v5, p1, 0x3

    .line 4741
    aget-char v5, v0, v5

    add-int/lit8 v6, p1, 0x4

    .line 4742
    aget-char v6, v0, v6

    add-int/lit8 v7, p1, 0x5

    .line 4743
    aget-char v7, v0, v7

    add-int/lit8 v8, p1, 0x6

    .line 4744
    aget-char v8, v0, v8

    add-int/lit8 v9, p1, 0x7

    .line 4745
    aget-char v9, v0, v9

    add-int/lit8 v10, p1, 0x8

    .line 4746
    aget-char v10, v0, v10

    add-int/lit8 v11, p1, 0x9

    .line 4747
    aget-char v11, v0, v11

    add-int/lit8 v12, p1, 0xa

    .line 4748
    aget-char v12, v0, v12

    add-int/lit8 v13, p1, 0xb

    .line 4749
    aget-char v22, v0, v13

    add-int/lit8 v13, p1, 0xc

    .line 4750
    aget-char v23, v0, v13

    add-int/lit8 v13, p1, 0xd

    .line 4751
    aget-char v13, v0, v13

    add-int/lit8 v14, p1, 0xe

    .line 4752
    aget-char v24, v0, v14

    add-int/lit8 v14, p1, 0xf

    .line 4753
    aget-char v25, v0, v14

    add-int/lit8 v14, p1, 0x10

    .line 4754
    aget-char v14, v0, v14

    add-int/lit8 v15, p1, 0x11

    .line 4755
    aget-char v26, v0, v15

    add-int/lit8 v15, p1, 0x12

    .line 4756
    aget-char v27, v0, v15

    const/16 v0, 0x2d

    const/16 v16, 0x30

    const/16 v3, 0x20

    const/16 v15, 0x3a

    if-ne v6, v0, :cond_2

    if-ne v9, v0, :cond_2

    if-eq v12, v3, :cond_1

    const/16 v0, 0x54

    if-ne v12, v0, :cond_2

    :cond_1
    if-ne v13, v15, :cond_2

    if-ne v14, v15, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x2f

    if-ne v6, v0, :cond_4

    if-ne v9, v0, :cond_4

    if-eq v12, v3, :cond_3

    const/16 v3, 0x54

    if-ne v12, v3, :cond_4

    :cond_3
    if-ne v13, v15, :cond_4

    if-ne v14, v15, :cond_4

    :goto_0
    move v14, v1

    move v15, v2

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v10

    move/from16 v21, v11

    goto :goto_2

    :cond_4
    if-ne v4, v0, :cond_6

    if-ne v7, v0, :cond_6

    const/16 v0, 0x20

    if-eq v12, v0, :cond_5

    const/16 v0, 0x54

    if-ne v12, v0, :cond_6

    :cond_5
    if-ne v13, v15, :cond_6

    if-ne v14, v15, :cond_6

    move/from16 v20, v1

    move/from16 v21, v2

    move/from16 v18, v5

    move/from16 v19, v6

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    move/from16 v17, v11

    goto :goto_2

    :cond_6
    const/16 v0, 0x20

    if-ne v2, v0, :cond_8

    if-ne v7, v0, :cond_8

    if-ne v12, v0, :cond_8

    if-ne v13, v15, :cond_8

    if-ne v14, v15, :cond_8

    .line 4825
    invoke-static {v4, v5, v6}, Laay;->a(CCC)I

    move-result v0

    if-lez v0, :cond_7

    .line 4827
    div-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    .line 4828
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    move v6, v0

    move v5, v2

    goto :goto_1

    :cond_7
    move/from16 v5, v16

    move v6, v5

    :goto_1
    move/from16 v21, v1

    move/from16 v18, v5

    move/from16 v19, v6

    move v14, v8

    move v15, v9

    move/from16 v17, v11

    move/from16 v20, v16

    move/from16 v16, v10

    .line 4849
    :goto_2
    invoke-static/range {v14 .. v27}, Laay;->a(CCCCCCCCCCCCCC)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method

.method public static q([BI)Ljava/time/LocalDateTime;
    .locals 23

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x13

    .line 5049
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 5053
    :cond_0
    aget-byte v2, v0, p1

    int-to-char v10, v2

    add-int/lit8 v2, p1, 0x1

    .line 5054
    aget-byte v2, v0, v2

    int-to-char v11, v2

    add-int/lit8 v2, p1, 0x2

    .line 5055
    aget-byte v2, v0, v2

    int-to-char v2, v2

    add-int/lit8 v4, p1, 0x3

    .line 5056
    aget-byte v4, v0, v4

    int-to-char v4, v4

    add-int/lit8 v5, p1, 0x4

    .line 5057
    aget-byte v5, v0, v5

    int-to-char v5, v5

    add-int/lit8 v6, p1, 0x5

    .line 5058
    aget-byte v6, v0, v6

    int-to-char v6, v6

    add-int/lit8 v7, p1, 0x6

    .line 5059
    aget-byte v7, v0, v7

    int-to-char v7, v7

    add-int/lit8 v8, p1, 0x7

    .line 5060
    aget-byte v8, v0, v8

    int-to-char v8, v8

    add-int/lit8 v9, p1, 0x8

    .line 5061
    aget-byte v9, v0, v9

    int-to-char v9, v9

    add-int/lit8 v12, p1, 0x9

    .line 5062
    aget-byte v12, v0, v12

    int-to-char v12, v12

    add-int/lit8 v13, p1, 0xa

    .line 5063
    aget-byte v13, v0, v13

    int-to-char v13, v13

    add-int/lit8 v14, p1, 0xb

    .line 5064
    aget-byte v14, v0, v14

    int-to-char v14, v14

    add-int/lit8 v15, p1, 0xc

    .line 5065
    aget-byte v15, v0, v15

    int-to-char v15, v15

    add-int/lit8 v16, p1, 0xd

    .line 5066
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0xe

    move/from16 v18, v3

    .line 5067
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0xf

    move/from16 v19, v15

    .line 5068
    aget-byte v15, v0, v16

    int-to-char v15, v15

    add-int/lit8 v16, p1, 0x10

    move/from16 v20, v15

    .line 5069
    aget-byte v15, v0, v16

    int-to-char v15, v15

    add-int/lit8 v16, p1, 0x11

    move/from16 v21, v15

    .line 5070
    aget-byte v15, v0, v16

    int-to-char v15, v15

    add-int/lit8 v16, p1, 0x12

    move/from16 v22, v11

    .line 5071
    aget-byte v11, v0, v16

    int-to-char v11, v11

    .line 5072
    aget-byte v0, v0, v1

    int-to-char v0, v0

    const/16 v1, 0x20

    if-ne v2, v1, :cond_3

    if-ne v7, v1, :cond_3

    if-ne v14, v1, :cond_3

    const/16 v1, 0x3a

    if-ne v3, v1, :cond_3

    if-eq v15, v1, :cond_1

    goto :goto_1

    .line 5080
    :cond_1
    invoke-static {v4, v5, v6}, Laay;->a(CCC)I

    move-result v1

    const/16 v2, 0x30

    if-lez v1, :cond_2

    .line 5082
    div-int/lit8 v3, v1, 0xa

    add-int/2addr v3, v2

    int-to-char v3, v3

    .line 5083
    rem-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v2

    int-to-char v1, v1

    move v2, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    move v4, v8

    move v5, v9

    move v6, v12

    move v7, v13

    move v8, v2

    move v9, v1

    move v1, v11

    move/from16 v11, v22

    move/from16 v12, v19

    move/from16 v13, v18

    move/from16 v14, v20

    move/from16 v15, v21

    move/from16 v16, v1

    move/from16 v17, v0

    .line 5089
    invoke-static/range {v4 .. v17}, Laay;->a(CCCCCCCCCCCCCC)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static q([CI)Ljava/time/LocalDateTime;
    .locals 21

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x13

    .line 4998
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 5002
    :cond_0
    aget-char v10, v0, p1

    add-int/lit8 v2, p1, 0x1

    .line 5003
    aget-char v11, v0, v2

    add-int/lit8 v2, p1, 0x2

    .line 5004
    aget-char v2, v0, v2

    add-int/lit8 v4, p1, 0x3

    .line 5005
    aget-char v4, v0, v4

    add-int/lit8 v5, p1, 0x4

    .line 5006
    aget-char v5, v0, v5

    add-int/lit8 v6, p1, 0x5

    .line 5007
    aget-char v6, v0, v6

    add-int/lit8 v7, p1, 0x6

    .line 5008
    aget-char v7, v0, v7

    add-int/lit8 v8, p1, 0x7

    .line 5009
    aget-char v8, v0, v8

    add-int/lit8 v9, p1, 0x8

    .line 5010
    aget-char v9, v0, v9

    add-int/lit8 v12, p1, 0x9

    .line 5011
    aget-char v12, v0, v12

    add-int/lit8 v13, p1, 0xa

    .line 5012
    aget-char v13, v0, v13

    add-int/lit8 v14, p1, 0xb

    .line 5013
    aget-char v14, v0, v14

    add-int/lit8 v15, p1, 0xc

    .line 5014
    aget-char v15, v0, v15

    add-int/lit8 v16, p1, 0xd

    .line 5015
    aget-char v16, v0, v16

    add-int/lit8 v17, p1, 0xe

    .line 5016
    aget-char v3, v0, v17

    add-int/lit8 v17, p1, 0xf

    .line 5017
    aget-char v17, v0, v17

    add-int/lit8 v18, p1, 0x10

    .line 5018
    aget-char v18, v0, v18

    add-int/lit8 v19, p1, 0x11

    move/from16 v20, v15

    .line 5019
    aget-char v15, v0, v19

    add-int/lit8 v19, p1, 0x12

    .line 5020
    aget-char v19, v0, v19

    .line 5021
    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ne v2, v1, :cond_3

    if-ne v7, v1, :cond_3

    if-ne v14, v1, :cond_3

    const/16 v1, 0x3a

    if-ne v3, v1, :cond_3

    if-eq v15, v1, :cond_1

    goto :goto_1

    .line 5029
    :cond_1
    invoke-static {v4, v5, v6}, Laay;->a(CCC)I

    move-result v1

    const/16 v2, 0x30

    if-lez v1, :cond_2

    .line 5031
    div-int/lit8 v3, v1, 0xa

    add-int/2addr v3, v2

    int-to-char v3, v3

    .line 5032
    rem-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v2

    int-to-char v1, v1

    move v2, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    move v4, v8

    move v5, v9

    move v6, v12

    move v7, v13

    move v8, v2

    move v9, v1

    move/from16 v12, v20

    move/from16 v13, v16

    move/from16 v14, v17

    move/from16 v15, v18

    move/from16 v16, v19

    move/from16 v17, v0

    .line 5038
    invoke-static/range {v4 .. v17}, Laay;->a(CCCCCCCCCCCCCC)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static r([BI)Ljava/time/LocalDateTime;
    .locals 31

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x1a

    .line 5100
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 5104
    :cond_0
    aget-byte v1, v0, p1

    int-to-char v4, v1

    add-int/lit8 v1, p1, 0x1

    .line 5105
    aget-byte v1, v0, v1

    int-to-char v5, v1

    add-int/lit8 v1, p1, 0x2

    .line 5106
    aget-byte v1, v0, v1

    int-to-char v6, v1

    add-int/lit8 v1, p1, 0x3

    .line 5107
    aget-byte v1, v0, v1

    int-to-char v7, v1

    add-int/lit8 v1, p1, 0x4

    .line 5108
    aget-byte v1, v0, v1

    int-to-char v1, v1

    add-int/lit8 v2, p1, 0x5

    .line 5109
    aget-byte v2, v0, v2

    int-to-char v8, v2

    add-int/lit8 v2, p1, 0x6

    .line 5110
    aget-byte v2, v0, v2

    int-to-char v9, v2

    add-int/lit8 v2, p1, 0x7

    .line 5111
    aget-byte v2, v0, v2

    int-to-char v2, v2

    add-int/lit8 v10, p1, 0x8

    .line 5112
    aget-byte v10, v0, v10

    int-to-char v10, v10

    add-int/lit8 v11, p1, 0x9

    .line 5113
    aget-byte v11, v0, v11

    int-to-char v11, v11

    add-int/lit8 v12, p1, 0xa

    .line 5114
    aget-byte v12, v0, v12

    int-to-char v12, v12

    add-int/lit8 v13, p1, 0xb

    .line 5115
    aget-byte v13, v0, v13

    int-to-char v13, v13

    add-int/lit8 v14, p1, 0xc

    .line 5116
    aget-byte v14, v0, v14

    int-to-char v14, v14

    add-int/lit8 v15, p1, 0xd

    .line 5117
    aget-byte v15, v0, v15

    int-to-char v15, v15

    add-int/lit8 v16, p1, 0xe

    .line 5118
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0xf

    move/from16 v18, v3

    .line 5119
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0x10

    move/from16 v19, v3

    .line 5120
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0x11

    move/from16 v20, v14

    .line 5121
    aget-byte v14, v0, v16

    int-to-char v14, v14

    add-int/lit8 v16, p1, 0x12

    move/from16 v21, v14

    .line 5122
    aget-byte v14, v0, v16

    int-to-char v14, v14

    add-int/lit8 v16, p1, 0x13

    move/from16 v22, v14

    .line 5123
    aget-byte v14, v0, v16

    int-to-char v14, v14

    add-int/lit8 v16, p1, 0x14

    move/from16 v23, v13

    .line 5124
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x15

    move/from16 v27, v13

    .line 5125
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x16

    move/from16 v28, v13

    .line 5126
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x17

    move/from16 v29, v13

    .line 5127
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x18

    move/from16 v30, v13

    .line 5128
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x19

    .line 5129
    aget-byte v0, v0, v16

    int-to-char v0, v0

    move/from16 v16, v13

    const/16 v13, 0x2d

    if-ne v1, v13, :cond_3

    if-ne v2, v13, :cond_3

    const/16 v1, 0x20

    if-eq v12, v1, :cond_1

    const/16 v1, 0x54

    if-ne v12, v1, :cond_3

    :cond_1
    const/16 v1, 0x3a

    if-ne v15, v1, :cond_3

    if-ne v3, v1, :cond_3

    const/16 v1, 0x2e

    if-eq v14, v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v24, 0x30

    const/16 v25, 0x30

    const/16 v26, 0x30

    move/from16 v12, v23

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v23, v30

    move/from16 v27, v16

    move/from16 v13, v20

    move/from16 v16, v21

    move/from16 v17, v22

    move/from16 v14, v18

    move/from16 v15, v19

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v23

    move/from16 v22, v27

    move/from16 v23, v0

    .line 5135
    invoke-static/range {v4 .. v26}, Laay;->a(CCCCCCCCCCCCCCCCCCCCCCC)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static r([CI)Ljava/time/LocalDateTime;
    .locals 30

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x1a

    .line 5147
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 5151
    :cond_0
    aget-char v4, v0, p1

    add-int/lit8 v1, p1, 0x1

    .line 5152
    aget-char v5, v0, v1

    add-int/lit8 v1, p1, 0x2

    .line 5153
    aget-char v6, v0, v1

    add-int/lit8 v1, p1, 0x3

    .line 5154
    aget-char v7, v0, v1

    add-int/lit8 v1, p1, 0x4

    .line 5155
    aget-char v1, v0, v1

    add-int/lit8 v2, p1, 0x5

    .line 5156
    aget-char v8, v0, v2

    add-int/lit8 v2, p1, 0x6

    .line 5157
    aget-char v9, v0, v2

    add-int/lit8 v2, p1, 0x7

    .line 5158
    aget-char v2, v0, v2

    add-int/lit8 v10, p1, 0x8

    .line 5159
    aget-char v10, v0, v10

    add-int/lit8 v11, p1, 0x9

    .line 5160
    aget-char v11, v0, v11

    add-int/lit8 v12, p1, 0xa

    .line 5161
    aget-char v12, v0, v12

    add-int/lit8 v13, p1, 0xb

    .line 5162
    aget-char v13, v0, v13

    add-int/lit8 v14, p1, 0xc

    .line 5163
    aget-char v14, v0, v14

    add-int/lit8 v15, p1, 0xd

    .line 5164
    aget-char v15, v0, v15

    add-int/lit8 v16, p1, 0xe

    .line 5165
    aget-char v16, v0, v16

    add-int/lit8 v17, p1, 0xf

    .line 5166
    aget-char v17, v0, v17

    add-int/lit8 v18, p1, 0x10

    .line 5167
    aget-char v3, v0, v18

    add-int/lit8 v18, p1, 0x11

    .line 5168
    aget-char v18, v0, v18

    add-int/lit8 v20, p1, 0x12

    .line 5169
    aget-char v20, v0, v20

    add-int/lit8 v21, p1, 0x13

    move/from16 v22, v14

    .line 5170
    aget-char v14, v0, v21

    add-int/lit8 v21, p1, 0x14

    .line 5171
    aget-char v21, v0, v21

    add-int/lit8 v23, p1, 0x15

    .line 5172
    aget-char v23, v0, v23

    add-int/lit8 v24, p1, 0x16

    .line 5173
    aget-char v27, v0, v24

    add-int/lit8 v24, p1, 0x17

    .line 5174
    aget-char v28, v0, v24

    add-int/lit8 v24, p1, 0x18

    .line 5175
    aget-char v29, v0, v24

    add-int/lit8 v24, p1, 0x19

    .line 5176
    aget-char v0, v0, v24

    move/from16 p0, v0

    const/16 v0, 0x2d

    if-ne v1, v0, :cond_3

    if-ne v2, v0, :cond_3

    const/16 v0, 0x20

    if-eq v12, v0, :cond_1

    const/16 v0, 0x54

    if-ne v12, v0, :cond_3

    :cond_1
    const/16 v0, 0x3a

    if-ne v15, v0, :cond_3

    if-ne v3, v0, :cond_3

    const/16 v0, 0x2e

    if-eq v14, v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v24, 0x30

    const/16 v25, 0x30

    const/16 v26, 0x30

    move v12, v13

    move/from16 v13, v22

    move/from16 v14, v16

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v20

    move/from16 v18, v21

    move/from16 v19, v23

    move/from16 v20, v27

    move/from16 v21, v28

    move/from16 v22, v29

    move/from16 v23, p0

    .line 5182
    invoke-static/range {v4 .. v26}, Laay;->a(CCCCCCCCCCCCCCCCCCCCCCC)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static s([BI)Ljava/time/LocalDateTime;
    .locals 31

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x1b

    .line 5195
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 5199
    :cond_0
    aget-byte v1, v0, p1

    int-to-char v4, v1

    add-int/lit8 v1, p1, 0x1

    .line 5200
    aget-byte v1, v0, v1

    int-to-char v5, v1

    add-int/lit8 v1, p1, 0x2

    .line 5201
    aget-byte v1, v0, v1

    int-to-char v6, v1

    add-int/lit8 v1, p1, 0x3

    .line 5202
    aget-byte v1, v0, v1

    int-to-char v7, v1

    add-int/lit8 v1, p1, 0x4

    .line 5203
    aget-byte v1, v0, v1

    int-to-char v1, v1

    add-int/lit8 v2, p1, 0x5

    .line 5204
    aget-byte v2, v0, v2

    int-to-char v8, v2

    add-int/lit8 v2, p1, 0x6

    .line 5205
    aget-byte v2, v0, v2

    int-to-char v9, v2

    add-int/lit8 v2, p1, 0x7

    .line 5206
    aget-byte v2, v0, v2

    int-to-char v2, v2

    add-int/lit8 v10, p1, 0x8

    .line 5207
    aget-byte v10, v0, v10

    int-to-char v10, v10

    add-int/lit8 v11, p1, 0x9

    .line 5208
    aget-byte v11, v0, v11

    int-to-char v11, v11

    add-int/lit8 v12, p1, 0xa

    .line 5209
    aget-byte v12, v0, v12

    int-to-char v12, v12

    add-int/lit8 v13, p1, 0xb

    .line 5210
    aget-byte v13, v0, v13

    int-to-char v13, v13

    add-int/lit8 v14, p1, 0xc

    .line 5211
    aget-byte v14, v0, v14

    int-to-char v14, v14

    add-int/lit8 v15, p1, 0xd

    .line 5212
    aget-byte v15, v0, v15

    int-to-char v15, v15

    add-int/lit8 v16, p1, 0xe

    .line 5213
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0xf

    move/from16 v18, v3

    .line 5214
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0x10

    move/from16 v19, v3

    .line 5215
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0x11

    move/from16 v20, v14

    .line 5216
    aget-byte v14, v0, v16

    int-to-char v14, v14

    add-int/lit8 v16, p1, 0x12

    move/from16 v21, v14

    .line 5217
    aget-byte v14, v0, v16

    int-to-char v14, v14

    add-int/lit8 v16, p1, 0x13

    move/from16 v22, v14

    .line 5218
    aget-byte v14, v0, v16

    int-to-char v14, v14

    add-int/lit8 v16, p1, 0x14

    move/from16 v23, v13

    .line 5219
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x15

    move/from16 v24, v13

    .line 5220
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x16

    move/from16 v27, v13

    .line 5221
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x17

    move/from16 v28, v13

    .line 5222
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x18

    move/from16 v29, v13

    .line 5223
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x19

    move/from16 v30, v13

    .line 5224
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x1a

    .line 5225
    aget-byte v0, v0, v16

    int-to-char v0, v0

    move/from16 v16, v13

    const/16 v13, 0x2d

    if-ne v1, v13, :cond_3

    if-ne v2, v13, :cond_3

    const/16 v1, 0x20

    if-eq v12, v1, :cond_1

    const/16 v1, 0x54

    if-ne v12, v1, :cond_3

    :cond_1
    const/16 v1, 0x3a

    if-ne v15, v1, :cond_3

    if-ne v3, v1, :cond_3

    const/16 v1, 0x2e

    if-eq v14, v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v25, 0x30

    const/16 v26, 0x30

    move/from16 v12, v23

    move/from16 v1, v24

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v23, v29

    move/from16 v24, v30

    move/from16 v27, v16

    move/from16 v13, v20

    move/from16 v16, v21

    move/from16 v17, v22

    move/from16 v14, v18

    move/from16 v15, v19

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v23

    move/from16 v22, v24

    move/from16 v23, v27

    move/from16 v24, v0

    .line 5231
    invoke-static/range {v4 .. v26}, Laay;->a(CCCCCCCCCCCCCCCCCCCCCCC)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static s([CI)Ljava/time/LocalDateTime;
    .locals 30

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x1b

    .line 5243
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 5247
    :cond_0
    aget-char v4, v0, p1

    add-int/lit8 v1, p1, 0x1

    .line 5248
    aget-char v5, v0, v1

    add-int/lit8 v1, p1, 0x2

    .line 5249
    aget-char v6, v0, v1

    add-int/lit8 v1, p1, 0x3

    .line 5250
    aget-char v7, v0, v1

    add-int/lit8 v1, p1, 0x4

    .line 5251
    aget-char v1, v0, v1

    add-int/lit8 v2, p1, 0x5

    .line 5252
    aget-char v8, v0, v2

    add-int/lit8 v2, p1, 0x6

    .line 5253
    aget-char v9, v0, v2

    add-int/lit8 v2, p1, 0x7

    .line 5254
    aget-char v2, v0, v2

    add-int/lit8 v10, p1, 0x8

    .line 5255
    aget-char v10, v0, v10

    add-int/lit8 v11, p1, 0x9

    .line 5256
    aget-char v11, v0, v11

    add-int/lit8 v12, p1, 0xa

    .line 5257
    aget-char v12, v0, v12

    add-int/lit8 v13, p1, 0xb

    .line 5258
    aget-char v13, v0, v13

    add-int/lit8 v14, p1, 0xc

    .line 5259
    aget-char v14, v0, v14

    add-int/lit8 v15, p1, 0xd

    .line 5260
    aget-char v15, v0, v15

    add-int/lit8 v16, p1, 0xe

    .line 5261
    aget-char v16, v0, v16

    add-int/lit8 v17, p1, 0xf

    .line 5262
    aget-char v17, v0, v17

    add-int/lit8 v18, p1, 0x10

    .line 5263
    aget-char v3, v0, v18

    add-int/lit8 v18, p1, 0x11

    .line 5264
    aget-char v18, v0, v18

    add-int/lit8 v20, p1, 0x12

    .line 5265
    aget-char v20, v0, v20

    add-int/lit8 v21, p1, 0x13

    move/from16 v22, v14

    .line 5266
    aget-char v14, v0, v21

    add-int/lit8 v21, p1, 0x14

    .line 5267
    aget-char v21, v0, v21

    add-int/lit8 v23, p1, 0x15

    .line 5268
    aget-char v23, v0, v23

    add-int/lit8 v24, p1, 0x16

    .line 5269
    aget-char v24, v0, v24

    add-int/lit8 v25, p1, 0x17

    .line 5270
    aget-char v27, v0, v25

    add-int/lit8 v25, p1, 0x18

    .line 5271
    aget-char v28, v0, v25

    add-int/lit8 v25, p1, 0x19

    .line 5272
    aget-char v29, v0, v25

    add-int/lit8 v25, p1, 0x1a

    .line 5273
    aget-char v0, v0, v25

    move/from16 p0, v0

    const/16 v0, 0x2d

    if-ne v1, v0, :cond_3

    if-ne v2, v0, :cond_3

    const/16 v0, 0x20

    if-eq v12, v0, :cond_1

    const/16 v0, 0x54

    if-ne v12, v0, :cond_3

    :cond_1
    const/16 v0, 0x3a

    if-ne v15, v0, :cond_3

    if-ne v3, v0, :cond_3

    const/16 v0, 0x2e

    if-eq v14, v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v25, 0x30

    const/16 v26, 0x30

    move v12, v13

    move/from16 v13, v22

    move/from16 v14, v16

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v20

    move/from16 v18, v21

    move/from16 v19, v23

    move/from16 v20, v24

    move/from16 v21, v27

    move/from16 v22, v28

    move/from16 v23, v29

    move/from16 v24, p0

    .line 5279
    invoke-static/range {v4 .. v26}, Laay;->a(CCCCCCCCCCCCCCCCCCCCCCC)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static t([BI)Ljava/time/LocalDateTime;
    .locals 31

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x1c

    .line 5340
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 5344
    :cond_0
    aget-byte v1, v0, p1

    int-to-char v4, v1

    add-int/lit8 v1, p1, 0x1

    .line 5345
    aget-byte v1, v0, v1

    int-to-char v5, v1

    add-int/lit8 v1, p1, 0x2

    .line 5346
    aget-byte v1, v0, v1

    int-to-char v6, v1

    add-int/lit8 v1, p1, 0x3

    .line 5347
    aget-byte v1, v0, v1

    int-to-char v7, v1

    add-int/lit8 v1, p1, 0x4

    .line 5348
    aget-byte v1, v0, v1

    int-to-char v1, v1

    add-int/lit8 v2, p1, 0x5

    .line 5349
    aget-byte v2, v0, v2

    int-to-char v8, v2

    add-int/lit8 v2, p1, 0x6

    .line 5350
    aget-byte v2, v0, v2

    int-to-char v9, v2

    add-int/lit8 v2, p1, 0x7

    .line 5351
    aget-byte v2, v0, v2

    int-to-char v2, v2

    add-int/lit8 v10, p1, 0x8

    .line 5352
    aget-byte v10, v0, v10

    int-to-char v10, v10

    add-int/lit8 v11, p1, 0x9

    .line 5353
    aget-byte v11, v0, v11

    int-to-char v11, v11

    add-int/lit8 v12, p1, 0xa

    .line 5354
    aget-byte v12, v0, v12

    int-to-char v12, v12

    add-int/lit8 v13, p1, 0xb

    .line 5355
    aget-byte v13, v0, v13

    int-to-char v13, v13

    add-int/lit8 v14, p1, 0xc

    .line 5356
    aget-byte v14, v0, v14

    int-to-char v14, v14

    add-int/lit8 v15, p1, 0xd

    .line 5357
    aget-byte v15, v0, v15

    int-to-char v15, v15

    add-int/lit8 v16, p1, 0xe

    .line 5358
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0xf

    move/from16 v18, v3

    .line 5359
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0x10

    move/from16 v19, v3

    .line 5360
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0x11

    move/from16 v20, v14

    .line 5361
    aget-byte v14, v0, v16

    int-to-char v14, v14

    add-int/lit8 v16, p1, 0x12

    move/from16 v21, v14

    .line 5362
    aget-byte v14, v0, v16

    int-to-char v14, v14

    add-int/lit8 v16, p1, 0x13

    move/from16 v22, v14

    .line 5363
    aget-byte v14, v0, v16

    int-to-char v14, v14

    add-int/lit8 v16, p1, 0x14

    move/from16 v23, v13

    .line 5364
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x15

    move/from16 v24, v13

    .line 5365
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x16

    move/from16 v25, v13

    .line 5366
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x17

    move/from16 v27, v13

    .line 5367
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x18

    move/from16 v28, v13

    .line 5368
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x19

    move/from16 v29, v13

    .line 5369
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x1a

    move/from16 v30, v13

    .line 5370
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x1b

    .line 5371
    aget-byte v0, v0, v16

    int-to-char v0, v0

    move/from16 v16, v13

    const/16 v13, 0x2d

    if-ne v1, v13, :cond_3

    if-ne v2, v13, :cond_3

    const/16 v1, 0x20

    if-eq v12, v1, :cond_1

    const/16 v1, 0x54

    if-ne v12, v1, :cond_3

    :cond_1
    const/16 v1, 0x3a

    if-ne v15, v1, :cond_3

    if-ne v3, v1, :cond_3

    const/16 v1, 0x2e

    if-eq v14, v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v26, 0x30

    move/from16 v12, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v27

    move/from16 v23, v28

    move/from16 v24, v29

    move/from16 v25, v30

    move/from16 v27, v16

    move/from16 v13, v20

    move/from16 v16, v21

    move/from16 v17, v22

    move/from16 v14, v18

    move/from16 v15, v19

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v23

    move/from16 v22, v24

    move/from16 v23, v25

    move/from16 v24, v27

    move/from16 v25, v0

    .line 5377
    invoke-static/range {v4 .. v26}, Laay;->a(CCCCCCCCCCCCCCCCCCCCCCC)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static t([CI)Ljava/time/LocalDateTime;
    .locals 30

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x1c

    .line 5291
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 5295
    :cond_0
    aget-char v4, v0, p1

    add-int/lit8 v1, p1, 0x1

    .line 5296
    aget-char v5, v0, v1

    add-int/lit8 v1, p1, 0x2

    .line 5297
    aget-char v6, v0, v1

    add-int/lit8 v1, p1, 0x3

    .line 5298
    aget-char v7, v0, v1

    add-int/lit8 v1, p1, 0x4

    .line 5299
    aget-char v1, v0, v1

    add-int/lit8 v2, p1, 0x5

    .line 5300
    aget-char v8, v0, v2

    add-int/lit8 v2, p1, 0x6

    .line 5301
    aget-char v9, v0, v2

    add-int/lit8 v2, p1, 0x7

    .line 5302
    aget-char v2, v0, v2

    add-int/lit8 v10, p1, 0x8

    .line 5303
    aget-char v10, v0, v10

    add-int/lit8 v11, p1, 0x9

    .line 5304
    aget-char v11, v0, v11

    add-int/lit8 v12, p1, 0xa

    .line 5305
    aget-char v12, v0, v12

    add-int/lit8 v13, p1, 0xb

    .line 5306
    aget-char v13, v0, v13

    add-int/lit8 v14, p1, 0xc

    .line 5307
    aget-char v14, v0, v14

    add-int/lit8 v15, p1, 0xd

    .line 5308
    aget-char v15, v0, v15

    add-int/lit8 v16, p1, 0xe

    .line 5309
    aget-char v16, v0, v16

    add-int/lit8 v17, p1, 0xf

    .line 5310
    aget-char v17, v0, v17

    add-int/lit8 v18, p1, 0x10

    .line 5311
    aget-char v3, v0, v18

    add-int/lit8 v18, p1, 0x11

    .line 5312
    aget-char v18, v0, v18

    add-int/lit8 v20, p1, 0x12

    .line 5313
    aget-char v20, v0, v20

    add-int/lit8 v21, p1, 0x13

    move/from16 v22, v14

    .line 5314
    aget-char v14, v0, v21

    add-int/lit8 v21, p1, 0x14

    .line 5315
    aget-char v21, v0, v21

    add-int/lit8 v23, p1, 0x15

    .line 5316
    aget-char v23, v0, v23

    add-int/lit8 v24, p1, 0x16

    .line 5317
    aget-char v24, v0, v24

    add-int/lit8 v25, p1, 0x17

    .line 5318
    aget-char v25, v0, v25

    add-int/lit8 v26, p1, 0x18

    .line 5319
    aget-char v27, v0, v26

    add-int/lit8 v26, p1, 0x19

    .line 5320
    aget-char v28, v0, v26

    add-int/lit8 v26, p1, 0x1a

    .line 5321
    aget-char v29, v0, v26

    add-int/lit8 v26, p1, 0x1b

    .line 5322
    aget-char v0, v0, v26

    move/from16 p0, v0

    const/16 v0, 0x2d

    if-ne v1, v0, :cond_3

    if-ne v2, v0, :cond_3

    const/16 v0, 0x20

    if-eq v12, v0, :cond_1

    const/16 v0, 0x54

    if-ne v12, v0, :cond_3

    :cond_1
    const/16 v0, 0x3a

    if-ne v15, v0, :cond_3

    if-ne v3, v0, :cond_3

    const/16 v0, 0x2e

    if-eq v14, v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v26, 0x30

    move v12, v13

    move/from16 v13, v22

    move/from16 v14, v16

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v20

    move/from16 v18, v21

    move/from16 v19, v23

    move/from16 v20, v24

    move/from16 v21, v25

    move/from16 v22, v27

    move/from16 v23, v28

    move/from16 v24, v29

    move/from16 v25, p0

    .line 5328
    invoke-static/range {v4 .. v26}, Laay;->a(CCCCCCCCCCCCCCCCCCCCCCC)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static u([BI)Ljava/time/LocalDateTime;
    .locals 31

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x1d

    .line 5389
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 5393
    :cond_0
    aget-byte v1, v0, p1

    int-to-char v4, v1

    add-int/lit8 v1, p1, 0x1

    .line 5394
    aget-byte v1, v0, v1

    int-to-char v5, v1

    add-int/lit8 v1, p1, 0x2

    .line 5395
    aget-byte v1, v0, v1

    int-to-char v6, v1

    add-int/lit8 v1, p1, 0x3

    .line 5396
    aget-byte v1, v0, v1

    int-to-char v7, v1

    add-int/lit8 v1, p1, 0x4

    .line 5397
    aget-byte v1, v0, v1

    int-to-char v1, v1

    add-int/lit8 v2, p1, 0x5

    .line 5398
    aget-byte v2, v0, v2

    int-to-char v8, v2

    add-int/lit8 v2, p1, 0x6

    .line 5399
    aget-byte v2, v0, v2

    int-to-char v9, v2

    add-int/lit8 v2, p1, 0x7

    .line 5400
    aget-byte v2, v0, v2

    int-to-char v2, v2

    add-int/lit8 v10, p1, 0x8

    .line 5401
    aget-byte v10, v0, v10

    int-to-char v10, v10

    add-int/lit8 v11, p1, 0x9

    .line 5402
    aget-byte v11, v0, v11

    int-to-char v11, v11

    add-int/lit8 v12, p1, 0xa

    .line 5403
    aget-byte v12, v0, v12

    int-to-char v12, v12

    add-int/lit8 v13, p1, 0xb

    .line 5404
    aget-byte v13, v0, v13

    int-to-char v13, v13

    add-int/lit8 v14, p1, 0xc

    .line 5405
    aget-byte v14, v0, v14

    int-to-char v14, v14

    add-int/lit8 v15, p1, 0xd

    .line 5406
    aget-byte v15, v0, v15

    int-to-char v15, v15

    add-int/lit8 v16, p1, 0xe

    .line 5407
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0xf

    move/from16 v18, v3

    .line 5408
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0x10

    move/from16 v19, v3

    .line 5409
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0x11

    move/from16 v20, v14

    .line 5410
    aget-byte v14, v0, v16

    int-to-char v14, v14

    add-int/lit8 v16, p1, 0x12

    move/from16 v21, v14

    .line 5411
    aget-byte v14, v0, v16

    int-to-char v14, v14

    add-int/lit8 v16, p1, 0x13

    move/from16 v22, v14

    .line 5412
    aget-byte v14, v0, v16

    int-to-char v14, v14

    add-int/lit8 v16, p1, 0x14

    move/from16 v23, v13

    .line 5413
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x15

    move/from16 v24, v13

    .line 5414
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x16

    move/from16 v25, v13

    .line 5415
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x17

    move/from16 v26, v13

    .line 5416
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x18

    move/from16 v27, v13

    .line 5417
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x19

    move/from16 v28, v13

    .line 5418
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x1a

    move/from16 v29, v13

    .line 5419
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x1b

    move/from16 v30, v13

    .line 5420
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x1c

    .line 5421
    aget-byte v0, v0, v16

    int-to-char v0, v0

    move/from16 v16, v13

    const/16 v13, 0x2d

    if-ne v1, v13, :cond_3

    if-ne v2, v13, :cond_3

    const/16 v1, 0x20

    if-eq v12, v1, :cond_1

    const/16 v1, 0x54

    if-ne v12, v1, :cond_3

    :cond_1
    const/16 v1, 0x3a

    if-ne v15, v1, :cond_3

    if-ne v3, v1, :cond_3

    const/16 v1, 0x2e

    if-eq v14, v1, :cond_2

    goto :goto_0

    :cond_2
    move/from16 v12, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v23, v27

    move/from16 v24, v28

    move/from16 v25, v29

    move/from16 v26, v30

    move/from16 v27, v16

    move/from16 v13, v20

    move/from16 v16, v21

    move/from16 v17, v22

    move/from16 v14, v18

    move/from16 v15, v19

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v23

    move/from16 v22, v24

    move/from16 v23, v25

    move/from16 v24, v26

    move/from16 v25, v27

    move/from16 v26, v0

    .line 5427
    invoke-static/range {v4 .. v26}, Laay;->a(CCCCCCCCCCCCCCCCCCCCCCC)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static u([CI)Ljava/time/LocalDateTime;
    .locals 31

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x1d

    .line 5439
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 5443
    :cond_0
    aget-char v4, v0, p1

    add-int/lit8 v1, p1, 0x1

    .line 5444
    aget-char v5, v0, v1

    add-int/lit8 v1, p1, 0x2

    .line 5445
    aget-char v6, v0, v1

    add-int/lit8 v1, p1, 0x3

    .line 5446
    aget-char v7, v0, v1

    add-int/lit8 v1, p1, 0x4

    .line 5447
    aget-char v1, v0, v1

    add-int/lit8 v2, p1, 0x5

    .line 5448
    aget-char v8, v0, v2

    add-int/lit8 v2, p1, 0x6

    .line 5449
    aget-char v9, v0, v2

    add-int/lit8 v2, p1, 0x7

    .line 5450
    aget-char v2, v0, v2

    add-int/lit8 v10, p1, 0x8

    .line 5451
    aget-char v10, v0, v10

    add-int/lit8 v11, p1, 0x9

    .line 5452
    aget-char v11, v0, v11

    add-int/lit8 v12, p1, 0xa

    .line 5453
    aget-char v12, v0, v12

    add-int/lit8 v13, p1, 0xb

    .line 5454
    aget-char v13, v0, v13

    add-int/lit8 v14, p1, 0xc

    .line 5455
    aget-char v14, v0, v14

    add-int/lit8 v15, p1, 0xd

    .line 5456
    aget-char v15, v0, v15

    add-int/lit8 v16, p1, 0xe

    .line 5457
    aget-char v16, v0, v16

    add-int/lit8 v17, p1, 0xf

    .line 5458
    aget-char v17, v0, v17

    add-int/lit8 v18, p1, 0x10

    .line 5459
    aget-char v3, v0, v18

    add-int/lit8 v18, p1, 0x11

    .line 5460
    aget-char v18, v0, v18

    add-int/lit8 v20, p1, 0x12

    .line 5461
    aget-char v20, v0, v20

    add-int/lit8 v21, p1, 0x13

    move/from16 v22, v14

    .line 5462
    aget-char v14, v0, v21

    add-int/lit8 v21, p1, 0x14

    .line 5463
    aget-char v21, v0, v21

    add-int/lit8 v23, p1, 0x15

    .line 5464
    aget-char v23, v0, v23

    add-int/lit8 v24, p1, 0x16

    .line 5465
    aget-char v24, v0, v24

    add-int/lit8 v25, p1, 0x17

    .line 5466
    aget-char v25, v0, v25

    add-int/lit8 v26, p1, 0x18

    .line 5467
    aget-char v26, v0, v26

    add-int/lit8 v27, p1, 0x19

    .line 5468
    aget-char v27, v0, v27

    add-int/lit8 v28, p1, 0x1a

    .line 5469
    aget-char v28, v0, v28

    add-int/lit8 v29, p1, 0x1b

    .line 5470
    aget-char v29, v0, v29

    add-int/lit8 v30, p1, 0x1c

    .line 5471
    aget-char v0, v0, v30

    move/from16 p0, v0

    const/16 v0, 0x2d

    if-ne v1, v0, :cond_3

    if-ne v2, v0, :cond_3

    const/16 v0, 0x20

    if-eq v12, v0, :cond_1

    const/16 v0, 0x54

    if-ne v12, v0, :cond_3

    :cond_1
    const/16 v0, 0x3a

    if-ne v15, v0, :cond_3

    if-ne v3, v0, :cond_3

    const/16 v0, 0x2e

    if-eq v14, v0, :cond_2

    goto :goto_0

    :cond_2
    move v12, v13

    move/from16 v13, v22

    move/from16 v14, v16

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v20

    move/from16 v18, v21

    move/from16 v19, v23

    move/from16 v20, v24

    move/from16 v21, v25

    move/from16 v22, v26

    move/from16 v23, v27

    move/from16 v24, v28

    move/from16 v25, v29

    move/from16 v26, p0

    .line 5477
    invoke-static/range {v4 .. v26}, Laay;->a(CCCCCCCCCCCCCCCCCCCCCCC)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
