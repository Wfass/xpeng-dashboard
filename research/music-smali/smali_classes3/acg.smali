.class abstract Lacg;
.super Labq;
.source "FieldWriterDate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Labq<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected B:Ljava/time/format/DateTimeFormatter;

.field final C:Z

.field final D:Z

.field final E:Z

.field final F:Z

.field final G:Z

.field final H:Z

.field protected I:Laem;


# direct methods
.method protected constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 35
    invoke-direct/range {p0 .. p10}, Labq;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eqz p5, :cond_7

    const/4 p3, -0x1

    .line 40
    invoke-virtual {p5}, Ljava/lang/String;->hashCode()I

    move-result p4

    const/4 p6, 0x5

    const/4 p7, 0x4

    const/4 p8, 0x3

    const/4 p9, 0x2

    sparse-switch p4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p4, "iso8601"

    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    move p3, p2

    goto :goto_0

    :sswitch_1
    const-string/jumbo p4, "yyyyMMddHHmmss"

    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    move p3, p6

    goto :goto_0

    :sswitch_2
    const-string/jumbo p4, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    move p3, p8

    goto :goto_0

    :sswitch_3
    const-string/jumbo p4, "yyyyMMdd"

    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    move p3, p7

    goto :goto_0

    :sswitch_4
    const-string p4, "unixtime"

    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    move p3, p9

    goto :goto_0

    :sswitch_5
    const-string p4, "millis"

    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    move p3, p1

    :cond_0
    :goto_0
    if-eqz p3, :cond_6

    if-eq p3, p2, :cond_5

    if-eq p3, p9, :cond_4

    if-eq p3, p8, :cond_3

    if-eq p3, p7, :cond_2

    if-eq p3, p6, :cond_1

    goto :goto_2

    :cond_1
    move p3, p1

    move p4, p3

    move p6, p4

    move p5, p2

    goto :goto_1

    :cond_2
    move p3, p1

    move p5, p3

    move p6, p5

    move p4, p2

    goto :goto_1

    :cond_3
    move p3, p1

    move p4, p3

    move p5, p4

    move p6, p2

    move p2, p5

    goto :goto_4

    :cond_4
    move p4, p1

    move p5, p4

    move p6, p5

    move p3, p2

    goto :goto_1

    :cond_5
    move p3, p1

    goto :goto_3

    :cond_6
    move p3, p1

    move p4, p3

    move p5, p4

    move p6, p5

    move p1, p2

    :goto_1
    move p2, p6

    goto :goto_4

    :cond_7
    :goto_2
    move p2, p1

    move p3, p2

    :goto_3
    move p4, p3

    move p5, p4

    move p6, p5

    .line 64
    :goto_4
    iput-boolean p1, p0, Lacg;->C:Z

    .line 65
    iput-boolean p2, p0, Lacg;->D:Z

    .line 66
    iput-boolean p3, p0, Lacg;->H:Z

    .line 67
    iput-boolean p4, p0, Lacg;->E:Z

    .line 68
    iput-boolean p5, p0, Lacg;->F:Z

    .line 69
    iput-boolean p6, p0, Lacg;->G:Z

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x400565ba -> :sswitch_5
        -0x112ad7ab -> :sswitch_4
        -0x10781ba0 -> :sswitch_3
        0x4f76f1a0 -> :sswitch_2
        0x5069d960 -> :sswitch_1
        0x7ce21384 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Class;)Laem;
    .locals 4

    .line 97
    iget-object v0, p0, Lacg;->c:Ljava/lang/Class;

    if-ne p2, v0, :cond_3

    .line 98
    iget-object p1, p1, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-object p1, p1, Lcom/alibaba/fastjson2/ab$a;->b:Lahq;

    .line 99
    iget-object v0, p0, Lacg;->I:Laem;

    if-nez v0, :cond_2

    .line 100
    iget-wide v0, p1, Lahq;->g:J

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p1, p2, p2, v0}, Lahq;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Laem;

    move-result-object p1

    iput-object p1, p0, Lacg;->I:Laem;

    goto :goto_0

    .line 103
    :cond_0
    iget-object p1, p0, Lacg;->f:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 104
    sget-object p1, Laga;->o:Laga;

    iput-object p1, p0, Lacg;->I:Laem;

    return-object p1

    .line 106
    :cond_1
    new-instance p1, Laga;

    iget-object p2, p0, Lacg;->f:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Laga;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lacg;->I:Laem;

    return-object p1

    .line 110
    :cond_2
    :goto_0
    iget-object p1, p0, Lacg;->I:Laem;

    return-object p1

    .line 113
    :cond_3
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Class;)Laem;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/alibaba/fastjson2/ab;J)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    .line 118
    iget-boolean v4, v1, Lcom/alibaba/fastjson2/ab;->f:Z

    if-eqz v4, :cond_0

    .line 119
    invoke-virtual/range {p0 .. p1}, Lacg;->a(Lcom/alibaba/fastjson2/ab;)V

    .line 120
    invoke-virtual/range {p1 .. p3}, Lcom/alibaba/fastjson2/ab;->f(J)V

    return-void

    .line 126
    :cond_0
    iget-object v4, v1, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    .line 128
    iget-boolean v5, v0, Lacg;->H:Z

    const-wide/16 v6, 0x3e8

    if-nez v5, :cond_17

    iget-object v5, v0, Lacg;->f:Ljava/lang/String;

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/alibaba/fastjson2/ab$a;->e()Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_8

    .line 134
    :cond_1
    iget-boolean v5, v0, Lacg;->C:Z

    if-nez v5, :cond_16

    iget-object v5, v0, Lacg;->f:Ljava/lang/String;

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lcom/alibaba/fastjson2/ab$a;->d()Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_7

    .line 140
    :cond_2
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/ab$a;->b()Ljava/time/ZoneId;

    move-result-object v5

    .line 142
    iget-object v8, v0, Lacg;->f:Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 143
    iget-object v8, v0, Lacg;->f:Ljava/lang/String;

    goto :goto_0

    .line 144
    :cond_3
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/ab$a;->c()Ljava/lang/String;

    move-result-object v8

    .line 145
    :goto_0
    iget-boolean v9, v0, Lacg;->G:Z

    const/4 v10, 0x1

    if-nez v9, :cond_5

    invoke-virtual {v4}, Lcom/alibaba/fastjson2/ab$a;->i()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v0, Lacg;->f:Ljava/lang/String;

    if-nez v9, :cond_4

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    move v9, v10

    :goto_2
    if-eqz v8, :cond_6

    .line 146
    iget-boolean v8, v0, Lacg;->F:Z

    if-nez v8, :cond_6

    if-eqz v9, :cond_e

    .line 147
    :cond_6
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v12

    .line 149
    sget-object v8, Laay;->b:Ljava/time/ZoneId;

    if-eq v5, v8, :cond_8

    invoke-virtual {v5}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v8

    sget-object v14, Laay;->c:Ljava/time/zone/ZoneRules;

    if-ne v8, v14, :cond_7

    goto :goto_3

    .line 152
    :cond_7
    invoke-static/range {p2 .. p3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v8

    .line 153
    invoke-virtual {v5}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v8

    goto :goto_4

    .line 150
    :cond_8
    :goto_3
    invoke-static {v12, v13}, Laay;->a(J)I

    move-result v8

    :goto_4
    int-to-long v14, v8

    add-long/2addr v12, v14

    const-wide/32 v14, 0x15180

    .line 157
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v16

    .line 158
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v12

    long-to-int v8, v12

    const-wide/32 v12, 0xafaa8

    add-long v16, v16, v12

    const-wide/16 v12, 0x3c

    sub-long v16, v16, v12

    const-wide/16 v14, 0x0

    cmp-long v18, v16, v14

    const-wide/16 v19, 0x1

    const-wide/32 v21, 0x23ab1

    const-wide/16 v23, 0x190

    if-gez v18, :cond_9

    add-long v25, v16, v19

    .line 170
    div-long v25, v25, v21

    sub-long v6, v25, v19

    mul-long v25, v6, v23

    neg-long v6, v6

    mul-long v6, v6, v21

    add-long v16, v16, v6

    goto :goto_5

    :cond_9
    move-wide/from16 v25, v14

    :goto_5
    mul-long v6, v16, v23

    const-wide/16 v27, 0x24f

    add-long v6, v6, v27

    .line 174
    div-long v6, v6, v21

    const-wide/16 v21, 0x16d

    mul-long v27, v6, v21

    const-wide/16 v29, 0x4

    .line 175
    div-long v31, v6, v29

    add-long v27, v27, v31

    const-wide/16 v31, 0x64

    div-long v33, v6, v31

    sub-long v27, v27, v33

    div-long v33, v6, v23

    add-long v27, v27, v33

    sub-long v27, v16, v27

    cmp-long v18, v27, v14

    if-gez v18, :cond_a

    sub-long v6, v6, v19

    mul-long v21, v21, v6

    .line 179
    div-long v18, v6, v29

    add-long v21, v21, v18

    div-long v18, v6, v31

    sub-long v21, v21, v18

    div-long v18, v6, v23

    add-long v21, v21, v18

    sub-long v27, v16, v21

    :cond_a
    move-wide/from16 v11, v27

    add-long v6, v6, v25

    long-to-int v11, v11

    mul-int/lit8 v12, v11, 0x5

    add-int/lit8 v12, v12, 0x2

    .line 185
    div-int/lit16 v12, v12, 0x99

    add-int/lit8 v13, v12, 0x2

    .line 186
    rem-int/lit8 v13, v13, 0xc

    add-int/2addr v13, v10

    mul-int/lit16 v14, v12, 0x132

    add-int/lit8 v14, v14, 0x5

    .line 187
    div-int/lit8 v14, v14, 0xa

    sub-int/2addr v11, v14

    add-int/2addr v10, v11

    .line 188
    div-int/lit8 v12, v12, 0xa

    int-to-long v11, v12

    add-long/2addr v6, v11

    const-wide/32 v11, -0x3b9ac9ff

    cmp-long v11, v6, v11

    if-ltz v11, :cond_15

    const-wide/32 v11, 0x3b9ac9ff

    cmp-long v11, v6, v11

    if-gtz v11, :cond_15

    long-to-int v6, v6

    int-to-long v7, v8

    const-wide/16 v11, 0x0

    cmp-long v11, v7, v11

    if-ltz v11, :cond_14

    const-wide/32 v11, 0x1517f

    cmp-long v11, v7, v11

    if-gtz v11, :cond_14

    const-wide/16 v11, 0xe10

    .line 208
    div-long v11, v7, v11

    long-to-int v11, v11

    mul-int/lit16 v12, v11, 0xe10

    int-to-long v14, v12

    sub-long/2addr v7, v14

    const-wide/16 v14, 0x3c

    .line 210
    div-long v14, v7, v14

    long-to-int v12, v14

    mul-int/lit8 v14, v12, 0x3c

    int-to-long v14, v14

    sub-long/2addr v7, v14

    long-to-int v7, v7

    if-ltz v6, :cond_e

    const/16 v8, 0x270f

    if-gt v6, v8, :cond_e

    .line 219
    iget-boolean v5, v0, Lacg;->F:Z

    if-eqz v5, :cond_b

    .line 220
    invoke-virtual/range {p0 .. p1}, Lacg;->a(Lcom/alibaba/fastjson2/ab;)V

    move-object/from16 v1, p1

    move v2, v6

    move v3, v13

    move v4, v10

    move v5, v11

    move v6, v12

    .line 221
    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson2/ab;->a(IIIIII)V

    return-void

    :cond_b
    if-eqz v9, :cond_c

    .line 233
    invoke-virtual/range {p0 .. p1}, Lacg;->a(Lcom/alibaba/fastjson2/ab;)V

    move-object/from16 v1, p1

    move v2, v6

    move v3, v13

    move v4, v10

    move v5, v11

    move v6, v12

    .line 234
    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson2/ab;->b(IIIIII)V

    return-void

    :cond_c
    const-wide/16 v8, 0x3e8

    .line 245
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    if-eqz v8, :cond_d

    .line 247
    invoke-static/range {p2 .. p3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v2

    .line 249
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/ab$a;->b()Ljava/time/ZoneId;

    move-result-object v3

    .line 250
    invoke-virtual {v3}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v3

    .line 251
    invoke-virtual {v3, v2}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v2

    .line 252
    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v9

    .line 253
    invoke-virtual/range {p0 .. p1}, Lacg;->a(Lcom/alibaba/fastjson2/ab;)V

    const/4 v14, 0x0

    move-object/from16 v1, p1

    move v2, v6

    move v3, v13

    move v4, v10

    move v5, v11

    move v6, v12

    move v10, v14

    .line 254
    invoke-virtual/range {v1 .. v10}, Lcom/alibaba/fastjson2/ab;->a(IIIIIIIIZ)V

    return-void

    .line 257
    :cond_d
    invoke-virtual/range {p0 .. p1}, Lacg;->a(Lcom/alibaba/fastjson2/ab;)V

    move-object/from16 v1, p1

    move v2, v6

    move v3, v13

    move v4, v10

    move v5, v11

    move v6, v12

    .line 258
    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson2/ab;->b(IIIIII)V

    return-void

    .line 263
    :cond_e
    invoke-virtual/range {p0 .. p1}, Lacg;->a(Lcom/alibaba/fastjson2/ab;)V

    .line 266
    invoke-static/range {p2 .. p3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v2

    .line 265
    invoke-static {v2, v5}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    .line 268
    iget-boolean v3, v0, Lacg;->D:Z

    if-nez v3, :cond_f

    invoke-virtual {v4}, Lcom/alibaba/fastjson2/ab$a;->f()Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, v0, Lacg;->f:Ljava/lang/String;

    if-nez v3, :cond_10

    .line 269
    :cond_f
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getYear()I

    move-result v3

    if-ltz v3, :cond_10

    const/16 v5, 0x270f

    if-gt v3, v5, :cond_10

    .line 271
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getMonthValue()I

    move-result v4

    .line 272
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v5

    .line 273
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getHour()I

    move-result v6

    .line 274
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getMinute()I

    move-result v7

    .line 275
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getSecond()I

    move-result v8

    .line 276
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getNano()I

    move-result v9

    const v10, 0xf4240

    div-int/2addr v9, v10

    .line 277
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v10

    const/4 v11, 0x1

    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    .line 278
    invoke-virtual/range {v1 .. v10}, Lcom/alibaba/fastjson2/ab;->a(IIIIIIIIZ)V

    return-void

    .line 283
    :cond_10
    iget-boolean v3, v0, Lacg;->E:Z

    if-eqz v3, :cond_11

    .line 284
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getYear()I

    move-result v3

    if-ltz v3, :cond_11

    const/16 v5, 0x270f

    if-gt v3, v5, :cond_11

    .line 286
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getMonthValue()I

    move-result v4

    .line 287
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v2

    .line 288
    invoke-virtual {v1, v3, v4, v2}, Lcom/alibaba/fastjson2/ab;->a(III)V

    return-void

    .line 293
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lacg;->i()Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    if-nez v3, :cond_12

    .line 295
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/ab$a;->j()Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    :cond_12
    if-eqz v3, :cond_13

    .line 300
    invoke-virtual {v3, v2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v2

    .line 299
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    goto :goto_6

    .line 303
    :cond_13
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/time/ZonedDateTime;)V

    :goto_6
    return-void

    .line 206
    :cond_14
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid secondOfDay "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :cond_15
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid year "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    :cond_16
    :goto_7
    invoke-virtual/range {p0 .. p1}, Lacg;->a(Lcom/alibaba/fastjson2/ab;)V

    .line 136
    invoke-virtual/range {p1 .. p3}, Lcom/alibaba/fastjson2/ab;->e(J)V

    return-void

    .line 129
    :cond_17
    :goto_8
    invoke-virtual/range {p0 .. p1}, Lacg;->a(Lcom/alibaba/fastjson2/ab;)V

    const-wide/16 v4, 0x3e8

    .line 130
    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson2/ab;->e(J)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lacg;->C:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lacg;->D:Z

    return v0
.end method

.method public i()Ljava/time/format/DateTimeFormatter;
    .locals 1

    .line 83
    iget-object v0, p0, Lacg;->B:Ljava/time/format/DateTimeFormatter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lacg;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lacg;->C:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lacg;->D:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lacg;->H:Z

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lacg;->f:Ljava/lang/String;

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    iput-object v0, p0, Lacg;->B:Ljava/time/format/DateTimeFormatter;

    .line 92
    :cond_0
    iget-object v0, p0, Lacg;->B:Ljava/time/format/DateTimeFormatter;

    return-object v0
.end method
