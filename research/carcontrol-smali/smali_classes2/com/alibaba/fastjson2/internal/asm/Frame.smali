.class Lcom/alibaba/fastjson2/internal/asm/Frame;
.super Ljava/lang/Object;
.source "Frame.java"


# static fields
.field static final APPEND_FRAME:I = 0xfc

.field private static final BOOLEAN:I = 0x400009

.field private static final BYTE:I = 0x40000a

.field private static final CHAR:I = 0x40000b

.field static final CHOP_FRAME:I = 0xf8

.field static final CONSTANT_KIND:I = 0x400000

.field static final DIM_MASK:I = -0x4000000

.field static final DIM_SHIFT:I = 0x1a

.field static final DIM_SIZE:I = 0x6

.field private static final DOUBLE:I = 0x400003

.field static final ELEMENT_OF:I = -0x4000000

.field static final FLAGS_SHIFT:I = 0x14

.field static final FLAGS_SIZE:I = 0x2

.field private static final FLOAT:I = 0x400002

.field static final FULL_FRAME:I = 0xff

.field private static final INTEGER:I = 0x400001

.field static final ITEM_ASM_BOOLEAN:I = 0x9

.field static final ITEM_ASM_BYTE:I = 0xa

.field static final ITEM_ASM_CHAR:I = 0xb

.field static final ITEM_ASM_SHORT:I = 0xc

.field static final ITEM_DOUBLE:I = 0x3

.field static final ITEM_FLOAT:I = 0x2

.field static final ITEM_INTEGER:I = 0x1

.field static final ITEM_LONG:I = 0x4

.field static final ITEM_NULL:I = 0x5

.field static final ITEM_OBJECT:I = 0x7

.field static final ITEM_TOP:I = 0x0

.field static final ITEM_UNINITIALIZED:I = 0x8

.field static final ITEM_UNINITIALIZED_THIS:I = 0x6

.field static final KIND_MASK:I = 0x3c00000

.field static final KIND_SHIFT:I = 0x16

.field static final KIND_SIZE:I = 0x4

.field static final LOCAL_KIND:I = 0x1000000

.field private static final LONG:I = 0x400004

.field private static final NULL:I = 0x400005

.field static final REFERENCE_KIND:I = 0x800000

.field static final SAME_FRAME:I = 0x0

.field static final SAME_FRAME_EXTENDED:I = 0xfb

.field static final SAME_LOCALS_1_STACK_ITEM_FRAME:I = 0x40

.field static final SAME_LOCALS_1_STACK_ITEM_FRAME_EXTENDED:I = 0xf7

.field private static final SHORT:I = 0x40000c

.field static final STACK_KIND:I = 0x1400000

.field private static final TOP:I = 0x400000

.field private static final TOP_IF_LONG_OR_DOUBLE_FLAG:I = 0x100000

.field static final UNINITIALIZED_KIND:I = 0xc00000

.field private static final UNINITIALIZED_THIS:I = 0x400006

.field static final VALUE_MASK:I = 0xfffff

.field static final VALUE_SIZE:I = 0x14


# instance fields
.field private initializationCount:I

