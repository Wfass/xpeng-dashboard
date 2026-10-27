.class final Lcom/alibaba/fastjson2/ag;
.super Lcom/alibaba/fastjson2/ad;
.source "JSONWriterUTF16JDK9UF.java"


# direct methods
.method constructor <init>(Lcom/alibaba/fastjson2/ab$a;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/ad;-><init>(Lcom/alibaba/fastjson2/ab$a;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/ag;->r()V

    return-void

    .line 23
    :cond_0
    iget-object v2, v0, Lcom/alibaba/fastjson2/ag;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v4, Lcom/alibaba/fastjson2/ab$b;->EscapeNoneAscii:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 24
    :goto_0
    iget-object v7, v0, Lcom/alibaba/fastjson2/ag;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v9, Lcom/alibaba/fastjson2/ab$b;->BrowserSecure:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v9, v9, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v7, v9

    cmp-long v4, v7, v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 26
    :goto_1
    iget-char v5, v0, Lcom/alibaba/fastjson2/ag;->j:C

    .line 28
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 29
    iget v8, v0, Lcom/alibaba/fastjson2/ag;->n:I

    add-int/2addr v8, v7

    add-int/lit8 v8, v8, 0x2

    .line 30
    iget-object v9, v0, Lcom/alibaba/fastjson2/ag;->w:[C

    array-length v9, v9

    if-lt v8, v9, :cond_3

    .line 31
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson2/ag;->e(I)V

    .line 34
    :cond_3
    sget-object v8, Labf;->B:Ljava/util/function/ToIntFunction;

    invoke-interface {v8, v1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v8

    .line 35
    sget-object v9, Labf;->C:Ljava/util/function/Function;

    invoke-interface {v9, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    .line 37
    iget v10, v0, Lcom/alibaba/fastjson2/ag;->n:I

    .line 38
    iget-object v11, v0, Lcom/alibaba/fastjson2/ag;->w:[C

    add-int/lit8 v12, v10, 0x1

    .line 39
    aput-char v5, v11, v10

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v7, :cond_8

    if-nez v8, :cond_4

    .line 44
    aget-byte v13, v9, v10

    move/from16 v17, v7

    goto :goto_3

    .line 46
    :cond_4
    sget-object v13, Labf;->a:Lsun/misc/Unsafe;

    sget v14, Lsun/misc/Unsafe;->ARRAY_CHAR_BASE_OFFSET:I

    int-to-long v14, v14

    mul-int/lit8 v3, v10, 0x2

    move/from16 v17, v7

    int-to-long v6, v3

    add-long/2addr v14, v6

    invoke-virtual {v13, v1, v14, v15}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    move-result v13

    :goto_3
    const/16 v3, 0x5c

    if-eq v13, v3, :cond_7

    if-eq v13, v5, :cond_7

    const/16 v3, 0x20

    if-lt v13, v3, :cond_7

    if-eqz v4, :cond_5

    const/16 v3, 0x3c

    if-eq v13, v3, :cond_7

    const/16 v3, 0x3e

    if-eq v13, v3, :cond_7

    const/16 v3, 0x28

    if-eq v13, v3, :cond_7

    const/16 v3, 0x29

    if-eq v13, v3, :cond_7

    :cond_5
    if-eqz v2, :cond_6

    const/16 v3, 0x7f

    if-le v13, v3, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v3, v12, 0x1

    int-to-char v6, v13

    .line 58
    aput-char v6, v11, v12

    add-int/lit8 v10, v10, 0x1

    move v12, v3

    move/from16 v7, v17

    goto :goto_2

    :cond_7
    :goto_4
    const/16 v16, 0x1

    goto :goto_5

    :cond_8
    const/16 v16, 0x0

    :goto_5
    if-nez v16, :cond_9

    add-int/lit8 v1, v12, 0x1

    .line 62
    aput-char v5, v11, v12

    .line 63
    iput v1, v0, Lcom/alibaba/fastjson2/ag;->n:I

    return-void

    .line 67
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/ag;->g(Ljava/lang/String;)V

    return-void
.end method
