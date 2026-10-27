.class public final Lcom/alibaba/fastjson2/internal/asm/Type;
.super Ljava/lang/Object;
.source "Type.java"


# static fields
.field static final ARRAY:I = 0x9

.field static final BOOLEAN:I = 0x1

.field static final BOOLEAN_TYPE:Lcom/alibaba/fastjson2/internal/asm/Type;

.field static final BYTE:I = 0x3

.field static final BYTE_TYPE:Lcom/alibaba/fastjson2/internal/asm/Type;

.field static final CHAR:I = 0x2

.field static final CHAR_TYPE:Lcom/alibaba/fastjson2/internal/asm/Type;

.field static final DOUBLE:I = 0x8

.field static final DOUBLE_TYPE:Lcom/alibaba/fastjson2/internal/asm/Type;

.field static final FLOAT:I = 0x6

.field static final FLOAT_TYPE:Lcom/alibaba/fastjson2/internal/asm/Type;

.field static final INT:I = 0x5

.field static final INTERNAL:I = 0xc

.field static final INT_TYPE:Lcom/alibaba/fastjson2/internal/asm/Type;

.field static final LONG:I = 0x7

.field static final LONG_TYPE:Lcom/alibaba/fastjson2/internal/asm/Type;

.field static final METHOD:I = 0xb

.field static final OBJECT:I = 0xa

.field static final SHORT:I = 0x4

.field static final SHORT_TYPE:Lcom/alibaba/fastjson2/internal/asm/Type;

