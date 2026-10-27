.class public final Lcom/alibaba/fastjson/parser/JSONScanner;
.super Lcom/alibaba/fastjson/parser/JSONLexerBase;
.source "JSONScanner.java"


# instance fields
.field private final len:I

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .line 37
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "features"    # I

    .line 41
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;-><init>(I)V

    .line 43
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 47
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 48
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const v1, 0xfeff

    if-ne v0, v1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 51
    :cond_0
    return-void
.end method

.method public constructor <init>([CI)V
    .locals 1
    .param p1, "input"    # [C
    .param p2, "inputLength"    # I

    .line 69
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>([CII)V

    .line 70
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2
    .param p1, "input"    # [C
    .param p2, "inputLength"    # I
    .param p3, "features"    # I

    .line 73
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    .line 74
    return-void
.end method

.method static charArrayCompare(Ljava/lang/String;I[C)Z
    .locals 5
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "dest"    # [C

    .line 81
    array-length v0, p2

    .line 82
    .local v0, "destLen":I
    add-int v1, v0, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    .line 83
    return v3

    .line 86
    :cond_0
    move v1, v3

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 87
    aget-char v2, p2, v1

    add-int v4, p1, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v2, v4, :cond_1

    .line 88
    return v3

    .line 86
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method static checkDate(CCCCCCII)Z
    .locals 5
    .param p0, "y0"    # C
    .param p1, "y1"    # C
    .param p2, "y2"    # C
    .param p3, "y3"    # C
    .param p4, "M0"    # C
    .param p5, "M1"    # C
    .param p6, "d0"    # I
    .param p7, "d1"    # I

    .line 776
    const/16 v0, 0x30

    const/4 v1, 0x0

    if-lt p0, v0, :cond_12

    const/16 v2, 0x39

    if-le p0, v2, :cond_0

    goto :goto_5

    .line 779
    :cond_0
    if-lt p1, v0, :cond_11

    if-le p1, v2, :cond_1

    goto :goto_4

    .line 782
    :cond_1
    if-lt p2, v0, :cond_10

    if-le p2, v2, :cond_2

    goto :goto_3

    .line 785
    :cond_2
    if-lt p3, v0, :cond_f

    if-le p3, v2, :cond_3

    goto :goto_2

    .line 789
    :cond_3
    const/16 v3, 0x32

    const/16 v4, 0x31

    if-ne p4, v0, :cond_5

    .line 790
    if-lt p5, v4, :cond_4

    if-le p5, v2, :cond_6

    .line 791
    :cond_4
    return v1

    .line 793
    :cond_5
    if-ne p4, v4, :cond_e

    .line 794
    if-eq p5, v0, :cond_6

    if-eq p5, v4, :cond_6

    if-eq p5, v3, :cond_6

    .line 795
    return v1

    .line 801
    :cond_6
    if-ne p6, v0, :cond_8

    .line 802
    if-lt p7, v4, :cond_7

    if-le p7, v2, :cond_c

    .line 803
    :cond_7
    return v1

    .line 805
    :cond_8
    if-eq p6, v4, :cond_b

    if-ne p6, v3, :cond_9

    goto :goto_0

    .line 809
    :cond_9
    const/16 v2, 0x33

    if-ne p6, v2, :cond_a

    .line 810
    if-eq p7, v0, :cond_c

    if-eq p7, v4, :cond_c

    .line 811
    return v1

    .line 814
    :cond_a
    return v1

    .line 806
    :cond_b
    :goto_0
    if-lt p7, v0, :cond_d

    if-le p7, v2, :cond_c

    goto :goto_1

    .line 817
    :cond_c
    const/4 v0, 0x1

    return v0

    .line 807
    :cond_d
    :goto_1
    return v1

    .line 798
    :cond_e
    return v1

    .line 786
    :cond_f
    :goto_2
    return v1

    .line 783
    :cond_10
    :goto_3
    return v1

    .line 780
    :cond_11
    :goto_4
    return v1

    .line 777
    :cond_12
    :goto_5
    return v1
.end method

.method private checkTime(CCCCCC)Z
    .locals 5
    .param p1, "h0"    # C
    .param p2, "h1"    # C
    .param p3, "m0"    # C
    .param p4, "m1"    # C
    .param p5, "s0"    # C
    .param p6, "s1"    # C

    .line 721
    const/16 v0, 0x39

    const/4 v1, 0x0

    const/16 v2, 0x30

    if-ne p1, v2, :cond_1

    .line 722
    if-lt p2, v2, :cond_0

    if-le p2, v0, :cond_4

    .line 723
    :cond_0
    return v1

    .line 725
    :cond_1
    const/16 v3, 0x31

    if-ne p1, v3, :cond_3

    .line 726
    if-lt p2, v2, :cond_2

    if-le p2, v0, :cond_4

    .line 727
    :cond_2
    return v1

    .line 729
    :cond_3
    const/16 v3, 0x32

    if-ne p1, v3, :cond_e

    .line 730
    if-lt p2, v2, :cond_d

    const/16 v3, 0x34

    if-le p2, v3, :cond_4

    goto :goto_0

    .line 737
    :cond_4
    const/16 v3, 0x36

    const/16 v4, 0x35

    if-lt p3, v2, :cond_6

    if-gt p3, v4, :cond_6

    .line 738
    if-lt p4, v2, :cond_5

    if-le p4, v0, :cond_7

    .line 739
    :cond_5
    return v1

    .line 741
    :cond_6
    if-ne p3, v3, :cond_c

    .line 742
    if-eq p4, v2, :cond_7

    .line 743
    return v1

    .line 749
    :cond_7
    if-lt p5, v2, :cond_9

    if-gt p5, v4, :cond_9

    .line 750
    if-lt p6, v2, :cond_8

    if-le p6, v0, :cond_a

    .line 751
    :cond_8
    return v1

    .line 753
    :cond_9
    if-ne p5, v3, :cond_b

    .line 754
    if-eq p6, v2, :cond_a

    .line 755
    return v1

    .line 761
    :cond_a
    const/4 v0, 0x1

    return v0

    .line 758
    :cond_b
    return v1

    .line 746
    :cond_c
    return v1

    .line 731
    :cond_d
    :goto_0
    return v1

    .line 734
    :cond_e
    return v1
.end method

.method private scanISO8601DateIfMatch(ZI)Z
    .locals 49
    .param p1, "strict"    # Z
    .param p2, "rest"    # I

    move-object/from16 v9, p0

    .line 212
    move/from16 v10, p2

    const/16 v11, 0x8

    const/4 v12, 0x0

    if-ge v10, v11, :cond_0

    .line 213
    return v12

    .line 216
    :cond_0
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v13

    .line 217
    .local v13, "c0":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v14, 0x1

    add-int/2addr v0, v14

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    .line 218
    .local v8, "c1":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v7, 0x2

    add-int/2addr v0, v7

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    .line 219
    .local v6, "c2":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 220
    .local v5, "c3":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 221
    .local v4, "c4":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v3, 0x5

    add-int/2addr v0, v3

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 222
    .local v2, "c5":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v15, 0x6

    add-int/2addr v0, v15

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 223
    .local v1, "c6":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 225
    .local v0, "c7":C
    if-nez p1, :cond_5

    const/16 v12, 0xd

    if-le v10, v12, :cond_5

    .line 226
    iget v12, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v12, v10

    sub-int/2addr v12, v14

    invoke-virtual {v9, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    .line 227
    .local v12, "c_r0":C
    iget v14, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v14, v10

    sub-int/2addr v14, v7

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    .line 228
    .local v14, "c_r1":C
    const/16 v7, 0x2f

    if-ne v13, v7, :cond_5

    const/16 v7, 0x44

    if-ne v8, v7, :cond_5

    const/16 v7, 0x61

    if-ne v6, v7, :cond_5

    const/16 v7, 0x74

    if-ne v5, v7, :cond_5

    const/16 v7, 0x65

    if-ne v4, v7, :cond_5

    const/16 v7, 0x28

    if-ne v2, v7, :cond_5

    const/16 v7, 0x2f

    if-ne v12, v7, :cond_5

    const/16 v7, 0x29

    if-ne v14, v7, :cond_5

    .line 230
    const/4 v7, -0x1

    .line 231
    .local v7, "plusIndex":I
    move/from16 v19, v7

    move v7, v15

    .local v7, "i":I
    .local v19, "plusIndex":I
    :goto_0
    if-ge v7, v10, :cond_3

    .line 232
    iget v11, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v11, v7

    invoke-virtual {v9, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v11

    .line 233
    .local v11, "c":C
    const/16 v3, 0x2b

    if-ne v11, v3, :cond_1

    .line 234
    move v3, v7

    .line 231
    .end local v19    # "plusIndex":I
    .local v3, "plusIndex":I
    move/from16 v19, v3

    goto :goto_1

    .line 235
    .end local v3    # "plusIndex":I
    .restart local v19    # "plusIndex":I
    :cond_1
    const/16 v3, 0x30

    if-lt v11, v3, :cond_3

    const/16 v3, 0x39

    if-le v11, v3, :cond_2

    .line 236
    goto :goto_2

    .line 231
    .end local v11    # "c":C
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 239
    .end local v7    # "i":I
    :cond_3
    :goto_2
    const/4 v3, -0x1

    move/from16 v7, v19

    if-ne v7, v3, :cond_4

    .line 240
    .end local v19    # "plusIndex":I
    .local v7, "plusIndex":I
    const/4 v3, 0x0

    return v3

    .line 242
    :cond_4
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v3, v15

    .line 243
    .local v3, "offset":I
    iget v11, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v11, v7

    sub-int/2addr v11, v3

    invoke-virtual {v9, v3, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v11

    .line 244
    .local v11, "numberText":Ljava/lang/String;
    move/from16 v24, v1

    move/from16 v23, v2

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 246
    .end local v2    # "c5":C
    .local v1, "millis":J
    .local v23, "c5":C
    .local v24, "c6":C
    move/from16 v25, v3

    iget-object v3, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->timeZone:Ljava/util/TimeZone;

    .end local v3    # "offset":I
    .local v25, "offset":I
    move/from16 v26, v7

    iget-object v7, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->locale:Ljava/util/Locale;

    .end local v7    # "plusIndex":I
    .local v26, "plusIndex":I
    invoke-static {v3, v7}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    .line 247
    iget-object v3, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 249
    const/4 v3, 0x5

    iput v3, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 250
    const/4 v3, 0x1

    return v3

    .line 255
    .end local v11    # "numberText":Ljava/lang/String;
    .end local v12    # "c_r0":C
    .end local v14    # "c_r1":C
    .end local v23    # "c5":C
    .end local v24    # "c6":C
    .end local v25    # "offset":I
    .end local v26    # "plusIndex":I
    .local v1, "c6":C
    .restart local v2    # "c5":C
    :cond_5
    move/from16 v24, v1

    move/from16 v23, v2

    const/4 v3, 0x5

    .end local v1    # "c6":C
    .end local v2    # "c5":C
    .restart local v23    # "c5":C
    .restart local v24    # "c6":C
    const/16 v11, 0x9

    const/16 v12, 0x20

    const/16 v14, 0x54

    const/16 v7, 0xe

    const/16 v2, 0x2d

    const/16 v1, 0x8

    if-eq v10, v1, :cond_4c

    if-eq v10, v7, :cond_4c

    const/16 v1, 0x10

    if-ne v10, v1, :cond_7

    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0xa

    .line 257
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move/from16 v27, v1

    .local v27, "c10":C
    if-eq v1, v14, :cond_6

    move/from16 v1, v27

    if-eq v1, v12, :cond_6

    .end local v27    # "c10":C
    goto :goto_4

    .line 259
    :cond_6
    :goto_3
    move v14, v0

    move/from16 v45, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move v12, v7

    move/from16 v18, v8

    move/from16 v44, v23

    move/from16 v46, v24

    const/4 v0, 0x0

    const/16 v8, 0x30

    goto/16 :goto_22

    .line 257
    :cond_7
    :goto_4
    const/16 v1, 0x11

    if-ne v10, v1, :cond_8

    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v15

    .line 258
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_8

    goto :goto_3

    .line 377
    :cond_8
    if-ge v10, v11, :cond_9

    .line 378
    const/4 v1, 0x0

    return v1

    .line 381
    :cond_9
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v16, 0x8

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 382
    .local v1, "c8":C
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v3, v11

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 384
    .local v3, "c9":C
    const/16 v17, 0xa

    .line 386
    .local v17, "date_len":I
    if-ne v4, v2, :cond_a

    if-eq v0, v2, :cond_b

    :cond_a
    const/16 v7, 0x2f

    if-ne v4, v7, :cond_d

    const/16 v7, 0x2f

    if-ne v0, v7, :cond_d

    .line 389
    :cond_b
    move v7, v13

    .line 390
    .local v7, "y0":C
    move/from16 v19, v8

    .line 391
    .local v19, "y1":C
    move/from16 v21, v6

    .line 392
    .local v21, "y2":C
    move/from16 v25, v5

    .line 393
    .local v25, "y3":C
    move/from16 v26, v23

    .line 394
    .local v26, "M0":C
    move/from16 v27, v24

    .line 396
    .local v27, "M1":C
    if-ne v3, v12, :cond_c

    .line 397
    const/16 v30, 0x30

    .line 398
    .local v30, "d0":C
    move/from16 v31, v1

    .line 399
    .local v31, "d1":C
    const/16 v17, 0x9

    .line 479
    .end local v17    # "date_len":I
    .end local v19    # "y1":C
    .end local v21    # "y2":C
    .end local v23    # "c5":C
    .end local v24    # "c6":C
    .end local v25    # "y3":C
    .end local v26    # "M0":C
    .end local v27    # "M1":C
    .end local v30    # "d0":C
    .end local v31    # "d1":C
    .local v7, "c6":C
    .local v11, "date_len":I
    .local v12, "c5":C
    .local v36, "y0":C
    .local v37, "y1":C
    .local v38, "y2":C
    .local v39, "y3":C
    .local v40, "M0":C
    .local v41, "M1":C
    .local v42, "d0":C
    .local v43, "d1":C
    :goto_5
    move/from16 v36, v7

    move/from16 v11, v17

    move/from16 v37, v19

    move/from16 v38, v21

    move/from16 v12, v23

    move/from16 v7, v24

    :goto_6
    move/from16 v39, v25

    move/from16 v40, v26

    move/from16 v41, v27

    move/from16 v42, v30

    move/from16 v43, v31

    goto/16 :goto_12

    .line 401
    .end local v11    # "date_len":I
    .end local v12    # "c5":C
    .end local v36    # "y0":C
    .end local v37    # "y1":C
    .end local v38    # "y2":C
    .end local v39    # "y3":C
    .end local v40    # "M0":C
    .end local v41    # "M1":C
    .end local v42    # "d0":C
    .end local v43    # "d1":C
    .local v7, "y0":C
    .restart local v17    # "date_len":I
    .restart local v19    # "y1":C
    .restart local v21    # "y2":C
    .restart local v23    # "c5":C
    .restart local v24    # "c6":C
    .restart local v25    # "y3":C
    .restart local v26    # "M0":C
    .restart local v27    # "M1":C
    :cond_c
    move/from16 v30, v1

    .line 402
    .restart local v30    # "d0":C
    move/from16 v31, v3

    .restart local v31    # "d1":C
    goto :goto_5

    .line 404
    .end local v7    # "y0":C
    .end local v19    # "y1":C
    .end local v21    # "y2":C
    .end local v25    # "y3":C
    .end local v26    # "M0":C
    .end local v27    # "M1":C
    .end local v30    # "d0":C
    .end local v31    # "d1":C
    :cond_d
    if-ne v4, v2, :cond_f

    move/from16 v7, v24

    if-ne v7, v2, :cond_10

    .line 406
    .end local v24    # "c6":C
    .local v7, "c6":C
    move/from16 v19, v13

    .line 407
    .local v19, "y0":C
    move/from16 v21, v8

    .line 408
    .local v21, "y1":C
    move/from16 v24, v6

    .line 409
    .local v24, "y2":C
    move/from16 v25, v5

    .line 410
    .restart local v25    # "y3":C
    const/16 v26, 0x30

    .line 411
    .restart local v26    # "M0":C
    move/from16 v27, v23

    .line 413
    .restart local v27    # "M1":C
    if-ne v1, v12, :cond_e

    .line 414
    const/16 v30, 0x30

    .line 415
    .restart local v30    # "d0":C
    move/from16 v31, v0

    .line 416
    .restart local v31    # "d1":C
    const/16 v17, 0x8

    .line 479
    .end local v17    # "date_len":I
    .end local v19    # "y0":C
    .end local v21    # "y1":C
    .end local v23    # "c5":C
    .end local v24    # "y2":C
    .end local v25    # "y3":C
    .end local v26    # "M0":C
    .end local v27    # "M1":C
    .end local v30    # "d0":C
    .end local v31    # "d1":C
    .restart local v11    # "date_len":I
    .restart local v12    # "c5":C
    .restart local v36    # "y0":C
    .restart local v37    # "y1":C
    .restart local v38    # "y2":C
    .restart local v39    # "y3":C
    .restart local v40    # "M0":C
    .restart local v41    # "M1":C
    .restart local v42    # "d0":C
    .restart local v43    # "d1":C
    :goto_7
    move/from16 v11, v17

    move/from16 v36, v19

    move/from16 v37, v21

    move/from16 v12, v23

    move/from16 v38, v24

    goto :goto_6

    .line 418
    .end local v11    # "date_len":I
    .end local v12    # "c5":C
    .end local v36    # "y0":C
    .end local v37    # "y1":C
    .end local v38    # "y2":C
    .end local v39    # "y3":C
    .end local v40    # "M0":C
    .end local v41    # "M1":C
    .end local v42    # "d0":C
    .end local v43    # "d1":C
    .restart local v17    # "date_len":I
    .restart local v19    # "y0":C
    .restart local v21    # "y1":C
    .restart local v23    # "c5":C
    .restart local v24    # "y2":C
    .restart local v25    # "y3":C
    .restart local v26    # "M0":C
    .restart local v27    # "M1":C
    :cond_e
    move/from16 v30, v0

    .line 419
    .restart local v30    # "d0":C
    move/from16 v31, v1

    .line 420
    .restart local v31    # "d1":C
    const/16 v17, 0x9

    goto :goto_7

    .line 422
    .end local v7    # "c6":C
    .end local v19    # "y0":C
    .end local v21    # "y1":C
    .end local v25    # "y3":C
    .end local v26    # "M0":C
    .end local v27    # "M1":C
    .end local v30    # "d0":C
    .end local v31    # "d1":C
    .local v24, "c6":C
    :cond_f
    move/from16 v7, v24

    .end local v24    # "c6":C
    .restart local v7    # "c6":C
    :cond_10
    const/16 v11, 0x2e

    if-ne v6, v11, :cond_11

    const/16 v11, 0x2e

    move/from16 v12, v23

    if-eq v12, v11, :cond_12

    .end local v23    # "c5":C
    .restart local v12    # "c5":C
    goto :goto_8

    .end local v12    # "c5":C
    .restart local v23    # "c5":C
    :cond_11
    move/from16 v12, v23

    .end local v23    # "c5":C
    .restart local v12    # "c5":C
    :goto_8
    if-ne v6, v2, :cond_13

    if-ne v12, v2, :cond_13

    .line 425
    :cond_12
    move/from16 v30, v13

    .line 426
    .restart local v30    # "d0":C
    move/from16 v31, v8

    .line 427
    .restart local v31    # "d1":C
    move/from16 v26, v5

    .line 428
    .restart local v26    # "M0":C
    move/from16 v27, v4

    .line 429
    .restart local v27    # "M1":C
    move v11, v7

    .line 430
    .local v11, "y0":C
    move/from16 v19, v0

    .line 431
    .local v19, "y1":C
    move/from16 v21, v1

    .line 432
    .local v21, "y2":C
    move/from16 v25, v3

    .line 479
    .end local v17    # "date_len":I
    .end local v19    # "y1":C
    .end local v21    # "y2":C
    .end local v26    # "M0":C
    .end local v27    # "M1":C
    .end local v30    # "d0":C
    .end local v31    # "d1":C
    .local v11, "date_len":I
    .restart local v36    # "y0":C
    .restart local v37    # "y1":C
    .restart local v38    # "y2":C
    .restart local v39    # "y3":C
    .restart local v40    # "M0":C
    .restart local v41    # "M1":C
    .restart local v42    # "d0":C
    .restart local v43    # "d1":C
    :goto_9
    move/from16 v36, v11

    move/from16 v11, v17

    move/from16 v37, v19

    move/from16 v38, v21

    goto :goto_6

    .line 433
    .end local v11    # "date_len":I
    .end local v36    # "y0":C
    .end local v37    # "y1":C
    .end local v38    # "y2":C
    .end local v39    # "y3":C
    .end local v40    # "M0":C
    .end local v41    # "M1":C
    .end local v42    # "d0":C
    .end local v43    # "d1":C
    .restart local v17    # "date_len":I
    :cond_13
    if-ne v1, v14, :cond_14

    .line 434
    move v11, v13

    .line 435
    .local v11, "y0":C
    move/from16 v19, v8

    .line 436
    .restart local v19    # "y1":C
    move/from16 v21, v6

    .line 437
    .restart local v21    # "y2":C
    move/from16 v25, v5

    .line 438
    .restart local v25    # "y3":C
    move/from16 v26, v4

    .line 439
    .restart local v26    # "M0":C
    move/from16 v27, v12

    .line 440
    .restart local v27    # "M1":C
    move/from16 v30, v7

    .line 441
    .restart local v30    # "d0":C
    move/from16 v31, v0

    .line 442
    .restart local v31    # "d1":C
    const/16 v17, 0x8

    goto :goto_9

    .line 444
    .end local v11    # "y0":C
    .end local v19    # "y1":C
    .end local v21    # "y2":C
    .end local v25    # "y3":C
    .end local v26    # "M0":C
    .end local v27    # "M1":C
    .end local v30    # "d0":C
    .end local v31    # "d1":C
    :cond_14
    const/16 v11, 0x5e74

    if-eq v4, v11, :cond_16

    const v11, 0xb144

    if-ne v4, v11, :cond_15

    goto :goto_a

    .line 479
    :cond_15
    const/4 v2, 0x0

    return v2

    .line 445
    :cond_16
    :goto_a
    move v11, v13

    .line 446
    .restart local v11    # "y0":C
    move/from16 v19, v8

    .line 447
    .restart local v19    # "y1":C
    move/from16 v21, v6

    .line 448
    .restart local v21    # "y2":C
    move/from16 v25, v5

    .line 450
    .restart local v25    # "y3":C
    const/16 v2, 0x6708

    if-eq v0, v2, :cond_1e

    const v2, 0xc6d4

    if-ne v0, v2, :cond_17

    goto :goto_e

    .line 463
    :cond_17
    const/16 v2, 0x6708

    if-eq v7, v2, :cond_19

    const v2, 0xc6d4

    if-ne v7, v2, :cond_18

    goto :goto_b

    .line 476
    :cond_18
    const/4 v2, 0x0

    return v2

    .line 464
    :cond_19
    :goto_b
    const/16 v26, 0x30

    .line 465
    .restart local v26    # "M0":C
    move/from16 v27, v12

    .line 466
    .restart local v27    # "M1":C
    const/16 v2, 0x65e5

    if-eq v1, v2, :cond_1d

    const v2, 0xc77c

    if-ne v1, v2, :cond_1a

    goto :goto_d

    .line 469
    :cond_1a
    const/16 v2, 0x65e5

    if-eq v3, v2, :cond_1c

    const v2, 0xc77c

    if-ne v3, v2, :cond_1b

    goto :goto_c

    .line 473
    :cond_1b
    const/4 v2, 0x0

    return v2

    .line 470
    :cond_1c
    :goto_c
    move/from16 v30, v0

    .line 471
    .restart local v30    # "d0":C
    move/from16 v31, v1

    goto :goto_11

    .line 467
    .end local v30    # "d0":C
    :cond_1d
    :goto_d
    const/16 v30, 0x30

    .line 468
    .restart local v30    # "d0":C
    move/from16 v31, v0

    goto :goto_11

    .line 451
    .end local v26    # "M0":C
    .end local v27    # "M1":C
    .end local v30    # "d0":C
    :cond_1e
    :goto_e
    move/from16 v26, v12

    .line 452
    .restart local v26    # "M0":C
    move/from16 v27, v7

    .line 453
    .restart local v27    # "M1":C
    const/16 v2, 0x65e5

    if-eq v3, v2, :cond_22

    const v2, 0xc77c

    if-ne v3, v2, :cond_1f

    goto :goto_10

    .line 456
    :cond_1f
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0xa

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v14, 0x65e5

    if-eq v2, v14, :cond_21

    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0xa

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const v14, 0xc77c

    if-ne v2, v14, :cond_20

    goto :goto_f

    .line 461
    :cond_20
    const/4 v2, 0x0

    return v2

    .line 457
    :cond_21
    :goto_f
    move/from16 v30, v1

    .line 458
    .restart local v30    # "d0":C
    move/from16 v31, v3

    .line 459
    .restart local v31    # "d1":C
    const/16 v17, 0xb

    goto/16 :goto_9

    .line 454
    .end local v30    # "d0":C
    .end local v31    # "d1":C
    :cond_22
    :goto_10
    const/16 v30, 0x30

    .line 455
    .restart local v30    # "d0":C
    move/from16 v31, v1

    .end local v17    # "date_len":I
    .end local v19    # "y1":C
    .end local v21    # "y2":C
    .end local v25    # "y3":C
    .end local v26    # "M0":C
    .end local v27    # "M1":C
    .end local v30    # "d0":C
    .local v11, "date_len":I
    .restart local v31    # "d1":C
    .restart local v36    # "y0":C
    .restart local v37    # "y1":C
    .restart local v38    # "y2":C
    .restart local v39    # "y3":C
    .restart local v40    # "M0":C
    .restart local v41    # "M1":C
    .restart local v42    # "d0":C
    .restart local v43    # "d1":C
    :goto_11
    goto/16 :goto_9

    .line 479
    .end local v31    # "d1":C
    :goto_12
    nop

    .line 483
    invoke-static/range {v36 .. v43}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkDate(CCCCCCII)Z

    move-result v2

    if-nez v2, :cond_23

    .line 484
    const/4 v2, 0x0

    return v2

    .line 487
    :cond_23
    move v14, v0

    move-object v0, v9

    .end local v0    # "c7":C
    .local v14, "c7":C
    move/from16 v17, v1

    move/from16 v1, v36

    .end local v1    # "c8":C
    .local v17, "c8":C
    move/from16 v44, v12

    const/16 v12, 0x2d

    move/from16 v2, v37

    .end local v12    # "c5":C
    .local v44, "c5":C
    move/from16 v19, v3

    const/4 v12, 0x5

    move/from16 v3, v38

    .end local v3    # "c9":C
    .local v19, "c9":C
    move/from16 v45, v4

    move/from16 v4, v39

    .end local v4    # "c4":C
    .local v45, "c4":C
    move/from16 v21, v5

    move/from16 v5, v40

    .end local v5    # "c3":C
    .local v21, "c3":C
    move/from16 v22, v6

    move/from16 v6, v41

    .end local v6    # "c2":C
    .local v22, "c2":C
    move/from16 v46, v7

    const/4 v12, 0x2

    move/from16 v7, v42

    .end local v7    # "c6":C
    .local v46, "c6":C
    move/from16 v18, v8

    move/from16 v8, v43

    .end local v8    # "c1":C
    .local v18, "c1":C
    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->setCalendar(CCCCCCCC)V

    .line 489
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    .line 490
    .local v7, "t":C
    const/16 v0, 0x54

    if-ne v7, v0, :cond_26

    const/16 v0, 0x10

    if-ne v10, v0, :cond_26

    const/16 v0, 0x8

    if-ne v11, v0, :cond_26

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0xf

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_26

    .line 491
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    .line 492
    .local v8, "h0":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    add-int/2addr v0, v12

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    .line 493
    .local v12, "h1":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v16

    .line 494
    .local v16, "m0":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v20

    .line 495
    .local v20, "m1":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    const/4 v1, 0x5

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v23

    .line 496
    .local v23, "s0":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    add-int/2addr v0, v15

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v15

    .line 498
    .local v15, "s1":C
    move-object v0, v9

    move v1, v8

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v20

    move/from16 v5, v23

    move v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v0

    if-nez v0, :cond_24

    .line 499
    const/4 v0, 0x0

    return v0

    .line 502
    :cond_24
    move-object v0, v9

    move v1, v8

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v20

    move/from16 v5, v23

    move v6, v15

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTime(CCCCCC)V

    .line 503
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x0

    const/16 v6, 0xe

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 505
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    if-eqz v0, :cond_25

    .line 506
    invoke-static {v1}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, "timeZoneIDs":[Ljava/lang/String;
    array-length v2, v0

    if-lez v2, :cond_25

    .line 508
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 509
    .local v1, "timeZone":Ljava/util/TimeZone;
    iget-object v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 513
    .end local v0    # "timeZoneIDs":[Ljava/lang/String;
    .end local v1    # "timeZone":Ljava/util/TimeZone;
    :cond_25
    const/4 v0, 0x5

    iput v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 514
    const/4 v0, 0x1

    return v0

    .line 515
    .end local v8    # "h0":C
    .end local v12    # "h1":C
    .end local v15    # "s1":C
    .end local v16    # "m0":C
    .end local v20    # "m1":C
    .end local v23    # "s0":C
    :cond_26
    const/16 v6, 0xe

    const/16 v0, 0x54

    if-eq v7, v0, :cond_2f

    const/16 v0, 0x20

    if-ne v7, v0, :cond_27

    if-nez p1, :cond_27

    goto/16 :goto_16

    .line 519
    :cond_27
    const/16 v0, 0x22

    if-eq v7, v0, :cond_2e

    const/16 v0, 0x1a

    if-eq v7, v0, :cond_2e

    const/16 v0, 0x65e5

    if-eq v7, v0, :cond_2e

    const v0, 0xc77c

    if-ne v7, v0, :cond_28

    goto :goto_15

    .line 529
    :cond_28
    const/16 v0, 0x2b

    if-eq v7, v0, :cond_2a

    const/16 v0, 0x2d

    if-ne v7, v0, :cond_29

    goto :goto_13

    .line 544
    :cond_29
    const/4 v0, 0x0

    return v0

    .line 530
    :cond_2a
    :goto_13
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    add-int/lit8 v1, v11, 0x6

    if-ne v0, v1, :cond_2d

    .line 531
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_2c

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    add-int/lit8 v0, v0, 0x4

    .line 532
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v8, 0x30

    if-ne v0, v8, :cond_2c

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    const/4 v1, 0x5

    add-int/2addr v0, v1

    .line 533
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    if-eq v0, v8, :cond_2b

    goto :goto_14

    .line 537
    :cond_2b
    const/16 v1, 0x30

    const/16 v2, 0x30

    const/16 v3, 0x30

    const/16 v4, 0x30

    const/16 v5, 0x30

    const/16 v8, 0x30

    move-object v0, v9

    move v12, v6

    move v6, v8

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTime(CCCCCC)V

    .line 538
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x0

    invoke-virtual {v0, v12, v1}, Ljava/util/Calendar;->set(II)V

    .line 539
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v11

    const/4 v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    invoke-virtual {v9, v7, v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTimeZone(CCC)V

    .line 540
    return v1

    .line 534
    :cond_2c
    :goto_14
    const/4 v0, 0x0

    return v0

    .line 542
    :cond_2d
    const/4 v0, 0x0

    return v0

    .line 520
    :cond_2e
    :goto_15
    move v12, v6

    const/4 v0, 0x0

    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 521
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 522
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 523
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1, v12, v0}, Ljava/util/Calendar;->set(II)V

    .line 525
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    iput v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 527
    const/4 v0, 0x5

    iput v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 528
    const/4 v0, 0x1

    return v0

    .line 516
    :cond_2f
    :goto_16
    move v12, v6

    const/16 v8, 0x30

    add-int/lit8 v0, v11, 0x9

    if-ge v10, v0, :cond_30

    .line 517
    const/4 v0, 0x0

    return v0

    .line 547
    :cond_30
    const/4 v0, 0x0

    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v11

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_31

    .line 548
    return v0

    .line 550
    :cond_31
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v11

    add-int/2addr v1, v15

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_32

    .line 551
    return v0

    .line 554
    :cond_32
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v15

    .line 555
    .local v15, "h0":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    const/4 v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v23

    .line 556
    .local v23, "h1":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v24

    .line 557
    .local v24, "m0":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    const/4 v1, 0x5

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v25

    .line 558
    .local v25, "m1":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v26

    .line 559
    .local v26, "s0":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    const/16 v1, 0x8

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v16

    .line 561
    .local v16, "s1":C
    move-object v0, v9

    move v1, v15

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    move/from16 v5, v26

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v0

    if-nez v0, :cond_33

    .line 562
    const/4 v0, 0x0

    return v0

    .line 565
    :cond_33
    move-object v0, v9

    move v1, v15

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    move/from16 v5, v26

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTime(CCCCCC)V

    .line 567
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    const/16 v1, 0x9

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    .line 568
    .local v6, "dot":C
    const/4 v0, -0x1

    .line 569
    .local v0, "millisLen":I
    const/4 v1, 0x0

    .line 570
    .local v1, "millis":I
    const/16 v2, 0x2e

    if-ne v6, v2, :cond_38

    .line 571
    add-int/lit8 v2, v11, 0xb

    if-ge v10, v2, :cond_34

    .line 572
    const/4 v2, 0x0

    return v2

    .line 575
    :cond_34
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v11

    add-int/lit8 v2, v2, 0xa

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 576
    .local v2, "S0":C
    if-lt v2, v8, :cond_37

    const/16 v3, 0x39

    if-le v2, v3, :cond_35

    goto :goto_17

    .line 579
    :cond_35
    add-int/lit8 v1, v2, -0x30

    .line 580
    const/4 v0, 0x1

    .line 582
    add-int/lit8 v3, v11, 0xb

    if-le v10, v3, :cond_36

    .line 583
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v3, v11

    add-int/lit8 v3, v3, 0xb

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 584
    .local v3, "S1":C
    if-lt v3, v8, :cond_36

    const/16 v4, 0x39

    if-gt v3, v4, :cond_36

    .line 585
    mul-int/lit8 v4, v1, 0xa

    add-int/lit8 v5, v3, -0x30

    add-int/2addr v4, v5

    .line 586
    .end local v1    # "millis":I
    .local v4, "millis":I
    const/4 v0, 0x2

    .line 590
    .end local v3    # "S1":C
    move v1, v4

    .end local v4    # "millis":I
    .restart local v1    # "millis":I
    :cond_36
    const/4 v3, 0x2

    if-ne v0, v3, :cond_38

    .line 591
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v3, v11

    add-int/lit8 v3, v3, 0xc

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 592
    .local v3, "S2":C
    if-lt v3, v8, :cond_38

    const/16 v4, 0x39

    if-gt v3, v4, :cond_38

    .line 593
    mul-int/lit8 v4, v1, 0xa

    add-int/lit8 v5, v3, -0x30

    add-int v1, v4, v5

    .line 594
    const/4 v0, 0x3

    .end local v2    # "S0":C
    .end local v3    # "S2":C
    goto :goto_18

    .line 577
    .restart local v2    # "S0":C
    :cond_37
    :goto_17
    const/4 v3, 0x0

    return v3

    .line 598
    .end local v1    # "millis":I
    .end local v2    # "S0":C
    .local v5, "millis":I
    :cond_38
    :goto_18
    move v5, v1

    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1, v12, v5}, Ljava/util/Calendar;->set(II)V

    .line 600
    const/4 v1, 0x0

    .line 601
    .local v1, "timzeZoneLength":I
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v11

    add-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v0

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 603
    .local v2, "timeZoneFlag":C
    const/16 v3, 0x20

    if-ne v2, v3, :cond_39

    .line 604
    add-int/lit8 v0, v0, 0x1

    .line 605
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v3, v11

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v0

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 608
    .end local v0    # "millisLen":I
    .end local v2    # "timeZoneFlag":C
    .local v12, "timeZoneFlag":C
    .local v27, "millisLen":I
    :cond_39
    move/from16 v27, v0

    move v12, v2

    const/16 v0, 0x2b

    if-eq v12, v0, :cond_3c

    const/16 v0, 0x2d

    if-ne v12, v0, :cond_3a

    goto :goto_19

    .line 672
    :cond_3a
    const/16 v0, 0x5a

    if-ne v12, v0, :cond_3b

    .line 673
    const/4 v1, 0x1

    .line 674
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    if-eqz v0, :cond_3b

    .line 675
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v2

    .line 676
    .local v2, "timeZoneIDs":[Ljava/lang/String;
    array-length v3, v2

    if-lez v3, :cond_3b

    .line 677
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 678
    .local v0, "timeZone":Ljava/util/TimeZone;
    iget-object v3, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 683
    .end local v0    # "timeZone":Ljava/util/TimeZone;
    .end local v2    # "timeZoneIDs":[Ljava/lang/String;
    :cond_3b
    move/from16 v32, v5

    goto/16 :goto_1f

    .line 609
    :cond_3c
    :goto_19
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    add-int/lit8 v0, v0, 0xa

    add-int v0, v0, v27

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 610
    .local v4, "t0":C
    if-lt v4, v8, :cond_4b

    const/16 v0, 0x31

    if-le v4, v0, :cond_3d

    .line 611
    move/from16 v47, v1

    move/from16 v31, v4

    move/from16 v32, v5

    const/4 v0, 0x0

    goto/16 :goto_21

    .line 614
    :cond_3d
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    add-int/lit8 v0, v0, 0xa

    add-int v0, v0, v27

    const/4 v2, 0x2

    add-int/2addr v0, v2

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 615
    .local v3, "t1":C
    if-lt v3, v8, :cond_4a

    const/16 v0, 0x39

    if-le v3, v0, :cond_3e

    .line 616
    move/from16 v47, v1

    move/from16 v30, v3

    move/from16 v31, v4

    move/from16 v32, v5

    goto/16 :goto_20

    .line 619
    :cond_3e
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v11

    add-int/lit8 v0, v0, 0xa

    add-int v0, v0, v27

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 620
    .local v2, "t2":C
    const/16 v0, 0x30

    .local v0, "t3":C
    const/16 v20, 0x30

    .line 621
    .local v20, "t4":C
    const/16 v8, 0x3a

    if-ne v2, v8, :cond_44

    .line 622
    iget v8, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v8, v11

    add-int/lit8 v8, v8, 0xa

    add-int v8, v8, v27

    add-int/lit8 v8, v8, 0x4

    invoke-virtual {v9, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 623
    iget v8, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v8, v11

    add-int/lit8 v8, v8, 0xa

    add-int v8, v8, v27

    const/16 v28, 0x5

    add-int/lit8 v8, v8, 0x5

    invoke-virtual {v9, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    .line 625
    .end local v20    # "t4":C
    .local v8, "t4":C
    move/from16 v47, v1

    const/16 v1, 0x34

    .end local v1    # "timzeZoneLength":I
    .local v47, "timzeZoneLength":I
    if-ne v0, v1, :cond_41

    const/16 v1, 0x35

    if-ne v8, v1, :cond_41

    .line 628
    const/16 v1, 0x31

    if-ne v4, v1, :cond_3f

    const/16 v1, 0x32

    if-eq v3, v1, :cond_43

    const/16 v1, 0x33

    if-ne v3, v1, :cond_3f

    goto :goto_1a

    .line 633
    :cond_3f
    const/16 v1, 0x30

    if-ne v4, v1, :cond_40

    const/16 v1, 0x35

    if-eq v3, v1, :cond_43

    const/16 v1, 0x38

    if-ne v3, v1, :cond_40

    goto :goto_1a

    .line 638
    :cond_40
    const/4 v1, 0x0

    return v1

    .line 642
    :cond_41
    const/4 v1, 0x0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_42

    const/16 v1, 0x33

    if-eq v0, v1, :cond_42

    .line 643
    const/4 v1, 0x0

    return v1

    .line 646
    :cond_42
    const/4 v1, 0x0

    const/16 v1, 0x30

    if-eq v8, v1, :cond_43

    .line 647
    const/4 v1, 0x0

    return v1

    .line 651
    :cond_43
    :goto_1a
    const/4 v1, 0x6

    .line 670
    .end local v47    # "timzeZoneLength":I
    .restart local v1    # "timzeZoneLength":I
    move/from16 v28, v1

    move/from16 v20, v8

    .end local v0    # "t3":C
    .end local v1    # "timzeZoneLength":I
    .local v8, "t3":C
    .restart local v20    # "t4":C
    .local v28, "timzeZoneLength":I
    :goto_1b
    move v8, v0

    goto :goto_1e

    .line 652
    .end local v8    # "t3":C
    .end local v28    # "timzeZoneLength":I
    .restart local v0    # "t3":C
    .restart local v1    # "timzeZoneLength":I
    :cond_44
    move/from16 v47, v1

    const/16 v1, 0x30

    .end local v1    # "timzeZoneLength":I
    .restart local v47    # "timzeZoneLength":I
    if-ne v2, v1, :cond_46

    .line 653
    iget v8, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v8, v11

    add-int/lit8 v8, v8, 0xa

    add-int v8, v8, v27

    add-int/lit8 v8, v8, 0x4

    invoke-virtual {v9, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 654
    if-eq v0, v1, :cond_45

    const/16 v1, 0x33

    if-eq v0, v1, :cond_45

    .line 655
    const/4 v1, 0x0

    return v1

    .line 657
    :cond_45
    const/4 v1, 0x5

    .line 670
    .end local v0    # "t3":C
    .end local v47    # "timzeZoneLength":I
    .restart local v1    # "timzeZoneLength":I
    .restart local v8    # "t3":C
    .restart local v28    # "timzeZoneLength":I
    :goto_1c
    move v8, v0

    move/from16 v28, v1

    goto :goto_1e

    .line 658
    .end local v1    # "timzeZoneLength":I
    .end local v8    # "t3":C
    .end local v28    # "timzeZoneLength":I
    .restart local v0    # "t3":C
    .restart local v47    # "timzeZoneLength":I
    :cond_46
    const/16 v1, 0x33

    if-ne v2, v1, :cond_47

    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v11

    add-int/lit8 v1, v1, 0xa

    add-int v1, v1, v27

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v8, 0x30

    if-ne v1, v8, :cond_47

    .line 659
    const/16 v0, 0x33

    .line 660
    const/16 v1, 0x30

    .line 661
    .end local v20    # "t4":C
    .local v1, "t4":C
    const/4 v8, 0x5

    .line 670
    .end local v0    # "t3":C
    .end local v1    # "t4":C
    .end local v47    # "timzeZoneLength":I
    .local v8, "timzeZoneLength":I
    .restart local v20    # "t4":C
    .restart local v28    # "timzeZoneLength":I
    :goto_1d
    move/from16 v20, v1

    move/from16 v28, v8

    goto :goto_1b

    .line 662
    .end local v8    # "timzeZoneLength":I
    .end local v28    # "timzeZoneLength":I
    .restart local v0    # "t3":C
    .restart local v47    # "timzeZoneLength":I
    :cond_47
    const/16 v1, 0x34

    if-ne v2, v1, :cond_48

    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v11

    add-int/lit8 v1, v1, 0xa

    add-int v1, v1, v27

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v8, 0x35

    if-ne v1, v8, :cond_48

    .line 663
    const/16 v0, 0x34

    .line 664
    const/16 v1, 0x35

    .line 665
    .end local v20    # "t4":C
    .restart local v1    # "t4":C
    const/4 v8, 0x5

    goto :goto_1d

    .line 667
    .end local v1    # "t4":C
    .restart local v20    # "t4":C
    :cond_48
    const/4 v1, 0x3

    goto :goto_1c

    .line 670
    .end local v0    # "t3":C
    .end local v47    # "timzeZoneLength":I
    .local v8, "t3":C
    .restart local v28    # "timzeZoneLength":I
    :goto_1e
    move-object v0, v9

    move v1, v12

    move/from16 v29, v2

    move v2, v4

    .end local v2    # "t2":C
    .local v29, "t2":C
    move/from16 v30, v3

    .end local v3    # "t1":C
    .local v30, "t1":C
    move/from16 v31, v4

    move v4, v8

    .end local v4    # "t0":C
    .local v31, "t0":C
    move/from16 v32, v5

    move/from16 v5, v20

    .end local v5    # "millis":I
    .local v32, "millis":I
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTimeZone(CCCCC)V

    .line 672
    .end local v8    # "t3":C
    .end local v20    # "t4":C
    .end local v29    # "t2":C
    .end local v30    # "t1":C
    .end local v31    # "t0":C
    nop

    .line 683
    move/from16 v1, v28

    .end local v28    # "timzeZoneLength":I
    .local v1, "timzeZoneLength":I
    :goto_1f
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v11, 0xa

    add-int v2, v2, v27

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 684
    .local v0, "end":C
    const/16 v2, 0x1a

    if-eq v0, v2, :cond_49

    const/16 v2, 0x22

    if-eq v0, v2, :cond_49

    .line 685
    const/4 v2, 0x0

    return v2

    .line 687
    :cond_49
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v11, 0xa

    add-int v3, v3, v27

    add-int/2addr v3, v1

    add-int/2addr v2, v3

    iput v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 689
    const/4 v2, 0x5

    iput v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 690
    const/4 v2, 0x1

    return v2

    .line 616
    .end local v0    # "end":C
    .end local v32    # "millis":I
    .restart local v3    # "t1":C
    .restart local v4    # "t0":C
    .restart local v5    # "millis":I
    :cond_4a
    move/from16 v47, v1

    move/from16 v30, v3

    move/from16 v31, v4

    move/from16 v32, v5

    .end local v1    # "timzeZoneLength":I
    .end local v3    # "t1":C
    .end local v4    # "t0":C
    .end local v5    # "millis":I
    .restart local v30    # "t1":C
    .restart local v31    # "t0":C
    .restart local v32    # "millis":I
    .restart local v47    # "timzeZoneLength":I
    :goto_20
    const/4 v0, 0x0

    return v0

    .line 611
    .end local v30    # "t1":C
    .end local v31    # "t0":C
    .end local v32    # "millis":I
    .end local v47    # "timzeZoneLength":I
    .restart local v1    # "timzeZoneLength":I
    .restart local v4    # "t0":C
    .restart local v5    # "millis":I
    :cond_4b
    move/from16 v47, v1

    move/from16 v31, v4

    move/from16 v32, v5

    const/4 v0, 0x0

    .end local v1    # "timzeZoneLength":I
    .end local v4    # "t0":C
    .end local v5    # "millis":I
    .restart local v31    # "t0":C
    .restart local v32    # "millis":I
    .restart local v47    # "timzeZoneLength":I
    :goto_21
    return v0

    .line 259
    .end local v7    # "t":C
    .end local v11    # "date_len":I
    .end local v12    # "timeZoneFlag":C
    .end local v14    # "c7":C
    .end local v15    # "h0":C
    .end local v16    # "s1":C
    .end local v17    # "c8":C
    .end local v18    # "c1":C
    .end local v19    # "c9":C
    .end local v21    # "c3":C
    .end local v22    # "c2":C
    .end local v25    # "m1":C
    .end local v26    # "s0":C
    .end local v27    # "millisLen":I
    .end local v31    # "t0":C
    .end local v32    # "millis":I
    .end local v36    # "y0":C
    .end local v37    # "y1":C
    .end local v38    # "y2":C
    .end local v39    # "y3":C
    .end local v40    # "M0":C
    .end local v41    # "M1":C
    .end local v42    # "d0":C
    .end local v43    # "d1":C
    .end local v44    # "c5":C
    .end local v45    # "c4":C
    .end local v46    # "c6":C
    .end local v47    # "timzeZoneLength":I
    .local v0, "c7":C
    .local v4, "c4":C
    .local v5, "c3":C
    .local v6, "c2":C
    .local v8, "c1":C
    .local v23, "c5":C
    .local v24, "c6":C
    :cond_4c
    move v14, v0

    move/from16 v45, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move v12, v7

    move/from16 v18, v8

    move/from16 v44, v23

    move/from16 v46, v24

    const/4 v0, 0x0

    const/16 v8, 0x30

    .end local v0    # "c7":C
    .end local v4    # "c4":C
    .end local v5    # "c3":C
    .end local v6    # "c2":C
    .end local v8    # "c1":C
    .end local v23    # "c5":C
    .end local v24    # "c6":C
    .restart local v14    # "c7":C
    .restart local v18    # "c1":C
    .restart local v21    # "c3":C
    .restart local v22    # "c2":C
    .restart local v44    # "c5":C
    .restart local v45    # "c4":C
    .restart local v46    # "c6":C
    :goto_22
    if-eqz p1, :cond_4d

    .line 260
    return v0

    .line 267
    :cond_4d
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v1, 0x8

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v11

    .line 269
    .local v11, "c8":C
    move/from16 v7, v45

    const/16 v0, 0x2d

    if-ne v7, v0, :cond_4e

    .end local v45    # "c4":C
    .local v7, "c4":C
    if-ne v14, v0, :cond_4e

    const/4 v0, 0x1

    goto :goto_23

    :cond_4e
    const/4 v0, 0x0

    :goto_23
    move v15, v0

    .line 270
    .local v15, "c_47":Z
    if-eqz v15, :cond_4f

    const/16 v0, 0x10

    if-ne v10, v0, :cond_4f

    const/4 v0, 0x1

    goto :goto_24

    :cond_4f
    const/4 v0, 0x0

    :goto_24
    move/from16 v17, v0

    .line 271
    .local v17, "sperate16":Z
    if-eqz v15, :cond_50

    const/16 v0, 0x11

    if-ne v10, v0, :cond_50

    const/4 v0, 0x1

    goto :goto_25

    :cond_50
    const/4 v0, 0x0

    :goto_25
    move/from16 v19, v0

    .line 272
    .local v19, "sperate17":Z
    if-nez v19, :cond_54

    if-eqz v17, :cond_51

    .line 273
    move/from16 v6, v46

    goto :goto_26

    .line 281
    :cond_51
    const/16 v0, 0x2d

    if-ne v7, v0, :cond_52

    move/from16 v6, v46

    if-ne v6, v0, :cond_53

    .line 282
    .end local v46    # "c6":C
    .local v6, "c6":C
    move v0, v13

    .line 283
    .local v0, "y0":C
    move/from16 v1, v18

    .line 284
    .local v1, "y1":C
    move/from16 v2, v22

    .line 285
    .local v2, "y2":C
    move/from16 v3, v21

    .line 286
    .local v3, "y3":C
    const/16 v4, 0x30

    .line 287
    .local v4, "M0":C
    move/from16 v5, v44

    .line 288
    .local v5, "M1":C
    const/16 v23, 0x30

    .line 289
    .local v23, "d0":C
    move/from16 v24, v14

    .line 298
    .local v24, "d1":C
    move/from16 v34, v1

    move/from16 v36, v2

    move/from16 v37, v3

    move/from16 v38, v4

    move/from16 v39, v5

    move/from16 v40, v23

    move/from16 v31, v24

    goto :goto_28

    .line 291
    .end local v0    # "y0":C
    .end local v1    # "y1":C
    .end local v2    # "y2":C
    .end local v3    # "y3":C
    .end local v4    # "M0":C
    .end local v5    # "M1":C
    .end local v6    # "c6":C
    .end local v23    # "d0":C
    .end local v24    # "d1":C
    .restart local v46    # "c6":C
    :cond_52
    move/from16 v6, v46

    .end local v46    # "c6":C
    .restart local v6    # "c6":C
    :cond_53
    move v0, v13

    .line 292
    .restart local v0    # "y0":C
    move/from16 v1, v18

    .line 293
    .restart local v1    # "y1":C
    move/from16 v2, v22

    .line 294
    .restart local v2    # "y2":C
    move/from16 v3, v21

    .line 295
    .restart local v3    # "y3":C
    move v4, v7

    .line 296
    .restart local v4    # "M0":C
    move/from16 v5, v44

    .line 297
    .restart local v5    # "M1":C
    move/from16 v23, v6

    .line 298
    .restart local v23    # "d0":C
    move/from16 v34, v1

    move/from16 v36, v2

    move/from16 v37, v3

    move/from16 v38, v4

    move/from16 v39, v5

    move/from16 v31, v14

    goto :goto_27

    .line 273
    .end local v0    # "y0":C
    .end local v1    # "y1":C
    .end local v2    # "y2":C
    .end local v3    # "y3":C
    .end local v4    # "M0":C
    .end local v5    # "M1":C
    .end local v6    # "c6":C
    .end local v23    # "d0":C
    .restart local v46    # "c6":C
    :cond_54
    move/from16 v6, v46

    .end local v46    # "c6":C
    .restart local v6    # "c6":C
    :goto_26
    move v0, v13

    .line 274
    .restart local v0    # "y0":C
    move/from16 v1, v18

    .line 275
    .restart local v1    # "y1":C
    move/from16 v2, v22

    .line 276
    .restart local v2    # "y2":C
    move/from16 v3, v21

    .line 277
    .restart local v3    # "y3":C
    move/from16 v4, v44

    .line 278
    .restart local v4    # "M0":C
    move v5, v6

    .line 279
    .restart local v5    # "M1":C
    move/from16 v23, v11

    .line 280
    .restart local v23    # "d0":C
    iget v8, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v24, 0x9

    add-int/lit8 v8, v8, 0x9

    invoke-virtual {v9, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    .line 298
    .local v8, "d1":C
    move/from16 v34, v1

    move/from16 v36, v2

    move/from16 v37, v3

    move/from16 v38, v4

    move/from16 v39, v5

    move/from16 v31, v8

    .end local v0    # "y0":C
    .end local v1    # "y1":C
    .end local v2    # "y2":C
    .end local v3    # "y3":C
    .end local v4    # "M0":C
    .end local v5    # "M1":C
    .end local v8    # "d1":C
    .local v23, "y0":C
    .local v31, "d1":C
    .local v34, "y1":C
    .local v36, "y2":C
    .local v37, "y3":C
    .local v38, "M0":C
    .local v39, "M1":C
    .local v40, "d0":C
    :goto_27
    move/from16 v40, v23

    :goto_28
    move/from16 v23, v0

    .line 302
    move/from16 v24, v23

    move/from16 v25, v34

    move/from16 v26, v36

    move/from16 v27, v37

    move/from16 v28, v38

    move/from16 v29, v39

    move/from16 v30, v40

    invoke-static/range {v24 .. v31}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkDate(CCCCCCII)Z

    move-result v0

    if-nez v0, :cond_55

    .line 303
    const/4 v0, 0x0

    return v0

    .line 306
    :cond_55
    move-object v0, v9

    move/from16 v1, v23

    move/from16 v2, v34

    move/from16 v3, v36

    move/from16 v4, v37

    move/from16 v5, v38

    move/from16 v24, v6

    move/from16 v6, v39

    .end local v6    # "c6":C
    .local v24, "c6":C
    move/from16 v25, v7

    move/from16 v7, v40

    .end local v7    # "c4":C
    .local v25, "c4":C
    move/from16 v8, v31

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->setCalendar(CCCCCCCC)V

    .line 309
    const/16 v0, 0x8

    if-eq v10, v0, :cond_62

    .line 310
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v1, 0x9

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    .line 311
    .local v7, "c9":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    .line 312
    .local v8, "c10":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0xb

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v16

    .line 313
    .local v16, "c11":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0xc

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v26

    .line 314
    .local v26, "c12":C
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0xd

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    .line 318
    .local v6, "c13":C
    if-eqz v19, :cond_56

    const/16 v0, 0x54

    if-ne v8, v0, :cond_56

    const/16 v0, 0x3a

    if-ne v6, v0, :cond_56

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x10

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_58

    :cond_56
    if-eqz v17, :cond_59

    const/16 v0, 0x20

    if-eq v8, v0, :cond_57

    const/16 v0, 0x54

    if-ne v8, v0, :cond_59

    :cond_57
    const/16 v0, 0x3a

    if-ne v6, v0, :cond_59

    .line 320
    :cond_58
    move/from16 v0, v16

    .line 321
    .local v0, "h0":C
    move/from16 v1, v26

    .line 322
    .local v1, "h1":C
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v12

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 323
    .local v2, "m0":C
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0xf

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 324
    .local v3, "m1":C
    const/16 v4, 0x30

    .line 325
    .local v4, "s0":C
    const/16 v5, 0x30

    .line 332
    .local v5, "s1":C
    move/from16 v27, v0

    move/from16 v28, v1

    move/from16 v29, v2

    move/from16 v30, v3

    move/from16 v32, v4

    goto :goto_29

    .line 327
    .end local v0    # "h0":C
    .end local v1    # "h1":C
    .end local v2    # "m0":C
    .end local v3    # "m1":C
    .end local v4    # "s0":C
    .end local v5    # "s1":C
    :cond_59
    move v0, v11

    .line 328
    .restart local v0    # "h0":C
    move v1, v7

    .line 329
    .restart local v1    # "h1":C
    move v2, v8

    .line 330
    .restart local v2    # "m0":C
    move/from16 v3, v16

    .line 331
    .restart local v3    # "m1":C
    move/from16 v4, v26

    .line 332
    .restart local v4    # "s0":C
    move/from16 v27, v0

    move/from16 v28, v1

    move/from16 v29, v2

    move/from16 v30, v3

    move/from16 v32, v4

    move v5, v6

    .end local v0    # "h0":C
    .end local v1    # "h1":C
    .end local v2    # "m0":C
    .end local v3    # "m1":C
    .end local v4    # "s0":C
    .restart local v5    # "s1":C
    .local v27, "h0":C
    .local v28, "h1":C
    .local v29, "m0":C
    .local v30, "m1":C
    .local v32, "s0":C
    :goto_29
    move/from16 v33, v5

    .line 335
    .end local v5    # "s1":C
    .local v33, "s1":C
    move-object v0, v9

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    move/from16 v5, v32

    move/from16 v35, v6

    move/from16 v6, v33

    .end local v6    # "c13":C
    .local v35, "c13":C
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 336
    const/4 v0, 0x0

    return v0

    .line 339
    :cond_5a
    const/16 v0, 0x11

    if-ne v10, v0, :cond_61

    if-nez v19, :cond_61

    .line 340
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v12

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 341
    .local v0, "S0":C
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0xf

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 342
    .local v1, "S1":C
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x10

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 343
    .local v2, "S2":C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_60

    const/16 v4, 0x39

    if-le v0, v4, :cond_5b

    goto :goto_2c

    .line 346
    :cond_5b
    if-lt v1, v3, :cond_5f

    if-le v1, v4, :cond_5c

    goto :goto_2b

    .line 349
    :cond_5c
    if-lt v2, v3, :cond_5e

    if-le v2, v4, :cond_5d

    goto :goto_2a

    .line 353
    :cond_5d
    add-int/lit8 v3, v0, -0x30

    mul-int/lit8 v3, v3, 0x64

    add-int/lit8 v4, v1, -0x30

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v3, v4

    add-int/lit8 v4, v2, -0x30

    add-int v0, v3, v4

    .line 354
    .end local v1    # "S1":C
    .end local v2    # "S2":C
    .local v0, "millis":I
    goto :goto_2d

    .line 350
    .local v0, "S0":C
    .restart local v1    # "S1":C
    .restart local v2    # "S2":C
    :cond_5e
    :goto_2a
    const/4 v3, 0x0

    return v3

    .line 347
    :cond_5f
    :goto_2b
    const/4 v3, 0x0

    return v3

    .line 344
    :cond_60
    :goto_2c
    const/4 v3, 0x0

    return v3

    .line 355
    .end local v0    # "S0":C
    .end local v1    # "S1":C
    .end local v2    # "S2":C
    :cond_61
    const/4 v3, 0x0

    move v0, v3

    .line 358
    .local v0, "millis":I
    :goto_2d
    add-int/lit8 v1, v27, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, v28, -0x30

    add-int/2addr v1, v2

    .line 359
    .local v1, "hour":I
    add-int/lit8 v2, v29, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v30, -0x30

    add-int/2addr v2, v3

    .line 360
    .local v2, "minute":I
    add-int/lit8 v3, v32, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, v33, -0x30

    add-int/2addr v3, v4

    .line 361
    .end local v7    # "c9":C
    .end local v16    # "c11":C
    .end local v26    # "c12":C
    .end local v27    # "h0":C
    .end local v28    # "h1":C
    .end local v29    # "m0":C
    .end local v30    # "m1":C
    .end local v32    # "s0":C
    .end local v33    # "s1":C
    .end local v35    # "c13":C
    .local v3, "seconds":I
    goto :goto_2e

    .line 362
    .end local v0    # "millis":I
    .end local v1    # "hour":I
    .end local v2    # "minute":I
    .end local v3    # "seconds":I
    .end local v8    # "c10":C
    :cond_62
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 363
    .restart local v1    # "hour":I
    const/4 v2, 0x0

    .line 364
    .restart local v2    # "minute":I
    const/4 v0, 0x0

    .line 365
    .local v0, "seconds":I
    move/from16 v48, v3

    move v3, v0

    move/from16 v0, v48

    .line 368
    .local v0, "millis":I
    .restart local v3    # "seconds":I
    :goto_2e
    iget-object v4, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xb

    invoke-virtual {v4, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 369
    iget-object v4, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xc

    invoke-virtual {v4, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 370
    iget-object v4, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xd

    invoke-virtual {v4, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 371
    iget-object v4, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4, v12, v0}, Ljava/util/Calendar;->set(II)V

    .line 373
    const/4 v4, 0x5

    iput v4, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 374
    const/4 v4, 0x1

    return v4
.end method

.method private setCalendar(CCCCCCCC)V
    .locals 5
    .param p1, "y0"    # C
    .param p2, "y1"    # C
    .param p3, "y2"    # C
    .param p4, "y3"    # C
    .param p5, "M0"    # C
    .param p6, "M1"    # C
    .param p7, "d0"    # C
    .param p8, "d1"    # C

    .line 765
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->timeZone:Ljava/util/TimeZone;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    .line 766
    add-int/lit8 v0, p1, -0x30

    mul-int/lit16 v0, v0, 0x3e8

    add-int/lit8 v1, p2, -0x30

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    add-int/lit8 v1, p3, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    add-int/lit8 v1, p4, -0x30

    add-int/2addr v0, v1

    .line 767
    .local v0, "year":I
    add-int/lit8 v1, p5, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, p6, -0x30

    add-int/2addr v1, v2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 768
    .local v1, "month":I
    add-int/lit8 v3, p7, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p8, -0x30

    add-int/2addr v3, v4

    .line 770
    .local v3, "day":I
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 771
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 772
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 773
    return-void
.end method


# virtual methods
.method public final addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "hash"    # I
    .param p4, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .line 104
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {p4, v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final arrayCopy(I[CII)V
    .locals 2
    .param p1, "srcPos"    # I
    .param p2, "dest"    # [C
    .param p3, "destPos"    # I
    .param p4, "length"    # I

    .line 2160
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v1, p1, p4

    invoke-virtual {v0, p1, v1, p2, p3}, Ljava/lang/String;->getChars(II[CI)V

    .line 2161
    return-void
.end method

.method public bytesValue()[B
    .locals 10

    .line 108
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-ne v0, v2, :cond_4

    .line 109
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v0, v0, 0x1

    .local v0, "start":I
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 110
    .local v2, "len":I
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_3

    .line 114
    div-int/lit8 v3, v2, 0x2

    new-array v3, v3, [B

    .line 115
    .local v3, "bytes":[B
    nop

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 116
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 117
    .local v4, "c0":C
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v6, v0

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 119
    .local v5, "c1":C
    const/16 v6, 0x37

    const/16 v7, 0x30

    const/16 v8, 0x39

    if-gt v4, v8, :cond_0

    move v9, v7

    goto :goto_1

    :cond_0
    move v9, v6

    :goto_1
    sub-int v9, v4, v9

    .line 120
    .local v9, "b0":I
    if-gt v5, v8, :cond_1

    move v6, v7

    nop

    :cond_1
    sub-int v6, v5, v6

    .line 121
    .local v6, "b1":I
    shl-int/lit8 v7, v9, 0x4

    or-int/2addr v7, v6

    int-to-byte v7, v7

    aput-byte v7, v3, v1

    .line 115
    .end local v4    # "c0":C
    .end local v5    # "c1":C
    .end local v6    # "b1":I
    .end local v9    # "b0":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    .end local v1    # "i":I
    :cond_2
    return-object v3

    .line 111
    .end local v3    # "bytes":[B
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal state. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    .end local v0    # "start":I
    .end local v2    # "len":I
    :cond_4
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    if-nez v0, :cond_5

    .line 128
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/IOUtils;->decodeBase64(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0

    .line 130
    :cond_5
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 131
    .local v0, "escapedText":Ljava/lang/String;
    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method public final charArrayCompare([C)Z
    .locals 2
    .param p1, "chars"    # [C

    .line 96
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v0

    return v0
.end method

.method public final charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .line 54
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-lt p1, v0, :cond_0

    .line 55
    const/16 v0, 0x1a

    return v0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method protected final copyTo(II[C)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "dest"    # [C

    .line 77
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v1, p1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p3, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 78
    return-void
.end method

.method public final decimalValue()Ljava/math/BigDecimal;
    .locals 8

    .line 184
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 186
    .local v0, "chLocal":C
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 187
    .local v1, "sp":I
    const/16 v2, 0x4c

    if-eq v0, v2, :cond_0

    const/16 v2, 0x53

    if-eq v0, v2, :cond_0

    const/16 v2, 0x42

    if-eq v0, v2, :cond_0

    const/16 v2, 0x46

    if-eq v0, v2, :cond_0

    const/16 v2, 0x44

    if-ne v0, v2, :cond_1

    .line 188
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 191
    :cond_1
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    .local v2, "offset":I
    move v3, v1

    .line 192
    .local v3, "count":I
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v4, v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_2

    .line 193
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v6, v2, v3

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-virtual {v4, v2, v6, v7, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 194
    new-instance v4, Ljava/math/BigDecimal;

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-direct {v4, v6, v5, v3}, Ljava/math/BigDecimal;-><init>([CII)V

    return-object v4

    .line 196
    :cond_2
    new-array v4, v3, [C

    .line 197
    .local v4, "chars":[C
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v7, v2, v3

    invoke-virtual {v6, v2, v7, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 198
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v4}, Ljava/math/BigDecimal;-><init>([C)V

    return-object v5
.end method

.method public final indexOf(CI)I
    .locals 1
    .param p1, "ch"    # C
    .param p2, "startIndex"    # I

    .line 100
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    return v0
.end method

.method public info()Ljava/lang/String;
    .locals 7

    .line 2164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2173
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 2174
    .local v1, "line":I
    const/4 v2, 0x1

    .line 2175
    .local v2, "column":I
    const/4 v3, 0x0

    move v4, v2

    move v2, v1

    move v1, v3

    .local v1, "i":I
    .local v2, "line":I
    .local v4, "column":I
    :goto_0
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    if-ge v1, v5, :cond_1

    .line 2176
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2177
    .local v5, "ch":C
    const/16 v6, 0xa

    if-ne v5, v6, :cond_0

    .line 2178
    const/4 v4, 0x1

    .line 2179
    add-int/lit8 v2, v2, 0x1

    .line 2175
    .end local v5    # "ch":C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2183
    .end local v1    # "i":I
    :cond_1
    const-string v1, "pos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", line "

    .line 2184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", column "

    .line 2185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2187
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const v5, 0xffff

    if-ge v1, v5, :cond_2

    .line 2188
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2190
    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2193
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isEOF()Z
    .locals 3

    .line 822
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v2

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    nop

    :cond_1
    :goto_0
    return v2
.end method

.method public matchField2([C)Z
    .locals 6
    .param p1, "fieldName"    # [C

    .line 2301
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2302
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_0

    .line 2305
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare([C)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    if-nez v0, :cond_1

    .line 2306
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2307
    return v1

    .line 2310
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v3, p1

    add-int/2addr v0, v3

    .line 2311
    .local v0, "offset":I
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    .local v4, "offset":I
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2312
    .local v0, "ch":C
    :goto_1
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2313
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v5, v4, 0x1

    .local v5, "offset":I
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2311
    .end local v4    # "offset":I
    move v4, v5

    goto :goto_1

    .line 2316
    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    :cond_2
    const/16 v3, 0x3a

    if-ne v0, v3, :cond_3

    .line 2317
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2318
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2319
    const/4 v1, 0x1

    return v1

    .line 2321
    :cond_3
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2322
    return v1
.end method

.method public final next()C
    .locals 2

    .line 62
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 63
    .local v0, "index":I
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1a

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_0
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 63
    return v1
.end method

.method public final numberString()Ljava/lang/String;
    .locals 3

    .line 173
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 175
    .local v0, "chLocal":C
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 176
    .local v1, "sp":I
    const/16 v2, 0x4c

    if-eq v0, v2, :cond_0

    const/16 v2, 0x53

    if-eq v0, v2, :cond_0

    const/16 v2, 0x42

    if-eq v0, v2, :cond_0

    const/16 v2, 0x46

    if-eq v0, v2, :cond_0

    const/16 v2, 0x44

    if-ne v0, v2, :cond_1

    .line 177
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 180
    :cond_1
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    invoke-virtual {p0, v2, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public scanDate(C)Ljava/util/Date;
    .locals 20
    .param p1, "seperator"    # C

    move-object/from16 v0, p0

    .line 2033
    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2034
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2035
    .local v2, "startPos":I
    iget-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2037
    .local v3, "startChar":C
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2039
    .local v4, "index":I
    add-int/lit8 v5, v4, 0x1

    .local v5, "index":I
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 2042
    .local v4, "ch":C
    const/16 v6, 0x22

    const/16 v7, 0x5d

    const/16 v8, 0x2c

    const/4 v9, 0x0

    const/4 v10, -0x1

    if-ne v4, v6, :cond_5

    .line 2043
    move v11, v5

    .line 2044
    .local v11, "startIndex":I
    invoke-virtual {v0, v6, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v6

    .line 2045
    .local v6, "endIndex":I
    if-eq v6, v10, :cond_4

    .line 2049
    sub-int v12, v6, v11

    .line 2050
    .local v12, "rest":I
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2051
    invoke-direct {v0, v1, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(ZI)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2052
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 2057
    .local v1, "dateVal":Ljava/util/Date;
    nop

    .line 2059
    add-int/lit8 v13, v6, 0x1

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 2060
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2063
    :goto_0
    if-eq v4, v8, :cond_2

    if-ne v4, v7, :cond_0

    goto :goto_1

    .line 2067
    :cond_0
    invoke-static {v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 2068
    add-int/lit8 v6, v6, 0x1

    .line 2069
    add-int/lit8 v13, v6, 0x1

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    goto :goto_0

    .line 2071
    :cond_1
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2072
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2073
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2075
    return-object v9

    .line 2064
    :cond_2
    :goto_1
    add-int/lit8 v13, v6, 0x1

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2065
    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2066
    nop

    .line 2078
    .end local v6    # "endIndex":I
    .end local v11    # "startIndex":I
    .end local v12    # "rest":I
    goto/16 :goto_6

    .line 2054
    .end local v1    # "dateVal":Ljava/util/Date;
    .restart local v6    # "endIndex":I
    .restart local v11    # "startIndex":I
    .restart local v12    # "rest":I
    :cond_3
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2055
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2056
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2057
    return-object v9

    .line 2046
    .end local v12    # "rest":I
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v7, "unclosed str"

    invoke-direct {v1, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2078
    .end local v6    # "endIndex":I
    .end local v11    # "startIndex":I
    :cond_5
    const/16 v1, 0x2d

    const/16 v6, 0x39

    const/16 v11, 0x30

    if-eq v4, v1, :cond_9

    if-lt v4, v11, :cond_6

    if-gt v4, v6, :cond_6

    goto :goto_2

    .line 2114
    :cond_6
    const/16 v1, 0x6e

    if-ne v4, v1, :cond_7

    add-int/lit8 v1, v5, 0x1

    .line 2115
    .local v1, "index":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .end local v5    # "index":I
    const/16 v6, 0x75

    if-ne v5, v6, :cond_8

    add-int/lit8 v5, v1, 0x1

    .line 2116
    .restart local v5    # "index":I
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .end local v1    # "index":I
    const/16 v6, 0x6c

    if-ne v1, v6, :cond_7

    add-int/lit8 v1, v5, 0x1

    .line 2117
    .restart local v1    # "index":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .end local v5    # "index":I
    if-ne v5, v6, :cond_8

    .line 2118
    const/4 v5, 0x0

    .line 2119
    .local v5, "dateVal":Ljava/util/Date;
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 2120
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2126
    move-object/from16 v19, v5

    move v5, v1

    move-object/from16 v1, v19

    goto :goto_6

    .line 2122
    .end local v1    # "index":I
    .local v5, "index":I
    :cond_7
    move v1, v5

    .end local v5    # "index":I
    .restart local v1    # "index":I
    :cond_8
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2123
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2124
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2126
    return-object v9

    .line 2079
    .end local v1    # "index":I
    .restart local v5    # "index":I
    :cond_9
    :goto_2
    const-wide/16 v12, 0x0

    .line 2081
    .local v12, "millis":J
    const/4 v14, 0x0

    .line 2082
    .local v14, "negative":Z
    if-ne v4, v1, :cond_a

    .line 2083
    add-int/lit8 v1, v5, 0x1

    .restart local v1    # "index":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 2084
    .end local v5    # "index":I
    const/4 v14, 0x1

    goto :goto_3

    .line 2087
    .end local v1    # "index":I
    .restart local v5    # "index":I
    :cond_a
    move v1, v5

    .end local v5    # "index":I
    .restart local v1    # "index":I
    :goto_3
    if-lt v4, v11, :cond_e

    if-gt v4, v6, :cond_e

    .line 2088
    add-int/lit8 v5, v4, -0x30

    int-to-long v12, v5

    .line 2090
    :goto_4
    add-int/lit8 v5, v1, 0x1

    .restart local v5    # "index":I
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 2091
    .end local v1    # "index":I
    if-lt v4, v11, :cond_b

    if-gt v4, v6, :cond_b

    .line 2092
    const-wide/16 v15, 0xa

    mul-long/2addr v15, v12

    add-int/lit8 v1, v4, -0x30

    move-wide/from16 v17, v12

    int-to-long v11, v1

    .end local v12    # "millis":J
    .local v17, "millis":J
    add-long/2addr v11, v15

    .line 2090
    .end local v17    # "millis":J
    .local v11, "millis":J
    move v1, v5

    move-wide v12, v11

    const/16 v11, 0x30

    goto :goto_4

    .line 2094
    .end local v11    # "millis":J
    .restart local v12    # "millis":J
    :cond_b
    move-wide/from16 v17, v12

    .end local v12    # "millis":J
    .restart local v17    # "millis":J
    if-eq v4, v8, :cond_c

    if-ne v4, v7, :cond_d

    .line 2095
    :cond_c
    add-int/lit8 v1, v5, -0x1

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2102
    :cond_d
    move-wide/from16 v12, v17

    goto :goto_5

    .end local v5    # "index":I
    .end local v17    # "millis":J
    .restart local v1    # "index":I
    .restart local v12    # "millis":J
    :cond_e
    move v5, v1

    .end local v1    # "index":I
    .restart local v5    # "index":I
    :goto_5
    const-wide/16 v15, 0x0

    cmp-long v1, v12, v15

    if-gez v1, :cond_f

    .line 2103
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2104
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2105
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2106
    return-object v9

    .line 2109
    :cond_f
    if-eqz v14, :cond_10

    .line 2110
    neg-long v12, v12

    .line 2113
    :cond_10
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 2114
    .end local v12    # "millis":J
    .end local v14    # "negative":Z
    .local v1, "dateVal":Ljava/util/Date;
    nop

    .line 2126
    :goto_6
    nop

    .line 2129
    if-ne v4, v8, :cond_11

    .line 2130
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2131
    const/4 v6, 0x3

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2132
    return-object v1

    .line 2135
    :cond_11
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 2136
    if-ne v4, v8, :cond_12

    .line 2137
    const/16 v6, 0x10

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2138
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_7

    .line 2139
    :cond_12
    if-ne v4, v7, :cond_13

    .line 2140
    const/16 v6, 0xf

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2141
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_7

    .line 2142
    :cond_13
    const/16 v6, 0x7d

    if-ne v4, v6, :cond_14

    .line 2143
    const/16 v6, 0xd

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2144
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_7

    .line 2145
    :cond_14
    const/16 v6, 0x1a

    if-ne v4, v6, :cond_15

    .line 2146
    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2147
    const/16 v6, 0x14

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2154
    :goto_7
    const/4 v6, 0x4

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2156
    return-object v1

    .line 2149
    :cond_15
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2150
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2151
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2152
    return-object v9
.end method

.method public scanDouble(C)D
    .locals 25
    .param p1, "seperator"    # C

    move-object/from16 v0, p0

    .line 1792
    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1794
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1795
    .local v2, "offset":I
    add-int/lit8 v3, v2, 0x1

    .local v3, "offset":I
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1796
    .local v2, "chLocal":C
    const/16 v4, 0x22

    if-ne v2, v4, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move v6, v1

    .line 1797
    .local v6, "quote":Z
    :goto_0
    if-eqz v6, :cond_1

    .line 1798
    add-int/lit8 v7, v3, 0x1

    .local v7, "offset":I
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1801
    .end local v3    # "offset":I
    move v3, v7

    .end local v7    # "offset":I
    .restart local v3    # "offset":I
    :cond_1
    const/16 v7, 0x2d

    if-ne v2, v7, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    move v8, v1

    .line 1802
    .local v8, "negative":Z
    :goto_1
    if-eqz v8, :cond_3

    .line 1803
    add-int/lit8 v9, v3, 0x1

    .local v9, "offset":I
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1807
    .end local v3    # "offset":I
    move v3, v9

    .end local v9    # "offset":I
    .restart local v3    # "offset":I
    :cond_3
    const-wide/16 v10, 0x0

    const/4 v12, -0x1

    const/16 v13, 0x30

    if-lt v2, v13, :cond_13

    const/16 v14, 0x39

    if-gt v2, v14, :cond_13

    .line 1808
    add-int/lit8 v15, v2, -0x30

    move/from16 v17, v2

    int-to-long v1, v15

    .line 1810
    .end local v2    # "chLocal":C
    .local v1, "intVal":J
    .local v17, "chLocal":C
    :goto_2
    add-int/lit8 v15, v3, 0x1

    .local v15, "offset":I
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 1811
    .end local v17    # "chLocal":C
    .local v3, "chLocal":C
    const-wide/16 v17, 0xa

    if-lt v3, v13, :cond_4

    if-gt v3, v14, :cond_4

    .line 1812
    mul-long v17, v17, v1

    add-int/lit8 v9, v3, -0x30

    int-to-long v4, v9

    add-long v1, v17, v4

    .line 1813
    nop

    .line 1808
    move/from16 v17, v3

    move v3, v15

    const/16 v4, 0x22

    goto :goto_2

    .line 1819
    :cond_4
    const-wide/16 v4, 0x1

    .line 1820
    .local v4, "power":J
    const/16 v9, 0x2e

    if-ne v3, v9, :cond_5

    const/4 v9, 0x1

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    .line 1821
    .local v9, "small":Z
    :goto_3
    if-eqz v9, :cond_8

    .line 1822
    add-int/lit8 v19, v15, 0x1

    .local v19, "offset":I
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 1823
    .end local v15    # "offset":I
    if-lt v3, v13, :cond_7

    if-gt v3, v14, :cond_7

    .line 1824
    mul-long v20, v1, v17

    add-int/lit8 v15, v3, -0x30

    move/from16 v22, v8

    int-to-long v7, v15

    .end local v8    # "negative":Z
    .local v22, "negative":Z
    add-long v20, v20, v7

    .line 1825
    .end local v1    # "intVal":J
    .local v20, "intVal":J
    const-wide/16 v1, 0xa

    .line 1827
    .end local v4    # "power":J
    .local v1, "power":J
    move-wide v4, v1

    move/from16 v1, v19

    .end local v19    # "offset":I
    .local v1, "offset":I
    .restart local v4    # "power":J
    :goto_4
    add-int/lit8 v2, v1, 0x1

    .local v2, "offset":I
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 1828
    .end local v1    # "offset":I
    if-lt v3, v13, :cond_6

    if-gt v3, v14, :cond_6

    .line 1829
    mul-long v7, v20, v17

    add-int/lit8 v1, v3, -0x30

    int-to-long v14, v1

    add-long v20, v7, v14

    .line 1830
    mul-long v4, v4, v17

    .line 1831
    nop

    .line 1827
    move v1, v2

    const/16 v14, 0x39

    goto :goto_4

    .line 1842
    :cond_6
    move v15, v2

    move-wide/from16 v1, v20

    goto :goto_5

    .line 1837
    .end local v2    # "offset":I
    .end local v20    # "intVal":J
    .end local v22    # "negative":Z
    .local v1, "intVal":J
    .restart local v8    # "negative":Z
    .restart local v19    # "offset":I
    :cond_7
    move/from16 v22, v8

    .end local v8    # "negative":Z
    .restart local v22    # "negative":Z
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1838
    return-wide v10

    .line 1842
    .end local v19    # "offset":I
    .end local v22    # "negative":Z
    .restart local v8    # "negative":Z
    .restart local v15    # "offset":I
    :cond_8
    move/from16 v22, v8

    .end local v8    # "negative":Z
    .restart local v22    # "negative":Z
    :goto_5
    const/16 v7, 0x65

    if-eq v3, v7, :cond_a

    const/16 v7, 0x45

    if-ne v3, v7, :cond_9

    goto :goto_6

    :cond_9
    const/16 v16, 0x0

    goto :goto_7

    :cond_a
    :goto_6
    const/16 v16, 0x1

    :goto_7
    move/from16 v7, v16

    .line 1843
    .local v7, "exp":Z
    if-eqz v7, :cond_d

    .line 1844
    add-int/lit8 v8, v15, 0x1

    .local v8, "offset":I
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 1845
    .end local v15    # "offset":I
    const/16 v14, 0x2b

    if-eq v3, v14, :cond_c

    const/16 v14, 0x2d

    if-ne v3, v14, :cond_b

    goto :goto_8

    .line 1849
    :cond_b
    move v15, v8

    goto :goto_a

    .line 1846
    :cond_c
    :goto_8
    add-int/lit8 v14, v8, 0x1

    .local v14, "offset":I
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 1849
    .end local v8    # "offset":I
    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    :goto_9
    move v15, v14

    :goto_a
    if-lt v3, v13, :cond_d

    const/16 v8, 0x39

    if-gt v3, v8, :cond_d

    .line 1850
    add-int/lit8 v14, v15, 0x1

    .restart local v14    # "offset":I
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .end local v15    # "offset":I
    goto :goto_9

    .line 1858
    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    :cond_d
    if-eqz v6, :cond_f

    .line 1859
    const/16 v8, 0x22

    if-eq v3, v8, :cond_e

    .line 1860
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1861
    return-wide v10

    .line 1863
    :cond_e
    add-int/lit8 v8, v15, 0x1

    .restart local v8    # "offset":I
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 1865
    .end local v15    # "offset":I
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v11, 0x1

    add-int/2addr v10, v11

    .line 1866
    .local v10, "start":I
    sub-int v11, v8, v10

    add-int/lit8 v11, v11, -0x2

    .line 1869
    .local v11, "count":I
    move v15, v8

    goto :goto_b

    .line 1868
    .end local v8    # "offset":I
    .end local v10    # "start":I
    .end local v11    # "count":I
    .restart local v15    # "offset":I
    :cond_f
    const/4 v11, 0x1

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1869
    .restart local v10    # "start":I
    sub-int v8, v15, v10

    add-int/lit8 v11, v8, -0x1

    .restart local v11    # "count":I
    :goto_b
    move v8, v11

    .line 1872
    .end local v11    # "count":I
    .local v8, "count":I
    if-nez v7, :cond_10

    const/16 v11, 0x12

    if-ge v8, v11, :cond_10

    .line 1873
    long-to-double v13, v1

    move-wide/from16 v23, v1

    long-to-double v1, v4

    .end local v1    # "intVal":J
    .local v23, "intVal":J
    div-double/2addr v13, v1

    .line 1874
    .local v13, "value":D
    if-eqz v22, :cond_11

    .line 1875
    neg-double v13, v13

    goto :goto_c

    .line 1878
    .end local v13    # "value":D
    .end local v23    # "intVal":J
    .restart local v1    # "intVal":J
    :cond_10
    move-wide/from16 v23, v1

    .end local v1    # "intVal":J
    .restart local v23    # "intVal":J
    invoke-virtual {v0, v10, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 1879
    .local v1, "text":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    .end local v1    # "text":Ljava/lang/String;
    .end local v4    # "power":J
    .end local v7    # "exp":Z
    .end local v8    # "count":I
    .end local v9    # "small":Z
    .end local v10    # "start":I
    .end local v23    # "intVal":J
    .restart local v13    # "value":D
    :cond_11
    :goto_c
    move-wide v1, v13

    .line 1881
    .end local v13    # "value":D
    .local v1, "value":D
    nop

    .line 1916
    nop

    .line 1919
    move/from16 v4, p1

    if-ne v3, v4, :cond_12

    .line 1920
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1921
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1922
    const/4 v5, 0x3

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1923
    const/16 v5, 0x10

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1924
    return-wide v1

    .line 1926
    :cond_12
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1927
    return-wide v1

    .line 1881
    .end local v1    # "value":D
    .end local v15    # "offset":I
    .end local v22    # "negative":Z
    .local v2, "chLocal":C
    .local v3, "offset":I
    .local v8, "negative":Z
    :cond_13
    move/from16 v4, p1

    move/from16 v17, v2

    move/from16 v22, v8

    .end local v2    # "chLocal":C
    .end local v8    # "negative":Z
    .restart local v17    # "chLocal":C
    .restart local v22    # "negative":Z
    const/16 v1, 0x6e

    move/from16 v2, v17

    if-ne v2, v1, :cond_18

    .end local v17    # "chLocal":C
    .restart local v2    # "chLocal":C
    add-int/lit8 v1, v3, 0x1

    .line 1882
    .local v1, "offset":I
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .end local v3    # "offset":I
    const/16 v5, 0x75

    if-ne v3, v5, :cond_19

    add-int/lit8 v3, v1, 0x1

    .line 1883
    .restart local v3    # "offset":I
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .end local v1    # "offset":I
    const/16 v5, 0x6c

    if-ne v1, v5, :cond_18

    add-int/lit8 v1, v3, 0x1

    .line 1884
    .restart local v1    # "offset":I
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .end local v3    # "offset":I
    if-ne v3, v5, :cond_19

    .line 1885
    const/4 v3, 0x5

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1886
    const-wide/16 v7, 0x0

    .line 1887
    .local v7, "value":D
    add-int/lit8 v5, v1, 0x1

    .local v5, "offset":I
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1889
    .end local v2    # "chLocal":C
    .local v1, "chLocal":C
    if-eqz v6, :cond_14

    const/16 v2, 0x22

    if-ne v1, v2, :cond_14

    .line 1890
    add-int/lit8 v2, v5, 0x1

    .local v2, "offset":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .end local v5    # "offset":I
    goto :goto_d

    .line 1894
    .end local v2    # "offset":I
    .restart local v5    # "offset":I
    :cond_14
    move v2, v5

    .end local v5    # "offset":I
    .restart local v2    # "offset":I
    :goto_d
    const/16 v5, 0x2c

    if-ne v1, v5, :cond_15

    .line 1895
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1896
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1897
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1898
    const/16 v5, 0x10

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1899
    return-wide v7

    .line 1900
    :cond_15
    const/16 v5, 0x10

    const/16 v9, 0x5d

    if-ne v1, v9, :cond_16

    .line 1901
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1902
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1903
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1904
    const/16 v3, 0xf

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1905
    return-wide v7

    .line 1906
    :cond_16
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 1907
    add-int/lit8 v9, v2, 0x1

    .local v9, "offset":I
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1908
    .end local v2    # "offset":I
    nop

    .line 1894
    move v2, v9

    goto :goto_d

    .line 1912
    .end local v9    # "offset":I
    .restart local v2    # "offset":I
    :cond_17
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1913
    return-wide v10

    .line 1915
    .end local v1    # "chLocal":C
    .end local v7    # "value":D
    .local v2, "chLocal":C
    .restart local v3    # "offset":I
    :cond_18
    move v1, v3

    .end local v3    # "offset":I
    .local v1, "offset":I
    :cond_19
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1916
    return-wide v10
.end method

.method public scanFieldBoolean([C)Z
    .locals 12
    .param p1, "fieldName"    # [C

    .line 1549
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1551
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v1, v2, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1552
    const/4 v1, -0x2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1553
    return v0

    .line 1556
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1557
    .local v1, "startPos":I
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v3, p1

    add-int/2addr v2, v3

    .line 1559
    .local v2, "index":I
    add-int/lit8 v3, v2, 0x1

    .local v3, "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1561
    .local v2, "ch":C
    const/16 v4, 0x22

    const/4 v5, 0x1

    if-ne v2, v4, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    move v6, v0

    .line 1562
    .local v6, "quote":Z
    :goto_0
    if-eqz v6, :cond_2

    .line 1563
    add-int/lit8 v7, v3, 0x1

    .local v7, "index":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1567
    .end local v3    # "index":I
    move v3, v7

    .end local v7    # "index":I
    .restart local v3    # "index":I
    :cond_2
    const/16 v7, 0x74

    const/16 v8, 0x65

    const/4 v9, -0x1

    if-ne v2, v7, :cond_8

    .line 1568
    add-int/lit8 v7, v3, 0x1

    .restart local v7    # "index":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .end local v3    # "index":I
    const/16 v10, 0x72

    if-eq v3, v10, :cond_3

    .line 1569
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1570
    return v0

    .line 1572
    :cond_3
    add-int/lit8 v3, v7, 0x1

    .restart local v3    # "index":I
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    .end local v7    # "index":I
    const/16 v10, 0x75

    if-eq v7, v10, :cond_4

    .line 1573
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1574
    return v0

    .line 1576
    :cond_4
    add-int/lit8 v7, v3, 0x1

    .restart local v7    # "index":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .end local v3    # "index":I
    if-eq v3, v8, :cond_5

    .line 1577
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1578
    return v0

    .line 1581
    :cond_5
    if-eqz v6, :cond_6

    add-int/lit8 v3, v7, 0x1

    .restart local v3    # "index":I
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    .end local v7    # "index":I
    if-eq v7, v4, :cond_7

    .line 1582
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1583
    return v0

    .line 1586
    .end local v3    # "index":I
    .restart local v7    # "index":I
    :cond_6
    move v3, v7

    .end local v7    # "index":I
    .restart local v3    # "index":I
    :cond_7
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1587
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1588
    const/4 v4, 0x1

    goto :goto_1

    .line 1589
    :cond_8
    const/16 v7, 0x66

    if-ne v2, v7, :cond_f

    .line 1590
    add-int/lit8 v7, v3, 0x1

    .restart local v7    # "index":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .end local v3    # "index":I
    const/16 v10, 0x61

    if-eq v3, v10, :cond_9

    .line 1591
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1592
    return v0

    .line 1594
    :cond_9
    add-int/lit8 v3, v7, 0x1

    .restart local v3    # "index":I
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    .end local v7    # "index":I
    const/16 v10, 0x6c

    if-eq v7, v10, :cond_a

    .line 1595
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1596
    return v0

    .line 1598
    :cond_a
    add-int/lit8 v7, v3, 0x1

    .restart local v7    # "index":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .end local v3    # "index":I
    const/16 v10, 0x73

    if-eq v3, v10, :cond_b

    .line 1599
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1600
    return v0

    .line 1602
    :cond_b
    add-int/lit8 v3, v7, 0x1

    .restart local v3    # "index":I
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    .end local v7    # "index":I
    if-eq v7, v8, :cond_c

    .line 1603
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1604
    return v0

    .line 1607
    :cond_c
    if-eqz v6, :cond_e

    add-int/lit8 v7, v3, 0x1

    .restart local v7    # "index":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .end local v3    # "index":I
    if-eq v3, v4, :cond_d

    .line 1608
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1609
    return v0

    .line 1612
    :cond_d
    move v3, v7

    .end local v7    # "index":I
    .restart local v3    # "index":I
    :cond_e
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1613
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1614
    const/4 v4, 0x0

    goto :goto_1

    .line 1615
    :cond_f
    const/16 v7, 0x31

    if-ne v2, v7, :cond_12

    .line 1616
    if-eqz v6, :cond_11

    add-int/lit8 v7, v3, 0x1

    .restart local v7    # "index":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .end local v3    # "index":I
    if-eq v3, v4, :cond_10

    .line 1617
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1618
    return v0

    .line 1621
    :cond_10
    move v3, v7

    .end local v7    # "index":I
    .restart local v3    # "index":I
    :cond_11
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1622
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1623
    const/4 v4, 0x1

    .local v4, "value":Z
    :goto_1
    goto :goto_2

    .line 1624
    .end local v4    # "value":Z
    :cond_12
    const/16 v7, 0x30

    if-ne v2, v7, :cond_1d

    .line 1625
    if-eqz v6, :cond_14

    add-int/lit8 v7, v3, 0x1

    .restart local v7    # "index":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .end local v3    # "index":I
    if-eq v3, v4, :cond_13

    .line 1626
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1627
    return v0

    .line 1630
    :cond_13
    move v3, v7

    .end local v7    # "index":I
    .restart local v3    # "index":I
    :cond_14
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1631
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1632
    const/4 v4, 0x0

    goto :goto_1

    .line 1635
    .restart local v4    # "value":Z
    :goto_2
    nop

    .line 1639
    const/16 v7, 0x10

    const/16 v8, 0x2c

    if-ne v2, v8, :cond_15

    .line 1640
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1641
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1642
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1643
    goto :goto_5

    .line 1644
    :cond_15
    const/16 v10, 0x7d

    if-ne v2, v10, :cond_1b

    .line 1645
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v11, v5

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1647
    :goto_3
    if-ne v2, v8, :cond_16

    .line 1648
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1649
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_4

    .line 1650
    :cond_16
    const/16 v11, 0x5d

    if-ne v2, v11, :cond_17

    .line 1651
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1652
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_4

    .line 1653
    :cond_17
    if-ne v2, v10, :cond_18

    .line 1654
    const/16 v0, 0xd

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1655
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_4

    .line 1656
    :cond_18
    const/16 v11, 0x1a

    if-ne v2, v11, :cond_19

    .line 1657
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1667
    :goto_4
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1668
    nop

    .line 1679
    :goto_5
    return v4

    .line 1658
    :cond_19
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 1659
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v11, v5

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1660
    goto :goto_3

    .line 1662
    :cond_1a
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1663
    return v0

    .line 1669
    :cond_1b
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 1670
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v7, v5

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    goto/16 :goto_2

    .line 1672
    :cond_1c
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1673
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1674
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1675
    return v0

    .line 1634
    .end local v4    # "value":Z
    :cond_1d
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1635
    return v0
.end method

.method public scanFieldDate([C)Ljava/util/Date;
    .locals 20
    .param p1, "fieldName"    # [C

    move-object/from16 v0, p0

    .line 1064
    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1065
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1066
    .local v3, "startPos":I
    iget-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1068
    .local v4, "startChar":C
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v5, v6, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 1069
    const/4 v2, -0x2

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1070
    return-object v6

    .line 1073
    :cond_0
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v7, v1

    add-int/2addr v5, v7

    .line 1075
    .local v5, "index":I
    add-int/lit8 v7, v5, 0x1

    .local v7, "index":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 1078
    .local v5, "ch":C
    const/16 v8, 0x22

    const/16 v9, 0x7d

    const/16 v10, 0x2c

    const/4 v11, -0x1

    if-ne v5, v8, :cond_6

    .line 1079
    move v12, v7

    .line 1080
    .local v12, "startIndex":I
    invoke-virtual {v0, v8, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v8

    .line 1081
    .local v8, "endIndex":I
    if-eq v8, v11, :cond_5

    .line 1085
    sub-int v13, v8, v12

    .line 1086
    .local v13, "rest":I
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1087
    invoke-direct {v0, v2, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(ZI)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1088
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 1092
    .local v2, "dateVal":Ljava/util/Date;
    nop

    .line 1094
    add-int/lit8 v14, v8, 0x1

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 1095
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1098
    :goto_0
    if-eq v5, v10, :cond_3

    if-ne v5, v9, :cond_1

    goto :goto_1

    .line 1102
    :cond_1
    invoke-static {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1103
    add-int/lit8 v8, v8, 0x1

    .line 1104
    add-int/lit8 v14, v8, 0x1

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    goto :goto_0

    .line 1106
    :cond_2
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1108
    return-object v6

    .line 1099
    :cond_3
    :goto_1
    add-int/lit8 v14, v8, 0x1

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1100
    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1101
    nop

    .line 1111
    .end local v8    # "endIndex":I
    .end local v12    # "startIndex":I
    .end local v13    # "rest":I
    goto/16 :goto_6

    .line 1090
    .end local v2    # "dateVal":Ljava/util/Date;
    .restart local v8    # "endIndex":I
    .restart local v12    # "startIndex":I
    .restart local v13    # "rest":I
    :cond_4
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1091
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1092
    return-object v6

    .line 1082
    .end local v13    # "rest":I
    :cond_5
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v6, "unclosed str"

    invoke-direct {v2, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1111
    .end local v8    # "endIndex":I
    .end local v12    # "startIndex":I
    :cond_6
    const/16 v2, 0x2d

    const/16 v8, 0x39

    const/16 v12, 0x30

    if-eq v5, v2, :cond_8

    if-lt v5, v12, :cond_7

    if-gt v5, v8, :cond_7

    goto :goto_2

    .line 1146
    :cond_7
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1148
    return-object v6

    .line 1112
    :cond_8
    :goto_2
    const-wide/16 v13, 0x0

    .line 1114
    .local v13, "millis":J
    const/4 v15, 0x0

    .line 1115
    .local v15, "negative":Z
    if-ne v5, v2, :cond_9

    .line 1116
    add-int/lit8 v2, v7, 0x1

    .local v2, "index":I
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 1117
    .end local v7    # "index":I
    const/4 v15, 0x1

    goto :goto_3

    .line 1120
    .end local v2    # "index":I
    .restart local v7    # "index":I
    :cond_9
    move v2, v7

    .end local v7    # "index":I
    .restart local v2    # "index":I
    :goto_3
    if-lt v5, v12, :cond_d

    if-gt v5, v8, :cond_d

    .line 1121
    add-int/lit8 v7, v5, -0x30

    int-to-long v13, v7

    .line 1123
    :goto_4
    add-int/lit8 v7, v2, 0x1

    .restart local v7    # "index":I
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 1124
    .end local v2    # "index":I
    if-lt v5, v12, :cond_a

    if-gt v5, v8, :cond_a

    .line 1125
    const-wide/16 v16, 0xa

    mul-long v16, v16, v13

    add-int/lit8 v2, v5, -0x30

    move-wide/from16 v18, v13

    int-to-long v12, v2

    .end local v13    # "millis":J
    .local v18, "millis":J
    add-long v12, v16, v12

    .line 1123
    .end local v18    # "millis":J
    .local v12, "millis":J
    move v2, v7

    move-wide v13, v12

    const/16 v12, 0x30

    goto :goto_4

    .line 1127
    .end local v12    # "millis":J
    .restart local v13    # "millis":J
    :cond_a
    move-wide/from16 v18, v13

    .end local v13    # "millis":J
    .restart local v18    # "millis":J
    if-eq v5, v10, :cond_b

    if-ne v5, v9, :cond_c

    .line 1128
    :cond_b
    add-int/lit8 v2, v7, -0x1

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1135
    :cond_c
    move-wide/from16 v13, v18

    goto :goto_5

    .end local v7    # "index":I
    .end local v18    # "millis":J
    .restart local v2    # "index":I
    .restart local v13    # "millis":J
    :cond_d
    move v7, v2

    .end local v2    # "index":I
    .restart local v7    # "index":I
    :goto_5
    const-wide/16 v16, 0x0

    cmp-long v2, v13, v16

    if-gez v2, :cond_e

    .line 1136
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1137
    return-object v6

    .line 1140
    :cond_e
    if-eqz v15, :cond_f

    .line 1141
    neg-long v13, v13

    .line 1144
    :cond_f
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v13, v14}, Ljava/util/Date;-><init>(J)V

    .line 1145
    .end local v13    # "millis":J
    .end local v15    # "negative":Z
    .local v2, "dateVal":Ljava/util/Date;
    nop

    .line 1148
    :goto_6
    nop

    .line 1151
    const/16 v8, 0x10

    if-ne v5, v10, :cond_10

    .line 1152
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1153
    const/4 v6, 0x3

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1154
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1155
    return-object v2

    .line 1158
    :cond_10
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 1159
    if-ne v5, v10, :cond_11

    .line 1160
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1161
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_7

    .line 1162
    :cond_11
    const/16 v8, 0x5d

    if-ne v5, v8, :cond_12

    .line 1163
    const/16 v6, 0xf

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1164
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_7

    .line 1165
    :cond_12
    if-ne v5, v9, :cond_13

    .line 1166
    const/16 v6, 0xd

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1167
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_7

    .line 1168
    :cond_13
    const/16 v8, 0x1a

    if-ne v5, v8, :cond_14

    .line 1169
    const/16 v6, 0x14

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1176
    :goto_7
    const/4 v6, 0x4

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1178
    return-object v2

    .line 1171
    :cond_14
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1172
    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1173
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1174
    return-object v6
.end method

.method public scanFieldInt([C)I
    .locals 17
    .param p1, "fieldName"    # [C

    move-object/from16 v0, p0

    .line 826
    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 827
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 828
    .local v3, "startPos":I
    iget-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 830
    .local v4, "startChar":C
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v5, v6, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 831
    const/4 v5, -0x2

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 832
    return v2

    .line 835
    :cond_0
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v6, v1

    add-int/2addr v5, v6

    .line 837
    .local v5, "index":I
    add-int/lit8 v6, v5, 0x1

    .local v6, "index":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 839
    .local v5, "ch":C
    const/16 v7, 0x22

    const/4 v8, 0x1

    if-ne v5, v7, :cond_1

    move v9, v8

    goto :goto_0

    :cond_1
    move v9, v2

    .line 841
    .local v9, "quote":Z
    :goto_0
    if-eqz v9, :cond_2

    .line 842
    add-int/lit8 v10, v6, 0x1

    .local v10, "index":I
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 845
    .end local v6    # "index":I
    move v6, v10

    .end local v10    # "index":I
    .restart local v6    # "index":I
    :cond_2
    const/16 v10, 0x2d

    if-ne v5, v10, :cond_3

    move v10, v8

    goto :goto_1

    :cond_3
    move v10, v2

    .line 846
    .local v10, "negative":Z
    :goto_1
    if-eqz v10, :cond_4

    .line 847
    add-int/lit8 v11, v6, 0x1

    .local v11, "index":I
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 851
    .end local v6    # "index":I
    move v6, v11

    .end local v11    # "index":I
    .restart local v6    # "index":I
    :cond_4
    const/16 v11, 0x30

    const/4 v12, -0x1

    if-lt v5, v11, :cond_17

    const/16 v13, 0x39

    if-gt v5, v13, :cond_17

    .line 852
    add-int/lit8 v14, v5, -0x30

    .line 854
    .local v14, "value":I
    :goto_2
    add-int/lit8 v15, v6, 0x1

    .local v15, "index":I
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 855
    .end local v6    # "index":I
    if-lt v5, v11, :cond_6

    if-gt v5, v13, :cond_6

    .line 856
    mul-int/lit8 v6, v14, 0xa

    .line 857
    .local v6, "value_10":I
    if-ge v6, v14, :cond_5

    .line 858
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 859
    return v2

    .line 862
    :cond_5
    add-int/lit8 v16, v5, -0x30

    add-int v14, v6, v16

    .line 863
    .end local v6    # "value_10":I
    nop

    .line 852
    move v6, v15

    goto :goto_2

    .line 863
    :cond_6
    const/16 v6, 0x2e

    if-ne v5, v6, :cond_7

    .line 864
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 865
    return v2

    .line 871
    :cond_7
    if-gez v14, :cond_8

    .line 872
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 873
    return v2

    .line 876
    :cond_8
    if-eqz v9, :cond_a

    .line 877
    if-eq v5, v7, :cond_9

    .line 878
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 879
    return v2

    .line 881
    :cond_9
    add-int/lit8 v6, v15, 0x1

    .local v6, "index":I
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 886
    .end local v6    # "index":I
    :goto_3
    move v15, v6

    :cond_a
    const/16 v6, 0x7d

    const/16 v7, 0x2c

    if-eq v5, v7, :cond_d

    if-ne v5, v6, :cond_b

    goto :goto_4

    .line 889
    :cond_b
    invoke-static {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 890
    add-int/lit8 v6, v15, 0x1

    .restart local v6    # "index":I
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 891
    .end local v15    # "index":I
    goto :goto_3

    .line 893
    .end local v6    # "index":I
    .restart local v15    # "index":I
    :cond_c
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 894
    return v2

    .line 887
    :cond_d
    :goto_4
    add-int/lit8 v11, v15, -0x1

    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 888
    nop

    .line 899
    move v11, v14

    .line 902
    .end local v14    # "value":I
    .local v11, "value":I
    const/16 v13, 0x10

    if-ne v5, v7, :cond_f

    .line 903
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v8

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 904
    const/4 v2, 0x3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 905
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 906
    if-eqz v10, :cond_e

    neg-int v2, v11

    goto :goto_5

    :cond_e
    move v2, v11

    :goto_5
    return v2

    .line 909
    :cond_f
    if-ne v5, v6, :cond_15

    .line 910
    add-int/lit8 v14, v15, -0x1

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 911
    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v14, v8

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 913
    :goto_6
    if-ne v5, v7, :cond_10

    .line 914
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 915
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v8

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 916
    goto :goto_7

    .line 917
    :cond_10
    const/16 v14, 0x5d

    if-ne v5, v14, :cond_11

    .line 918
    const/16 v2, 0xf

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 919
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v8

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 920
    goto :goto_7

    .line 921
    :cond_11
    if-ne v5, v6, :cond_12

    .line 922
    const/16 v2, 0xd

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 923
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v8

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 924
    goto :goto_7

    .line 925
    :cond_12
    const/16 v14, 0x1a

    if-ne v5, v14, :cond_13

    .line 926
    const/16 v2, 0x14

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 927
    nop

    .line 938
    :goto_7
    const/4 v2, 0x4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_8

    .line 928
    :cond_13
    invoke-static {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 929
    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v14, v8

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 930
    goto :goto_6

    .line 932
    :cond_14
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 933
    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 934
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 935
    return v2

    .line 941
    :cond_15
    :goto_8
    if-eqz v10, :cond_16

    neg-int v2, v11

    goto :goto_9

    :cond_16
    move v2, v11

    :goto_9
    return v2

    .line 898
    .end local v11    # "value":I
    .end local v15    # "index":I
    .restart local v6    # "index":I
    :cond_17
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 899
    return v2
.end method

.method public scanFieldLong([C)J
    .locals 20
    .param p1, "fieldName"    # [C

    move-object/from16 v0, p0

    .line 1435
    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1436
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1437
    .local v3, "startPos":I
    iget-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1439
    .local v4, "startChar":C
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v5, v6, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v5

    const-wide/16 v6, 0x0

    if-nez v5, :cond_0

    .line 1440
    const/4 v2, -0x2

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1441
    return-wide v6

    .line 1444
    :cond_0
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v8, v1

    add-int/2addr v5, v8

    .line 1446
    .local v5, "index":I
    add-int/lit8 v8, v5, 0x1

    .local v8, "index":I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 1448
    .local v5, "ch":C
    const/16 v9, 0x22

    if-ne v5, v9, :cond_1

    const/4 v11, 0x1

    goto :goto_0

    :cond_1
    move v11, v2

    .line 1449
    .local v11, "quote":Z
    :goto_0
    if-eqz v11, :cond_2

    .line 1450
    add-int/lit8 v12, v8, 0x1

    .local v12, "index":I
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .end local v8    # "index":I
    goto :goto_1

    .line 1453
    .end local v12    # "index":I
    .restart local v8    # "index":I
    :cond_2
    move v12, v8

    .end local v8    # "index":I
    .restart local v12    # "index":I
    :goto_1
    const/4 v8, 0x0

    .line 1454
    .local v8, "negative":Z
    const/16 v13, 0x2d

    if-ne v5, v13, :cond_3

    .line 1455
    add-int/lit8 v13, v12, 0x1

    .local v13, "index":I
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 1456
    .end local v12    # "index":I
    const/4 v8, 0x1

    .line 1460
    move v12, v13

    .end local v13    # "index":I
    .restart local v12    # "index":I
    :cond_3
    const/16 v13, 0x30

    const/4 v14, -0x1

    if-lt v5, v13, :cond_17

    const/16 v15, 0x39

    if-gt v5, v15, :cond_17

    .line 1461
    add-int/lit8 v2, v5, -0x30

    int-to-long v9, v2

    .line 1463
    .local v9, "value":J
    :goto_2
    add-int/lit8 v2, v12, 0x1

    .local v2, "index":I
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 1464
    .end local v12    # "index":I
    if-lt v5, v13, :cond_4

    if-gt v5, v15, :cond_4

    .line 1465
    const-wide/16 v17, 0xa

    mul-long v17, v17, v9

    add-int/lit8 v12, v5, -0x30

    int-to-long v6, v12

    add-long v9, v17, v6

    .line 1461
    move v12, v2

    const-wide/16 v6, 0x0

    goto :goto_2

    .line 1466
    :cond_4
    const/16 v6, 0x2e

    if-ne v5, v6, :cond_5

    .line 1467
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1468
    const-wide/16 v6, 0x0

    return-wide v6

    .line 1470
    :cond_5
    const-wide/16 v6, 0x0

    if-eqz v11, :cond_7

    .line 1471
    const/16 v12, 0x22

    if-eq v5, v12, :cond_6

    .line 1472
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1473
    return-wide v6

    .line 1475
    :cond_6
    add-int/lit8 v6, v2, 0x1

    .local v6, "index":I
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 1479
    .end local v2    # "index":I
    move v2, v6

    .end local v6    # "index":I
    .restart local v2    # "index":I
    :cond_7
    const/16 v6, 0x7d

    const/16 v7, 0x2c

    if-eq v5, v7, :cond_8

    if-ne v5, v6, :cond_9

    .line 1480
    :cond_8
    add-int/lit8 v12, v2, -0x1

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1486
    :cond_9
    const-wide/16 v12, 0x0

    cmp-long v15, v9, v12

    if-gez v15, :cond_b

    const-wide/high16 v12, -0x8000000000000000L

    cmp-long v12, v9, v12

    if-nez v12, :cond_a

    if-eqz v8, :cond_a

    goto :goto_3

    :cond_a
    const/16 v16, 0x0

    goto :goto_4

    :cond_b
    :goto_3
    const/16 v16, 0x1

    :goto_4
    move/from16 v12, v16

    .line 1487
    .local v12, "valid":Z
    if-nez v12, :cond_c

    .line 1488
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1489
    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1490
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1491
    const-wide/16 v6, 0x0

    return-wide v6

    .line 1493
    .end local v12    # "valid":Z
    :cond_c
    nop

    .line 1497
    :goto_5
    nop

    .line 1501
    const/16 v12, 0x10

    if-ne v5, v7, :cond_e

    .line 1502
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1503
    const/4 v6, 0x3

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1504
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1505
    if-eqz v8, :cond_d

    neg-long v6, v9

    goto :goto_6

    :cond_d
    move-wide v6, v9

    :goto_6
    return-wide v6

    .line 1506
    :cond_e
    if-ne v5, v6, :cond_15

    .line 1507
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v15, 0x1

    add-int/2addr v13, v15

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 1509
    :goto_7
    if-ne v5, v7, :cond_f

    .line 1510
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1511
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v6, v15

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1512
    goto :goto_8

    .line 1513
    :cond_f
    const/16 v13, 0x5d

    if-ne v5, v13, :cond_10

    .line 1514
    const/16 v6, 0xf

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1515
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1516
    goto :goto_8

    .line 1517
    :cond_10
    if-ne v5, v6, :cond_11

    .line 1518
    const/16 v6, 0xd

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1519
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1520
    goto :goto_8

    .line 1521
    :cond_11
    const/16 v13, 0x1a

    if-ne v5, v13, :cond_13

    .line 1522
    const/16 v6, 0x14

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1523
    nop

    .line 1533
    :goto_8
    const/4 v6, 0x4

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1534
    nop

    .line 1545
    if-eqz v8, :cond_12

    neg-long v6, v9

    goto :goto_9

    :cond_12
    move-wide v6, v9

    :goto_9
    return-wide v6

    .line 1524
    :cond_13
    invoke-static {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 1525
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v15, 0x1

    add-int/2addr v13, v15

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    goto :goto_7

    .line 1527
    :cond_14
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1528
    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1529
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1530
    const-wide/16 v6, 0x0

    return-wide v6

    .line 1535
    :cond_15
    const/4 v15, 0x1

    invoke-static {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 1536
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1537
    add-int/lit8 v12, v2, 0x1

    .local v12, "index":I
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 1538
    .end local v2    # "index":I
    nop

    .line 1497
    move v2, v12

    goto/16 :goto_5

    .line 1540
    .end local v12    # "index":I
    .restart local v2    # "index":I
    :cond_16
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1541
    const-wide/16 v6, 0x0

    return-wide v6

    .line 1494
    .end local v2    # "index":I
    .end local v9    # "value":J
    .restart local v12    # "index":I
    :cond_17
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1495
    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1496
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1497
    return-wide v6
.end method

.method public scanFieldString([C)Ljava/lang/String;
    .locals 14
    .param p1, "fieldName"    # [C

    .line 945
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 946
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 947
    .local v0, "startPos":I
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 951
    .local v1, "startChar":C
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v2, v3, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 952
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 953
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 955
    :goto_0
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 956
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_0

    .line 960
    :cond_1
    const/4 v2, -0x2

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 961
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 967
    :cond_2
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v3, p1

    add-int/2addr v2, v3

    .line 969
    .local v2, "index":I
    const/4 v3, 0x0

    .line 970
    .local v3, "spaceCount":I
    add-int/lit8 v4, v2, 0x1

    .local v4, "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 971
    .local v2, "ch":C
    const/16 v5, 0x22

    const/4 v6, -0x1

    if-eq v2, v5, :cond_4

    .line 972
    :goto_1
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 973
    add-int/lit8 v3, v3, 0x1

    .line 974
    add-int/lit8 v7, v4, 0x1

    .local v7, "index":I
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 972
    .end local v4    # "index":I
    move v4, v7

    goto :goto_1

    .line 977
    .end local v7    # "index":I
    .restart local v4    # "index":I
    :cond_3
    if-eq v2, v5, :cond_4

    .line 978
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 980
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 986
    :cond_4
    move v7, v4

    .line 987
    .local v7, "startIndex":I
    invoke-virtual {p0, v5, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v8

    .line 988
    .local v8, "endIndex":I
    if-eq v8, v6, :cond_10

    .line 992
    sub-int v9, v8, v7

    invoke-virtual {p0, v7, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v9

    .line 993
    .local v9, "stringVal":Ljava/lang/String;
    const/16 v10, 0x5c

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-eq v11, v6, :cond_7

    .line 995
    :goto_2
    const/4 v11, 0x0

    .line 996
    .local v11, "slashCount":I
    add-int/lit8 v12, v8, -0x1

    .local v12, "i":I
    :goto_3
    if-ltz v12, :cond_5

    .line 997
    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v13

    if-ne v13, v10, :cond_5

    .line 998
    add-int/lit8 v11, v11, 0x1

    .line 996
    add-int/lit8 v12, v12, -0x1

    goto :goto_3

    .line 1003
    .end local v12    # "i":I
    :cond_5
    rem-int/lit8 v12, v11, 0x2

    if-nez v12, :cond_6

    .line 1004
    nop

    .line 1009
    .end local v11    # "slashCount":I
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v10, p1

    add-int/2addr v5, v10

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v3

    sub-int v5, v8, v5

    .line 1010
    .local v5, "chars_len":I
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v11, p1

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v10, v3

    invoke-virtual {p0, v10, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->sub_chars(II)[C

    move-result-object v10

    .line 1012
    .local v10, "chars":[C
    invoke-static {v10, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->readString([CI)Ljava/lang/String;

    move-result-object v9

    .end local v5    # "chars_len":I
    .end local v10    # "chars":[C
    goto :goto_4

    .line 1006
    .restart local v11    # "slashCount":I
    :cond_6
    add-int/lit8 v12, v8, 0x1

    invoke-virtual {p0, v5, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v8

    .line 1007
    .end local v11    # "slashCount":I
    goto :goto_2

    .line 1015
    :cond_7
    :goto_4
    add-int/lit8 v5, v8, 0x1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1018
    :goto_5
    const/16 v5, 0x7d

    const/16 v10, 0x2c

    if-eq v2, v10, :cond_a

    if-ne v2, v5, :cond_8

    goto :goto_6

    .line 1023
    :cond_8
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1024
    add-int/lit8 v8, v8, 0x1

    .line 1025
    add-int/lit8 v5, v8, 0x1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    goto :goto_5

    .line 1027
    :cond_9
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1029
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1019
    :cond_a
    :goto_6
    add-int/lit8 v11, v8, 0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1020
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1021
    move-object v11, v9

    .line 1022
    .local v11, "strVal":Ljava/lang/String;
    nop

    .line 1029
    .end local v7    # "startIndex":I
    .end local v8    # "endIndex":I
    .end local v9    # "stringVal":Ljava/lang/String;
    nop

    .line 1034
    if-ne v2, v10, :cond_b

    .line 1035
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1036
    const/4 v5, 0x3

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1037
    return-object v11

    .line 1040
    :cond_b
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1041
    if-ne v2, v10, :cond_c

    .line 1042
    const/16 v5, 0x10

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1043
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_7

    .line 1044
    :cond_c
    const/16 v7, 0x5d

    if-ne v2, v7, :cond_d

    .line 1045
    const/16 v5, 0xf

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1046
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_7

    .line 1047
    :cond_d
    if-ne v2, v5, :cond_e

    .line 1048
    const/16 v5, 0xd

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1049
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_7

    .line 1050
    :cond_e
    const/16 v5, 0x1a

    if-ne v2, v5, :cond_f

    .line 1051
    const/16 v5, 0x14

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1058
    :goto_7
    const/4 v5, 0x4

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1060
    return-object v11

    .line 1053
    :cond_f
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1054
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1055
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1056
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 989
    .end local v11    # "strVal":Ljava/lang/String;
    .restart local v7    # "startIndex":I
    .restart local v8    # "endIndex":I
    :cond_10
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string v6, "unclosed str"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public scanFieldStringArray([CLjava/lang/Class;)Ljava/util/Collection;
    .locals 19
    .param p1, "fieldName"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1273
    const/4 v2, 0x0

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1275
    :goto_0
    iget-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v4, 0xa

    if-eq v3, v4, :cond_16

    iget-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    goto/16 :goto_b

    .line 1282
    :cond_0
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v3, v4, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 1283
    const/4 v2, -0x2

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1284
    return-object v4

    .line 1287
    :cond_1
    move-object/from16 v3, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->newCollectionByType(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v6

    .line 1301
    .local v6, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1302
    .local v7, "startPos":I
    iget-char v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1304
    .local v8, "startChar":C
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v10, v1

    add-int/2addr v9, v10

    .line 1306
    .local v9, "index":I
    add-int/lit8 v10, v9, 0x1

    .local v10, "index":I
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v9

    .line 1308
    .local v9, "ch":C
    const/16 v11, 0x5b

    const/4 v15, -0x1

    if-ne v9, v11, :cond_b

    .line 1309
    add-int/lit8 v11, v10, 0x1

    .local v11, "index":I
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v9

    .line 1312
    .end local v10    # "index":I
    :goto_1
    const/16 v10, 0x22

    if-ne v9, v10, :cond_6

    .line 1313
    move/from16 v16, v11

    .line 1314
    .local v16, "startIndex":I
    move/from16 v2, v16

    invoke-virtual {v0, v10, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v5

    .line 1315
    .end local v16    # "startIndex":I
    .local v2, "startIndex":I
    .local v5, "endIndex":I
    if-eq v5, v15, :cond_5

    .line 1319
    sub-int v14, v5, v2

    invoke-virtual {v0, v2, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v14

    .line 1320
    .local v14, "stringVal":Ljava/lang/String;
    const/16 v12, 0x5c

    invoke-virtual {v14, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-eq v13, v15, :cond_4

    .line 1322
    :goto_2
    const/4 v13, 0x0

    .line 1323
    .local v13, "slashCount":I
    add-int/lit8 v16, v5, -0x1

    .local v16, "i":I
    :goto_3
    move/from16 v17, v16

    .end local v16    # "i":I
    .local v17, "i":I
    move/from16 v15, v17

    if-ltz v15, :cond_2

    .line 1324
    .end local v17    # "i":I
    .local v15, "i":I
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    if-ne v4, v12, :cond_2

    .line 1325
    add-int/lit8 v13, v13, 0x1

    .line 1323
    add-int/lit8 v16, v15, -0x1

    .end local v15    # "i":I
    .restart local v16    # "i":I
    const/4 v4, 0x0

    const/4 v15, -0x1

    goto :goto_3

    .line 1330
    .end local v16    # "i":I
    :cond_2
    rem-int/lit8 v4, v13, 0x2

    if-nez v4, :cond_3

    .line 1331
    nop

    .line 1336
    .end local v13    # "slashCount":I
    sub-int v4, v5, v2

    .line 1337
    .local v4, "chars_len":I
    invoke-virtual {v0, v2, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->sub_chars(II)[C

    move-result-object v10

    .line 1339
    .local v10, "chars":[C
    invoke-static {v10, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->readString([CI)Ljava/lang/String;

    move-result-object v14

    .end local v4    # "chars_len":I
    .end local v10    # "chars":[C
    goto :goto_4

    .line 1333
    .restart local v13    # "slashCount":I
    :cond_3
    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v0, v10, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v5

    .line 1334
    .end local v13    # "slashCount":I
    nop

    .line 1322
    const/4 v4, 0x0

    const/4 v15, -0x1

    goto :goto_2

    .line 1342
    :cond_4
    :goto_4
    add-int/lit8 v4, v5, 0x1

    .line 1343
    .end local v11    # "index":I
    .local v4, "index":I
    add-int/lit8 v10, v4, 0x1

    .local v10, "index":I
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 1345
    .end local v9    # "ch":C
    .local v4, "ch":C
    invoke-interface {v6, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1346
    .end local v2    # "startIndex":I
    .end local v5    # "endIndex":I
    .end local v14    # "stringVal":Ljava/lang/String;
    goto :goto_5

    .line 1316
    .end local v4    # "ch":C
    .end local v10    # "index":I
    .restart local v2    # "startIndex":I
    .restart local v5    # "endIndex":I
    .restart local v9    # "ch":C
    .restart local v11    # "index":I
    :cond_5
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v10, "unclosed str"

    invoke-direct {v4, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1346
    .end local v2    # "startIndex":I
    .end local v5    # "endIndex":I
    :cond_6
    const/16 v2, 0x6e

    if-ne v9, v2, :cond_9

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    const-string v4, "ull"

    invoke-virtual {v2, v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1347
    add-int/lit8 v11, v11, 0x3

    .line 1348
    add-int/lit8 v10, v11, 0x1

    .restart local v10    # "index":I
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 1349
    .end local v9    # "ch":C
    .end local v11    # "index":I
    .restart local v4    # "ch":C
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1358
    :goto_5
    const/16 v2, 0x2c

    if-ne v4, v2, :cond_7

    .line 1359
    add-int/lit8 v11, v10, 0x1

    .restart local v11    # "index":I
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v9

    .line 1360
    .end local v4    # "ch":C
    .end local v10    # "index":I
    .restart local v9    # "ch":C
    nop

    .line 1312
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v15, -0x1

    goto/16 :goto_1

    .line 1363
    .end local v9    # "ch":C
    .end local v11    # "index":I
    .restart local v4    # "ch":C
    .restart local v10    # "index":I
    :cond_7
    const/16 v2, 0x5d

    if-ne v4, v2, :cond_8

    .line 1364
    add-int/lit8 v2, v10, 0x1

    .local v2, "index":I
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 1365
    .end local v10    # "index":I
    :goto_6
    invoke-static {v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1366
    add-int/lit8 v5, v2, 0x1

    .local v5, "index":I
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 1365
    .end local v2    # "index":I
    move v2, v5

    goto :goto_6

    .line 1371
    .end local v5    # "index":I
    .restart local v10    # "index":I
    :cond_8
    const/4 v2, -0x1

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1372
    const/4 v2, 0x0

    return-object v2

    .line 1350
    .end local v4    # "ch":C
    .end local v10    # "index":I
    .restart local v9    # "ch":C
    .restart local v11    # "index":I
    :cond_9
    const/16 v2, 0x5d

    if-ne v9, v2, :cond_a

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_a

    .line 1351
    add-int/lit8 v2, v11, 0x1

    .restart local v2    # "index":I
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 1352
    .end local v9    # "ch":C
    .end local v11    # "index":I
    .restart local v4    # "ch":C
    goto :goto_7

    .line 1354
    .end local v2    # "index":I
    .end local v4    # "ch":C
    .restart local v9    # "ch":C
    .restart local v11    # "index":I
    :cond_a
    const/4 v2, -0x1

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1355
    const/4 v2, 0x0

    return-object v2

    .line 1374
    .end local v11    # "index":I
    .restart local v10    # "index":I
    :cond_b
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    const-string v4, "ull"

    invoke-virtual {v2, v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1375
    const/4 v2, 0x3

    add-int/2addr v10, v2

    .line 1376
    add-int/lit8 v2, v10, 0x1

    .restart local v2    # "index":I
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 1377
    .end local v9    # "ch":C
    .end local v10    # "index":I
    .restart local v4    # "ch":C
    const/4 v6, 0x0

    .line 1383
    :cond_c
    :goto_7
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1384
    const/16 v5, 0x2c

    if-ne v4, v5, :cond_d

    .line 1385
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1386
    const/4 v5, 0x3

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1387
    return-object v6

    .line 1388
    :cond_d
    const/16 v5, 0x7d

    if-ne v4, v5, :cond_14

    .line 1389
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 1391
    :goto_8
    const/16 v9, 0x2c

    if-ne v4, v9, :cond_e

    .line 1392
    const/16 v5, 0x10

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1393
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1394
    goto :goto_9

    .line 1395
    :cond_e
    const/16 v10, 0x5d

    if-ne v4, v10, :cond_f

    .line 1396
    const/16 v5, 0xf

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1397
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1398
    goto :goto_9

    .line 1399
    :cond_f
    if-ne v4, v5, :cond_10

    .line 1400
    const/16 v5, 0xd

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1401
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1402
    goto :goto_9

    .line 1403
    :cond_10
    const/16 v11, 0x1a

    if-ne v4, v11, :cond_11

    .line 1404
    const/16 v5, 0x14

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1405
    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1406
    nop

    .line 1423
    :goto_9
    const/4 v5, 0x4

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1431
    return-object v6

    .line 1408
    :cond_11
    move v12, v2

    const/4 v2, 0x0

    .line 1409
    .local v2, "space":Z
    .local v12, "index":I
    :goto_a
    invoke-static {v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 1410
    add-int/lit8 v13, v12, 0x1

    .local v13, "index":I
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 1411
    .end local v12    # "index":I
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1412
    const/4 v2, 0x1

    .line 1408
    move v12, v13

    goto :goto_a

    .line 1414
    .end local v13    # "index":I
    .restart local v12    # "index":I
    :cond_12
    if-eqz v2, :cond_13

    .line 1415
    nop

    .line 1391
    move v2, v12

    goto :goto_8

    .line 1418
    :cond_13
    const/4 v5, -0x1

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1419
    const/4 v11, 0x0

    return-object v11

    .line 1425
    .end local v12    # "index":I
    .local v2, "index":I
    :cond_14
    const/4 v5, -0x1

    const/4 v11, 0x0

    iput-char v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1426
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1427
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1428
    return-object v11

    .line 1379
    .end local v2    # "index":I
    .end local v4    # "ch":C
    .restart local v9    # "ch":C
    .restart local v10    # "index":I
    :cond_15
    const/4 v5, -0x1

    const/4 v11, 0x0

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1380
    return-object v11

    .line 1276
    .end local v6    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v7    # "startPos":I
    .end local v8    # "startChar":C
    .end local v9    # "ch":C
    .end local v10    # "index":I
    :cond_16
    :goto_b
    move-object/from16 v3, p2

    const/16 v11, 0x1a

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1277
    .restart local v2    # "index":I
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-lt v2, v4, :cond_17

    goto :goto_c

    :cond_17
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 1279
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v11, v5

    :goto_c
    iput-char v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1280
    .end local v2    # "index":I
    nop

    .line 1275
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public scanFieldStringArray([CILcom/alibaba/fastjson/parser/SymbolTable;)[Ljava/lang/String;
    .locals 17
    .param p1, "fieldName"    # [C
    .param p2, "argTypesCount"    # I
    .param p3, "typeSymbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 2198
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2199
    .local v3, "startPos":I
    iget-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2201
    .local v4, "starChar":C
    :goto_0
    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2202
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_0

    .line 2207
    :cond_0
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v1, :cond_4

    .line 2208
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2209
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare([C)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2210
    const/4 v5, -0x2

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2211
    return-object v6

    .line 2214
    :cond_1
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v9, v1

    add-int/2addr v8, v9

    .line 2215
    .local v8, "offset":I
    iget-object v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v10, v8, 0x1

    .local v10, "offset":I
    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 2216
    .local v8, "ch":C
    :goto_1
    invoke-static {v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2217
    iget-object v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v11, v10, 0x1

    .local v11, "offset":I
    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 2215
    .end local v10    # "offset":I
    move v10, v11

    goto :goto_1

    .line 2220
    .end local v11    # "offset":I
    .restart local v10    # "offset":I
    :cond_2
    const/16 v9, 0x3a

    if-ne v8, v9, :cond_3

    .line 2221
    iget-object v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v11, v10, 0x1

    .restart local v11    # "offset":I
    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 2227
    .end local v10    # "offset":I
    :goto_2
    invoke-static {v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2228
    iget-object v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v10, v11, 0x1

    .restart local v10    # "offset":I
    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 2227
    .end local v11    # "offset":I
    move v11, v10

    goto :goto_2

    .line 2223
    :cond_3
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2224
    return-object v6

    .line 2231
    .end local v8    # "ch":C
    .end local v10    # "offset":I
    :cond_4
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v11, v8, 0x1

    .line 2232
    .restart local v11    # "offset":I
    iget-char v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2235
    .restart local v8    # "ch":C
    :cond_5
    const/16 v9, 0x5b

    const/4 v10, 0x4

    if-ne v8, v9, :cond_f

    .line 2236
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2237
    iget-object v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v9, v12}, Ljava/lang/String;->charAt(I)C

    move-result v9

    iput-char v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2247
    if-ltz v2, :cond_6

    new-array v9, v2, [Ljava/lang/String;

    goto :goto_3

    :cond_6
    new-array v9, v10, [Ljava/lang/String;

    .line 2248
    .local v9, "types":[Ljava/lang/String;
    :goto_3
    move-object v10, v9

    move v9, v7

    .line 2250
    .local v9, "typeIndex":I
    .local v10, "types":[Ljava/lang/String;
    :goto_4
    iget-char v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 2251
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_4

    .line 2254
    :cond_7
    iget-char v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v13, 0x22

    if-eq v12, v13, :cond_8

    .line 2255
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2256
    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2257
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2258
    return-object v6

    .line 2261
    :cond_8
    move-object/from16 v12, p3

    invoke-virtual {v0, v12, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v13

    .line 2262
    .local v13, "type":Ljava/lang/String;
    array-length v14, v10

    if-ne v9, v14, :cond_9

    .line 2263
    array-length v14, v10

    array-length v15, v10

    shr-int/lit8 v15, v15, 0x1

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, 0x1

    .line 2264
    .local v14, "newCapacity":I
    new-array v15, v14, [Ljava/lang/String;

    .line 2265
    .local v15, "array":[Ljava/lang/String;
    array-length v6, v10

    invoke-static {v10, v7, v15, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2266
    move-object v6, v15

    .line 2268
    .end local v10    # "types":[Ljava/lang/String;
    .end local v14    # "newCapacity":I
    .end local v15    # "array":[Ljava/lang/String;
    .local v6, "types":[Ljava/lang/String;
    move-object v10, v6

    .end local v6    # "types":[Ljava/lang/String;
    .restart local v10    # "types":[Ljava/lang/String;
    :cond_9
    add-int/lit8 v6, v9, 0x1

    .local v6, "typeIndex":I
    aput-object v13, v10, v9

    .line 2269
    .end local v9    # "typeIndex":I
    :goto_5
    iget-char v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 2270
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_5

    .line 2272
    :cond_a
    iget-char v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v14, 0x2c

    if-ne v9, v14, :cond_b

    .line 2273
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2274
    nop

    .line 2248
    move v9, v6

    const/4 v6, 0x0

    goto :goto_4

    .line 2278
    .end local v13    # "type":Ljava/lang/String;
    :cond_b
    array-length v9, v10

    if-eq v9, v6, :cond_c

    .line 2279
    new-array v9, v6, [Ljava/lang/String;

    .line 2280
    .local v9, "array":[Ljava/lang/String;
    invoke-static {v10, v7, v9, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2281
    move-object v10, v9

    .line 2284
    .end local v9    # "array":[Ljava/lang/String;
    :cond_c
    :goto_6
    iget-char v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 2285
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_6

    .line 2288
    :cond_d
    iget-char v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v9, 0x5d

    if-ne v7, v9, :cond_e

    .line 2289
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2297
    return-object v10

    .line 2291
    :cond_e
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2292
    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2293
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2294
    const/4 v5, 0x0

    return-object v5

    .line 2238
    .end local v6    # "typeIndex":I
    .end local v10    # "types":[Ljava/lang/String;
    :cond_f
    move-object/from16 v12, p3

    const/16 v6, 0x6e

    if-ne v8, v6, :cond_10

    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    const-string v7, "ull"

    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 2239
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v5, v10

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2240
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2241
    const/4 v6, 0x0

    return-object v6

    .line 2243
    :cond_10
    const/4 v6, 0x0

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2244
    return-object v6
.end method

.method public scanFieldSymbol([C)J
    .locals 12
    .param p1, "fieldName"    # [C

    .line 1182
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1185
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_2

    .line 1186
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1187
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 1189
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1190
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_0

    .line 1194
    :cond_1
    const/4 v0, -0x2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1195
    return-wide v1

    .line 1201
    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v3, p1

    add-int/2addr v0, v3

    .line 1202
    .local v0, "index":I
    const/4 v3, 0x0

    .line 1203
    .local v3, "spaceCount":I
    add-int/lit8 v4, v0, 0x1

    .local v4, "index":I
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1204
    .local v0, "ch":C
    const/16 v5, 0x22

    const/4 v6, -0x1

    if-eq v0, v5, :cond_4

    .line 1205
    :goto_1
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1206
    add-int/lit8 v7, v4, 0x1

    .local v7, "index":I
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1207
    .end local v4    # "index":I
    add-int/lit8 v3, v3, 0x1

    .line 1205
    move v4, v7

    goto :goto_1

    .line 1210
    .end local v7    # "index":I
    .restart local v4    # "index":I
    :cond_3
    if-eq v0, v5, :cond_4

    .line 1211
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1213
    return-wide v1

    .line 1217
    :cond_4
    const-wide v7, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 1219
    .local v7, "hash":J
    :goto_2
    add-int/lit8 v9, v4, 0x1

    .local v9, "index":I
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1220
    .end local v4    # "index":I
    if-ne v0, v5, :cond_c

    .line 1221
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1222
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    move v0, v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1223
    nop

    .line 1234
    :goto_3
    const/16 v4, 0x2c

    if-ne v0, v4, :cond_5

    .line 1235
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1236
    const/4 v1, 0x3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1237
    return-wide v7

    .line 1238
    :cond_5
    const/16 v5, 0x7d

    if-ne v0, v5, :cond_a

    .line 1239
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 1240
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 1241
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCurrent()C

    move-result v0

    .line 1242
    if-ne v0, v4, :cond_6

    .line 1243
    const/16 v1, 0x10

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1244
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_4

    .line 1245
    :cond_6
    const/16 v4, 0x5d

    if-ne v0, v4, :cond_7

    .line 1246
    const/16 v1, 0xf

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1247
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_4

    .line 1248
    :cond_7
    if-ne v0, v5, :cond_8

    .line 1249
    const/16 v1, 0xd

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1250
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_4

    .line 1251
    :cond_8
    const/16 v4, 0x1a

    if-ne v0, v4, :cond_9

    .line 1252
    const/16 v1, 0x14

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1257
    :goto_4
    const/4 v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1258
    nop

    .line 1268
    return-wide v7

    .line 1254
    :cond_9
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1255
    return-wide v1

    .line 1259
    :cond_a
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1260
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1261
    goto :goto_3

    .line 1263
    :cond_b
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1264
    return-wide v1

    .line 1224
    :cond_c
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-le v9, v4, :cond_d

    .line 1225
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1226
    return-wide v1

    .line 1229
    :cond_d
    int-to-long v10, v0

    xor-long/2addr v7, v10

    .line 1230
    const-wide v10, 0x100000001b3L

    mul-long/2addr v7, v10

    .line 1217
    move v4, v9

    goto/16 :goto_2
.end method

.method public scanISO8601DateIfMatch()Z
    .locals 1

    .line 203
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v0

    return v0
.end method

.method public scanISO8601DateIfMatch(Z)Z
    .locals 2
    .param p1, "strict"    # Z

    .line 207
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    sub-int/2addr v0, v1

    .line 208
    .local v0, "rest":I
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(ZI)Z

    move-result v1

    return v1
.end method

.method public final scanInt(C)I
    .locals 14
    .param p1, "expectNext"    # C

    .line 1683
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1685
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1686
    .local v1, "mark":I
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1687
    .local v2, "offset":I
    add-int/lit8 v3, v2, 0x1

    .local v3, "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1689
    .local v2, "chLocal":C
    :goto_0
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1690
    add-int/lit8 v4, v3, 0x1

    .local v4, "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1687
    .end local v3    # "offset":I
    move v3, v4

    goto :goto_0

    .line 1693
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    :cond_0
    const/16 v4, 0x22

    const/4 v5, 0x1

    if-ne v2, v4, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v0

    .line 1695
    .local v6, "quote":Z
    :goto_1
    if-eqz v6, :cond_2

    .line 1696
    add-int/lit8 v7, v3, 0x1

    .local v7, "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1699
    .end local v3    # "offset":I
    move v3, v7

    .end local v7    # "offset":I
    .restart local v3    # "offset":I
    :cond_2
    const/16 v7, 0x2d

    if-ne v2, v7, :cond_3

    goto :goto_2

    :cond_3
    move v5, v0

    .line 1700
    .local v5, "negative":Z
    :goto_2
    if-eqz v5, :cond_4

    .line 1701
    add-int/lit8 v7, v3, 0x1

    .restart local v7    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1705
    .end local v3    # "offset":I
    move v3, v7

    .end local v7    # "offset":I
    .restart local v3    # "offset":I
    :cond_4
    const/16 v7, 0x10

    const/16 v8, 0x30

    const/4 v9, -0x1

    if-lt v2, v8, :cond_f

    const/16 v10, 0x39

    if-gt v2, v10, :cond_f

    .line 1706
    add-int/lit8 v11, v2, -0x30

    .line 1708
    .local v11, "value":I
    :goto_3
    add-int/lit8 v12, v3, 0x1

    .local v12, "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1709
    .end local v3    # "offset":I
    if-lt v2, v8, :cond_6

    if-gt v2, v10, :cond_6

    .line 1710
    mul-int/lit8 v3, v11, 0xa

    .line 1711
    .local v3, "value_10":I
    if-lt v3, v11, :cond_5

    .line 1715
    add-int/lit8 v13, v2, -0x30

    add-int v11, v3, v13

    .line 1716
    .end local v3    # "value_10":I
    nop

    .line 1706
    move v3, v12

    goto :goto_3

    .line 1712
    .restart local v3    # "value_10":I
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseInt error : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v12, -0x1

    .line 1713
    invoke-virtual {p0, v1, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1716
    .end local v3    # "value_10":I
    :cond_6
    const/16 v3, 0x2e

    if-ne v2, v3, :cond_7

    .line 1717
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1718
    return v0

    .line 1720
    :cond_7
    if-eqz v6, :cond_9

    .line 1721
    if-eq v2, v4, :cond_8

    .line 1722
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1723
    return v0

    .line 1725
    :cond_8
    add-int/lit8 v3, v12, 0x1

    .local v3, "offset":I
    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1731
    .end local v12    # "offset":I
    move v12, v3

    .end local v3    # "offset":I
    .restart local v12    # "offset":I
    :cond_9
    if-gez v11, :cond_a

    .line 1732
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1733
    return v0

    .line 1770
    :cond_a
    :goto_4
    nop

    .line 1774
    if-ne v2, p1, :cond_c

    .line 1775
    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1776
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1777
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1778
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1779
    if-eqz v5, :cond_b

    neg-int v0, v11

    goto :goto_5

    :cond_b
    move v0, v11

    :goto_5
    return v0

    .line 1781
    :cond_c
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1782
    add-int/lit8 v0, v12, 0x1

    .local v0, "offset":I
    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1783
    .end local v12    # "offset":I
    nop

    .line 1770
    move v12, v0

    goto :goto_4

    .line 1785
    .end local v0    # "offset":I
    .restart local v12    # "offset":I
    :cond_d
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1786
    if-eqz v5, :cond_e

    neg-int v0, v11

    goto :goto_6

    :cond_e
    move v0, v11

    :goto_6
    return v0

    .line 1735
    .end local v11    # "value":I
    .end local v12    # "offset":I
    .restart local v3    # "offset":I
    :cond_f
    const/16 v8, 0x6e

    if-ne v2, v8, :cond_15

    add-int/lit8 v8, v3, 0x1

    .line 1736
    .local v8, "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .end local v3    # "offset":I
    const/16 v10, 0x75

    if-ne v3, v10, :cond_14

    add-int/lit8 v3, v8, 0x1

    .line 1737
    .restart local v3    # "offset":I
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    .end local v8    # "offset":I
    const/16 v10, 0x6c

    if-ne v8, v10, :cond_15

    add-int/lit8 v8, v3, 0x1

    .line 1738
    .restart local v8    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .end local v3    # "offset":I
    if-ne v3, v10, :cond_14

    .line 1739
    const/4 v3, 0x5

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1740
    const/4 v10, 0x0

    .line 1741
    .local v10, "value":I
    add-int/lit8 v11, v8, 0x1

    .local v11, "offset":I
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1743
    .end local v8    # "offset":I
    if-eqz v6, :cond_10

    if-ne v2, v4, :cond_10

    .line 1744
    add-int/lit8 v4, v11, 0x1

    .restart local v4    # "offset":I
    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .end local v11    # "offset":I
    goto :goto_7

    .line 1748
    .end local v4    # "offset":I
    .restart local v11    # "offset":I
    :cond_10
    move v4, v11

    .end local v11    # "offset":I
    .restart local v4    # "offset":I
    :goto_7
    const/16 v8, 0x2c

    if-ne v2, v8, :cond_11

    .line 1749
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1750
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1751
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1752
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1753
    return v10

    .line 1754
    :cond_11
    const/16 v8, 0x5d

    if-ne v2, v8, :cond_12

    .line 1755
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1756
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1757
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1758
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1759
    return v10

    .line 1760
    :cond_12
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1761
    add-int/lit8 v8, v4, 0x1

    .restart local v8    # "offset":I
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1762
    .end local v4    # "offset":I
    nop

    .line 1748
    move v4, v8

    goto :goto_7

    .line 1766
    .end local v8    # "offset":I
    .restart local v4    # "offset":I
    :cond_13
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1767
    return v0

    .line 1769
    .end local v4    # "offset":I
    .end local v10    # "value":I
    .restart local v8    # "offset":I
    :cond_14
    move v3, v8

    .end local v8    # "offset":I
    .restart local v3    # "offset":I
    :cond_15
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1770
    return v0
.end method

.method public scanLong(C)J
    .locals 20
    .param p1, "seperator"    # C

    move-object/from16 v0, p0

    .line 1932
    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1934
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1935
    .local v2, "offset":I
    add-int/lit8 v3, v2, 0x1

    .local v3, "offset":I
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1936
    .local v2, "chLocal":C
    const/16 v4, 0x22

    const/4 v5, 0x1

    if-ne v2, v4, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v1

    .line 1938
    .local v6, "quote":Z
    :goto_0
    if-eqz v6, :cond_1

    .line 1939
    add-int/lit8 v7, v3, 0x1

    .local v7, "offset":I
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1942
    .end local v3    # "offset":I
    move v3, v7

    .end local v7    # "offset":I
    .restart local v3    # "offset":I
    :cond_1
    const/16 v7, 0x2d

    if-ne v2, v7, :cond_2

    move v7, v5

    goto :goto_1

    :cond_2
    move v7, v1

    .line 1943
    .local v7, "negative":Z
    :goto_1
    if-eqz v7, :cond_3

    .line 1944
    add-int/lit8 v8, v3, 0x1

    .local v8, "offset":I
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1948
    .end local v3    # "offset":I
    move v3, v8

    .end local v8    # "offset":I
    .restart local v3    # "offset":I
    :cond_3
    const/16 v9, 0x30

    const-wide/16 v10, 0x0

    const/4 v12, -0x1

    if-lt v2, v9, :cond_e

    const/16 v13, 0x39

    if-gt v2, v13, :cond_e

    .line 1949
    add-int/lit8 v14, v2, -0x30

    int-to-long v14, v14

    .line 1951
    .local v14, "value":J
    :goto_2
    add-int/lit8 v1, v3, 0x1

    .local v1, "offset":I
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1952
    .end local v3    # "offset":I
    if-lt v2, v9, :cond_4

    if-gt v2, v13, :cond_4

    .line 1953
    const-wide/16 v17, 0xa

    mul-long v17, v17, v14

    add-int/lit8 v3, v2, -0x30

    int-to-long v8, v3

    add-long v14, v17, v8

    .line 1949
    move v3, v1

    const/4 v1, 0x0

    const/16 v9, 0x30

    goto :goto_2

    .line 1954
    :cond_4
    const/16 v3, 0x2e

    if-ne v2, v3, :cond_5

    .line 1955
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1956
    return-wide v10

    .line 1958
    :cond_5
    if-eqz v6, :cond_7

    .line 1959
    if-eq v2, v4, :cond_6

    .line 1960
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1961
    return-wide v10

    .line 1963
    :cond_6
    add-int/lit8 v3, v1, 0x1

    .restart local v3    # "offset":I
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1970
    .end local v1    # "offset":I
    move v1, v3

    .end local v3    # "offset":I
    .restart local v1    # "offset":I
    :cond_7
    cmp-long v3, v14, v10

    if-gez v3, :cond_9

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v14, v3

    if-nez v3, :cond_8

    if-eqz v7, :cond_8

    goto :goto_3

    :cond_8
    const/16 v16, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    move/from16 v16, v5

    :goto_4
    move/from16 v3, v16

    .line 1971
    .local v3, "valid":Z
    if-nez v3, :cond_a

    .line 1972
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1973
    return-wide v10

    .line 1975
    .end local v3    # "valid":Z
    :cond_a
    nop

    .line 2010
    :goto_5
    nop

    .line 2014
    move/from16 v5, p1

    if-ne v2, v5, :cond_c

    .line 2015
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2016
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2017
    const/4 v3, 0x3

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2018
    const/16 v3, 0x10

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2019
    if-eqz v7, :cond_b

    neg-long v3, v14

    goto :goto_6

    :cond_b
    move-wide v3, v14

    :goto_6
    return-wide v3

    .line 2021
    :cond_c
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2022
    add-int/lit8 v3, v1, 0x1

    .local v3, "offset":I
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 2023
    .end local v1    # "offset":I
    nop

    .line 2010
    move v1, v3

    goto :goto_5

    .line 2026
    .end local v3    # "offset":I
    .restart local v1    # "offset":I
    :cond_d
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2027
    return-wide v14

    .line 1975
    .end local v1    # "offset":I
    .end local v14    # "value":J
    .restart local v3    # "offset":I
    :cond_e
    move/from16 v5, p1

    const/16 v1, 0x6e

    if-ne v2, v1, :cond_13

    add-int/lit8 v1, v3, 0x1

    .line 1976
    .restart local v1    # "offset":I
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .end local v3    # "offset":I
    const/16 v8, 0x75

    if-ne v3, v8, :cond_14

    add-int/lit8 v3, v1, 0x1

    .line 1977
    .restart local v3    # "offset":I
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .end local v1    # "offset":I
    const/16 v8, 0x6c

    if-ne v1, v8, :cond_13

    add-int/lit8 v1, v3, 0x1

    .line 1978
    .restart local v1    # "offset":I
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .end local v3    # "offset":I
    if-ne v3, v8, :cond_14

    .line 1979
    const/4 v3, 0x5

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1980
    const-wide/16 v8, 0x0

    .line 1981
    .local v8, "value":J
    add-int/lit8 v13, v1, 0x1

    .local v13, "offset":I
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1983
    .end local v2    # "chLocal":C
    .local v1, "chLocal":C
    if-eqz v6, :cond_f

    if-ne v1, v4, :cond_f

    .line 1984
    add-int/lit8 v2, v13, 0x1

    .local v2, "offset":I
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1988
    .end local v13    # "offset":I
    move v13, v2

    .end local v2    # "offset":I
    .restart local v13    # "offset":I
    :cond_f
    :goto_7
    const/16 v2, 0x2c

    if-ne v1, v2, :cond_10

    .line 1989
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1990
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1991
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1992
    const/16 v2, 0x10

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1993
    return-wide v8

    .line 1994
    :cond_10
    const/16 v2, 0x10

    const/16 v4, 0x5d

    if-ne v1, v4, :cond_11

    .line 1995
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1996
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1997
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1998
    const/16 v2, 0xf

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1999
    return-wide v8

    .line 2000
    :cond_11
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 2001
    add-int/lit8 v4, v13, 0x1

    .local v4, "offset":I
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 2002
    .end local v13    # "offset":I
    nop

    .line 1988
    move v13, v4

    goto :goto_7

    .line 2006
    .end local v4    # "offset":I
    .restart local v13    # "offset":I
    :cond_12
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2007
    return-wide v10

    .line 2009
    .end local v1    # "chLocal":C
    .end local v8    # "value":J
    .end local v13    # "offset":I
    .local v2, "chLocal":C
    .restart local v3    # "offset":I
    :cond_13
    move v1, v3

    .end local v3    # "offset":I
    .local v1, "offset":I
    :cond_14
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2010
    return-wide v10
.end method

.method public scanTypeName(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 6
    .param p1, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .line 3023
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    const-string v1, "\"@type\":\""

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3024
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    const/16 v2, 0x22

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x9

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 3025
    .local v0, "p":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 3026
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x9

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 3027
    const/4 v2, 0x0

    .line 3028
    .local v2, "h":I
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 3029
    const/16 v4, 0x1f

    mul-int/2addr v4, v2

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int v2, v4, v5

    .line 3028
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3031
    .end local v3    # "i":I
    :cond_0
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    sub-int v4, v0, v4

    invoke-virtual {p0, v3, v4, v2, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v3

    .line 3032
    .local v3, "typeName":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 3033
    .local v4, "separator":C
    const/16 v5, 0x2c

    if-eq v4, v5, :cond_1

    const/16 v5, 0x5d

    if-eq v4, v5, :cond_1

    .line 3034
    return-object v1

    .line 3036
    :cond_1
    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 3037
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 3038
    return-object v3

    .line 3042
    .end local v0    # "p":I
    .end local v2    # "h":I
    .end local v3    # "typeName":Ljava/lang/String;
    .end local v4    # "separator":C
    :cond_2
    return-object v1
.end method

.method public seekArrayToItem(I)Z
    .locals 9
    .param p1, "index"    # I

    .line 2481
    if-ltz p1, :cond_f

    .line 2485
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/16 v1, 0x14

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 2486
    return v2

    .line 2489
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_e

    .line 2494
    move v0, v2

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x1

    if-ge v0, p1, :cond_d

    .line 2495
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2496
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v5, 0x22

    const/16 v6, 0x5d

    const/16 v7, 0x2c

    const/16 v8, 0x10

    if-eq v4, v5, :cond_a

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v5, 0x27

    if-ne v4, v5, :cond_1

    goto/16 :goto_4

    .line 2508
    :cond_1
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v5, 0x7b

    if-ne v4, v5, :cond_2

    .line 2509
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2510
    const/16 v3, 0xc

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2511
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipObject(Z)V

    goto :goto_1

    .line 2512
    :cond_2
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v5, 0x5b

    if-ne v4, v5, :cond_5

    .line 2513
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2514
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2515
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipArray(Z)V

    .line 2540
    :goto_1
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    if-ne v3, v8, :cond_3

    .line 2541
    goto :goto_5

    .line 2542
    :cond_3
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/16 v3, 0xf

    if-ne v1, v3, :cond_4

    .line 2543
    return v2

    .line 2545
    :cond_4
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 2517
    :cond_5
    const/4 v4, 0x0

    .line 2518
    .local v4, "match":Z
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v5, v3

    .local v5, "j":I
    :goto_2
    move v3, v5

    .end local v5    # "j":I
    .local v3, "j":I
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_8

    .line 2519
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2520
    .local v5, "c":C
    if-ne v5, v7, :cond_6

    .line 2521
    const/4 v4, 0x1

    .line 2522
    add-int/lit8 v6, v3, 0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2523
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2524
    goto :goto_3

    .line 2525
    :cond_6
    if-ne v5, v6, :cond_7

    .line 2526
    add-int/lit8 v1, v3, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2527
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2528
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    .line 2529
    return v2

    .line 2518
    .end local v5    # "c":C
    :cond_7
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "j":I
    .local v5, "j":I
    goto :goto_2

    .line 2533
    .end local v5    # "j":I
    :cond_8
    :goto_3
    if-eqz v4, :cond_9

    .end local v4    # "match":Z
    goto :goto_5

    .line 2534
    .restart local v4    # "match":Z
    :cond_9
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "illegal json."

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2497
    .end local v4    # "match":Z
    :cond_a
    :goto_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipString()V

    .line 2498
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v3, v7, :cond_b

    .line 2499
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2500
    nop

    .line 2494
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 2501
    :cond_b
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v6, :cond_c

    .line 2502
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2503
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    .line 2504
    return v2

    .line 2506
    :cond_c
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "illegal json."

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2550
    .end local v0    # "i":I
    :cond_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    .line 2551
    return v3

    .line 2490
    :cond_e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2482
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index must > 0, but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public seekObjectToField(JZ)I
    .locals 16
    .param p1, "fieldNameHash"    # J
    .param p3, "deepScan"    # Z

    move-object/from16 v0, p0

    .line 2555
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/4 v2, -0x1

    const/16 v3, 0x14

    if-ne v1, v3, :cond_0

    .line 2556
    return v2

    .line 2559
    :cond_0
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/16 v3, 0xd

    if-eq v1, v3, :cond_38

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/16 v4, 0xf

    if-ne v1, v4, :cond_1

    goto/16 :goto_12

    .line 2564
    :cond_1
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/16 v4, 0xc

    if-eq v1, v4, :cond_3

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/16 v4, 0x10

    if-ne v1, v4, :cond_2

    goto :goto_0

    .line 2565
    :cond_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2569
    :cond_3
    :goto_0
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v4, 0x7d

    if-ne v1, v4, :cond_4

    .line 2570
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2571
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    .line 2572
    return v2

    .line 2574
    :cond_4
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v5, 0x1a

    if-ne v1, v5, :cond_5

    .line 2575
    return v2

    .line 2578
    :cond_5
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v6, 0x22

    if-eq v1, v6, :cond_6

    .line 2579
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2583
    :cond_6
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v6, :cond_37

    .line 2584
    const-wide v7, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 2586
    .local v7, "hash":J
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v9, 0x1

    add-int/2addr v1, v9

    .local v1, "i":I
    :goto_1
    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v1, v10, :cond_b

    .line 2587
    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 2588
    .local v10, "c":C
    const/16 v11, 0x5c

    if-ne v10, v11, :cond_8

    .line 2589
    add-int/lit8 v1, v1, 0x1

    .line 2590
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eq v1, v11, :cond_7

    .line 2593
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_2

    .line 2591
    :cond_7
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unclosed str, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->info()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2596
    :cond_8
    :goto_2
    if-ne v10, v6, :cond_a

    .line 2597
    add-int/lit8 v11, v1, 0x1

    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2598
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lt v11, v12, :cond_9

    .line 2600
    move v11, v5

    goto :goto_3

    .line 2598
    :cond_9
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2600
    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    :goto_3
    iput-char v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2601
    goto :goto_4

    .line 2604
    :cond_a
    int-to-long v11, v10

    xor-long/2addr v7, v11

    .line 2605
    const-wide v11, 0x100000001b3L

    mul-long/2addr v7, v11

    .line 2586
    .end local v10    # "c":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2608
    .end local v1    # "i":I
    :cond_b
    :goto_4
    nop

    .line 2611
    cmp-long v1, v7, p1

    const/4 v12, 0x0

    const/16 v13, 0x3a

    const/16 v14, 0x39

    const/16 v5, 0x30

    const/16 v2, 0x2c

    if-nez v1, :cond_16

    .line 2612
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v13, :cond_c

    .line 2613
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2615
    :cond_c
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v13, :cond_15

    .line 2617
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2618
    .local v1, "index":I
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v1, v6, :cond_d

    .line 2620
    const/16 v6, 0x1a

    goto :goto_5

    .line 2618
    :cond_d
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2620
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_5
    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2622
    .end local v1    # "index":I
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v2, :cond_f

    .line 2624
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2625
    .restart local v1    # "index":I
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_e

    .line 2627
    const/16 v5, 0x1a

    goto :goto_6

    .line 2625
    :cond_e
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2627
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_6
    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2629
    .end local v1    # "index":I
    const/16 v1, 0x10

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_9

    .line 2630
    :cond_f
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_11

    .line 2632
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2633
    .restart local v1    # "index":I
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_10

    .line 2635
    const/16 v5, 0x1a

    goto :goto_7

    .line 2633
    :cond_10
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2635
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_7
    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2637
    .end local v1    # "index":I
    const/16 v1, 0xf

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_9

    .line 2638
    :cond_11
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v4, :cond_13

    .line 2640
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2641
    .restart local v1    # "index":I
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_12

    .line 2643
    const/16 v5, 0x1a

    goto :goto_8

    .line 2641
    :cond_12
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2643
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_8
    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2645
    .end local v1    # "index":I
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_9

    .line 2646
    :cond_13
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-lt v1, v5, :cond_14

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-gt v1, v14, :cond_14

    .line 2647
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 2648
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->pos:I

    .line 2649
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanNumber()V

    goto :goto_9

    .line 2651
    :cond_14
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    .line 2654
    :cond_15
    :goto_9
    const/4 v1, 0x3

    return v1

    .line 2657
    :cond_16
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v13, :cond_17

    .line 2658
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2661
    :cond_17
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v13, :cond_36

    .line 2662
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2663
    .restart local v1    # "index":I
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lt v1, v13, :cond_18

    .line 2665
    const/16 v13, 0x1a

    goto :goto_a

    .line 2663
    :cond_18
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2665
    invoke-virtual {v13, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    :goto_a
    iput-char v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2666
    .end local v1    # "index":I
    nop

    .line 2670
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v13, 0x2d

    const/16 v3, 0x2b

    if-eq v1, v6, :cond_19

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v12, 0x27

    if-eq v1, v12, :cond_19

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v12, 0x7b

    if-eq v1, v12, :cond_19

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v12, 0x5b

    if-eq v1, v12, :cond_19

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v5, :cond_19

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v12, 0x31

    if-eq v1, v12, :cond_19

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v12, 0x32

    if-eq v1, v12, :cond_19

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v12, 0x33

    if-eq v1, v12, :cond_19

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v12, 0x34

    if-eq v1, v12, :cond_19

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v12, 0x35

    if-eq v1, v12, :cond_19

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v12, 0x36

    if-eq v1, v12, :cond_19

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v12, 0x37

    if-eq v1, v12, :cond_19

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v12, 0x38

    if-eq v1, v12, :cond_19

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v14, :cond_19

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v3, :cond_19

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v13, :cond_19

    .line 2686
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2690
    :cond_19
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v12, 0x65

    if-eq v1, v13, :cond_2d

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v3, :cond_2d

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-lt v1, v5, :cond_1a

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-gt v1, v14, :cond_1a

    goto/16 :goto_d

    .line 2721
    :cond_1a
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v6, :cond_1d

    .line 2722
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipString()V

    .line 2724
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v2, :cond_1b

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v4, :cond_1b

    .line 2725
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2728
    :cond_1b
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v2, :cond_1c

    .line 2729
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2820
    .end local v7    # "hash":J
    :cond_1c
    :goto_b
    const/16 v4, 0xd

    goto/16 :goto_11

    .line 2731
    .restart local v7    # "hash":J
    :cond_1d
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v3, 0x74

    if-ne v1, v3, :cond_20

    .line 2732
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2733
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v3, 0x72

    if-ne v1, v3, :cond_1e

    .line 2734
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2735
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v3, 0x75

    if-ne v1, v3, :cond_1e

    .line 2736
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2737
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v12, :cond_1e

    .line 2738
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2743
    :cond_1e
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v2, :cond_1f

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v4, :cond_1f

    .line 2744
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2747
    :cond_1f
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v2, :cond_1c

    .line 2748
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_b

    .line 2750
    :cond_20
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v3, 0x6e

    const/16 v5, 0x6c

    if-ne v1, v3, :cond_23

    .line 2751
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2752
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v3, 0x75

    if-ne v1, v3, :cond_21

    .line 2753
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2754
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v5, :cond_21

    .line 2755
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2756
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v5, :cond_21

    .line 2757
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2762
    :cond_21
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v2, :cond_22

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v4, :cond_22

    .line 2763
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2766
    :cond_22
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v2, :cond_1c

    .line 2767
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_b

    .line 2769
    :cond_23
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v3, 0x66

    if-ne v1, v3, :cond_26

    .line 2770
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2771
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v3, 0x61

    if-ne v1, v3, :cond_24

    .line 2772
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2773
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v5, :cond_24

    .line 2774
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2775
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v3, 0x73

    if-ne v1, v3, :cond_24

    .line 2776
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2777
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v12, :cond_24

    .line 2778
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2784
    :cond_24
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v2, :cond_25

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v4, :cond_25

    .line 2785
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2788
    :cond_25
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v2, :cond_1c

    .line 2789
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto/16 :goto_b

    .line 2791
    :cond_26
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_2a

    .line 2793
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2794
    .restart local v1    # "index":I
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_27

    .line 2796
    const/16 v5, 0x1a

    goto :goto_c

    .line 2794
    :cond_27
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2796
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_c
    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2798
    .end local v1    # "index":I
    if-eqz p3, :cond_28

    .line 2799
    const/16 v1, 0xc

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2800
    return v9

    .line 2803
    :cond_28
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipObject(Z)V

    .line 2804
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_29

    .line 2805
    const/4 v1, -0x1

    return v1

    .line 2820
    .end local v7    # "hash":J
    :cond_29
    move v4, v2

    goto/16 :goto_11

    .line 2807
    .restart local v7    # "hash":J
    :cond_2a
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_2c

    .line 2808
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2809
    if-eqz p3, :cond_2b

    .line 2810
    const/16 v1, 0xe

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2811
    const/4 v1, 0x2

    return v1

    .line 2813
    :cond_2b
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipArray(Z)V

    .line 2814
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/16 v4, 0xd

    if-ne v1, v4, :cond_35

    .line 2815
    const/4 v1, -0x1

    return v1

    .line 2818
    :cond_2c
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 2691
    :cond_2d
    :goto_d
    const/16 v4, 0xd

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2692
    :goto_e
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-lt v1, v5, :cond_2e

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-gt v1, v14, :cond_2e

    .line 2693
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_e

    .line 2697
    :cond_2e
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v6, 0x2e

    if-ne v1, v6, :cond_2f

    .line 2698
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2699
    :goto_f
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-lt v1, v5, :cond_2f

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-gt v1, v14, :cond_2f

    .line 2700
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_f

    .line 2705
    :cond_2f
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v6, 0x45

    if-eq v1, v6, :cond_30

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v12, :cond_33

    .line 2706
    :cond_30
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2707
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v13, :cond_31

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v3, :cond_32

    .line 2708
    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2710
    :cond_32
    :goto_10
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-lt v1, v5, :cond_33

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-gt v1, v14, :cond_33

    .line 2711
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_10

    .line 2715
    :cond_33
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v2, :cond_34

    .line 2716
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2718
    :cond_34
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v2, :cond_35

    .line 2719
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2820
    .end local v7    # "hash":J
    :cond_35
    :goto_11
    nop

    .line 2569
    move v3, v4

    const/4 v2, -0x1

    goto/16 :goto_0

    .line 2667
    .restart local v7    # "hash":J
    :cond_36
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal json, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2608
    .end local v7    # "hash":J
    :cond_37
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 2560
    :cond_38
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    .line 2561
    const/4 v1, -0x1

    return v1
.end method

.method public seekObjectToField([J)I
    .locals 17
    .param p1, "fieldNameHash"    # [J

    move-object/from16 v0, p0

    .line 2824
    move-object/from16 v1, p1

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/16 v3, 0x10

    const/16 v4, 0xc

    if-eq v2, v4, :cond_1

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 2825
    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 2829
    :cond_1
    :goto_0
    iget-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v4, 0x7d

    const/4 v5, -0x1

    if-ne v2, v4, :cond_2

    .line 2830
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2831
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    .line 2832
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2833
    return v5

    .line 2835
    :cond_2
    iget-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v6, 0x1a

    if-ne v2, v6, :cond_3

    .line 2836
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2837
    return v5

    .line 2840
    :cond_3
    iget-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v7, 0x22

    if-eq v2, v7, :cond_4

    .line 2841
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2845
    :cond_4
    iget-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v2, v7, :cond_2a

    .line 2846
    const-wide v8, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 2848
    .local v8, "hash":J
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .local v2, "i":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v2, v10, :cond_9

    .line 2849
    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 2850
    .local v10, "c":C
    const/16 v11, 0x5c

    if-ne v10, v11, :cond_6

    .line 2851
    add-int/lit8 v2, v2, 0x1

    .line 2852
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eq v2, v11, :cond_5

    .line 2855
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v11, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_2

    .line 2853
    :cond_5
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unclosed str, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->info()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2858
    :cond_6
    :goto_2
    if-ne v10, v7, :cond_8

    .line 2859
    add-int/lit8 v11, v2, 0x1

    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2860
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lt v11, v12, :cond_7

    .line 2862
    move v11, v6

    goto :goto_3

    .line 2860
    :cond_7
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2862
    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    :goto_3
    iput-char v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2863
    goto :goto_4

    .line 2866
    :cond_8
    int-to-long v11, v10

    xor-long/2addr v8, v11

    .line 2867
    const-wide v11, 0x100000001b3L

    mul-long/2addr v8, v11

    .line 2848
    .end local v10    # "c":C
    goto :goto_1

    .line 2870
    .end local v2    # "i":I
    :cond_9
    :goto_4
    nop

    .line 2873
    const/4 v2, -0x1

    .line 2874
    .local v2, "matchIndex":I
    const/4 v10, 0x0

    move v11, v10

    .local v11, "i":I
    :goto_5
    array-length v12, v1

    if-ge v11, v12, :cond_b

    .line 2875
    aget-wide v12, v1, v11

    cmp-long v12, v8, v12

    if-nez v12, :cond_a

    .line 2876
    move v2, v11

    .line 2877
    goto :goto_6

    .line 2874
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 2881
    .end local v11    # "i":I
    :cond_b
    :goto_6
    const/16 v11, 0x3a

    const/16 v12, 0x2c

    const/16 v13, 0x39

    const/16 v14, 0x30

    if-eq v2, v5, :cond_16

    .line 2882
    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v5, v11, :cond_c

    .line 2883
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2885
    :cond_c
    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v5, v11, :cond_15

    .line 2887
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2888
    .local v5, "index":I
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v5, v7, :cond_d

    .line 2890
    move v7, v6

    goto :goto_7

    .line 2888
    :cond_d
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2890
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_7
    iput-char v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2892
    .end local v5    # "index":I
    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v5, v12, :cond_f

    .line 2894
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2895
    .local v4, "index":I
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_e

    goto :goto_8

    :cond_e
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2897
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_8
    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2899
    .end local v4    # "index":I
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_b

    .line 2900
    :cond_f
    iget-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v5, 0x5d

    if-ne v3, v5, :cond_11

    .line 2902
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2903
    .local v3, "index":I
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_10

    goto :goto_9

    :cond_10
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2905
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_9
    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2907
    .end local v3    # "index":I
    const/16 v3, 0xf

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_b

    .line 2908
    :cond_11
    iget-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v3, v4, :cond_13

    .line 2910
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2911
    .restart local v3    # "index":I
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_12

    goto :goto_a

    :cond_12
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2913
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_a
    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2915
    .end local v3    # "index":I
    const/16 v3, 0xd

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_b

    .line 2916
    :cond_13
    iget-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-lt v3, v14, :cond_14

    iget-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-gt v3, v13, :cond_14

    .line 2917
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 2918
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->pos:I

    .line 2919
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanNumber()V

    goto :goto_b

    .line 2921
    :cond_14
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    .line 2925
    :cond_15
    :goto_b
    const/4 v3, 0x3

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2926
    return v2

    .line 2929
    :cond_16
    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v5, v11, :cond_17

    .line 2930
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2933
    :cond_17
    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v5, v11, :cond_29

    .line 2934
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2935
    .restart local v5    # "index":I
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v5, v11, :cond_18

    .line 2937
    move v11, v6

    goto :goto_c

    .line 2935
    :cond_18
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2937
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    :goto_c
    iput-char v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2938
    .end local v5    # "index":I
    nop

    .line 2942
    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v11, 0x5b

    const/16 v15, 0x7b

    const/16 v3, 0x2d

    const/16 v6, 0x2b

    if-eq v5, v7, :cond_19

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v10, 0x27

    if-eq v5, v10, :cond_19

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v5, v15, :cond_19

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v5, v11, :cond_19

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v5, v14, :cond_19

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v10, 0x31

    if-eq v5, v10, :cond_19

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v10, 0x32

    if-eq v5, v10, :cond_19

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v10, 0x33

    if-eq v5, v10, :cond_19

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v10, 0x34

    if-eq v5, v10, :cond_19

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v10, 0x35

    if-eq v5, v10, :cond_19

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v10, 0x36

    if-eq v5, v10, :cond_19

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v10, 0x37

    if-eq v5, v10, :cond_19

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v10, 0x38

    if-eq v5, v10, :cond_19

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v5, v13, :cond_19

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v5, v6, :cond_19

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v5, v3, :cond_19

    .line 2958
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2962
    :cond_19
    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v5, v3, :cond_20

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v5, v6, :cond_20

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-lt v5, v14, :cond_1a

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-gt v5, v13, :cond_1a

    goto :goto_e

    .line 2993
    :cond_1a
    iget-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v3, v7, :cond_1c

    .line 2994
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipString()V

    .line 2996
    iget-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v3, v12, :cond_1b

    iget-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v3, v4, :cond_1b

    .line 2997
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 3000
    :cond_1b
    iget-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v3, v12, :cond_28

    .line 3001
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto/16 :goto_12

    .line 3003
    :cond_1c
    iget-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v3, v15, :cond_1e

    .line 3005
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 3006
    .restart local v3    # "index":I
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_1d

    .line 3008
    const/16 v6, 0x1a

    goto :goto_d

    .line 3006
    :cond_1d
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 3008
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_d
    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 3011
    .end local v3    # "index":I
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipObject(Z)V

    goto/16 :goto_12

    .line 3012
    :cond_1e
    const/4 v3, 0x0

    iget-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v4, v11, :cond_1f

    .line 3013
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 3015
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipArray(Z)V

    goto :goto_12

    .line 3017
    :cond_1f
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3

    .line 2963
    :cond_20
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2964
    :goto_f
    iget-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-lt v4, v14, :cond_21

    iget-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-gt v4, v13, :cond_21

    .line 2965
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_f

    .line 2969
    :cond_21
    iget-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_22

    .line 2970
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2971
    :goto_10
    iget-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-lt v4, v14, :cond_22

    iget-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-gt v4, v13, :cond_22

    .line 2972
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_10

    .line 2977
    :cond_22
    iget-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v5, 0x45

    if-eq v4, v5, :cond_23

    iget-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v5, 0x65

    if-ne v4, v5, :cond_26

    .line 2978
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2979
    iget-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v4, v3, :cond_24

    iget-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v3, v6, :cond_25

    .line 2980
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2982
    :cond_25
    :goto_11
    iget-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-lt v3, v14, :cond_26

    iget-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-gt v3, v13, :cond_26

    .line 2983
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_11

    .line 2987
    :cond_26
    iget-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v3, v12, :cond_27

    .line 2988
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2990
    :cond_27
    iget-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v3, v12, :cond_28

    .line 2991
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 3019
    .end local v2    # "matchIndex":I
    .end local v8    # "hash":J
    :cond_28
    :goto_12
    nop

    .line 2829
    const/16 v3, 0x10

    goto/16 :goto_0

    .line 2939
    .restart local v2    # "matchIndex":I
    .restart local v8    # "hash":J
    :cond_29
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illegal json, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->info()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2870
    .end local v2    # "matchIndex":I
    .end local v8    # "hash":J
    :cond_2a
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method protected setTime(CCCCCC)V
    .locals 5
    .param p1, "h0"    # C
    .param p2, "h1"    # C
    .param p3, "m0"    # C
    .param p4, "m1"    # C
    .param p5, "s0"    # C
    .param p6, "s1"    # C

    .line 694
    add-int/lit8 v0, p1, -0x30

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, p2, -0x30

    add-int/2addr v0, v1

    .line 695
    .local v0, "hour":I
    add-int/lit8 v1, p3, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, p4, -0x30

    add-int/2addr v1, v2

    .line 696
    .local v1, "minute":I
    add-int/lit8 v2, p5, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, p6, -0x30

    add-int/2addr v2, v3

    .line 697
    .local v2, "seconds":I
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 698
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xc

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 699
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xd

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 700
    return-void
.end method

.method protected setTimeZone(CCC)V
    .locals 6
    .param p1, "timeZoneFlag"    # C
    .param p2, "t0"    # C
    .param p3, "t1"    # C

    .line 703
    const/16 v4, 0x30

    const/16 v5, 0x30

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTimeZone(CCCCC)V

    .line 704
    return-void
.end method

.method protected setTimeZone(CCCCC)V
    .locals 4
    .param p1, "timeZoneFlag"    # C
    .param p2, "t0"    # C
    .param p3, "t1"    # C
    .param p4, "t3"    # C
    .param p5, "t4"    # C

    .line 707
    add-int/lit8 v0, p2, -0x30

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, p3, -0x30

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0xe10

    mul-int/lit16 v0, v0, 0x3e8

    .line 709
    .local v0, "timeZoneOffset":I
    add-int/lit8 v1, p4, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, p5, -0x30

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v0, v1

    .line 711
    const/16 v1, 0x2d

    if-ne p1, v1, :cond_0

    .line 712
    neg-int v0, v0

    .line 715
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 716
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    new-instance v2, Ljava/util/SimpleTimeZone;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 718
    :cond_1
    return-void
.end method

.method public final skipArray()V
    .locals 1

    .line 2401
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipArray(Z)V

    .line 2402
    return-void
.end method

.method public final skipArray(Z)V
    .locals 8
    .param p1, "valid"    # Z

    .line 2405
    const/4 v0, 0x0

    .line 2406
    .local v0, "quote":Z
    const/4 v1, 0x0

    .line 2407
    .local v1, "bracketCnt":I
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2408
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 2409
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2410
    .local v3, "ch":C
    const/16 v4, 0x5c

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    .line 2411
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    sub-int/2addr v4, v5

    if-ge v2, v4, :cond_0

    .line 2412
    add-int/lit8 v2, v2, 0x1

    .line 2413
    goto/16 :goto_3

    .line 2415
    :cond_0
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2416
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2417
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "illegal str, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->info()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2419
    :cond_1
    const/16 v4, 0x22

    if-ne v3, v4, :cond_3

    .line 2420
    if-nez v0, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    move v0, v4

    goto :goto_3

    .line 2421
    :cond_3
    const/16 v4, 0x5b

    if-ne v3, v4, :cond_5

    .line 2422
    if-eqz v0, :cond_4

    .line 2423
    goto :goto_3

    .line 2425
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2426
    :cond_5
    const/16 v4, 0x7b

    const/16 v6, 0x1a

    if-ne v3, v4, :cond_7

    if-eqz p1, :cond_7

    .line 2428
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2429
    .local v4, "index":I
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v4, v7, :cond_6

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2431
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_2
    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2434
    .end local v4    # "index":I
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipObject(Z)V

    goto :goto_3

    .line 2435
    :cond_7
    const/16 v4, 0x5d

    if-ne v3, v4, :cond_a

    .line 2436
    if-eqz v0, :cond_8

    .line 2437
    goto :goto_3

    .line 2439
    :cond_8
    add-int/lit8 v1, v1, -0x1

    .line 2441
    const/4 v4, -0x1

    if-ne v1, v4, :cond_a

    .line 2442
    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2443
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_9

    .line 2444
    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2445
    const/16 v4, 0x14

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2446
    return-void

    .line 2448
    :cond_9
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2449
    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    .line 2450
    return-void

    .line 2408
    .end local v3    # "ch":C
    :cond_a
    :goto_3
    add-int/2addr v2, v5

    goto/16 :goto_0

    .line 2455
    :cond_b
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_c

    .line 2458
    return-void

    .line 2456
    :cond_c
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illegal str, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->info()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final skipObject()V
    .locals 1

    .line 2327
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipObject(Z)V

    .line 2328
    return-void
.end method

.method public final skipObject(Z)V
    .locals 10
    .param p1, "valid"    # Z

    .line 2331
    const/4 v0, 0x0

    .line 2332
    .local v0, "quote":Z
    const/4 v1, 0x0

    .line 2333
    .local v1, "braceCnt":I
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2334
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_d

    .line 2335
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2336
    .local v3, "ch":C
    const/16 v5, 0x5c

    const/4 v6, 0x1

    if-ne v3, v5, :cond_1

    .line 2337
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    sub-int/2addr v4, v6

    if-ge v2, v4, :cond_0

    .line 2338
    add-int/lit8 v2, v2, 0x1

    .line 2339
    goto/16 :goto_2

    .line 2341
    :cond_0
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2342
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2343
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "illegal str, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->info()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2345
    :cond_1
    const/16 v5, 0x22

    if-ne v3, v5, :cond_3

    .line 2346
    if-nez v0, :cond_2

    move v4, v6

    nop

    :cond_2
    move v0, v4

    goto/16 :goto_2

    .line 2347
    :cond_3
    const/16 v4, 0x7b

    if-ne v3, v4, :cond_5

    .line 2348
    if-eqz v0, :cond_4

    .line 2349
    goto/16 :goto_2

    .line 2351
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2352
    :cond_5
    const/16 v4, 0x7d

    if-ne v3, v4, :cond_c

    .line 2353
    if-eqz v0, :cond_6

    .line 2354
    goto :goto_2

    .line 2356
    :cond_6
    add-int/lit8 v1, v1, -0x1

    .line 2358
    const/4 v5, -0x1

    if-ne v1, v5, :cond_c

    .line 2359
    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2360
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x1a

    if-ne v5, v7, :cond_7

    .line 2361
    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2362
    const/16 v4, 0x14

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2363
    return-void

    .line 2365
    :cond_7
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2366
    iget-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v7, 0x2c

    const/16 v9, 0x10

    if-ne v5, v7, :cond_9

    .line 2367
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2368
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v4, v6

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2369
    .local v4, "index":I
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_8

    goto :goto_1

    :cond_8
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2371
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_1
    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2372
    return-void

    .line 2373
    .end local v4    # "index":I
    :cond_9
    iget-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v5, v4, :cond_a

    .line 2374
    const/16 v4, 0xd

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2375
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2376
    return-void

    .line 2377
    :cond_a
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v5, 0x5d

    if-ne v4, v5, :cond_b

    .line 2378
    const/16 v4, 0xf

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2379
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2380
    return-void

    .line 2382
    :cond_b
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    .line 2384
    return-void

    .line 2334
    .end local v3    # "ch":C
    :cond_c
    :goto_2
    add-int/2addr v2, v6

    goto/16 :goto_0

    .line 2389
    :cond_d
    nop

    .local v4, "j":I
    :goto_3
    move v3, v4

    .end local v4    # "j":I
    .local v3, "j":I
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    if-ge v3, v4, :cond_f

    .line 2390
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_e

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_e

    .line 2391
    add-int/lit8 v2, v2, 0x1

    .line 2389
    :cond_e
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    goto :goto_3

    .line 2395
    .end local v4    # "j":I
    :cond_f
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_10

    .line 2398
    return-void

    .line 2396
    :cond_10
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illegal str, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->info()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final skipString()V
    .locals 4

    .line 2461
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_3

    .line 2462
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 2463
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2464
    .local v2, "c":C
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_0

    .line 2465
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    .line 2466
    add-int/lit8 v0, v0, 0x1

    .line 2467
    goto :goto_1

    .line 2469
    :cond_0
    if-ne v2, v1, :cond_1

    .line 2470
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2471
    return-void

    .line 2462
    .end local v2    # "c":C
    :cond_1
    :goto_1
    goto :goto_0

    .line 2474
    .end local v0    # "i":I
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "unclosed str"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2476
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final stringVal()Ljava/lang/String;
    .locals 4

    .line 139
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    if-nez v0, :cond_0

    .line 140
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public final subString(II)Ljava/lang/String;
    .locals 4
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .line 147
    sget-boolean v0, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v0, v0

    const/4 v1, 0x0

    if-ge p2, v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v2, p1, p2

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-virtual {v0, p1, v2, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 150
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-direct {v0, v2, v1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 152
    :cond_0
    new-array v0, p2, [C

    .line 153
    .local v0, "chars":[C
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v3, p1, p2

    invoke-virtual {v2, p1, v3, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 154
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    .line 157
    .end local v0    # "chars":[C
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v1, p1, p2

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final sub_chars(II)[C
    .locals 4
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .line 162
    sget-boolean v0, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v2, p1, p2

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-virtual {v0, p1, v2, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 164
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    return-object v0

    .line 166
    :cond_0
    new-array v0, p2, [C

    .line 167
    .local v0, "chars":[C
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v3, p1, p2

    invoke-virtual {v2, p1, v3, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 168
    return-object v0
.end method
