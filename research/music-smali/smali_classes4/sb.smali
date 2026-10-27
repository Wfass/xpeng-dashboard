.class Lsb;
.super Ljava/lang/Object;
.source "Frame.java"


# instance fields
.field final a:Lsc;

.field b:[I

.field private c:[I

.field private d:[I

.field private e:[I

.field private f:S

.field private g:S

.field private h:I

.field private i:[I


# direct methods
.method constructor <init>(Lsc;)V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Lsb;->a:Lsc;

    return-void
.end method

.method private a()I
    .locals 2

    .line 618
    iget-short v0, p0, Lsb;->g:S

    if-lez v0, :cond_0

    .line 619
    iget-object v1, p0, Lsb;->e:[I

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lsb;->g:S

    aget v0, v1, v0

    return v0

    :cond_0
    const/high16 v0, 0x1400000

    .line 622
    iget-short v1, p0, Lsb;->f:S

    add-int/lit8 v1, v1, -0x1

    int-to-short v1, v1

    iput-short v1, p0, Lsb;->f:S

    neg-int v1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private a(I)I
    .locals 3

    .line 459
    iget-object v0, p0, Lsb;->d:[I

    const/high16 v1, 0x1000000

    if-eqz v0, :cond_2

    array-length v2, v0

    if-lt p1, v2, :cond_0

    goto :goto_0

    .line 464
    :cond_0
    aget v2, v0, p1

    if-nez v2, :cond_1

    or-int v2, p1, v1

    .line 468
    aput v2, v0, p1

    :cond_1
    return v2

    :cond_2
    :goto_0
    or-int/2addr p1, v1

    return p1
.end method

.method private a(Lsg;I)I
    .locals 8

    const v0, 0x400006

    if-eq p2, v0, :cond_0

    const/high16 v1, -0x400000

    and-int/2addr v1, p2

    const/high16 v2, 0xc00000

    if-ne v1, v2, :cond_5

    :cond_0
    const/4 v1, 0x0

    .line 696
    :goto_0
    iget v2, p0, Lsb;->h:I

    if-ge v1, v2, :cond_5

    .line 697
    iget-object v2, p0, Lsb;->i:[I

    aget v2, v2, v1

    const/high16 v3, -0x4000000

    and-int/2addr v3, v2

    const/high16 v4, 0x3c00000

    and-int/2addr v4, v2

    const v5, 0xfffff

    and-int v6, v2, v5

    const/high16 v7, 0x1000000

    if-ne v4, v7, :cond_1

    .line 702
    iget-object v2, p0, Lsb;->c:[I

    aget v2, v2, v6

    :goto_1
    add-int/2addr v2, v3

    goto :goto_2

    :cond_1
    const/high16 v7, 0x1400000

    if-ne v4, v7, :cond_2

    .line 704
    iget-object v2, p0, Lsb;->b:[I

    array-length v4, v2

    sub-int/2addr v4, v6

    aget v2, v2, v4

    goto :goto_1

    :cond_2
    :goto_2
    if-ne p2, v2, :cond_4

    const/high16 v1, 0x800000

    if-ne p2, v0, :cond_3

    .line 708
    iget-object p2, p1, Lsg;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lsg;->b(Ljava/lang/String;)I

    move-result p1

    :goto_3
    or-int/2addr p1, v1

    return p1

    .line 710
    :cond_3
    iget-object v0, p1, Lsg;->e:[Lsf;

    and-int/2addr p2, v5

    aget-object p2, v0, p2

    iget-object p2, p2, Lsf;->e:Ljava/lang/String;

    .line 711
    invoke-virtual {p1, p2}, Lsg;->b(Ljava/lang/String;)I

    move-result p1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return p2
.end method

.method private static a(Lsg;Ljava/lang/String;I)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 212
    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x46

    if-eq v3, v4, :cond_33

    const/16 v5, 0x4c

    const-string v6, "com/alibaba/fastjson2/reader/FieldReader"

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v3, v5, :cond_12

    const/16 v11, 0x53

    if-eq v3, v11, :cond_11

    const/16 v12, 0x56

    if-eq v3, v12, :cond_10

    const/16 v12, 0x49

    if-eq v3, v12, :cond_11

    const/16 v13, 0x4a

    if-eq v3, v13, :cond_f

    const/16 v14, 0x5a

    if-eq v3, v14, :cond_11

    const/16 v15, 0x5b

    if-eq v3, v15, :cond_0

    packed-switch v3, :pswitch_data_0

    .line 401
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    const v0, 0x400003

    return v0

    :cond_0
    add-int/lit8 v3, v2, 0x1

    .line 349
    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v7, 0x5b

    if-ne v15, v7, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 353
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v4, :cond_e

    if-eq v7, v5, :cond_6

    if-eq v7, v11, :cond_5

    if-eq v7, v14, :cond_4

    if-eq v7, v12, :cond_3

    if-eq v7, v13, :cond_2

    packed-switch v7, :pswitch_data_1

    .line 397
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_1
    const v0, 0x400003

    goto/16 :goto_5

    :pswitch_2
    const v0, 0x40000b

    goto :goto_5

    :pswitch_3
    const v0, 0x40000a

    goto :goto_5

    :cond_2
    const v0, 0x400004

    goto :goto_5

    :cond_3
    const v0, 0x400001

    goto :goto_5

    :cond_4
    const v0, 0x400009

    goto :goto_5

    :cond_5
    const v0, 0x40000c

    goto :goto_5

    :cond_6
    if-nez v2, :cond_b

    .line 380
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x1eb1a837

    if-eq v4, v5, :cond_8

    const v5, 0x61624b97

    if-eq v4, v5, :cond_7

    goto :goto_1

    :cond_7
    const-string v4, "[Lcom/alibaba/fastjson2/reader/FieldReader;"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move v8, v9

    goto :goto_2

    :cond_8
    const-string v4, "[Lcom/alibaba/fastjson2/writer/FieldWriter;"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_2

    :cond_9
    :goto_1
    const/4 v8, -0x1

    :goto_2
    if-eqz v8, :cond_c

    if-eq v8, v9, :cond_a

    goto :goto_3

    :cond_a
    const-string v6, "Lcom/alibaba/fastjson2/reader/FieldReader"

    goto :goto_4

    :cond_b
    :goto_3
    move-object v6, v10

    :cond_c
    :goto_4
    if-nez v6, :cond_d

    add-int/lit8 v4, v3, 0x1

    .line 392
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v9

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_d
    const/high16 v1, 0x800000

    .line 394
    invoke-virtual {v0, v6}, Lsg;->b(Ljava/lang/String;)I

    move-result v0

    or-int/2addr v0, v1

    goto :goto_5

    :cond_e
    const v0, 0x400002

    :goto_5
    sub-int/2addr v3, v2

    shl-int/lit8 v1, v3, 0x1a

    or-int/2addr v0, v1

    return v0

    :cond_f
    const v0, 0x400004

    return v0

    :cond_10
    return v8

    :cond_11
    :pswitch_4
    const v0, 0x400001

    return v0

    :cond_12
    const-string v3, "com/alibaba/fastjson2/reader/ObjectReader"

    const-string v4, "java/lang/String"

    const/4 v7, 0x3

    const-string v5, "java/lang/Object"

    const/4 v11, 0x2

    if-nez v2, :cond_16

    .line 229
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    goto/16 :goto_6

    :sswitch_0
    const-string v7, "Ljava/lang/reflect/Type;"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    const/4 v7, 0x4

    goto/16 :goto_7

    :sswitch_1
    const-string v7, "Ljava/lang/Object;"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    move v7, v8

    goto/16 :goto_7

    :sswitch_2
    const-string v7, "Ljava/lang/Class;"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    move v7, v9

    goto :goto_7

    :sswitch_3
    const-string v7, "Ljava/lang/String;"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    move v7, v11

    goto :goto_7

    :sswitch_4
    const-string v7, "Lcom/alibaba/fastjson2/reader/ObjectReader;"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    const/16 v7, 0x9

    goto :goto_7

    :sswitch_5
    const-string v7, "Lcom/alibaba/fastjson2/JSONWriter;"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    const/16 v7, 0xa

    goto :goto_7

    :sswitch_6
    const-string v7, "Ljava/util/function/Supplier;"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    const/4 v7, 0x5

    goto :goto_7

    :sswitch_7
    const-string v8, "Ljava/util/List;"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    goto :goto_7

    :sswitch_8
    const-string v7, "Lsun/misc/Unsafe;"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    const/4 v7, 0x6

    goto :goto_7

    :sswitch_9
    const-string v7, "Lcom/alibaba/fastjson2/JSONReader;"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    const/4 v7, 0x7

    goto :goto_7

    :sswitch_a
    const-string v7, "Lcom/alibaba/fastjson2/reader/FieldReader;"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    const/16 v7, 0x8

    goto :goto_7

    :sswitch_b
    const-string v7, "Lcom/alibaba/fastjson2/writer/FieldWriter;"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    const/16 v7, 0xb

    goto :goto_7

    :cond_13
    :goto_6
    const/4 v7, -0x1

    :goto_7
    packed-switch v7, :pswitch_data_2

    goto/16 :goto_13

    :pswitch_5
    const-string v6, "com/alibaba/fastjson2/writer/FieldWriter"

    goto :goto_8

    :pswitch_6
    const-string v6, "com/alibaba/fastjson2/JSONWriter"

    goto :goto_8

    :cond_14
    :pswitch_7
    move-object v10, v3

    goto/16 :goto_13

    :pswitch_8
    const-string v6, "com/alibaba/fastjson2/JSONReader"

    goto :goto_8

    :pswitch_9
    const-string v6, "sun/misc/Unsafe"

    goto :goto_8

    :pswitch_a
    const-string v6, "java/util/function/Supplier"

    goto :goto_8

    :pswitch_b
    const-string v6, "java/lang/reflect/Type"

    goto :goto_8

    :pswitch_c
    const-string v6, "java/util/List"

    goto :goto_8

    :pswitch_d
    const-string v6, "java/lang/Class"

    :cond_15
    :goto_8
    :pswitch_e
    move-object v10, v6

    goto/16 :goto_13

    :cond_16
    if-ne v2, v11, :cond_1b

    .line 270
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v5, -0x7855dde

    if-eq v3, v5, :cond_18

    const v5, 0x73cf11cb

    if-eq v3, v5, :cond_17

    goto :goto_9

    :cond_17
    const-string v3, "()Ljava/lang/String;"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    move v8, v9

    goto :goto_a

    :cond_18
    const-string v3, "()Ljava/lang/Class;"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_a

    :cond_19
    :goto_9
    const/4 v8, -0x1

    :goto_a
    if-eqz v8, :cond_1a

    if-eq v8, v9, :cond_2e

    goto/16 :goto_13

    :cond_1a
    const-string v10, "java/lang/Class"

    goto/16 :goto_13

    :cond_1b
    if-ne v2, v7, :cond_21

    .line 281
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x1c0f8383

    if-eq v3, v4, :cond_1e

    const v4, 0x54cf32c4

    if-eq v3, v4, :cond_1d

    const v4, 0x61acf5d5

    if-eq v3, v4, :cond_1c

    goto :goto_b

    :cond_1c
    const-string v3, "(I)Ljava/lang/Integer;"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    move v8, v11

    goto :goto_c

    :cond_1d
    const-string v3, "(I)Ljava/lang/Object;"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    move v8, v9

    goto :goto_c

    :cond_1e
    const-string v3, "(J)Lcom/alibaba/fastjson2/reader/FieldReader;"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_c

    :cond_1f
    :goto_b
    const/4 v8, -0x1

    :goto_c
    if-eqz v8, :cond_15

    if-eq v8, v9, :cond_2c

    if-eq v8, v11, :cond_20

    goto/16 :goto_13

    :cond_20
    const-string v6, "java/lang/Integer"

    goto :goto_8

    :cond_21
    const/16 v6, 0x24

    if-ne v2, v6, :cond_25

    .line 295
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v6, -0x66370245

    if-eq v4, v6, :cond_23

    const v6, -0x22e87364

    if-eq v4, v6, :cond_22

    goto :goto_d

    :cond_22
    const-string v4, "(Lcom/alibaba/fastjson2/JSONReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    goto :goto_e

    :cond_23
    const-string v4, "(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    move v8, v9

    goto :goto_e

    :cond_24
    :goto_d
    const/4 v8, -0x1

    :goto_e
    if-eqz v8, :cond_14

    if-eq v8, v9, :cond_2c

    goto/16 :goto_13

    :cond_25
    const/16 v6, 0x36

    if-ne v2, v6, :cond_29

    .line 306
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v6, -0x4486e4bd

    if-eq v4, v6, :cond_27

    const v6, 0x17441934

    if-eq v4, v6, :cond_26

    goto :goto_f

    :cond_26
    const-string v4, "(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Class;J)Ljava/lang/Object;"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    move v8, v9

    goto :goto_10

    :cond_27
    const-string v4, "(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    goto :goto_10

    :cond_28
    :goto_f
    const/4 v8, -0x1

    :goto_10
    if-eqz v8, :cond_14

    if-eq v8, v9, :cond_2c

    goto :goto_13

    .line 317
    :cond_29
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    goto :goto_11

    :sswitch_c
    const-string v3, "(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_12

    :sswitch_d
    const-string v3, "(Lcom/alibaba/fastjson2/writer/FieldWriter;Ljava/lang/Object;)Ljava/lang/String;"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    move v8, v11

    goto :goto_12

    :sswitch_e
    const-string v3, "(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    move v8, v9

    goto :goto_12

    :sswitch_f
    const-string v3, "(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    move v8, v7

    goto :goto_12

    :cond_2a
    :goto_11
    const/4 v8, -0x1

    :goto_12
    if-eqz v8, :cond_30

    if-eq v8, v9, :cond_2f

    if-eq v8, v11, :cond_2d

    if-eq v8, v7, :cond_2b

    goto :goto_13

    :cond_2b
    const/16 v3, 0x4f

    if-ne v2, v3, :cond_31

    :cond_2c
    :pswitch_f
    move-object v10, v5

    goto :goto_13

    :cond_2d
    const/16 v3, 0x3e

    if-ne v2, v3, :cond_31

    :cond_2e
    :pswitch_10
    move-object v10, v4

    goto :goto_13

    :cond_2f
    const/16 v3, 0x3c

    if-ne v2, v3, :cond_31

    const-string v10, "com/alibaba/fastjson2/writer/ObjectWriter"

    goto :goto_13

    :cond_30
    const/16 v3, 0x35

    if-ne v2, v3, :cond_31

    const-string v10, "com/alibaba/fastjson2/writer/ObjectWriter"

    :cond_31
    :goto_13
    if-nez v10, :cond_32

    add-int/2addr v2, v9

    .line 344
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v9

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    :cond_32
    const/high16 v1, 0x800000

    .line 346
    invoke-virtual {v0, v10}, Lsg;->b(Ljava/lang/String;)I

    move-result v0

    or-int/2addr v0, v1

    return v0

    :cond_33
    const v0, 0x400002

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_4
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x5f90b664 -> :sswitch_b
        -0x1ce01304 -> :sswitch_a
        -0x1960e9e -> :sswitch_9
        0x7ca041 -> :sswitch_8
        0x7865b31 -> :sswitch_7
        0x11b14ee4 -> :sswitch_6
        0x1d901bb2 -> :sswitch_5
        0x39486bdb -> :sswitch_4
        0x523beb0a -> :sswitch_3
        0x5a7e2503 -> :sswitch_2
        0x5f790d9c -> :sswitch_1
        0x7a59cb2f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_f
        :pswitch_d
        :pswitch_10
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_e
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x3c3d4970 -> :sswitch_f
        -0xfb4ac65 -> :sswitch_e
        0x8e7ba93 -> :sswitch_d
        0x62ac16fb -> :sswitch_c
    .end sparse-switch
.end method

.method private a(II)V
    .locals 4

    .line 482
    iget-object v0, p0, Lsb;->d:[I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    .line 483
    new-array v0, v0, [I

    iput-object v0, p0, Lsb;->d:[I

    .line 485
    :cond_0
    iget-object v0, p0, Lsb;->d:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    add-int/lit8 v1, p1, 0x1

    mul-int/lit8 v2, v0, 0x2

    .line 487
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    .line 488
    iget-object v2, p0, Lsb;->d:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 489
    iput-object v1, p0, Lsb;->d:[I

    .line 492
    :cond_1
    iget-object v0, p0, Lsb;->d:[I

    aput p2, v0, p1

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 648
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/16 v3, 0x28

    if-ne v0, v3, :cond_0

    .line 650
    invoke-static {p1}, Lsh;->b(Ljava/lang/String;)I

    move-result p1

    shr-int/2addr p1, v2

    sub-int/2addr p1, v1

    invoke-direct {p0, p1}, Lsb;->c(I)V

    goto :goto_1

    :cond_0
    const/16 p1, 0x4a

    if-eq v0, p1, :cond_2

    const/16 p1, 0x44

    if-ne v0, p1, :cond_1

    goto :goto_0

    .line 654
    :cond_1
    invoke-direct {p0, v1}, Lsb;->c(I)V

    goto :goto_1

    .line 652
    :cond_2
    :goto_0
    invoke-direct {p0, v2}, Lsb;->c(I)V

    :goto_1
    return-void
.end method

.method private a(Lsg;Ljava/lang/String;)V
    .locals 7

    .line 529
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x14

    const/16 v2, 0x12

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "(Lcom/alibaba/fastjson2/JSONWriter;J)V"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "(Lcom/alibaba/fastjson2/JSONWriter;I)V"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "(I)Ljava/lang/Integer;"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "(Ljava/lang/Object;)Z"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "(Ljava/lang/Object;)V"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "(I)Ljava/lang/Object;"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Enum;)V"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "(Lcom/alibaba/fastjson2/JSONWriter;ZLjava/util/List;)V"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "(Lcom/alibaba/fastjson2/JSONWriter;)Z"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "(Lcom/alibaba/fastjson2/JSONWriter;)V"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "(Lcom/alibaba/fastjson2/writer/FieldWriter;Ljava/lang/Object;)Ljava/lang/String;"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "(J)Z"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "(J)V"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "(I)V"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "()Z"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "()V"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_1

    :sswitch_12
    const-string v0, "()J"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_13
    const-string v0, "()I"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_14
    const-string v0, "()Ljava/lang/Class;"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_15
    const-string v0, "(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto :goto_1

    :sswitch_16
    const-string v0, "(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto :goto_1

    :sswitch_17
    const-string v0, "(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto :goto_1

    :sswitch_18
    const-string v0, "(Ljava/lang/String;)V"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_19
    const-string v0, "(Ljava/lang/Enum;)V"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 583
    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_4

    move v0, v6

    goto :goto_2

    :pswitch_0
    const/16 v1, 0x61

    goto :goto_4

    :pswitch_1
    const/16 v1, 0x48

    goto :goto_4

    :pswitch_2
    const/16 v1, 0x3e

    goto :goto_4

    :pswitch_3
    const/16 v1, 0x3c

    goto :goto_4

    :pswitch_4
    const/16 v1, 0x35

    goto :goto_4

    :pswitch_5
    const/16 v1, 0x34

    goto :goto_4

    :pswitch_6
    const/16 v1, 0x2c

    goto :goto_4

    :pswitch_7
    const/16 v1, 0x25

    goto :goto_4

    :pswitch_8
    const/16 v1, 0x24

    goto :goto_4

    :pswitch_9
    move v1, v2

    goto :goto_4

    :pswitch_a
    move v1, v3

    goto :goto_4

    :pswitch_b
    move v1, v4

    goto :goto_4

    .line 586
    :goto_2
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x29

    if-eq v1, v2, :cond_3

    .line 587
    :goto_3
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 590
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x4c

    if-ne v0, v2, :cond_2

    const/16 v0, 0x3b

    .line 592
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/2addr v0, v6

    .line 593
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v0, 0x1

    goto :goto_4

    :cond_4
    move v1, v5

    .line 603
    :goto_4
    :pswitch_c
    invoke-static {p1, p2, v1}, Lsb;->a(Lsg;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_6

    .line 605
    invoke-direct {p0, p1}, Lsb;->b(I)V

    const p2, 0x400004

    if-eq p1, p2, :cond_5

    const p2, 0x400003

    if-ne p1, p2, :cond_6

    :cond_5
    const/high16 p1, 0x400000

    .line 607
    invoke-direct {p0, p1}, Lsb;->b(I)V

    :cond_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x79cdcef1 -> :sswitch_19
        -0x552c4e01 -> :sswitch_18
        -0x1c1066ca -> :sswitch_17
        -0xfb4ac65 -> :sswitch_16
        -0xa827247 -> :sswitch_15
        -0x7855dde -> :sswitch_14
        0x9b68 -> :sswitch_13
        0x9b69 -> :sswitch_12
        0x9b75 -> :sswitch_11
        0x9b79 -> :sswitch_10
        0x13462e -> :sswitch_f
        0x1349ef -> :sswitch_e
        0x1349f3 -> :sswitch_d
        0x8e7ba93 -> :sswitch_c
        0x9ab2784 -> :sswitch_b
        0xc3108a7 -> :sswitch_a
        0xc3108ab -> :sswitch_9
        0x1a2191fe -> :sswitch_8
        0x4715fa41 -> :sswitch_7
        0x54cf32c4 -> :sswitch_6
        0x5d527811 -> :sswitch_5
        0x5d527815 -> :sswitch_4
        0x61acf5d5 -> :sswitch_3
        0x62ac16fb -> :sswitch_2
        0x79f07f3c -> :sswitch_1
        0x79f082fd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lsg;I[II)Z
    .locals 11

    .line 1155
    aget v0, p2, p3

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    const v2, 0x3ffffff

    and-int/2addr v2, p1

    const v3, 0x400005

    if-ne v2, v3, :cond_2

    if-ne v0, v3, :cond_1

    return v1

    :cond_1
    move p1, v3

    :cond_2
    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 1169
    aput p1, p2, p3

    return v2

    :cond_3
    const/high16 v4, -0x4000000

    and-int v5, v0, v4

    const/high16 v6, 0x400000

    const/high16 v7, 0x3c00000

    const/high16 v8, 0x800000

    if-nez v5, :cond_6

    and-int v9, v0, v7

    if-ne v9, v8, :cond_4

    goto :goto_0

    :cond_4
    if-ne v0, v3, :cond_d

    and-int p0, p1, v4

    if-nez p0, :cond_5

    and-int p0, p1, v7

    if-ne p0, v8, :cond_d

    :cond_5
    move v6, p1

    goto :goto_2

    :cond_6
    :goto_0
    if-ne p1, v3, :cond_7

    return v1

    :cond_7
    const/high16 v3, -0x400000

    and-int v9, p1, v3

    and-int/2addr v3, v0

    const-string v10, "java/lang/Object"

    if-ne v9, v3, :cond_9

    and-int v3, v0, v7

    if-ne v3, v8, :cond_8

    and-int v3, p1, v4

    or-int/2addr v3, v8

    const v4, 0xfffff

    and-int/2addr p1, v4

    and-int/2addr v4, v0

    .line 1191
    invoke-virtual {p0, p1, v4}, Lsg;->a(II)I

    move-result p0

    or-int v6, v3, p0

    goto :goto_2

    :cond_8
    and-int/2addr p1, v4

    add-int/2addr p1, v4

    or-int/2addr p1, v8

    .line 1196
    invoke-virtual {p0, v10}, Lsg;->b(Ljava/lang/String;)I

    move-result p0

    :goto_1
    or-int v6, p1, p0

    goto :goto_2

    :cond_9
    and-int v3, p1, v4

    if-nez v3, :cond_a

    and-int v9, p1, v7

    if-ne v9, v8, :cond_d

    :cond_a
    if-eqz v3, :cond_b

    and-int/2addr p1, v7

    if-eq p1, v8, :cond_b

    add-int/2addr v3, v4

    :cond_b
    if-eqz v5, :cond_c

    and-int p1, v0, v7

    if-eq p1, v8, :cond_c

    add-int/2addr v5, v4

    .line 1212
    :cond_c
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result p1

    or-int/2addr p1, v8

    invoke-virtual {p0, v10}, Lsg;->b(Ljava/lang/String;)I

    move-result p0

    goto :goto_1

    :cond_d
    :goto_2
    if-eq v6, v0, :cond_e

    .line 1223
    aput v6, p2, p3

    return v2

    :cond_e
    return v1
.end method

.method private b(II)I
    .locals 8

    const/high16 v0, -0x4000000

    and-int/2addr v0, p1

    const/high16 v1, 0x3c00000

    and-int/2addr v1, p1

    const v2, 0x400003

    const/high16 v3, 0x400000

    const v4, 0x400004

    const/high16 v5, 0x100000

    const v6, 0xfffff

    const/high16 v7, 0x1000000

    if-ne v1, v7, :cond_2

    .line 1047
    iget-object p2, p0, Lsb;->c:[I

    and-int v1, p1, v6

    aget p2, p2, v1

    add-int/2addr p2, v0

    and-int/2addr p1, v5

    if-eqz p1, :cond_1

    if-eq p2, v4, :cond_0

    if-ne p2, v2, :cond_1

    :cond_0
    move p2, v3

    :cond_1
    return p2

    :cond_2
    const/high16 v7, 0x1400000

    if-ne v1, v7, :cond_5

    .line 1057
    iget-object v1, p0, Lsb;->b:[I

    and-int/2addr v6, p1

    sub-int/2addr p2, v6

    aget p2, v1, p2

    add-int/2addr p2, v0

    and-int/2addr p1, v5

    if-eqz p1, :cond_4

    if-eq p2, v4, :cond_3

    if-ne p2, v2, :cond_4

    :cond_3
    move p2, v3

    :cond_4
    return p2

    :cond_5
    return p1
.end method

.method private b(I)V
    .locals 4

    .line 502
    iget-object v0, p0, Lsb;->e:[I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    .line 503
    new-array v0, v0, [I

    iput-object v0, p0, Lsb;->e:[I

    .line 505
    :cond_0
    iget-object v0, p0, Lsb;->e:[I

    array-length v0, v0

    .line 506
    iget-short v1, p0, Lsb;->g:S

    if-lt v1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x2

    .line 507
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    .line 508
    iget-object v2, p0, Lsb;->e:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 509
    iput-object v1, p0, Lsb;->e:[I

    .line 512
    :cond_1
    iget-object v0, p0, Lsb;->e:[I

    iget-short v1, p0, Lsb;->g:S

    add-int/lit8 v2, v1, 0x1

    int-to-short v2, v2

    iput-short v2, p0, Lsb;->g:S

    aput p1, v0, v1

    .line 515
    iget-short p1, p0, Lsb;->f:S

    iget-short v0, p0, Lsb;->g:S

    add-int/2addr p1, v0

    int-to-short p1, p1

    .line 516
    iget-object v0, p0, Lsb;->a:Lsc;

    iget-short v0, v0, Lsc;->d:S

    if-le p1, v0, :cond_2

    .line 517
    iget-object v0, p0, Lsb;->a:Lsc;

    iput-short p1, v0, Lsc;->d:S

    :cond_2
    return-void
.end method

.method private c(I)V
    .locals 2

    .line 632
    iget-short v0, p0, Lsb;->g:S

    if-lt v0, p1, :cond_0

    sub-int/2addr v0, p1

    int-to-short p1, v0

    .line 633
    iput-short p1, p0, Lsb;->g:S

    goto :goto_0

    .line 637
    :cond_0
    iget-short v1, p0, Lsb;->f:S

    sub-int/2addr p1, v0

    sub-int/2addr v1, p1

    int-to-short p1, v1

    iput-short p1, p0, Lsb;->f:S

    const/4 p1, 0x0

    .line 638
    iput-short p1, p0, Lsb;->g:S

    :goto_0
    return-void
.end method

.method private d(I)V
    .locals 4

    .line 670
    iget-object v0, p0, Lsb;->i:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 671
    new-array v0, v0, [I

    iput-object v0, p0, Lsb;->i:[I

    .line 673
    :cond_0
    iget-object v0, p0, Lsb;->i:[I

    array-length v0, v0

    .line 674
    iget v1, p0, Lsb;->h:I

    if-lt v1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x2

    .line 676
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    .line 677
    iget-object v2, p0, Lsb;->i:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 678
    iput-object v1, p0, Lsb;->i:[I

    .line 681
    :cond_1
    iget-object v0, p0, Lsb;->i:[I

    iget v1, p0, Lsb;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsb;->h:I

    aput p1, v0, v1

    return-void
.end method


# virtual methods
.method a(IILsf;Lsg;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const/high16 v7, 0x1000000

    const/high16 v8, 0x3c00000

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v13, 0x2

    const v14, 0x400003

    const/high16 v15, 0x800000

    const v11, 0x400001

    const v12, 0x400004

    const/4 v6, 0x1

    const/high16 v5, 0x400000

    packed-switch v1, :pswitch_data_0

    .line 1024
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1015
    :pswitch_1
    iget-object v1, v3, Lsf;->e:Ljava/lang/String;

    .line 1016
    invoke-direct/range {p0 .. p0}, Lsb;->a()I

    .line 1017
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_0

    .line 1018
    invoke-direct {v0, v4, v1}, Lsb;->a(Lsg;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1020
    :cond_0
    invoke-virtual {v4, v1}, Lsg;->b(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v15

    invoke-direct {v0, v1}, Lsb;->b(I)V

    goto/16 :goto_3

    :pswitch_2
    const/high16 v1, 0xc00000

    .line 1012
    iget-object v3, v3, Lsf;->e:Ljava/lang/String;

    invoke-virtual {v4, v3, v2}, Lsg;->a(Ljava/lang/String;I)I

    move-result v2

    or-int/2addr v1, v2

    invoke-direct {v0, v1}, Lsb;->b(I)V

    goto/16 :goto_3

    .line 1002
    :pswitch_3
    iget-object v2, v3, Lsf;->e:Ljava/lang/String;

    invoke-direct {v0, v2}, Lsb;->a(Ljava/lang/String;)V

    const/16 v2, 0xb8

    if-eq v1, v2, :cond_1

    .line 1004
    invoke-direct/range {p0 .. p0}, Lsb;->a()I

    move-result v2

    const/16 v5, 0xb7

    if-ne v1, v5, :cond_1

    .line 1005
    iget-object v1, v3, Lsf;->d:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x3c

    if-ne v1, v5, :cond_1

    .line 1006
    invoke-direct {v0, v2}, Lsb;->d(I)V

    .line 1009
    :cond_1
    iget-object v1, v3, Lsf;->e:Ljava/lang/String;

    invoke-direct {v0, v4, v1}, Lsb;->a(Lsg;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 995
    :pswitch_4
    iget-object v1, v3, Lsf;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Lsb;->a(Ljava/lang/String;)V

    .line 996
    invoke-direct/range {p0 .. p0}, Lsb;->a()I

    goto/16 :goto_3

    .line 991
    :pswitch_5
    invoke-direct {v0, v6}, Lsb;->c(I)V

    .line 992
    iget-object v1, v3, Lsf;->e:Ljava/lang/String;

    invoke-direct {v0, v4, v1}, Lsb;->a(Lsg;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 988
    :pswitch_6
    iget-object v1, v3, Lsf;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Lsb;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 985
    :pswitch_7
    iget-object v1, v3, Lsf;->e:Ljava/lang/String;

    invoke-direct {v0, v4, v1}, Lsb;->a(Lsg;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 981
    :pswitch_8
    invoke-direct {v0, v10}, Lsb;->c(I)V

    .line 982
    invoke-direct {v0, v11}, Lsb;->b(I)V

    goto/16 :goto_3

    .line 975
    :pswitch_9
    invoke-direct {v0, v6}, Lsb;->c(I)V

    .line 976
    invoke-direct {v0, v11}, Lsb;->b(I)V

    goto/16 :goto_3

    .line 970
    :pswitch_a
    invoke-direct {v0, v2, v11}, Lsb;->a(II)V

    goto/16 :goto_3

    :pswitch_b
    const/4 v1, 0x3

    .line 965
    invoke-direct {v0, v1}, Lsb;->c(I)V

    .line 966
    invoke-direct {v0, v12}, Lsb;->b(I)V

    .line 967
    invoke-direct {v0, v5}, Lsb;->b(I)V

    goto/16 :goto_3

    .line 958
    :pswitch_c
    invoke-direct {v0, v10}, Lsb;->c(I)V

    .line 959
    invoke-direct {v0, v12}, Lsb;->b(I)V

    .line 960
    invoke-direct {v0, v5}, Lsb;->b(I)V

    goto/16 :goto_3

    .line 923
    :pswitch_d
    invoke-direct/range {p0 .. p0}, Lsb;->a()I

    move-result v1

    .line 924
    invoke-direct/range {p0 .. p0}, Lsb;->a()I

    move-result v2

    .line 925
    invoke-direct {v0, v1}, Lsb;->b(I)V

    .line 926
    invoke-direct {v0, v2}, Lsb;->b(I)V

    goto/16 :goto_3

    .line 915
    :pswitch_e
    invoke-direct/range {p0 .. p0}, Lsb;->a()I

    move-result v1

    .line 916
    invoke-direct/range {p0 .. p0}, Lsb;->a()I

    move-result v2

    .line 917
    invoke-direct {v0, v2}, Lsb;->b(I)V

    .line 918
    invoke-direct {v0, v1}, Lsb;->b(I)V

    .line 919
    invoke-direct {v0, v2}, Lsb;->b(I)V

    .line 920
    invoke-direct {v0, v1}, Lsb;->b(I)V

    goto/16 :goto_3

    .line 910
    :pswitch_f
    invoke-direct/range {p0 .. p0}, Lsb;->a()I

    move-result v1

    .line 911
    invoke-direct {v0, v1}, Lsb;->b(I)V

    .line 912
    invoke-direct {v0, v1}, Lsb;->b(I)V

    goto/16 :goto_3

    .line 907
    :pswitch_10
    invoke-direct {v0, v13}, Lsb;->c(I)V

    goto/16 :goto_3

    .line 894
    :pswitch_11
    invoke-direct {v0, v6}, Lsb;->c(I)V

    goto/16 :goto_3

    .line 861
    :pswitch_12
    invoke-direct {v0, v6}, Lsb;->c(I)V

    .line 862
    invoke-direct/range {p0 .. p0}, Lsb;->a()I

    move-result v1

    .line 863
    invoke-direct {v0, v2, v1}, Lsb;->a(II)V

    add-int/lit8 v1, v2, 0x1

    .line 864
    invoke-direct {v0, v1, v5}, Lsb;->a(II)V

    if-lez v2, :cond_9

    add-int/lit8 v1, v2, -0x1

    .line 866
    invoke-direct {v0, v1}, Lsb;->a(I)I

    move-result v2

    if-eq v2, v12, :cond_4

    if-ne v2, v14, :cond_2

    goto :goto_0

    :cond_2
    and-int v3, v2, v8

    if-eq v3, v7, :cond_3

    const/high16 v4, 0x1400000

    if-ne v3, v4, :cond_9

    :cond_3
    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    .line 873
    invoke-direct {v0, v1, v2}, Lsb;->a(II)V

    goto/16 :goto_3

    .line 868
    :cond_4
    :goto_0
    invoke-direct {v0, v1, v5}, Lsb;->a(II)V

    goto/16 :goto_3

    .line 845
    :pswitch_13
    invoke-direct/range {p0 .. p0}, Lsb;->a()I

    move-result v1

    .line 846
    invoke-direct {v0, v2, v1}, Lsb;->a(II)V

    if-lez v2, :cond_9

    add-int/lit8 v1, v2, -0x1

    .line 848
    invoke-direct {v0, v1}, Lsb;->a(I)I

    move-result v2

    if-eq v2, v12, :cond_7

    if-ne v2, v14, :cond_5

    goto :goto_1

    :cond_5
    and-int v3, v2, v8

    if-eq v3, v7, :cond_6

    const/high16 v4, 0x1400000

    if-ne v3, v4, :cond_9

    :cond_6
    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    .line 855
    invoke-direct {v0, v1, v2}, Lsb;->a(II)V

    goto/16 :goto_3

    .line 850
    :cond_7
    :goto_1
    invoke-direct {v0, v1, v5}, Lsb;->a(II)V

    goto/16 :goto_3

    .line 838
    :pswitch_14
    invoke-direct {v0, v6}, Lsb;->c(I)V

    .line 839
    invoke-direct/range {p0 .. p0}, Lsb;->a()I

    move-result v1

    const v2, 0x400005

    if-ne v1, v2, :cond_8

    goto :goto_2

    :cond_8
    const/high16 v2, -0x4000000

    add-int/2addr v1, v2

    .line 840
    :goto_2
    invoke-direct {v0, v1}, Lsb;->b(I)V

    goto/16 :goto_3

    .line 833
    :pswitch_15
    invoke-direct {v0, v13}, Lsb;->c(I)V

    .line 834
    invoke-direct {v0, v12}, Lsb;->b(I)V

    .line 835
    invoke-direct {v0, v5}, Lsb;->b(I)V

    goto/16 :goto_3

    .line 947
    :pswitch_16
    invoke-direct {v0, v13}, Lsb;->c(I)V

    .line 948
    invoke-direct {v0, v11}, Lsb;->b(I)V

    goto/16 :goto_3

    .line 829
    :pswitch_17
    invoke-direct {v0, v2}, Lsb;->a(I)I

    move-result v1

    invoke-direct {v0, v1}, Lsb;->b(I)V

    goto/16 :goto_3

    .line 794
    :pswitch_18
    iget v1, v3, Lsf;->b:I

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    .line 825
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 822
    :pswitch_19
    iget-object v1, v3, Lsf;->e:Ljava/lang/String;

    invoke-direct {v0, v4, v1}, Lsb;->a(Lsg;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_1a
    const-string v1, "java/lang/invoke/MethodType"

    .line 816
    invoke-virtual {v4, v1}, Lsg;->b(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v15

    invoke-direct {v0, v1}, Lsb;->b(I)V

    goto :goto_3

    :pswitch_1b
    const-string v1, "java/lang/invoke/MethodHandle"

    .line 819
    invoke-virtual {v4, v1}, Lsg;->b(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v15

    invoke-direct {v0, v1}, Lsb;->b(I)V

    goto :goto_3

    :pswitch_1c
    const-string v1, "java/lang/String"

    .line 813
    invoke-virtual {v4, v1}, Lsg;->b(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v15

    invoke-direct {v0, v1}, Lsb;->b(I)V

    goto :goto_3

    :pswitch_1d
    const-string v1, "java/lang/Class"

    .line 810
    invoke-virtual {v4, v1}, Lsg;->b(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v15

    invoke-direct {v0, v1}, Lsb;->b(I)V

    goto :goto_3

    .line 806
    :pswitch_1e
    invoke-direct {v0, v14}, Lsb;->b(I)V

    .line 807
    invoke-direct {v0, v5}, Lsb;->b(I)V

    goto :goto_3

    .line 799
    :pswitch_1f
    invoke-direct {v0, v12}, Lsb;->b(I)V

    .line 800
    invoke-direct {v0, v5}, Lsb;->b(I)V

    goto :goto_3

    :pswitch_20
    const v1, 0x400002

    .line 803
    invoke-direct {v0, v1}, Lsb;->b(I)V

    goto :goto_3

    .line 796
    :pswitch_21
    invoke-direct {v0, v11}, Lsb;->b(I)V

    goto :goto_3

    .line 790
    :pswitch_22
    invoke-direct {v0, v14}, Lsb;->b(I)V

    .line 791
    invoke-direct {v0, v5}, Lsb;->b(I)V

    goto :goto_3

    :pswitch_23
    const v1, 0x400002

    .line 785
    invoke-direct {v0, v1}, Lsb;->b(I)V

    goto :goto_3

    .line 778
    :pswitch_24
    invoke-direct {v0, v12}, Lsb;->b(I)V

    .line 779
    invoke-direct {v0, v5}, Lsb;->b(I)V

    goto :goto_3

    .line 773
    :pswitch_25
    invoke-direct {v0, v11}, Lsb;->b(I)V

    goto :goto_3

    :pswitch_26
    const v1, 0x400005

    .line 761
    invoke-direct {v0, v1}, Lsb;->b(I)V

    :cond_9
    :goto_3
    :pswitch_27
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_24
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_22
        :pswitch_22
        :pswitch_25
        :pswitch_25
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_13
        :pswitch_12
        :pswitch_13
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_16
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_16
        :pswitch_b
        :pswitch_16
        :pswitch_b
        :pswitch_16
        :pswitch_b
        :pswitch_16
        :pswitch_c
        :pswitch_16
        :pswitch_c
        :pswitch_16
        :pswitch_c
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_15
        :pswitch_0
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_8
        :pswitch_16
        :pswitch_16
        :pswitch_8
        :pswitch_8
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_27
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_27
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_11
        :pswitch_1
        :pswitch_9
        :pswitch_11
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_11
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xf
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch
.end method

.method final a(Lse;)V
    .locals 13

    .line 1244
    iget-object v0, p0, Lsb;->c:[I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    .line 1248
    :goto_0
    array-length v5, v0

    const v6, 0x400003

    const/4 v7, 0x2

    const v8, 0x400004

    const/4 v9, 0x1

    if-ge v2, v5, :cond_3

    .line 1249
    aget v5, v0, v2

    if-eq v5, v8, :cond_1

    if-ne v5, v6, :cond_0

    goto :goto_1

    :cond_0
    move v7, v9

    :cond_1
    :goto_1
    add-int/2addr v2, v7

    const/high16 v6, 0x400000

    if-ne v5, v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    move v4, v1

    goto :goto_0

    .line 1259
    :cond_3
    iget-object v2, p0, Lsb;->b:[I

    move v4, v1

    move v5, v4

    .line 1262
    :goto_2
    array-length v10, v2

    if-ge v4, v10, :cond_6

    .line 1263
    aget v10, v2, v4

    if-eq v10, v8, :cond_5

    if-ne v10, v6, :cond_4

    goto :goto_3

    :cond_4
    move v10, v9

    goto :goto_4

    :cond_5
    :goto_3
    move v10, v7

    :goto_4
    add-int/2addr v4, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1268
    :cond_6
    iget-object v4, p0, Lsb;->a:Lsc;

    iget v4, v4, Lsc;->c:I

    invoke-virtual {p1, v4, v3, v5}, Lse;->a(III)I

    move-result v4

    move v10, v4

    move v4, v1

    :goto_5
    add-int/lit8 v11, v3, -0x1

    if-lez v3, :cond_9

    .line 1271
    aget v3, v0, v4

    if-eq v3, v8, :cond_8

    if-ne v3, v6, :cond_7

    goto :goto_6

    :cond_7
    move v12, v9

    goto :goto_7

    :cond_8
    :goto_6
    move v12, v7

    :goto_7
    add-int/2addr v4, v12

    add-int/lit8 v12, v10, 0x1

    .line 1273
    invoke-virtual {p1, v10, v3}, Lse;->e(II)V

    move v3, v11

    move v10, v12

    goto :goto_5

    :cond_9
    :goto_8
    add-int/lit8 v0, v5, -0x1

    if-lez v5, :cond_c

    .line 1277
    aget v3, v2, v1

    if-eq v3, v8, :cond_b

    if-ne v3, v6, :cond_a

    goto :goto_9

    :cond_a
    move v4, v9

    goto :goto_a

    :cond_b
    :goto_9
    move v4, v7

    :goto_a
    add-int/2addr v1, v4

    add-int/lit8 v4, v10, 0x1

    .line 1279
    invoke-virtual {p1, v10, v3}, Lse;->e(II)V

    move v5, v0

    move v10, v4

    goto :goto_8

    .line 1281
    :cond_c
    invoke-virtual {p1}, Lse;->a()V

    return-void
.end method

.method final a(Lsg;ILjava/lang/String;I)V
    .locals 7

    .line 424
    new-array v0, p4, [I

    iput-object v0, p0, Lsb;->c:[I

    const/4 v0, 0x0

    .line 425
    new-array v1, v0, [I

    iput-object v1, p0, Lsb;->b:[I

    and-int/lit8 v1, p2, 0x8

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const/high16 v1, 0x40000

    and-int/2addr p2, v1

    if-nez p2, :cond_0

    .line 429
    iget-object p2, p0, Lsb;->c:[I

    const/high16 v1, 0x800000

    iget-object v3, p1, Lsg;->b:Ljava/lang/String;

    .line 430
    invoke-virtual {p1, v3}, Lsg;->b(Ljava/lang/String;)I

    move-result v3

    or-int/2addr v1, v3

    aput v1, p2, v0

    goto :goto_0

    .line 432
    :cond_0
    iget-object p2, p0, Lsb;->c:[I

    const v1, 0x400006

    aput v1, p2, v0

    goto :goto_0

    :cond_1
    move v2, v0

    .line 435
    :goto_0
    invoke-static {p3}, Lsh;->a(Ljava/lang/String;)[Lsh;

    move-result-object p2

    array-length p3, p2

    move v1, v0

    :goto_1
    const/high16 v3, 0x400000

    if-ge v1, p3, :cond_4

    aget-object v4, p2, v1

    .line 437
    invoke-virtual {v4}, Lsh;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v0}, Lsb;->a(Lsg;Ljava/lang/String;I)I

    move-result v4

    .line 438
    iget-object v5, p0, Lsb;->c:[I

    add-int/lit8 v6, v2, 0x1

    aput v4, v5, v2

    const v2, 0x400004

    if-eq v4, v2, :cond_3

    const v2, 0x400003

    if-ne v4, v2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v6

    goto :goto_3

    .line 440
    :cond_3
    :goto_2
    iget-object v2, p0, Lsb;->c:[I

    add-int/lit8 v4, v6, 0x1

    aput v3, v2, v6

    move v2, v4

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_4
    if-ge v2, p4, :cond_5

    .line 444
    iget-object p1, p0, Lsb;->c:[I

    add-int/lit8 p2, v2, 0x1

    aput v3, p1, v2

    move v2, p2

    goto :goto_4

    :cond_5
    return-void
.end method

.method final a(Lsg;Lsb;)Z
    .locals 8

    .line 1072
    iget-object v0, p0, Lsb;->c:[I

    array-length v0, v0

    .line 1073
    iget-object v1, p0, Lsb;->b:[I

    array-length v1, v1

    .line 1075
    iget-object v2, p2, Lsb;->c:[I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    .line 1076
    new-array v5, v0, [I

    iput-object v5, p2, Lsb;->c:[I

    :cond_1
    move v5, v2

    move v2, v3

    :goto_1
    if-ge v2, v0, :cond_5

    .line 1080
    iget-object v6, p0, Lsb;->d:[I

    if-eqz v6, :cond_3

    array-length v7, v6

    if-ge v2, v7, :cond_3

    .line 1081
    aget v6, v6, v2

    if-nez v6, :cond_2

    .line 1085
    iget-object v6, p0, Lsb;->c:[I

    aget v6, v6, v2

    goto :goto_2

    .line 1087
    :cond_2
    invoke-direct {p0, v6, v1}, Lsb;->b(II)I

    move-result v6

    goto :goto_2

    .line 1092
    :cond_3
    iget-object v6, p0, Lsb;->c:[I

    aget v6, v6, v2

    .line 1097
    :goto_2
    iget-object v7, p0, Lsb;->i:[I

    if-eqz v7, :cond_4

    .line 1098
    invoke-direct {p0, p1, v6}, Lsb;->a(Lsg;I)I

    move-result v6

    .line 1100
    :cond_4
    iget-object v7, p2, Lsb;->c:[I

    invoke-static {p1, v6, v7, v2}, Lsb;->a(Lsg;I[II)Z

    move-result v6

    or-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1106
    :cond_5
    iget-object v0, p0, Lsb;->b:[I

    array-length v0, v0

    iget-short v2, p0, Lsb;->f:S

    add-int/2addr v0, v2

    .line 1107
    iget-object v2, p2, Lsb;->b:[I

    if-nez v2, :cond_6

    .line 1108
    iget-short v2, p0, Lsb;->g:S

    add-int/2addr v2, v0

    new-array v2, v2, [I

    iput-object v2, p2, Lsb;->b:[I

    goto :goto_3

    :cond_6
    move v4, v5

    :goto_3
    move v2, v3

    :goto_4
    if-ge v2, v0, :cond_8

    .line 1115
    iget-object v5, p0, Lsb;->b:[I

    aget v5, v5, v2

    .line 1116
    iget-object v6, p0, Lsb;->i:[I

    if-eqz v6, :cond_7

    .line 1117
    invoke-direct {p0, p1, v5}, Lsb;->a(Lsg;I)I

    move-result v5

    .line 1119
    :cond_7
    iget-object v6, p2, Lsb;->b:[I

    invoke-static {p1, v5, v6, v2}, Lsb;->a(Lsg;I[II)Z

    move-result v5

    or-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1123
    :cond_8
    :goto_5
    iget-short v2, p0, Lsb;->g:S

    if-ge v3, v2, :cond_a

    .line 1124
    iget-object v2, p0, Lsb;->e:[I

    aget v2, v2, v3

    .line 1125
    invoke-direct {p0, v2, v1}, Lsb;->b(II)I

    move-result v2

    .line 1126
    iget-object v5, p0, Lsb;->i:[I

    if-eqz v5, :cond_9

    .line 1127
    invoke-direct {p0, p1, v2}, Lsb;->a(Lsg;I)I

    move-result v2

    .line 1129
    :cond_9
    iget-object v5, p2, Lsb;->b:[I

    add-int v6, v0, v3

    .line 1130
    invoke-static {p1, v2, v5, v6}, Lsb;->a(Lsg;I[II)Z

    move-result v2

    or-int/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    return v4
.end method