.field private initializations:[I

.field private inputLocals:[I

.field inputStack:[I

.field private outputLocals:[I

.field private outputStack:[I

.field private outputStackStart:S

.field private outputStackTop:S

.field final owner:Lcom/alibaba/fastjson2/internal/asm/Label;


# direct methods
.method constructor <init>(Lcom/alibaba/fastjson2/internal/asm/Label;)V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->owner:Lcom/alibaba/fastjson2/internal/asm/Label;

    return-void
.end method

.method private addInitializedType(I)V
    .locals 4

    .line 670
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->initializations:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 671
    iput-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->initializations:[I

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->initializations:[I

    array-length v0, v0

    .line 674
    iget v1, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->initializationCount:I

    if-lt v1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x2

    .line 676
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    .line 677
    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->initializations:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 678
    iput-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->initializations:[I

    .line 681
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->initializations:[I

    iget v1, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->initializationCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->initializationCount:I

    aput p1, v0, v1

    return-void
.end method

.method private static getAbstractTypeFromDescriptor(Lcom/alibaba/fastjson2/internal/asm/SymbolTable;Ljava/lang/String;I)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 212
    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x46

    if-eq v3, v5, :cond_2e

    const/high16 v6, 0x800000

    const/16 v7, 0x4c

    const-string v8, "com/alibaba/fastjson2/reader/FieldReader"

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v3, v7, :cond_f

    const/16 v13, 0x53

    if-eq v3, v13, :cond_0

    const/16 v14, 0x56

    if-eq v3, v14, :cond_e

    const/16 v9, 0x49

    if-eq v3, v9, :cond_0

    const v14, 0x400004

    const/16 v15, 0x4a

    if-eq v3, v15, :cond_d

    const/16 v11, 0x5a

    if-eq v3, v11, :cond_0

    const v16, 0x400003

    const/16 v4, 0x5b

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    .line 401
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    return v16

    :cond_0
    :pswitch_1
    const v0, 0x400001

    goto/16 :goto_4

    :cond_1
    add-int/lit8 v3, v2, 0x1

    .line 349
    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 353
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v5, :cond_c

    if-eq v4, v7, :cond_7

    if-eq v4, v13, :cond_6

    if-eq v4, v11, :cond_5

    if-eq v4, v9, :cond_4

    if-eq v4, v15, :cond_3

    packed-switch v4, :pswitch_data_1

    .line 397
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_2
    move/from16 v4, v16

    goto :goto_3

    :pswitch_3
    const v4, 0x40000b

    goto :goto_3

    :pswitch_4
    const v4, 0x40000a

    goto :goto_3

    :cond_3
    move v4, v14

    goto :goto_3

    :cond_4
    const v4, 0x400001

    goto :goto_3

    :cond_5
    const v4, 0x400009

    goto :goto_3

    :cond_6
    const v4, 0x40000c

    goto :goto_3

    :cond_7
    if-nez v2, :cond_9

    .line 380
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    const-string v4, "[Lcom/alibaba/fastjson2/writer/FieldWriter;"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "[Lcom/alibaba/fastjson2/reader/FieldReader;"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_1

    :cond_8
    const-string v8, "Lcom/alibaba/fastjson2/reader/FieldReader"

    goto :goto_2

    :cond_9
    :goto_1
    const/4 v8, 0x0

    :cond_a
    :goto_2
    if-nez v8, :cond_b

    add-int/lit8 v4, v3, 0x1

    .line 392
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v10

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 394
    :cond_b
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v0

    or-int v4, v0, v6

    goto :goto_3

    :cond_c
    const v4, 0x400002

    :goto_3
    sub-int/2addr v3, v2

    shl-int/lit8 v0, v3, 0x1a

    or-int/2addr v0, v4

    return v0

    :cond_d
    return v14

    :cond_e
    return v9

    :goto_4
    return v0

    :cond_f
    const-string v3, "java/lang/Class"

    const-string v4, "com/alibaba/fastjson2/reader/ObjectReader"

    const-string v5, "java/lang/String"

    const/4 v7, 0x3

    const/4 v11, -0x1

    const/4 v12, 0x2

    const-string v13, "java/lang/Object"

    if-nez v2, :cond_1c

    .line 229
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    :goto_5
    move v9, v11

    goto/16 :goto_6

    :sswitch_0
    const-string v7, "Ljava/lang/reflect/Type;"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    goto :goto_5

    :cond_10
    const/16 v9, 0xb

    goto/16 :goto_6

    :sswitch_1
    const-string v7, "Ljava/lang/Object;"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    goto :goto_5

    :cond_11
    const/16 v9, 0xa

    goto/16 :goto_6

    :sswitch_2
    const-string v7, "Ljava/lang/Class;"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    goto :goto_5

    :cond_12
    const/16 v9, 0x9

    goto/16 :goto_6

    :sswitch_3
    const-string v7, "Ljava/lang/String;"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    goto :goto_5

    :cond_13
    const/16 v9, 0x8

    goto/16 :goto_6

    :sswitch_4
    const-string v7, "Lcom/alibaba/fastjson2/reader/ObjectReader;"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    goto :goto_5

    :cond_14
    const/4 v9, 0x7

    goto :goto_6

    :sswitch_5
    const-string v7, "Lcom/alibaba/fastjson2/JSONWriter;"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15

    goto :goto_5

    :cond_15
    const/4 v9, 0x6

    goto :goto_6

    :sswitch_6
    const-string v7, "Ljava/util/function/Supplier;"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    goto :goto_5

    :cond_16
    const/4 v9, 0x5

    goto :goto_6

    :sswitch_7
    const-string v7, "Ljava/util/List;"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17

    goto :goto_5

    :cond_17
    const/4 v9, 0x4

    goto :goto_6

    :sswitch_8
    const-string v9, "Lsun/misc/Unsafe;"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_18

    goto :goto_5

    :cond_18
    move v9, v7

    goto :goto_6

    :sswitch_9
    const-string v7, "Lcom/alibaba/fastjson2/JSONReader;"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_19

    goto :goto_5

    :cond_19
    move v9, v12

    goto :goto_6

    :sswitch_a
    const-string v7, "Lcom/alibaba/fastjson2/reader/FieldReader;"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1a

    goto/16 :goto_5

    :cond_1a
    move v9, v10

    goto :goto_6

    :sswitch_b
    const-string v7, "Lcom/alibaba/fastjson2/writer/FieldWriter;"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b

    goto/16 :goto_5

    :cond_1b
    :goto_6
    packed-switch v9, :pswitch_data_2

    :goto_7
    const/4 v8, 0x0

    goto :goto_8

    :pswitch_5
    const-string v8, "java/lang/reflect/Type"

    goto :goto_8

    :pswitch_6
    move-object v8, v13

    goto :goto_8

    :pswitch_7
    move-object v8, v3

    goto :goto_8

    :pswitch_8
    move-object v8, v5

    goto :goto_8

    :pswitch_9
    move-object v8, v4

    goto :goto_8

    :pswitch_a
    const-string v8, "com/alibaba/fastjson2/JSONWriter"

    goto :goto_8

    :pswitch_b
    const-string v8, "java/util/function/Supplier"

    goto :goto_8

    :pswitch_c
    const-string v8, "java/util/List"

    goto :goto_8

    :pswitch_d
    const-string/jumbo v8, "sun/misc/Unsafe"

    goto :goto_8

    :pswitch_e
    const-string v8, "com/alibaba/fastjson2/JSONReader"

    goto :goto_8

    :pswitch_f
    const-string v8, "com/alibaba/fastjson2/writer/FieldWriter"

    :goto_8
    :pswitch_10
    move-object v11, v8

    goto/16 :goto_e

    :cond_1c
    if-ne v2, v12, :cond_1e

    .line 270
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    const-string v4, "()Ljava/lang/Class;"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    const-string v3, "()Ljava/lang/String;"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    goto/16 :goto_d

    :cond_1d
    move-object v11, v3

    goto/16 :goto_e

    :cond_1e
    if-ne v2, v7, :cond_22

    .line 281
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    :goto_9
    move v9, v11

    goto :goto_a

    :sswitch_c
    const-string v3, "(I)Ljava/lang/Integer;"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_9

    :cond_1f
    move v9, v12

    goto :goto_a

    :sswitch_d
    const-string v3, "(I)Ljava/lang/Object;"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    goto :goto_9

    :cond_20
    move v9, v10

    goto :goto_a

    :sswitch_e
    const-string v3, "(J)Lcom/alibaba/fastjson2/reader/FieldReader;"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    goto :goto_9

    :cond_21
    :goto_a
    packed-switch v9, :pswitch_data_3

    goto :goto_7

    :pswitch_11
    const-string v8, "java/lang/Integer"

    goto :goto_8

    :cond_22
    const/16 v3, 0x24

    if-ne v2, v3, :cond_24

    .line 295
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    const-string v3, "(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    const-string v3, "(Lcom/alibaba/fastjson2/JSONReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    goto/16 :goto_d

    :cond_23
    move-object v11, v4

    goto/16 :goto_e

    :cond_24
    const/16 v3, 0x36

    if-ne v2, v3, :cond_25

    .line 306
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    const-string v3, "(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    const-string v3, "(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Class;J)Ljava/lang/Object;"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    goto/16 :goto_d

    .line 317
    :cond_25
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_2

    :goto_b
    move v9, v11

    goto :goto_c

    :sswitch_f
    const-string v3, "(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    goto :goto_b

    :cond_26
    move v9, v7

    goto :goto_c

    :sswitch_10
    const-string v3, "(Lcom/alibaba/fastjson2/writer/FieldWriter;Ljava/lang/Object;)Ljava/lang/String;"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    goto :goto_b

    :cond_27
    move v9, v12

    goto :goto_c

    :sswitch_11
    const-string v3, "(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    goto :goto_b

    :cond_28
    move v9, v10

    goto :goto_c

    :sswitch_12
    const-string v3, "(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    goto :goto_b

    :cond_29
    :goto_c
    packed-switch v9, :pswitch_data_4

    goto :goto_d

    :pswitch_12
    const/16 v3, 0x35

    if-ne v2, v3, :cond_2c

    const-string v11, "com/alibaba/fastjson2/writer/ObjectWriter"

    goto :goto_e

    :pswitch_13
    const/16 v3, 0x3e

    if-ne v2, v3, :cond_2c

    :cond_2a
    move-object v11, v5

    goto :goto_e

    :pswitch_14
    const/16 v3, 0x3c

    if-ne v2, v3, :cond_2c

    const-string v11, "com/alibaba/fastjson2/writer/ObjectWriter"

    goto :goto_e

    :pswitch_15
    const/16 v3, 0x4f

    if-ne v2, v3, :cond_2c

    :cond_2b
    move-object v11, v13

    goto :goto_e

    :cond_2c
    :goto_d
    const/4 v11, 0x0

    :goto_e
    if-nez v11, :cond_2d

    add-int/2addr v2, v10

    .line 344
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v10

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 346
    :cond_2d
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v0

    or-int/2addr v0, v6

    return v0

    :cond_2e
    const v0, 0x400002

    return v0

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_4
        :pswitch_3
        :pswitch_2
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
        :pswitch_10
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x1c0f8383 -> :sswitch_e
        0x54cf32c4 -> :sswitch_d
        0x61acf5d5 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_10
        :pswitch_6
        :pswitch_11
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x3c3d4970 -> :sswitch_12
        -0xfb4ac65 -> :sswitch_11
        0x8e7ba93 -> :sswitch_10
        0x62ac16fb -> :sswitch_f
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method private getConcreteOutputType(II)I
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
    iget-object p2, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->inputLocals:[I

    and-int v1, p1, v6

    aget p2, p2, v1

    add-int/2addr v0, p2

    and-int/2addr p1, v5

    if-eqz p1, :cond_0

    if-eq v0, v4, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    :cond_1
    :goto_0
    return v3

    :cond_2
    const/high16 v7, 0x1400000

    if-ne v1, v7, :cond_5

    .line 1057
    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->inputStack:[I

    and-int/2addr v6, p1

    sub-int/2addr p2, v6

    aget p2, v1, p2

    add-int/2addr v0, p2

    and-int/2addr p1, v5

    if-eqz p1, :cond_3

    if-eq v0, v4, :cond_4

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    move v3, v0

    :cond_4
    :goto_1
    return v3

    :cond_5
    return p1
.end method

.method private getInitializedType(Lcom/alibaba/fastjson2/internal/asm/SymbolTable;I)I
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
    iget v2, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->initializationCount:I

    if-ge v1, v2, :cond_5

    .line 697
    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->initializations:[I

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
    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->inputLocals:[I

    aget v2, v2, v6

    :goto_1
    add-int/2addr v2, v3

    goto :goto_2

    :cond_1
    const/high16 v7, 0x1400000

    if-ne v4, v7, :cond_2

    .line 704
    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->inputStack:[I

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
    iget-object p2, p1, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->className:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result p1

    :goto_3
    or-int/2addr p1, v1

    return p1

    .line 710
    :cond_3
    iget-object v0, p1, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->typeTable:[Lcom/alibaba/fastjson2/internal/asm/Symbol;

    and-int/2addr p2, v5

    aget-object p2, v0, p2

    iget-object p2, p2, Lcom/alibaba/fastjson2/internal/asm/Symbol;->value:Ljava/lang/String;

    .line 711
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result p1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return p2
.end method

.method private getLocal(I)I
    .locals 3

    .line 459
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->outputLocals:[I

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

.method private static merge(Lcom/alibaba/fastjson2/internal/asm/SymbolTable;I[II)Z
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

    if-nez v5, :cond_7

    and-int v9, v0, v7

    if-ne v9, v8, :cond_4

    goto :goto_1

    :cond_4
    if-ne v0, v3, :cond_5

    and-int p0, p1, v4

    if-nez p0, :cond_6

    and-int p0, p1, v7

    if-ne p0, v8, :cond_5

    goto :goto_0

    :cond_5
    move p1, v6

    :cond_6
    :goto_0
    move v6, p1

    goto :goto_3

    :cond_7
    :goto_1
    if-ne p1, v3, :cond_8

    return v1

    :cond_8
    const/high16 v3, -0x400000

    and-int v9, p1, v3

    and-int/2addr v3, v0

    const-string v10, "java/lang/Object"

    if-ne v9, v3, :cond_a

    and-int v3, v0, v7

    if-ne v3, v8, :cond_9

    and-int v3, p1, v4

    or-int/2addr v3, v8

    const v4, 0xfffff

    and-int/2addr p1, v4

    and-int/2addr v4, v0

    .line 1191
    invoke-virtual {p0, p1, v4}, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->addMergedType(II)I

    move-result p0

    or-int v6, v3, p0

    goto :goto_3

    :cond_9
    and-int/2addr p1, v4

    add-int/2addr p1, v4

    or-int/2addr p1, v8

    .line 1196
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result p0

    :goto_2
    or-int v6, p1, p0

    goto :goto_3

    :cond_a
    and-int v3, p1, v4

    if-nez v3, :cond_b

    and-int v9, p1, v7

    if-ne v9, v8, :cond_e

    :cond_b
    if-eqz v3, :cond_c

    and-int/2addr p1, v7

    if-eq p1, v8, :cond_c

    add-int/2addr v3, v4

    :cond_c
    if-eqz v5, :cond_d

    and-int p1, v0, v7

    if-eq p1, v8, :cond_d

    add-int/2addr v5, v4

    .line 1212
    :cond_d
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result p1

    or-int/2addr p1, v8

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result p0

    goto :goto_2

    :cond_e
    :goto_3
    if-eq v6, v0, :cond_f

    .line 1223
    aput v6, p2, p3

    return v2

    :cond_f
    return v1
.end method

.method private pop()I
    .locals 2

    .line 618
    iget-short v0, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->outputStackTop:S

    if-lez v0, :cond_0

    .line 619
    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->outputStack:[I

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->outputStackTop:S

    aget v0, v1, v0

    return v0

    :cond_0
    const/high16 v0, 0x1400000

    .line 622
    iget-short v1, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->outputStackStart:S

    add-int/lit8 v1, v1, -0x1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->outputStackStart:S

    neg-int v1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private pop(I)V
    .locals 2

    .line 632
    iget-short v0, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->outputStackTop:S

    if-lt v0, p1, :cond_0

    sub-int/2addr v0, p1

    int-to-short p1, v0

    .line 633
    iput-short p1, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->outputStackTop:S

    goto :goto_0

    .line 637
    :cond_0
    iget-short v1, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->outputStackStart:S

    sub-int/2addr p1, v0

    sub-int/2addr v1, p1

    int-to-short p1, v1

    iput-short p1, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->outputStackStart:S

    const/4 p1, 0x0

    .line 638
    iput-short p1, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->outputStackTop:S

    :goto_0
    return-void
.end method

.method private pop(Ljava/lang/String;)V
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
    invoke-static {p1}, Lcom/alibaba/fastjson2/internal/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result p1

    shr-int/2addr p1, v2

    sub-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/internal/asm/Frame;->pop(I)V

    goto :goto_1

    :cond_0
    const/16 p1, 0x4a

    if-eq v0, p1, :cond_2

    const/16 p1, 0x44

    if-ne v0, p1, :cond_1

    goto :goto_0

    .line 654
    :cond_1
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/internal/asm/Frame;->pop(I)V

    goto :goto_1

    .line 652
    :cond_2
    :goto_0
    invoke-direct {p0, v2}, Lcom/alibaba/fastjson2/internal/asm/Frame;->pop(I)V

    :goto_1
    return-void
.end method

.method private push(I)V
    .locals 4

    .line 502
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->outputStack:[I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 503
    iput-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->outputStack:[I

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->outputStack:[I

    array-length v0, v0

    .line 506
    iget-short v1, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->outputStackTop:S

    if-lt v1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x2

    .line 507
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    .line 508
    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->outputStack:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 509
    iput-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->outputStack:[I

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->outputStack:[I

    iget-short v1, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->outputStackTop:S

    add-int/lit8 v2, v1, 0x1

    int-to-short v2, v2

    iput-short v2, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->outputStackTop:S

    aput p1, v0, v1

    .line 515
    iget-short p1, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->outputStackStart:S

    add-int/2addr p1, v2

    int-to-short p1, p1

    .line 516
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->owner:Lcom/alibaba/fastjson2/internal/asm/Label;

    iget-short v0, v0, Lcom/alibaba/fastjson2/internal/asm/Label;->outputStackMax:S

    if-le p1, v0, :cond_2

    .line 517
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->owner:Lcom/alibaba/fastjson2/internal/asm/Label;

    iput-short p1, v0, Lcom/alibaba/fastjson2/internal/asm/Label;->outputStackMax:S

    :cond_2
    return-void
.end method

.method private push(Lcom/alibaba/fastjson2/internal/asm/SymbolTable;Ljava/lang/String;)V
    .locals 8

    .line 529
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x14

    const/16 v2, 0x12

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "(Lcom/alibaba/fastjson2/JSONWriter;J)V"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v7, 0x19

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "(Lcom/alibaba/fastjson2/JSONWriter;I)V"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v7, 0x18

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v7, 0x17

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "(I)Ljava/lang/Integer;"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v7, 0x16

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "(Ljava/lang/Object;)Z"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v7, 0x15

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "(Ljava/lang/Object;)V"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    move v7, v1

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "(I)Ljava/lang/Object;"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v7, 0x13

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Enum;)V"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    move v7, v2

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "(Lcom/alibaba/fastjson2/JSONWriter;ZLjava/util/List;)V"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v7, 0x11

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "(Lcom/alibaba/fastjson2/JSONWriter;)Z"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v7, 0x10

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "(Lcom/alibaba/fastjson2/JSONWriter;)V"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v7, 0xf

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v7, 0xe

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "(Lcom/alibaba/fastjson2/writer/FieldWriter;Ljava/lang/Object;)Ljava/lang/String;"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v7, 0xd

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "(J)Z"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v7, 0xc

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "(J)V"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v7, 0xb

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "(I)V"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v7, 0xa

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "()Z"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v7, 0x9

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "()V"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v7, 0x8

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "()J"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_0

    :cond_12
    const/4 v7, 0x7

    goto :goto_0

    :sswitch_13
    const-string v0, "()I"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_0

    :cond_13
    const/4 v7, 0x6

    goto :goto_0

    :sswitch_14
    const-string v0, "()Ljava/lang/Class;"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_0

    :cond_14
    const/4 v7, 0x5

    goto :goto_0

    :sswitch_15
    const-string v0, "(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_0

    :cond_15
    const/4 v7, 0x4

    goto :goto_0

    :sswitch_16
    const-string v0, "(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_0

    :cond_16
    move v7, v3

    goto :goto_0

    :sswitch_17
    const-string v0, "(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_0

    :cond_17
    move v7, v4

    goto :goto_0

    :sswitch_18
    const-string v0, "(Ljava/lang/String;)V"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_0

    :cond_18
    move v7, v6

    goto :goto_0

    :sswitch_19
    const-string v0, "(Ljava/lang/Enum;)V"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_0

    :cond_19
    move v7, v5

    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 583
    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_1d

    move v0, v6

    .line 586
    :goto_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x29

    if-eq v1, v2, :cond_1c

    .line 587
    :goto_2
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_1a

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1a
    add-int/lit8 v1, v0, 0x1

    .line 590
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x4c

    if-ne v0, v2, :cond_1b

    const/16 v0, 0x3b

    .line 592
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/2addr v0, v6

    .line 593
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_1b
    move v0, v1

    goto :goto_1

    :cond_1c
    add-int/lit8 v1, v0, 0x1

    goto :goto_3

    :cond_1d
    move v1, v5

    goto :goto_3

    :pswitch_0
    const/16 v1, 0x25

    goto :goto_3

    :pswitch_1
    const/16 v1, 0x34

    goto :goto_3

    :pswitch_2
    const/16 v1, 0x35

    goto :goto_3

    :pswitch_3
    const/16 v1, 0x24

    goto :goto_3

    :pswitch_4
    const/16 v1, 0x2c

    goto :goto_3

    :pswitch_5
    const/16 v1, 0x3e

    goto :goto_3

    :pswitch_6
    move v1, v3

    goto :goto_3

    :pswitch_7
    move v1, v4

    goto :goto_3

    :pswitch_8
    const/16 v1, 0x48

    goto :goto_3

    :pswitch_9
    const/16 v1, 0x3c

    goto :goto_3

    :pswitch_a
    const/16 v1, 0x61

    goto :goto_3

    :pswitch_b
    move v1, v2

    .line 603
    :goto_3
    :pswitch_c
    invoke-static {p1, p2, v1}, Lcom/alibaba/fastjson2/internal/asm/Frame;->getAbstractTypeFromDescriptor(Lcom/alibaba/fastjson2/internal/asm/SymbolTable;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1f

    .line 605
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(I)V

    const p2, 0x400004

    if-eq p1, p2, :cond_1e

    const p2, 0x400003

    if-ne p1, p2, :cond_1f

    :cond_1e
    const/high16 p1, 0x400000

    .line 607
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(I)V

    :cond_1f
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
        :pswitch_c
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_c
        :pswitch_c
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setLocal(II)V
    .locals 4

    .line 482
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->outputLocals:[I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 483
    iput-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->outputLocals:[I

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->outputLocals:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    add-int/lit8 v1, p1, 0x1

    mul-int/lit8 v2, v0, 0x2

    .line 487
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    .line 488
    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->outputLocals:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 489
    iput-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->outputLocals:[I

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->outputLocals:[I

    aput p2, v0, p1

    return-void
.end method


# virtual methods
.method final accept(Lcom/alibaba/fastjson2/internal/asm/MethodWriter;)V
    .locals 13

    .line 1244
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->inputLocals:[I

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
    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->inputStack:[I

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
    iget-object v4, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->owner:Lcom/alibaba/fastjson2/internal/asm/Label;

    iget v4, v4, Lcom/alibaba/fastjson2/internal/asm/Label;->bytecodeOffset:I

    invoke-virtual {p1, v4, v3, v5}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitFrameStart(III)I

    move-result v4

    move v10, v1

    :goto_5
    add-int/lit8 v11, v3, -0x1

    if-lez v3, :cond_9

    .line 1271
    aget v3, v0, v10

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
    add-int/2addr v10, v12

    add-int/lit8 v12, v4, 0x1

    .line 1273
    invoke-virtual {p1, v4, v3}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitAbstractType(II)V

    move v3, v11

    move v4, v12

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
    move v5, v9

    goto :goto_a

    :cond_b
    :goto_9
    move v5, v7

    :goto_a
    add-int/2addr v1, v5

    add-int/lit8 v5, v4, 0x1

    .line 1279
    invoke-virtual {p1, v4, v3}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitAbstractType(II)V

    move v4, v5

    move v5, v0

    goto :goto_8

    .line 1281
    :cond_c
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitFrameEnd()V

    return-void
.end method

.method execute(IILcom/alibaba/fastjson2/internal/asm/Symbol;Lcom/alibaba/fastjson2/internal/asm/SymbolTable;)V
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
    iget-object v1, v3, Lcom/alibaba/fastjson2/internal/asm/Symbol;->value:Ljava/lang/String;

    .line 1016
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/fastjson2/internal/asm/Frame;->pop()I

    .line 1017
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_0

    .line 1018
    invoke-direct {v0, v4, v1}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(Lcom/alibaba/fastjson2/internal/asm/SymbolTable;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1020
    :cond_0
    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v15

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(I)V

    goto/16 :goto_3

    :pswitch_2
    const/high16 v1, 0xc00000

    .line 1012
    iget-object v3, v3, Lcom/alibaba/fastjson2/internal/asm/Symbol;->value:Ljava/lang/String;

    invoke-virtual {v4, v3, v2}, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->addUninitializedType(Ljava/lang/String;I)I

    move-result v2

    or-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(I)V

    goto/16 :goto_3

    .line 1002
    :pswitch_3
    iget-object v2, v3, Lcom/alibaba/fastjson2/internal/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/internal/asm/Frame;->pop(Ljava/lang/String;)V

    const/16 v2, 0xb8

    if-eq v1, v2, :cond_1

    .line 1004
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/fastjson2/internal/asm/Frame;->pop()I

    move-result v2

    const/16 v5, 0xb7

    if-ne v1, v5, :cond_1

    .line 1005
    iget-object v1, v3, Lcom/alibaba/fastjson2/internal/asm/Symbol;->name:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x3c

    if-ne v1, v5, :cond_1

    .line 1006
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/internal/asm/Frame;->addInitializedType(I)V

    .line 1009
    :cond_1
    iget-object v1, v3, Lcom/alibaba/fastjson2/internal/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {v0, v4, v1}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(Lcom/alibaba/fastjson2/internal/asm/SymbolTable;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 995
    :pswitch_4
    iget-object v1, v3, Lcom/alibaba/fastjson2/internal/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/internal/asm/Frame;->pop(Ljava/lang/String;)V

    .line 996
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/fastjson2/internal/asm/Frame;->pop()I

    goto/16 :goto_3

    .line 991
    :pswitch_5
    invoke-direct {v0, v6}, Lcom/alibaba/fastjson2/internal/asm/Frame;->pop(I)V

    .line 992
    iget-object v1, v3, Lcom/alibaba/fastjson2/internal/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {v0, v4, v1}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(Lcom/alibaba/fastjson2/internal/asm/SymbolTable;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 988
    :pswitch_6
    iget-object v1, v3, Lcom/alibaba/fastjson2/internal/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/internal/asm/Frame;->pop(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 985
    :pswitch_7
    iget-object v1, v3, Lcom/alibaba/fastjson2/internal/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {v0, v4, v1}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(Lcom/alibaba/fastjson2/internal/asm/SymbolTable;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 981
    :pswitch_8
    invoke-direct {v0, v10}, Lcom/alibaba/fastjson2/internal/asm/Frame;->pop(I)V

    .line 982
    invoke-direct {v0, v11}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(I)V

    goto/16 :goto_3

    .line 975
    :pswitch_9
    invoke-direct {v0, v6}, Lcom/alibaba/fastjson2/internal/asm/Frame;->pop(I)V

    .line 976
    invoke-direct {v0, v11}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(I)V

    goto/16 :goto_3

    .line 970
    :pswitch_a
    invoke-direct {v0, v2, v11}, Lcom/alibaba/fastjson2/internal/asm/Frame;->setLocal(II)V

    goto/16 :goto_3

    :pswitch_b
    const/4 v1, 0x3

    .line 965
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/internal/asm/Frame;->pop(I)V

    .line 966
    invoke-direct {v0, v12}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(I)V

    .line 967
    invoke-direct {v0, v5}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(I)V

    goto/16 :goto_3

    .line 958
    :pswitch_c
    invoke-direct {v0, v10}, Lcom/alibaba/fastjson2/internal/asm/Frame;->pop(I)V

    .line 959
    invoke-direct {v0, v12}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(I)V

    .line 960
    invoke-direct {v0, v5}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(I)V

    goto/16 :goto_3

    .line 923
    :pswitch_d
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/fastjson2/internal/asm/Frame;->pop()I

    move-result v1

    .line 924
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/fastjson2/internal/asm/Frame;->pop()I

    move-result v2

    .line 925
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(I)V

    .line 926
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(I)V

    goto/16 :goto_3

    .line 915
    :pswitch_e
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/fastjson2/internal/asm/Frame;->pop()I

    move-result v1

    .line 916
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/fastjson2/internal/asm/Frame;->pop()I

    move-result v2

    .line 917
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(I)V

    .line 918
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(I)V

    .line 919
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(I)V

    .line 920
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(I)V

    goto/16 :goto_3

    .line 910
    :pswitch_f
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/fastjson2/internal/asm/Frame;->pop()I

    move-result v1

    .line 911
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(I)V

    .line 912
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(I)V

    goto/16 :goto_3

    .line 907
    :pswitch_10
    invoke-direct {v0, v13}, Lcom/alibaba/fastjson2/internal/asm/Frame;->pop(I)V

    goto/16 :goto_3

    .line 894
    :pswitch_11
    invoke-direct {v0, v6}, Lcom/alibaba/fastjson2/internal/asm/Frame;->pop(I)V

    goto/16 :goto_3

    .line 861
    :pswitch_12
    invoke-direct {v0, v6}, Lcom/alibaba/fastjson2/internal/asm/Frame;->pop(I)V

    .line 862
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/fastjson2/internal/asm/Frame;->pop()I

    move-result v1

    .line 863
    invoke-direct {v0, v2, v1}, Lcom/alibaba/fastjson2/internal/asm/Frame;->setLocal(II)V

    add-int/lit8 v1, v2, 0x1

    .line 864
    invoke-direct {v0, v1, v5}, Lcom/alibaba/fastjson2/internal/asm/Frame;->setLocal(II)V

    if-lez v2, :cond_9

    add-int/lit8 v1, v2, -0x1

    .line 866
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/internal/asm/Frame;->getLocal(I)I

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
    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/internal/asm/Frame;->setLocal(II)V

    goto/16 :goto_3

    .line 868
    :cond_4
    :goto_0
    invoke-direct {v0, v1, v5}, Lcom/alibaba/fastjson2/internal/asm/Frame;->setLocal(II)V

    goto/16 :goto_3

    .line 845
    :pswitch_13
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/fastjson2/internal/asm/Frame;->pop()I

    move-result v1

    .line 846
    invoke-direct {v0, v2, v1}, Lcom/alibaba/fastjson2/internal/asm/Frame;->setLocal(II)V

    if-lez v2, :cond_9

    add-int/lit8 v1, v2, -0x1

    .line 848
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/internal/asm/Frame;->getLocal(I)I

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
    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/internal/asm/Frame;->setLocal(II)V

    goto/16 :goto_3

    .line 850
    :cond_7
    :goto_1
    invoke-direct {v0, v1, v5}, Lcom/alibaba/fastjson2/internal/asm/Frame;->setLocal(II)V

    goto/16 :goto_3

    .line 838
    :pswitch_14
    invoke-direct {v0, v6}, Lcom/alibaba/fastjson2/internal/asm/Frame;->pop(I)V

    .line 839
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/fastjson2/internal/asm/Frame;->pop()I

    move-result v1

    const v2, 0x400005

    if-ne v1, v2, :cond_8

    goto :goto_2

    :cond_8
    const/high16 v2, -0x4000000

    add-int/2addr v1, v2

    .line 840
    :goto_2
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(I)V

    goto/16 :goto_3

    .line 833
    :pswitch_15
    invoke-direct {v0, v13}, Lcom/alibaba/fastjson2/internal/asm/Frame;->pop(I)V

    .line 834
    invoke-direct {v0, v12}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(I)V

    .line 835
    invoke-direct {v0, v5}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(I)V

    goto/16 :goto_3

    .line 947
    :pswitch_16
    invoke-direct {v0, v13}, Lcom/alibaba/fastjson2/internal/asm/Frame;->pop(I)V

    .line 948
    invoke-direct {v0, v11}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(I)V

    goto/16 :goto_3

    .line 829
    :pswitch_17
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/internal/asm/Frame;->getLocal(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(I)V

    goto/16 :goto_3

    .line 794
    :pswitch_18
    iget v1, v3, Lcom/alibaba/fastjson2/internal/asm/Symbol;->tag:I

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    .line 825
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 822
    :pswitch_19
    iget-object v1, v3, Lcom/alibaba/fastjson2/internal/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {v0, v4, v1}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(Lcom/alibaba/fastjson2/internal/asm/SymbolTable;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_1a
    const-string v1, "java/lang/invoke/MethodType"

    .line 816
    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v15

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(I)V

    goto :goto_3

    :pswitch_1b
    const-string v1, "java/lang/invoke/MethodHandle"

    .line 819
    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v15

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(I)V

    goto :goto_3

    :pswitch_1c
    const-string v1, "java/lang/String"

    .line 813
    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v15

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(I)V

    goto :goto_3

    :pswitch_1d
    const-string v1, "java/lang/Class"

    .line 810
    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v15

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(I)V

    goto :goto_3

    .line 806
    :pswitch_1e
    invoke-direct {v0, v14}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(I)V

    .line 807
    invoke-direct {v0, v5}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(I)V

    goto :goto_3

    .line 799
    :pswitch_1f
    invoke-direct {v0, v12}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(I)V

    .line 800
    invoke-direct {v0, v5}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(I)V

    goto :goto_3

    :pswitch_20
    const v1, 0x400002

    .line 803
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(I)V

    goto :goto_3

    .line 796
    :pswitch_21
    invoke-direct {v0, v11}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(I)V

    goto :goto_3

    .line 790
    :pswitch_22
    invoke-direct {v0, v14}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(I)V

    .line 791
    invoke-direct {v0, v5}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(I)V

    goto :goto_3

    :pswitch_23
    const v1, 0x400002

    .line 785
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(I)V

    goto :goto_3

    .line 778
    :pswitch_24
    invoke-direct {v0, v12}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(I)V

    .line 779
    invoke-direct {v0, v5}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(I)V

    goto :goto_3

    .line 773
    :pswitch_25
    invoke-direct {v0, v11}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(I)V

    goto :goto_3

    :pswitch_26
    const v1, 0x400005

    .line 761
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/internal/asm/Frame;->push(I)V

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

.method final merge(Lcom/alibaba/fastjson2/internal/asm/SymbolTable;Lcom/alibaba/fastjson2/internal/asm/Frame;)Z
    .locals 8

    .line 1072
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->inputLocals:[I

    array-length v0, v0

    .line 1073
    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->inputStack:[I

    array-length v1, v1

    .line 1075
    iget-object v2, p2, Lcom/alibaba/fastjson2/internal/asm/Frame;->inputLocals:[I

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

    iput-object v5, p2, Lcom/alibaba/fastjson2/internal/asm/Frame;->inputLocals:[I

    :cond_1
    move v5, v3

    :goto_1
    if-ge v5, v0, :cond_5

    .line 1080
    iget-object v6, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->outputLocals:[I

    if-eqz v6, :cond_3

    array-length v7, v6

    if-ge v5, v7, :cond_3

    .line 1081
    aget v6, v6, v5

    if-nez v6, :cond_2

    .line 1085
    iget-object v6, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->inputLocals:[I

    aget v6, v6, v5

    goto :goto_2

    .line 1087
    :cond_2
    invoke-direct {p0, v6, v1}, Lcom/alibaba/fastjson2/internal/asm/Frame;->getConcreteOutputType(II)I

    move-result v6

    goto :goto_2

    .line 1092
    :cond_3
    iget-object v6, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->inputLocals:[I

    aget v6, v6, v5

    .line 1097
    :goto_2
    iget-object v7, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->initializations:[I

    if-eqz v7, :cond_4

    .line 1098
    invoke-direct {p0, p1, v6}, Lcom/alibaba/fastjson2/internal/asm/Frame;->getInitializedType(Lcom/alibaba/fastjson2/internal/asm/SymbolTable;I)I

    move-result v6

    .line 1100
    :cond_4
    iget-object v7, p2, Lcom/alibaba/fastjson2/internal/asm/Frame;->inputLocals:[I

    invoke-static {p1, v6, v7, v5}, Lcom/alibaba/fastjson2/internal/asm/Frame;->merge(Lcom/alibaba/fastjson2/internal/asm/SymbolTable;I[II)Z

    move-result v6

    or-int/2addr v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1106
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->inputStack:[I

    array-length v0, v0

    iget-short v5, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->outputStackStart:S

    add-int/2addr v0, v5

    .line 1107
    iget-object v5, p2, Lcom/alibaba/fastjson2/internal/asm/Frame;->inputStack:[I

    if-nez v5, :cond_6

    .line 1108
    iget-short v2, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->outputStackTop:S

    add-int/2addr v2, v0

    new-array v2, v2, [I

    iput-object v2, p2, Lcom/alibaba/fastjson2/internal/asm/Frame;->inputStack:[I

    goto :goto_3

    :cond_6
    move v4, v2

    :goto_3
    move v2, v3

    :goto_4
    if-ge v2, v0, :cond_8

    .line 1115
    iget-object v5, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->inputStack:[I

    aget v5, v5, v2

    .line 1116
    iget-object v6, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->initializations:[I

    if-eqz v6, :cond_7

    .line 1117
    invoke-direct {p0, p1, v5}, Lcom/alibaba/fastjson2/internal/asm/Frame;->getInitializedType(Lcom/alibaba/fastjson2/internal/asm/SymbolTable;I)I

    move-result v5

    .line 1119
    :cond_7
    iget-object v6, p2, Lcom/alibaba/fastjson2/internal/asm/Frame;->inputStack:[I

    invoke-static {p1, v5, v6, v2}, Lcom/alibaba/fastjson2/internal/asm/Frame;->merge(Lcom/alibaba/fastjson2/internal/asm/SymbolTable;I[II)Z

    move-result v5

    or-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1123
    :cond_8
    :goto_5
    iget-short v2, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->outputStackTop:S

    if-ge v3, v2, :cond_a

    .line 1124
    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->outputStack:[I

    aget v2, v2, v3

    .line 1125
    invoke-direct {p0, v2, v1}, Lcom/alibaba/fastjson2/internal/asm/Frame;->getConcreteOutputType(II)I

    move-result v2

    .line 1126
    iget-object v5, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->initializations:[I

    if-eqz v5, :cond_9

    .line 1127
    invoke-direct {p0, p1, v2}, Lcom/alibaba/fastjson2/internal/asm/Frame;->getInitializedType(Lcom/alibaba/fastjson2/internal/asm/SymbolTable;I)I

    move-result v2

    .line 1129
    :cond_9
    iget-object v5, p2, Lcom/alibaba/fastjson2/internal/asm/Frame;->inputStack:[I

    add-int v6, v0, v3

    .line 1130
    invoke-static {p1, v2, v5, v6}, Lcom/alibaba/fastjson2/internal/asm/Frame;->merge(Lcom/alibaba/fastjson2/internal/asm/SymbolTable;I[II)Z

    move-result v2

    or-int/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    return v4
.end method

.method final setInputFrameFromDescriptor(Lcom/alibaba/fastjson2/internal/asm/SymbolTable;ILjava/lang/String;I)V
    .locals 7

    .line 424
    new-array v0, p4, [I

    iput-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->inputLocals:[I

    const/4 v1, 0x0

    new-array v2, v1, [I

    .line 425
    iput-object v2, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->inputStack:[I

    and-int/lit8 v2, p2, 0x8

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const/high16 v2, 0x40000

    and-int/2addr p2, v2

    if-nez p2, :cond_0

    const/high16 p2, 0x800000

    .line 429
    iget-object v2, p1, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->className:Ljava/lang/String;

    .line 430
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v2

    or-int/2addr p2, v2

    aput p2, v0, v1

    goto :goto_0

    :cond_0
    const p2, 0x400006

    .line 432
    aput p2, v0, v1

    goto :goto_0

    :cond_1
    move v3, v1

    .line 435
    :goto_0
    invoke-static {p3}, Lcom/alibaba/fastjson2/internal/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lcom/alibaba/fastjson2/internal/asm/Type;

    move-result-object p2

    array-length p3, p2

    move v0, v1

    :goto_1
    const/high16 v2, 0x400000

    if-ge v0, p3, :cond_4

    aget-object v4, p2, v0

    .line 437
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/internal/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v1}, Lcom/alibaba/fastjson2/internal/asm/Frame;->getAbstractTypeFromDescriptor(Lcom/alibaba/fastjson2/internal/asm/SymbolTable;Ljava/lang/String;I)I

    move-result v4

    .line 438
    iget-object v5, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->inputLocals:[I

    add-int/lit8 v6, v3, 0x1

    aput v4, v5, v3

    const v3, 0x400004

    if-eq v4, v3, :cond_3

    const v3, 0x400003

    if-ne v4, v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v6

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v3, v6, 0x1

    .line 440
    aput v2, v5, v6

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_4
    if-ge v3, p4, :cond_5

    .line 444
    iget-object p1, p0, Lcom/alibaba/fastjson2/internal/asm/Frame;->inputLocals:[I

    add-int/lit8 p2, v3, 0x1

    aput v2, p1, v3

    move v3, p2

    goto :goto_4

    :cond_5
    return-void
.end method
