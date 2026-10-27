.class final Laga;
.super Lqf;
.source "ObjectWriterImplDate.java"

# interfaces
.implements Laem;


# static fields
.field static final o:Laga;

.field static final p:[C

.field static final q:[B

.field static final r:[C

.field static final s:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Laga;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Laga;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Laga;->o:Laga;

    const-string v0, "new Date("

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Laga;->p:[C

    .line 20
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Laga;->q:[B

    const-string/jumbo v0, "{\"@type\":\"java.sql.Date\",\"val\":"

    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Laga;->r:[C

    .line 23
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Laga;->s:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lqf;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 32
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 36
    :cond_0
    check-cast p2, Ljava/util/Date;

    .line 37
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    .line 36
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/ab;->f(J)V

    return-void
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v2, :cond_0

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 47
    :cond_0
    iget-object v3, v1, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    .line 49
    move-object v4, v2

    check-cast v4, Ljava/util/Date;

    .line 50
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    move-object/from16 v7, p4

    .line 52
    invoke-virtual {v1, v2, v7}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z

    move-result v2

    const/4 v7, 0x0

    const-string v8, "java.sql.Date"

    if-eqz v2, :cond_4

    const/16 v2, 0x29

    .line 54
    iget-boolean v3, v1, Lcom/alibaba/fastjson2/ab;->e:Z

    const/16 v9, 0x7d

    if-eqz v3, :cond_2

    .line 56
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 57
    sget-object v2, Laga;->r:[C

    goto :goto_0

    .line 60
    :cond_1
    sget-object v3, Laga;->p:[C

    move v9, v2

    move-object v2, v3

    .line 62
    :goto_0
    array-length v3, v2

    invoke-virtual {v1, v2, v7, v3}, Lcom/alibaba/fastjson2/ab;->a([CII)V

    goto :goto_2

    .line 65
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 66
    sget-object v2, Laga;->s:[B

    goto :goto_1

    .line 69
    :cond_3
    sget-object v3, Laga;->q:[B

    move v9, v2

    move-object v2, v3

    .line 71
    :goto_1
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/ab;->d([B)V

    .line 73
    :goto_2
    invoke-virtual {v1, v5, v6}, Lcom/alibaba/fastjson2/ab;->e(J)V

    .line 74
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson2/ab;->c(C)V

    return-void

    .line 78
    :cond_4
    iget-boolean v2, v0, Laga;->c:Z

    if-nez v2, :cond_1b

    iget-object v2, v0, Laga;->a:Ljava/lang/String;

    if-nez v2, :cond_5

    invoke-virtual {v3}, Lcom/alibaba/fastjson2/ab$a;->d()Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_10

    .line 83
    :cond_5
    iget-boolean v2, v0, Laga;->b:Z

    const-wide/16 v9, 0x3e8

    if-nez v2, :cond_1a

    iget-object v2, v0, Laga;->a:Ljava/lang/String;

    if-nez v2, :cond_6

    invoke-virtual {v3}, Lcom/alibaba/fastjson2/ab$a;->e()Z

    move-result v2

    if-eqz v2, :cond_6

    goto/16 :goto_f

    .line 88
    :cond_6
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/ab$a;->b()Ljava/time/ZoneId;

    move-result-object v2

    .line 91
    sget-object v11, Laay;->b:Ljava/time/ZoneId;

    if-eq v2, v11, :cond_a

    invoke-virtual {v2}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v11

    sget-object v12, Laay;->c:Ljava/time/zone/ZoneRules;

    if-ne v11, v12, :cond_7

    goto :goto_4

    .line 95
    :cond_7
    sget-object v11, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    if-eq v2, v11, :cond_9

    invoke-virtual {v2}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v11

    const-string v12, "UTC"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    goto :goto_3

    .line 98
    :cond_8
    invoke-static {v5, v6}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v11

    invoke-static {v11, v2}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v11

    .line 99
    invoke-virtual {v11}, Ljava/time/ZonedDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v11

    invoke-virtual {v11}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v11

    goto :goto_5

    :cond_9
    :goto_3
    move v11, v7

    goto :goto_5

    .line 93
    :cond_a
    :goto_4
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v11

    .line 92
    invoke-static {v11, v12}, Laay;->a(J)I

    move-result v11

    .line 103
    :goto_5
    iget-boolean v12, v0, Laga;->d:Z

    const/4 v13, 0x1

    if-nez v12, :cond_c

    invoke-virtual {v3}, Lcom/alibaba/fastjson2/ab$a;->f()Z

    move-result v12

    if-eqz v12, :cond_b

    goto :goto_6

    :cond_b
    move v12, v7

    goto :goto_7

    :cond_c
    :goto_6
    move v12, v13

    :goto_7
    if-eqz v12, :cond_d

    const/4 v7, 0x0

    goto :goto_8

    .line 107
    :cond_d
    iget-object v7, v0, Laga;->a:Ljava/lang/String;

    if-nez v7, :cond_e

    .line 109
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/ab$a;->c()Ljava/lang/String;

    move-result-object v7

    :cond_e
    :goto_8
    if-nez v7, :cond_18

    .line 116
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v14

    .line 118
    sget-object v7, Laay;->b:Ljava/time/ZoneId;

    if-eq v2, v7, :cond_10

    invoke-virtual {v2}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v7

    sget-object v9, Laay;->c:Ljava/time/zone/ZoneRules;

    if-ne v7, v9, :cond_f

    goto :goto_9

    .line 121
    :cond_f
    invoke-static {v5, v6}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v7

    .line 122
    invoke-virtual {v2}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v7

    invoke-virtual {v7}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v7

    goto :goto_a

    .line 119
    :cond_10
    :goto_9
    invoke-static {v14, v15}, Laay;->a(J)I

    move-result v7

    :goto_a
    int-to-long v9, v7

    add-long/2addr v14, v9

    const-wide/32 v9, 0x15180

    .line 126
    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v16

    .line 127
    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v9

    long-to-int v7, v9

    const-wide/32 v9, 0xafaa8

    add-long v16, v16, v9

    const-wide/16 v9, 0x3c

    sub-long v16, v16, v9

    const-wide/16 v14, 0x0

    cmp-long v18, v16, v14

    const-wide/16 v19, 0x1

    const-wide/32 v21, 0x23ab1

    const-wide/16 v23, 0x190

    if-gez v18, :cond_11

    add-long v25, v16, v19

    .line 139
    div-long v25, v25, v21

    sub-long v9, v25, v19

    mul-long v25, v9, v23

    neg-long v9, v9

    mul-long v9, v9, v21

    add-long v16, v16, v9

    goto :goto_b

    :cond_11
    move-wide/from16 v25, v14

    :goto_b
    mul-long v9, v16, v23

    const-wide/16 v27, 0x24f

    add-long v9, v9, v27

    .line 143
    div-long v9, v9, v21

    const-wide/16 v21, 0x16d

    mul-long v27, v9, v21

    const-wide/16 v29, 0x4

    .line 144
    div-long v31, v9, v29

    add-long v27, v27, v31

    const-wide/16 v31, 0x64

    div-long v33, v9, v31

    sub-long v27, v27, v33

    div-long v33, v9, v23

    add-long v27, v27, v33

    sub-long v27, v16, v27

    cmp-long v18, v27, v14

    if-gez v18, :cond_12

    sub-long v9, v9, v19

    mul-long v21, v21, v9

    .line 148
    div-long v18, v9, v29

    add-long v21, v21, v18

    div-long v18, v9, v31

    sub-long v21, v21, v18

    div-long v18, v9, v23

    add-long v21, v21, v18

    sub-long v27, v16, v21

    :cond_12
    move-wide/from16 v14, v27

    add-long v9, v9, v25

    long-to-int v14, v14

    mul-int/lit8 v15, v14, 0x5

    add-int/lit8 v15, v15, 0x2

    .line 154
    div-int/lit16 v15, v15, 0x99

    add-int/lit8 v18, v15, 0x2

    .line 155
    rem-int/lit8 v18, v18, 0xc

    move-object/from16 v19, v3

    add-int/lit8 v3, v18, 0x1

    mul-int/lit16 v13, v15, 0x132

    add-int/lit8 v13, v13, 0x5

    .line 156
    div-int/lit8 v13, v13, 0xa

    sub-int/2addr v14, v13

    const/4 v13, 0x1

    add-int/2addr v13, v14

    .line 157
    div-int/lit8 v15, v15, 0xa

    int-to-long v14, v15

    add-long/2addr v9, v14

    const-wide/32 v14, -0x3b9ac9ff

    cmp-long v14, v9, v14

    if-ltz v14, :cond_17

    const-wide/32 v14, 0x3b9ac9ff

    cmp-long v14, v9, v14

    if-gtz v14, :cond_17

    long-to-int v9, v9

    int-to-long v14, v7

    const-wide/16 v16, 0x0

    cmp-long v7, v14, v16

    if-ltz v7, :cond_16

    const-wide/32 v16, 0x1517f

    cmp-long v7, v14, v16

    if-gtz v7, :cond_16

    const-wide/16 v16, 0xe10

    move/from16 p6, v11

    .line 177
    div-long v10, v14, v16

    long-to-int v7, v10

    mul-int/lit16 v10, v7, 0xe10

    int-to-long v10, v10

    sub-long/2addr v14, v10

    const-wide/16 v10, 0x3c

    .line 179
    div-long v10, v14, v10

    long-to-int v10, v10

    mul-int/lit8 v11, v10, 0x3c

    int-to-long v0, v11

    sub-long/2addr v14, v0

    long-to-int v0, v14

    if-ltz v9, :cond_15

    const/16 v1, 0x270f

    if-gt v9, v1, :cond_15

    const-wide/16 v14, 0x3e8

    .line 188
    invoke-static {v5, v6, v14, v15}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v1

    long-to-int v11, v1

    if-nez v11, :cond_14

    if-nez v12, :cond_14

    if-nez v7, :cond_13

    if-nez v10, :cond_13

    if-nez v0, :cond_13

    .line 190
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    move-object/from16 v1, p1

    .line 191
    invoke-virtual {v1, v9, v3, v13}, Lcom/alibaba/fastjson2/ab;->b(III)V

    goto :goto_c

    :cond_13
    move-object/from16 v1, p1

    move-object/from16 v1, p1

    move v2, v9

    move v4, v13

    move v5, v7

    move v6, v10

    move v7, v0

    .line 193
    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson2/ab;->b(IIIIII)V

    goto :goto_c

    :cond_14
    move-object/from16 v1, p1

    move-object/from16 v1, p1

    move v2, v9

    move v4, v13

    move v5, v7

    move v6, v10

    move v7, v0

    move v8, v11

    move/from16 v9, p6

    move v10, v12

    .line 196
    invoke-virtual/range {v1 .. v10}, Lcom/alibaba/fastjson2/ab;->a(IIIIIIIIZ)V

    :goto_c
    return-void

    :cond_15
    move-object/from16 v1, p1

    goto :goto_d

    .line 175
    :cond_16
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid secondOfDay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_17
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid year "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    move-object/from16 v19, v3

    :goto_d
    move-object/from16 v0, p0

    .line 203
    iget-object v3, v0, Laga;->a:Ljava/lang/String;

    if-eqz v3, :cond_19

    .line 204
    invoke-virtual/range {p0 .. p0}, Laga;->a()Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    goto :goto_e

    .line 206
    :cond_19
    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/fastjson2/ab$a;->j()Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    .line 208
    :goto_e
    invoke-static {v5, v6}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v4

    invoke-static {v4, v2}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    .line 209
    invoke-virtual {v3, v2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    return-void

    :cond_1a
    :goto_f
    move-wide v2, v9

    .line 84
    div-long/2addr v5, v2

    invoke-virtual {v1, v5, v6}, Lcom/alibaba/fastjson2/ab;->e(J)V

    return-void

    .line 79
    :cond_1b
    :goto_10
    invoke-virtual {v1, v5, v6}, Lcom/alibaba/fastjson2/ab;->e(J)V

    return-void
.end method