.field static final TYPES_0:[Lcom/alibaba/fastjson2/internal/asm/Type;

.field static final TYPES_1:[Lcom/alibaba/fastjson2/internal/asm/Type;

.field static final TYPES_2:[Lcom/alibaba/fastjson2/internal/asm/Type;

.field static final TYPES_3:[Lcom/alibaba/fastjson2/internal/asm/Type;

.field static final TYPES_4:[Lcom/alibaba/fastjson2/internal/asm/Type;

.field static final TYPE_CLASS:Lcom/alibaba/fastjson2/internal/asm/Type;

.field static final TYPE_JSON_READER:Lcom/alibaba/fastjson2/internal/asm/Type;

.field static final TYPE_JSON_WRITER:Lcom/alibaba/fastjson2/internal/asm/Type;

.field static final TYPE_LIST:Lcom/alibaba/fastjson2/internal/asm/Type;

.field static final TYPE_OBJECT:Lcom/alibaba/fastjson2/internal/asm/Type;

.field static final TYPE_STRING:Lcom/alibaba/fastjson2/internal/asm/Type;

.field static final TYPE_SUPPLIER:Lcom/alibaba/fastjson2/internal/asm/Type;

.field static final TYPE_TYPE:Lcom/alibaba/fastjson2/internal/asm/Type;

.field static final VOID:I

.field static final VOID_TYPE:Lcom/alibaba/fastjson2/internal/asm/Type;


# instance fields
.field final sort:I

.field final valueBegin:I

.field final valueBuffer:Ljava/lang/String;

.field final valueEnd:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 52
    new-instance v0, Lcom/alibaba/fastjson2/internal/asm/Type;

    const/4 v1, 0x0

    const-string v2, "VZCBSIFJD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/alibaba/fastjson2/internal/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lcom/alibaba/fastjson2/internal/asm/Type;->VOID_TYPE:Lcom/alibaba/fastjson2/internal/asm/Type;

    .line 53
    new-instance v0, Lcom/alibaba/fastjson2/internal/asm/Type;

    const/4 v4, 0x2

    invoke-direct {v0, v3, v2, v3, v4}, Lcom/alibaba/fastjson2/internal/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lcom/alibaba/fastjson2/internal/asm/Type;->BOOLEAN_TYPE:Lcom/alibaba/fastjson2/internal/asm/Type;

    .line 54
    new-instance v0, Lcom/alibaba/fastjson2/internal/asm/Type;

    const/4 v5, 0x3

    invoke-direct {v0, v4, v2, v4, v5}, Lcom/alibaba/fastjson2/internal/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lcom/alibaba/fastjson2/internal/asm/Type;->CHAR_TYPE:Lcom/alibaba/fastjson2/internal/asm/Type;

    .line 55
    new-instance v0, Lcom/alibaba/fastjson2/internal/asm/Type;

    const/4 v6, 0x4

    invoke-direct {v0, v5, v2, v5, v6}, Lcom/alibaba/fastjson2/internal/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lcom/alibaba/fastjson2/internal/asm/Type;->BYTE_TYPE:Lcom/alibaba/fastjson2/internal/asm/Type;

    .line 56
    new-instance v0, Lcom/alibaba/fastjson2/internal/asm/Type;

    const/4 v7, 0x5

    invoke-direct {v0, v6, v2, v6, v7}, Lcom/alibaba/fastjson2/internal/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lcom/alibaba/fastjson2/internal/asm/Type;->SHORT_TYPE:Lcom/alibaba/fastjson2/internal/asm/Type;

    .line 57
    new-instance v0, Lcom/alibaba/fastjson2/internal/asm/Type;

    const/4 v8, 0x6

    invoke-direct {v0, v7, v2, v7, v8}, Lcom/alibaba/fastjson2/internal/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lcom/alibaba/fastjson2/internal/asm/Type;->INT_TYPE:Lcom/alibaba/fastjson2/internal/asm/Type;

    .line 58
    new-instance v0, Lcom/alibaba/fastjson2/internal/asm/Type;

    const/4 v9, 0x7

    invoke-direct {v0, v8, v2, v8, v9}, Lcom/alibaba/fastjson2/internal/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lcom/alibaba/fastjson2/internal/asm/Type;->FLOAT_TYPE:Lcom/alibaba/fastjson2/internal/asm/Type;

    .line 59
    new-instance v0, Lcom/alibaba/fastjson2/internal/asm/Type;

    const/16 v8, 0x8

    invoke-direct {v0, v9, v2, v9, v8}, Lcom/alibaba/fastjson2/internal/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lcom/alibaba/fastjson2/internal/asm/Type;->LONG_TYPE:Lcom/alibaba/fastjson2/internal/asm/Type;

    .line 60
    new-instance v9, Lcom/alibaba/fastjson2/internal/asm/Type;

    const/16 v10, 0x9

    invoke-direct {v9, v8, v2, v8, v10}, Lcom/alibaba/fastjson2/internal/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v9, Lcom/alibaba/fastjson2/internal/asm/Type;->DOUBLE_TYPE:Lcom/alibaba/fastjson2/internal/asm/Type;

    .line 62
    new-instance v2, Lcom/alibaba/fastjson2/internal/asm/Type;

    const/16 v8, 0xa

    const-string v9, "Ljava/lang/Class;"

    const/16 v10, 0x10

    invoke-direct {v2, v8, v9, v3, v10}, Lcom/alibaba/fastjson2/internal/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v2, Lcom/alibaba/fastjson2/internal/asm/Type;->TYPE_CLASS:Lcom/alibaba/fastjson2/internal/asm/Type;

    .line 63
    new-instance v9, Lcom/alibaba/fastjson2/internal/asm/Type;

    const-string v10, "Ljava/lang/reflect/Type;"

    const/16 v11, 0x17

    invoke-direct {v9, v8, v10, v3, v11}, Lcom/alibaba/fastjson2/internal/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v9, Lcom/alibaba/fastjson2/internal/asm/Type;->TYPE_TYPE:Lcom/alibaba/fastjson2/internal/asm/Type;

    .line 64
    new-instance v10, Lcom/alibaba/fastjson2/internal/asm/Type;

    const-string v11, "Ljava/lang/Object;"

    const/16 v12, 0x11

    invoke-direct {v10, v8, v11, v3, v12}, Lcom/alibaba/fastjson2/internal/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v10, Lcom/alibaba/fastjson2/internal/asm/Type;->TYPE_OBJECT:Lcom/alibaba/fastjson2/internal/asm/Type;

    .line 65
    new-instance v11, Lcom/alibaba/fastjson2/internal/asm/Type;

    const-string v13, "Ljava/lang/String;"

    invoke-direct {v11, v8, v13, v3, v12}, Lcom/alibaba/fastjson2/internal/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v11, Lcom/alibaba/fastjson2/internal/asm/Type;->TYPE_STRING:Lcom/alibaba/fastjson2/internal/asm/Type;

    .line 66
    new-instance v12, Lcom/alibaba/fastjson2/internal/asm/Type;

    const-string v13, "Ljava/util/List;"

    const/16 v14, 0xf

    invoke-direct {v12, v8, v13, v3, v14}, Lcom/alibaba/fastjson2/internal/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v12, Lcom/alibaba/fastjson2/internal/asm/Type;->TYPE_LIST:Lcom/alibaba/fastjson2/internal/asm/Type;

    .line 67
    new-instance v13, Lcom/alibaba/fastjson2/internal/asm/Type;

    const-string v14, "Lcom/alibaba/fastjson2/JSONReader;"

    const/16 v15, 0x21

    invoke-direct {v13, v8, v14, v3, v15}, Lcom/alibaba/fastjson2/internal/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v13, Lcom/alibaba/fastjson2/internal/asm/Type;->TYPE_JSON_READER:Lcom/alibaba/fastjson2/internal/asm/Type;

    .line 68
    new-instance v14, Lcom/alibaba/fastjson2/internal/asm/Type;

    const-string v6, "Lcom/alibaba/fastjson2/JSONWriter;"

    invoke-direct {v14, v8, v6, v3, v15}, Lcom/alibaba/fastjson2/internal/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v14, Lcom/alibaba/fastjson2/internal/asm/Type;->TYPE_JSON_WRITER:Lcom/alibaba/fastjson2/internal/asm/Type;

    .line 69
    new-instance v6, Lcom/alibaba/fastjson2/internal/asm/Type;

    const-string v15, "Ljava/util/function/Supplier;"

    const/16 v5, 0x1c

    invoke-direct {v6, v8, v15, v3, v5}, Lcom/alibaba/fastjson2/internal/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v6, Lcom/alibaba/fastjson2/internal/asm/Type;->TYPE_SUPPLIER:Lcom/alibaba/fastjson2/internal/asm/Type;

    new-array v5, v7, [Lcom/alibaba/fastjson2/internal/asm/Type;

    aput-object v2, v5, v1

    aput-object v11, v5, v3

    aput-object v11, v5, v4

    const/4 v8, 0x3

    aput-object v0, v5, v8

    const/4 v11, 0x4

    aput-object v12, v5, v11

    .line 71
    sput-object v5, Lcom/alibaba/fastjson2/internal/asm/Type;->TYPES_0:[Lcom/alibaba/fastjson2/internal/asm/Type;

    new-array v5, v7, [Lcom/alibaba/fastjson2/internal/asm/Type;

    aput-object v14, v5, v1

    aput-object v10, v5, v3

    aput-object v10, v5, v4

    aput-object v9, v5, v8

    aput-object v0, v5, v11

    .line 72
    sput-object v5, Lcom/alibaba/fastjson2/internal/asm/Type;->TYPES_1:[Lcom/alibaba/fastjson2/internal/asm/Type;

    new-array v5, v8, [Lcom/alibaba/fastjson2/internal/asm/Type;

    aput-object v2, v5, v1

    aput-object v6, v5, v3

    aput-object v13, v5, v4

    .line 73
    sput-object v5, Lcom/alibaba/fastjson2/internal/asm/Type;->TYPES_2:[Lcom/alibaba/fastjson2/internal/asm/Type;

    new-array v2, v3, [Lcom/alibaba/fastjson2/internal/asm/Type;

    aput-object v0, v2, v1

    .line 74
    sput-object v2, Lcom/alibaba/fastjson2/internal/asm/Type;->TYPES_3:[Lcom/alibaba/fastjson2/internal/asm/Type;

    new-array v2, v11, [Lcom/alibaba/fastjson2/internal/asm/Type;

    aput-object v13, v2, v1

    aput-object v9, v2, v3

    aput-object v10, v2, v4

    const/4 v1, 0x3

    aput-object v0, v2, v1

    .line 75
    sput-object v2, Lcom/alibaba/fastjson2/internal/asm/Type;->TYPES_4:[Lcom/alibaba/fastjson2/internal/asm/Type;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;II)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p1, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->sort:I

    .line 84
    iput-object p2, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueBuffer:Ljava/lang/String;

    .line 85
    iput p3, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueBegin:I

    .line 86
    iput p4, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueEnd:I

    return-void
.end method

.method static getArgumentTypes(Ljava/lang/String;)[Lcom/alibaba/fastjson2/internal/asm/Type;
    .locals 10

    .line 112
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "(J)Ljava/lang/Object;"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_1
    const-string v0, "(Ljava/lang/Class;Ljava/util/function/Supplier;[Lcom/alibaba/fastjson2/reader/FieldReader;)V"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_2
    const-string v0, "(J)Lcom/alibaba/fastjson2/reader/FieldReader;"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_3
    const-string v0, "()V"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string v0, "(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_5
    const-string v0, "(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move v3, v2

    goto :goto_0

    :sswitch_6
    const-string v0, "(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    move v3, v1

    :goto_0
    packed-switch v3, :pswitch_data_0

    move v3, v1

    move v0, v2

    .line 135
    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3b

    const/16 v6, 0x4c

    const/16 v7, 0x5b

    const/16 v8, 0x29

    if-eq v4, v8, :cond_9

    .line 136
    :goto_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v0, 0x1

    .line 139
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_8

    .line 141
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/2addr v0, v2

    .line 142
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_3

    :cond_8
    move v0, v4

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 148
    :cond_9
    new-array v0, v3, [Lcom/alibaba/fastjson2/internal/asm/Type;

    move v3, v2

    .line 153
    :goto_4
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v8, :cond_c

    move v4, v3

    .line 155
    :goto_5
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v7, :cond_a

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_a
    add-int/lit8 v9, v4, 0x1

    .line 158
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_b

    .line 160
    invoke-virtual {p0, v5, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    add-int/2addr v4, v2

    .line 161
    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_b
    add-int/lit8 v4, v1, 0x1

    .line 164
    invoke-static {p0, v3, v9}, Lcom/alibaba/fastjson2/internal/asm/Type;->getTypeInternal(Ljava/lang/String;II)Lcom/alibaba/fastjson2/internal/asm/Type;

    move-result-object v3

    aput-object v3, v0, v1

    move v1, v4

    move v3, v9

    goto :goto_4

    :cond_c
    return-object v0

    .line 123
    :pswitch_0
    sget-object p0, Lcom/alibaba/fastjson2/internal/asm/Type;->TYPES_2:[Lcom/alibaba/fastjson2/internal/asm/Type;

    return-object p0

    .line 117
    :pswitch_1
    sget-object p0, Lcom/alibaba/fastjson2/internal/asm/Type;->TYPES_3:[Lcom/alibaba/fastjson2/internal/asm/Type;

    return-object p0

    :pswitch_2
    new-array p0, v1, [Lcom/alibaba/fastjson2/internal/asm/Type;

    return-object p0

    .line 119
    :pswitch_3
    sget-object p0, Lcom/alibaba/fastjson2/internal/asm/Type;->TYPES_0:[Lcom/alibaba/fastjson2/internal/asm/Type;

    return-object p0

    .line 121
    :pswitch_4
    sget-object p0, Lcom/alibaba/fastjson2/internal/asm/Type;->TYPES_1:[Lcom/alibaba/fastjson2/internal/asm/Type;

    return-object p0

    .line 125
    :pswitch_5
    sget-object p0, Lcom/alibaba/fastjson2/internal/asm/Type;->TYPES_4:[Lcom/alibaba/fastjson2/internal/asm/Type;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x3c3d4970 -> :sswitch_6
        -0x1c1066ca -> :sswitch_5
        -0xa827247 -> :sswitch_4
        0x9b75 -> :sswitch_3
        0x1c0f8383 -> :sswitch_2
        0x31ca26db -> :sswitch_1
        0x3c710923 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getArgumentsAndReturnSizes(Ljava/lang/String;)I
    .locals 18

    move-object/from16 v0, p0

    .line 393
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x29

    const/16 v3, 0x28

    const/16 v4, 0x1c

    const/16 v5, 0x19

    const/16 v6, 0x15

    const/16 v7, 0x14

    const/16 v8, 0x10

    const/16 v9, 0xd

    const/16 v10, 0xc

    const/16 v11, 0x9

    const/4 v13, 0x6

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/16 v16, 0x2

    const/4 v12, 0x1

    const/16 v17, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "(Lcom/alibaba/fastjson2/JSONWriter;J)V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    move/from16 v17, v2

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "(Lcom/alibaba/fastjson2/JSONWriter;I)V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    move/from16 v17, v3

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "()Ljava/lang/String;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v17, 0x27

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v17, 0x26

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "(I)Ljava/lang/Integer;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v17, 0x25

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "(Ljava/lang/Object;)Z"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v17, 0x24

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "(Ljava/lang/Object;)V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v17, 0x23

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v17, 0x22

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "(I)Ljava/lang/Object;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v17, 0x21

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Enum;)V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v17, 0x20

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "(J)Ljava/lang/Object;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v17, 0x1f

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "(Ljava/lang/Class;Ljava/util/function/Supplier;[Lcom/alibaba/fastjson2/reader/FieldReader;)V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v17, 0x1e

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "(J)Lcom/alibaba/fastjson2/reader/FieldReader;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v17, 0x1d

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "(Lcom/alibaba/fastjson2/JSONWriter;ZLjava/util/List;)V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_0

    :cond_d
    move/from16 v17, v4

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Class;J)Ljava/lang/Object;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v17, 0x1b

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "(Lcom/alibaba/fastjson2/JSONWriter;)Z"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v17, 0x1a

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "(Lcom/alibaba/fastjson2/JSONWriter;)V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_0

    :cond_10
    move/from16 v17, v5

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v17, 0x18

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "(Lcom/alibaba/fastjson2/writer/FieldWriter;Ljava/lang/Object;)Ljava/lang/String;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v17, 0x17

    goto/16 :goto_0

    :sswitch_13
    const-string v1, "(J)Z"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v17, 0x16

    goto/16 :goto_0

    :sswitch_14
    const-string v1, "(J)V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_0

    :cond_14
    move/from16 v17, v6

    goto/16 :goto_0

    :sswitch_15
    const-string v1, "(I)V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_0

    :cond_15
    move/from16 v17, v7

    goto/16 :goto_0

    :sswitch_16
    const-string v1, "(C)Z"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v17, 0x13

    goto/16 :goto_0

    :sswitch_17
    const-string v1, "()Z"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v17, 0x12

    goto/16 :goto_0

    :sswitch_18
    const-string v1, "()V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v17, 0x11

    goto/16 :goto_0

    :sswitch_19
    const-string v1, "()J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto/16 :goto_0

    :cond_19
    move/from16 v17, v8

    goto/16 :goto_0

    :sswitch_1a
    const-string v1, "()I"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v17, 0xf

    goto/16 :goto_0

    :sswitch_1b
    const-string v1, "(Lcom/alibaba/fastjson2/JSONReader;Ljava/util/List;ILjava/lang/String;)V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v17, 0xe

    goto/16 :goto_0

    :sswitch_1c
    const-string v1, "()Ljava/lang/Class;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto/16 :goto_0

    :cond_1c
    move/from16 v17, v9

    goto/16 :goto_0

    :sswitch_1d
    const-string v1, "(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto/16 :goto_0

    :cond_1d
    move/from16 v17, v10

    goto/16 :goto_0

    :sswitch_1e
    const-string v1, "(Ljava/util/List;Ljava/lang/reflect/Type;)V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v17, 0xb

    goto/16 :goto_0

    :sswitch_1f
    const-string v1, "(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v17, 0xa

    goto/16 :goto_0

    :sswitch_20
    const-string v1, "(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;Ljava/lang/String;)V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto/16 :goto_0

    :cond_20
    move/from16 v17, v11

    goto/16 :goto_0

    :sswitch_21
    const-string v1, "(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v17, 0x8

    goto/16 :goto_0

    :sswitch_22
    const-string v1, "(Lcom/alibaba/fastjson2/JSONReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v17, 0x7

    goto :goto_0

    :sswitch_23
    const-string v1, "(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    goto :goto_0

    :cond_23
    move/from16 v17, v13

    goto :goto_0

    :sswitch_24
    const-string v1, "(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    goto :goto_0

    :cond_24
    move/from16 v17, v14

    goto :goto_0

    :sswitch_25
    const-string v1, "(Ljava/lang/String;)V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_0

    :cond_25
    move/from16 v17, v15

    goto :goto_0

    :sswitch_26
    const-string v1, "(Ljava/lang/Object;JLjava/lang/Object;)V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    goto :goto_0

    :cond_26
    const/16 v17, 0x3

    goto :goto_0

    :sswitch_27
    const-string v1, "(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    goto :goto_0

    :cond_27
    move/from16 v17, v16

    goto :goto_0

    :sswitch_28
    const-string v1, "(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    goto :goto_0

    :cond_28
    move/from16 v17, v12

    goto :goto_0

    :sswitch_29
    const-string v1, "(Ljava/lang/Enum;)V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    goto :goto_0

    :cond_29
    const/16 v17, 0x0

    :goto_0
    packed-switch v17, :pswitch_data_0

    .line 456
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v3, v12

    move v4, v3

    :goto_1
    const/16 v5, 0x44

    const/16 v6, 0x4a

    if-eq v1, v2, :cond_2e

    if-eq v1, v6, :cond_2d

    if-ne v1, v5, :cond_2a

    goto :goto_3

    .line 463
    :cond_2a
    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x5b

    if-ne v1, v5, :cond_2b

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2b
    add-int/lit8 v1, v3, 0x1

    .line 466
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x4c

    if-ne v3, v5, :cond_2c

    const/16 v3, 0x3b

    .line 468
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/2addr v3, v12

    .line 469
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_2c
    add-int/lit8 v4, v4, 0x1

    move v3, v1

    goto :goto_4

    :cond_2d
    :goto_3
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x2

    .line 473
    :goto_4
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_1

    :cond_2e
    add-int/2addr v3, v12

    .line 475
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x56

    if-ne v0, v1, :cond_2f

    shl-int/lit8 v0, v4, 0x2

    return v0

    :cond_2f
    if-eq v0, v6, :cond_30

    if-ne v0, v5, :cond_31

    :cond_30
    move/from16 v12, v16

    :cond_31
    shl-int/lit8 v0, v4, 0x2

    or-int/2addr v0, v12

    return v0

    :pswitch_0
    return v15

    :pswitch_1
    return v13

    :pswitch_2
    return v14

    :pswitch_3
    return v10

    :pswitch_4
    return v9

    :pswitch_5
    return v8

    :pswitch_6
    return v4

    :pswitch_7
    return v5

    :pswitch_8
    return v6

    :pswitch_9
    return v7

    :pswitch_a
    return v11

    :pswitch_b
    return v3

    :pswitch_c
    const/16 v0, 0x8

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x79cdcef1 -> :sswitch_29
        -0x6e890bc7 -> :sswitch_28
        -0x66370245 -> :sswitch_27
        -0x5f907e11 -> :sswitch_26
        -0x552c4e01 -> :sswitch_25
        -0x4486e4bd -> :sswitch_24
        -0x3c3d4970 -> :sswitch_23
        -0x22e87364 -> :sswitch_22
        -0x1c1066ca -> :sswitch_21
        -0x15c49283 -> :sswitch_20
        -0xfb4ac65 -> :sswitch_1f
        -0xd34212b -> :sswitch_1e
        -0xa827247 -> :sswitch_1d
        -0x7855dde -> :sswitch_1c
        -0x256843b -> :sswitch_1b
        0x9b68 -> :sswitch_1a
        0x9b69 -> :sswitch_19
        0x9b75 -> :sswitch_18
        0x9b79 -> :sswitch_17
        0x132fac -> :sswitch_16
        0x13462e -> :sswitch_15
        0x1349ef -> :sswitch_14
        0x1349f3 -> :sswitch_13
        0x8e7ba93 -> :sswitch_12
        0x9ab2784 -> :sswitch_11
        0xc3108a7 -> :sswitch_10
        0xc3108ab -> :sswitch_f
        0x17441934 -> :sswitch_e
        0x1a2191fe -> :sswitch_d
        0x1c0f8383 -> :sswitch_c
        0x31ca26db -> :sswitch_b
        0x3c710923 -> :sswitch_a
        0x4715fa41 -> :sswitch_9
        0x54cf32c4 -> :sswitch_8
        0x5c2eda73 -> :sswitch_7
        0x5d527811 -> :sswitch_6
        0x5d527815 -> :sswitch_5
        0x61acf5d5 -> :sswitch_4
        0x62ac16fb -> :sswitch_3
        0x73cf11cb -> :sswitch_2
        0x79f07f3c -> :sswitch_1
        0x79f082fd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_c
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_a
        :pswitch_c
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_c
        :pswitch_a
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_a
        :pswitch_3
        :pswitch_c
        :pswitch_a
        :pswitch_a
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method static getTypeInternal(Ljava/lang/String;II)Lcom/alibaba/fastjson2/internal/asm/Type;
    .locals 4

    .line 204
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_e

    const/16 v1, 0x46

    if-eq v0, v1, :cond_d

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_6

    const/16 v1, 0x53

    if-eq v0, v1, :cond_5

    const/16 v1, 0x56

    if-eq v0, v1, :cond_4

    const/16 v1, 0x49

    if-eq v0, v1, :cond_3

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 272
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 222
    :pswitch_0
    sget-object p0, Lcom/alibaba/fastjson2/internal/asm/Type;->DOUBLE_TYPE:Lcom/alibaba/fastjson2/internal/asm/Type;

    return-object p0

    .line 210
    :pswitch_1
    sget-object p0, Lcom/alibaba/fastjson2/internal/asm/Type;->CHAR_TYPE:Lcom/alibaba/fastjson2/internal/asm/Type;

    return-object p0

    .line 212
    :pswitch_2
    sget-object p0, Lcom/alibaba/fastjson2/internal/asm/Type;->BYTE_TYPE:Lcom/alibaba/fastjson2/internal/asm/Type;

    return-object p0

    .line 224
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/internal/asm/Type;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/alibaba/fastjson2/internal/asm/Type;-><init>(ILjava/lang/String;II)V

    return-object v0

    .line 208
    :cond_1
    sget-object p0, Lcom/alibaba/fastjson2/internal/asm/Type;->BOOLEAN_TYPE:Lcom/alibaba/fastjson2/internal/asm/Type;

    return-object p0

    .line 220
    :cond_2
    sget-object p0, Lcom/alibaba/fastjson2/internal/asm/Type;->LONG_TYPE:Lcom/alibaba/fastjson2/internal/asm/Type;

    return-object p0

    .line 216
    :cond_3
    sget-object p0, Lcom/alibaba/fastjson2/internal/asm/Type;->INT_TYPE:Lcom/alibaba/fastjson2/internal/asm/Type;

    return-object p0

    .line 206
    :cond_4
    sget-object p0, Lcom/alibaba/fastjson2/internal/asm/Type;->VOID_TYPE:Lcom/alibaba/fastjson2/internal/asm/Type;

    return-object p0

    .line 214
    :cond_5
    sget-object p0, Lcom/alibaba/fastjson2/internal/asm/Type;->SHORT_TYPE:Lcom/alibaba/fastjson2/internal/asm/Type;

    return-object p0

    :cond_6
    sub-int v0, p2, p1

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-eq v0, v1, :cond_b

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_a

    const/16 v1, 0x22

    if-eq v0, v1, :cond_8

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 239
    :pswitch_3
    sget-object v1, Lcom/alibaba/fastjson2/internal/asm/Type;->TYPE_STRING:Lcom/alibaba/fastjson2/internal/asm/Type;

    iget-object v3, v1, Lcom/alibaba/fastjson2/internal/asm/Type;->valueBuffer:Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_7

    return-object v1

    .line 242
    :cond_7
    sget-object v1, Lcom/alibaba/fastjson2/internal/asm/Type;->TYPE_OBJECT:Lcom/alibaba/fastjson2/internal/asm/Type;

    iget-object v3, v1, Lcom/alibaba/fastjson2/internal/asm/Type;->valueBuffer:Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_c

    return-object v1

    .line 234
    :pswitch_4
    sget-object v1, Lcom/alibaba/fastjson2/internal/asm/Type;->TYPE_CLASS:Lcom/alibaba/fastjson2/internal/asm/Type;

    iget-object v3, v1, Lcom/alibaba/fastjson2/internal/asm/Type;->valueBuffer:Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_c

    return-object v1

    .line 229
    :pswitch_5
    sget-object v1, Lcom/alibaba/fastjson2/internal/asm/Type;->TYPE_LIST:Lcom/alibaba/fastjson2/internal/asm/Type;

    iget-object v3, v1, Lcom/alibaba/fastjson2/internal/asm/Type;->valueBuffer:Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_c

    return-object v1

    .line 257
    :cond_8
    sget-object v1, Lcom/alibaba/fastjson2/internal/asm/Type;->TYPE_JSON_WRITER:Lcom/alibaba/fastjson2/internal/asm/Type;

    iget-object v3, v1, Lcom/alibaba/fastjson2/internal/asm/Type;->valueBuffer:Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_9

    return-object v1

    .line 260
    :cond_9
    sget-object v1, Lcom/alibaba/fastjson2/internal/asm/Type;->TYPE_JSON_READER:Lcom/alibaba/fastjson2/internal/asm/Type;

    iget-object v3, v1, Lcom/alibaba/fastjson2/internal/asm/Type;->valueBuffer:Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_c

    return-object v1

    .line 252
    :cond_a
    sget-object v1, Lcom/alibaba/fastjson2/internal/asm/Type;->TYPE_SUPPLIER:Lcom/alibaba/fastjson2/internal/asm/Type;

    iget-object v3, v1, Lcom/alibaba/fastjson2/internal/asm/Type;->valueBuffer:Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_c

    return-object v1

    .line 247
    :cond_b
    sget-object v1, Lcom/alibaba/fastjson2/internal/asm/Type;->TYPE_TYPE:Lcom/alibaba/fastjson2/internal/asm/Type;

    iget-object v3, v1, Lcom/alibaba/fastjson2/internal/asm/Type;->valueBuffer:Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_c

    return-object v1

    .line 268
    :cond_c
    :goto_0
    new-instance v0, Lcom/alibaba/fastjson2/internal/asm/Type;

    const/16 v1, 0xa

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/alibaba/fastjson2/internal/asm/Type;-><init>(ILjava/lang/String;II)V

    return-object v0

    .line 218
    :cond_d
    sget-object p0, Lcom/alibaba/fastjson2/internal/asm/Type;->FLOAT_TYPE:Lcom/alibaba/fastjson2/internal/asm/Type;

    return-object p0

    .line 270
    :cond_e
    new-instance v0, Lcom/alibaba/fastjson2/internal/asm/Type;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/alibaba/fastjson2/internal/asm/Type;-><init>(ILjava/lang/String;II)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 3

    .line 485
    iget v0, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->sort:I

    packed-switch v0, :pswitch_data_0

    .line 515
    :pswitch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 513
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueBuffer:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueBegin:I

    iget v2, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueEnd:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 505
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueBuffer:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueBegin:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/internal/asm/Type;->getDimensions()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueEnd:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson2/internal/asm/Type;->getTypeInternal(Ljava/lang/String;II)Lcom/alibaba/fastjson2/internal/asm/Type;

    move-result-object v0

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/internal/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/internal/asm/Type;->getDimensions()I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    const-string v2, "[]"

    .line 508
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 510
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3
    const-string v0, "double"

    return-object v0

    :pswitch_4
    const-string v0, "long"

    return-object v0

    :pswitch_5
    const-string v0, "float"

    return-object v0

    :pswitch_6
    const-string v0, "int"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "short"

    return-object v0

    :pswitch_8
    const-string v0, "byte"

    return-object v0

    :pswitch_9
    const-string v0, "char"

    return-object v0

    :pswitch_a
    const-string v0, "boolean"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "void"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
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
        :pswitch_1
    .end packed-switch
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 12

    .line 297
    iget v0, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->sort:I

    const/16 v1, 0x4c

    const-string v2, "(Ljava/lang/Class;Ljava/util/function/Supplier;[Lcom/alibaba/fastjson2/reader/FieldReader;)V"

    const/16 v3, 0xa

    if-ne v0, v3, :cond_f

    .line 298
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueBuffer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1
    const-string v2, "(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_0

    :sswitch_2
    const-string v2, "(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v3, v6

    goto :goto_0

    :sswitch_3
    const-string v2, "(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    const/16 v0, 0x46

    const-string v2, "Ljava/lang/reflect/Type;"

    const-string v4, "Ljava/lang/Class;"

    const/16 v7, 0x22

    const/16 v8, 0x24

    const/16 v9, 0x11

    const/16 v10, 0x13

    const-string v11, "Ljava/lang/Object;"

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 300
    :pswitch_0
    iget v0, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueBegin:I

    if-ne v0, v5, :cond_4

    iget v1, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueEnd:I

    if-ne v1, v9, :cond_4

    return-object v4

    :cond_4
    if-ne v0, v10, :cond_d

    .line 303
    iget v0, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueEnd:I

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_d

    const-string v0, "Ljava/util/function/Supplier;"

    return-object v0

    .line 319
    :pswitch_1
    iget v1, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueBegin:I

    if-ne v1, v5, :cond_5

    iget v2, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueEnd:I

    if-ne v2, v9, :cond_5

    return-object v4

    :cond_5
    const-string v2, "Ljava/lang/String;"

    if-ne v1, v10, :cond_6

    .line 322
    iget v3, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueEnd:I

    const/16 v4, 0x23

    if-ne v3, v4, :cond_6

    return-object v2

    :cond_6
    const/16 v3, 0x25

    if-ne v1, v3, :cond_7

    .line 325
    iget v3, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueEnd:I

    const/16 v4, 0x35

    if-ne v3, v4, :cond_7

    return-object v2

    :cond_7
    const/16 v2, 0x38

    if-ne v1, v2, :cond_d

    .line 328
    iget v1, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueEnd:I

    if-ne v1, v0, :cond_d

    const-string v0, "Ljava/util/List;"

    return-object v0

    .line 333
    :pswitch_2
    iget v1, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueBegin:I

    if-ne v1, v5, :cond_8

    iget v3, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueEnd:I

    if-ne v3, v7, :cond_8

    const-string v0, "Lcom/alibaba/fastjson2/JSONWriter;"

    return-object v0

    :cond_8
    if-ne v1, v8, :cond_9

    .line 336
    iget v3, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueEnd:I

    const/16 v4, 0x34

    if-ne v3, v4, :cond_9

    return-object v11

    :cond_9
    const/16 v3, 0x36

    if-ne v1, v3, :cond_a

    .line 339
    iget v3, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueEnd:I

    if-ne v3, v0, :cond_a

    return-object v11

    :cond_a
    const/16 v0, 0x48

    if-ne v1, v0, :cond_d

    .line 342
    iget v0, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueEnd:I

    const/16 v1, 0x5e

    if-ne v0, v1, :cond_d

    return-object v2

    .line 308
    :pswitch_3
    iget v0, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueBegin:I

    if-ne v0, v5, :cond_b

    iget v3, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueEnd:I

    if-ne v3, v7, :cond_b

    const-string v0, "Lcom/alibaba/fastjson2/JSONReader;"

    return-object v0

    :cond_b
    if-ne v0, v8, :cond_c

    .line 311
    iget v3, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueEnd:I

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_c

    return-object v2

    :cond_c
    const/16 v2, 0x3c

    if-ne v0, v2, :cond_d

    .line 314
    iget v0, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueEnd:I

    if-ne v0, v1, :cond_d

    return-object v11

    .line 350
    :cond_d
    :goto_1
    iget v0, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueBegin:I

    if-ne v0, v6, :cond_e

    iget v0, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueEnd:I

    add-int/2addr v0, v6

    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueBuffer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_e

    .line 351
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueBuffer:Ljava/lang/String;

    return-object v0

    .line 353
    :cond_e
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueBuffer:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueBegin:I

    sub-int/2addr v1, v6

    iget v2, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueEnd:I

    add-int/2addr v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    const/16 v3, 0xc

    if-ne v0, v3, :cond_10

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueBuffer:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueBegin:I

    iget v3, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueEnd:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 357
    :cond_10
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueBuffer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "VZCBSIFJD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_2

    .line 364
    :cond_11
    iget v0, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueBegin:I

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_13

    iget v0, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueEnd:I

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_13

    const-string v0, "[Lcom/alibaba/fastjson2/reader/FieldReader;"

    return-object v0

    .line 359
    :cond_12
    iget v0, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueBegin:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_13

    iget v0, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueEnd:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_13

    const-string v0, "J"

    return-object v0

    .line 371
    :cond_13
    :goto_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueBuffer:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueBegin:I

    iget v2, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueEnd:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x3c3d4970 -> :sswitch_3
        -0x1c1066ca -> :sswitch_2
        -0xa827247 -> :sswitch_1
        0x31ca26db -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDimensions()I
    .locals 3

    const/4 v0, 0x1

    .line 525
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueBuffer:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/fastjson2/internal/asm/Type;->valueBegin:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method
