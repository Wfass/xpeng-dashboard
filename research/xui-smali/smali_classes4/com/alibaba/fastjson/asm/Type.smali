.class public Lcom/alibaba/fastjson/asm/Type;
.super Ljava/lang/Object;
.source "Type.java"


# static fields
.field public static final BOOLEAN_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final BYTE_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final CHAR_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final DOUBLE_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final FLOAT_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final INT_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final LONG_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final SHORT_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final VOID_TYPE:Lcom/alibaba/fastjson/asm/Type;


# instance fields
.field private final buf:[C

.field private final len:I

.field private final off:I

.field protected final sort:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 42
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x56050000

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->VOID_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 47
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const v3, 0x5a000501

    invoke-direct {v0, v2, v1, v3, v2}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->BOOLEAN_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 52
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v3, 0x2

    const v4, 0x43000601

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->CHAR_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 57
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v3, 0x3

    const v4, 0x42000501

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->BYTE_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 62
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v3, 0x4

    const v4, 0x53000701

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->SHORT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 67
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v3, 0x5

    const v4, 0x49000001

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->INT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 72
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v3, 0x6

    const v4, 0x46020201

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->FLOAT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 77
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v3, 0x7

    const v4, 0x4a010102    # 2113600.5f

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->LONG_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 82
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/16 v3, 0x8

    const v4, 0x44030302

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->DOUBLE_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-void
.end method

.method private constructor <init>(I[CII)V
    .locals 0
    .param p1, "sort"    # I
    .param p2, "buf"    # [C
    .param p3, "off"    # I
    .param p4, "len"    # I

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput p1, p0, Lcom/alibaba/fastjson/asm/Type;->sort:I

    .line 116
    iput-object p2, p0, Lcom/alibaba/fastjson/asm/Type;->buf:[C

    .line 117
    iput p3, p0, Lcom/alibaba/fastjson/asm/Type;->off:I

    .line 118
    iput p4, p0, Lcom/alibaba/fastjson/asm/Type;->len:I

    .line 119
    return-void
.end method

.method static getArgumentTypes(Ljava/lang/String;)[Lcom/alibaba/fastjson/asm/Type;
    .locals 9
    .param p0, "methodDescriptor"    # Ljava/lang/String;

    .line 234
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 235
    .local v0, "buf":[C
    const/4 v1, 0x1

    .line 236
    .local v1, "off":I
    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    .line 238
    .local v1, "size":I
    .local v3, "off":I
    :goto_0
    add-int/lit8 v4, v3, 0x1

    .local v4, "off":I
    aget-char v3, v0, v3

    .line 239
    .local v3, "car":C
    const/16 v5, 0x29

    if-ne v3, v5, :cond_2

    .line 240
    nop

    .line 250
    .end local v3    # "car":C
    new-array v3, v1, [Lcom/alibaba/fastjson/asm/Type;

    .line 251
    .local v3, "args":[Lcom/alibaba/fastjson/asm/Type;
    const/4 v4, 0x1

    .line 252
    const/4 v1, 0x0

    .line 253
    :goto_1
    aget-char v6, v0, v4

    if-eq v6, v5, :cond_1

    .line 254
    invoke-static {v0, v4}, Lcom/alibaba/fastjson/asm/Type;->getType([CI)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v6

    aput-object v6, v3, v1

    .line 255
    aget-object v6, v3, v1

    iget v6, v6, Lcom/alibaba/fastjson/asm/Type;->len:I

    aget-object v7, v3, v1

    iget v7, v7, Lcom/alibaba/fastjson/asm/Type;->sort:I

    const/16 v8, 0xa

    if-ne v7, v8, :cond_0

    const/4 v7, 0x2

    goto :goto_2

    :cond_0
    move v7, v2

    :goto_2
    add-int/2addr v6, v7

    add-int/2addr v4, v6

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 258
    :cond_1
    return-object v3

    .line 241
    .local v3, "car":C
    :cond_2
    const/16 v5, 0x4c

    if-ne v3, v5, :cond_4

    .line 242
    :goto_3
    add-int/lit8 v5, v4, 0x1

    .local v5, "off":I
    aget-char v4, v0, v4

    .end local v4    # "off":I
    const/16 v6, 0x3b

    if-eq v4, v6, :cond_3

    move v4, v5

    goto :goto_3

    .line 244
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 248
    move v3, v5

    goto :goto_4

    .line 245
    .end local v5    # "off":I
    .restart local v4    # "off":I
    :cond_4
    const/16 v5, 0x5b

    if-eq v3, v5, :cond_5

    .line 246
    add-int/lit8 v1, v1, 0x1

    .line 248
    .end local v4    # "off":I
    .local v3, "off":I
    :cond_5
    move v3, v4

    :goto_4
    goto :goto_0
.end method

.method public static getArgumentsAndReturnSizes(Ljava/lang/String;)I
    .locals 8
    .param p0, "desc"    # Ljava/lang/String;

    .line 132
    const/4 v0, 0x1

    .line 133
    .local v0, "n":I
    const/4 v1, 0x1

    move v2, v0

    move v0, v1

    .line 135
    .local v0, "c":I
    .local v2, "n":I
    :goto_0
    add-int/lit8 v3, v0, 0x1

    .local v3, "c":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 136
    .local v0, "car":C
    const/16 v4, 0x29

    const/16 v5, 0x4a

    const/16 v6, 0x44

    if-ne v0, v4, :cond_3

    .line 137
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 138
    shl-int/lit8 v4, v2, 0x2

    const/16 v7, 0x56

    if-ne v0, v7, :cond_0

    const/4 v1, 0x0

    goto :goto_2

    :cond_0
    if-eq v0, v6, :cond_2

    if-ne v0, v5, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x2

    :goto_2
    or-int/2addr v1, v4

    return v1

    .line 139
    :cond_3
    const/16 v4, 0x4c

    if-ne v0, v4, :cond_5

    .line 140
    :goto_3
    add-int/lit8 v4, v3, 0x1

    .local v4, "c":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .end local v3    # "c":I
    const/16 v5, 0x3b

    if-eq v3, v5, :cond_4

    move v3, v4

    goto :goto_3

    .line 142
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 155
    move v0, v4

    goto :goto_6

    .line 150
    .end local v4    # "c":I
    .restart local v3    # "c":I
    :cond_5
    if-eq v0, v6, :cond_7

    if-ne v0, v5, :cond_6

    goto :goto_4

    .line 153
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .end local v0    # "car":C
    goto :goto_5

    .line 151
    .restart local v0    # "car":C
    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x2

    .line 155
    .end local v3    # "c":I
    .local v0, "c":I
    :goto_5
    move v0, v3

    :goto_6
    goto :goto_0
.end method

.method private getDimensions()I
    .locals 3

    .line 226
    const/4 v0, 0x1

    .line 227
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/Type;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/asm/Type;->off:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    :cond_0
    return v0
.end method

.method public static getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;
    .locals 2
    .param p0, "typeDescriptor"    # Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/asm/Type;->getType([CI)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method private static getType([CI)Lcom/alibaba/fastjson/asm/Type;
    .locals 5
    .param p0, "buf"    # [C
    .param p1, "off"    # I

    .line 167
    aget-char v0, p0, p1

    const/16 v1, 0x3b

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 200
    goto :goto_2

    .line 187
    :sswitch_0
    nop

    .local v2, "len":I
    :goto_0
    move v0, v2

    .line 188
    .end local v2    # "len":I
    .local v0, "len":I
    add-int v2, p1, v0

    aget-char v2, p0, v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_0

    .line 189
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "len":I
    .restart local v2    # "len":I
    goto :goto_0

    .line 191
    .end local v2    # "len":I
    .restart local v0    # "len":I
    :cond_0
    add-int v2, p1, v0

    aget-char v2, p0, v2

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_1

    .line 192
    add-int/lit8 v0, v0, 0x1

    .line 193
    :goto_1
    add-int v2, p1, v0

    aget-char v2, p0, v2

    if-eq v2, v1, :cond_1

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 197
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/asm/Type;

    const/16 v2, 0x9

    add-int/lit8 v3, v0, 0x1

    invoke-direct {v1, v2, p0, p1, v3}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    return-object v1

    .line 171
    .end local v0    # "len":I
    :sswitch_1
    sget-object v0, Lcom/alibaba/fastjson/asm/Type;->BOOLEAN_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object v0

    .line 169
    :sswitch_2
    sget-object v0, Lcom/alibaba/fastjson/asm/Type;->VOID_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object v0

    .line 177
    :sswitch_3
    sget-object v0, Lcom/alibaba/fastjson/asm/Type;->SHORT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object v0

    .line 183
    :sswitch_4
    sget-object v0, Lcom/alibaba/fastjson/asm/Type;->LONG_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object v0

    .line 179
    :sswitch_5
    sget-object v0, Lcom/alibaba/fastjson/asm/Type;->INT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object v0

    .line 181
    :sswitch_6
    sget-object v0, Lcom/alibaba/fastjson/asm/Type;->FLOAT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object v0

    .line 185
    :sswitch_7
    sget-object v0, Lcom/alibaba/fastjson/asm/Type;->DOUBLE_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object v0

    .line 173
    :sswitch_8
    sget-object v0, Lcom/alibaba/fastjson/asm/Type;->CHAR_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object v0

    .line 175
    :sswitch_9
    sget-object v0, Lcom/alibaba/fastjson/asm/Type;->BYTE_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object v0

    .line 200
    .restart local v2    # "len":I
    :goto_2
    move v0, v2

    .line 201
    .end local v2    # "len":I
    .restart local v0    # "len":I
    add-int v2, p1, v0

    aget-char v2, p0, v2

    if-eq v2, v1, :cond_2

    .line 202
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "len":I
    .restart local v2    # "len":I
    goto :goto_2

    .line 204
    .end local v2    # "len":I
    .restart local v0    # "len":I
    :cond_2
    new-instance v1, Lcom/alibaba/fastjson/asm/Type;

    const/16 v2, 0xa

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, v0, -0x1

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_9
        0x43 -> :sswitch_8
        0x44 -> :sswitch_7
        0x46 -> :sswitch_6
        0x49 -> :sswitch_5
        0x4a -> :sswitch_4
        0x53 -> :sswitch_3
        0x56 -> :sswitch_2
        0x5a -> :sswitch_1
        0x5b -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected getClassName()Ljava/lang/String;
    .locals 4

    .line 262
    iget v0, p0, Lcom/alibaba/fastjson/asm/Type;->sort:I

    packed-switch v0, :pswitch_data_0

    .line 290
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/asm/Type;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/asm/Type;->off:I

    iget v3, p0, Lcom/alibaba/fastjson/asm/Type;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 282
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/Type;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/asm/Type;->off:I

    invoke-direct {p0}, Lcom/alibaba/fastjson/asm/Type;->getDimensions()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/asm/Type;->getType([CI)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v0

    .line 283
    .local v0, "elementType":Lcom/alibaba/fastjson/asm/Type;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    .local v1, "b":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/alibaba/fastjson/asm/Type;->getDimensions()I

    move-result v2

    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_0

    .line 285
    const-string v3, "[]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 287
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 280
    .end local v0    # "elementType":Lcom/alibaba/fastjson/asm/Type;
    .end local v1    # "b":Ljava/lang/StringBuilder;
    :pswitch_1
    const-string v0, "double"

    return-object v0

    .line 278
    :pswitch_2
    const-string v0, "long"

    return-object v0

    .line 276
    :pswitch_3
    const-string v0, "float"

    return-object v0

    .line 274
    :pswitch_4
    const-string v0, "int"

    return-object v0

    .line 272
    :pswitch_5
    const-string v0, "short"

    return-object v0

    .line 270
    :pswitch_6
    const-string v0, "byte"

    return-object v0

    .line 268
    :pswitch_7
    const-string v0, "char"

    return-object v0

    .line 266
    :pswitch_8
    const-string v0, "boolean"

    return-object v0

    .line 264
    :pswitch_9
    const-string v0, "void"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method getDescriptor()Ljava/lang/String;
    .locals 4

    .line 222
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/asm/Type;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/asm/Type;->off:I

    iget v3, p0, Lcom/alibaba/fastjson/asm/Type;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public getInternalName()Ljava/lang/String;
    .locals 4

    .line 209
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/asm/Type;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/asm/Type;->off:I

    iget v3, p0, Lcom/alibaba/fastjson/asm/Type;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
