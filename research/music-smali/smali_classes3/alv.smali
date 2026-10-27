.class final Lalv;
.super Ljava/lang/Object;
.source "MinimalEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lalv$b;,
        Lalv$a;,
        Lalv$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Lalh;

.field private final d:Laln;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;ZLaln;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lalv;->a:Ljava/lang/String;

    .line 95
    iput-boolean p3, p0, Lalv;->b:Z

    .line 96
    new-instance p3, Lalh;

    const/4 v0, -0x1

    invoke-direct {p3, p1, p2, v0}, Lalh;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;I)V

    iput-object p3, p0, Lalv;->c:Lalh;

    .line 97
    iput-object p4, p0, Lalv;->d:Laln;

    return-void
.end method

.method static a(Lalo;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 197
    :cond_0
    sget-object v1, Lalv$1;->b:[I

    invoke-virtual {p0}, Lalo;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v0, 0x2

    if-eq v1, v0, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v0, 0x4

    if-ne v1, v0, :cond_1

    return v2

    .line 207
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return v0

    :cond_3
    return v2

    :cond_4
    return v0
.end method

.method static a(Lalv$c;)Lalp;
    .locals 1

    .line 158
    sget-object v0, Lalv$1;->a:[I

    invoke-virtual {p0}, Lalv$c;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/16 p0, 0x28

    .line 165
    invoke-static {p0}, Lalp;->a(I)Lalp;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, 0x1a

    .line 162
    invoke-static {p0}, Lalp;->a(I)Lalp;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 p0, 0x9

    .line 160
    invoke-static {p0}, Lalp;->a(I)Lalp;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;Lalp;Ljava/nio/charset/Charset;ZLaln;)Lalv$b;
    .locals 1

    .line 119
    new-instance v0, Lalv;

    invoke-direct {v0, p0, p2, p3, p4}, Lalv;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;ZLaln;)V

    invoke-virtual {v0, p1}, Lalv;->a(Lalp;)Lalv$b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lalv;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lalv;->a:Ljava/lang/String;

    return-object p0
.end method

.method static a(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic b(Lalv;)Lalh;
    .locals 0

    .line 58
    iget-object p0, p0, Lalv;->c:Lalh;

    return-object p0
.end method

.method static b(Lalp;)Lalv$c;
    .locals 2

    .line 153
    invoke-virtual {p0}, Lalp;->a()I

    move-result v0

    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    sget-object p0, Lalv$c;->SMALL:Lalv$c;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lalp;->a()I

    move-result p0

    const/16 v0, 0x1a

    if-gt p0, v0, :cond_1

    sget-object p0, Lalv$c;->MEDIUM:Lalv$c;

    goto :goto_0

    :cond_1
    sget-object p0, Lalv$c;->LARGE:Lalv$c;

    :goto_0
    return-object p0
.end method

.method static b(C)Z
    .locals 0

    .line 174
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lals;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static c(C)Z
    .locals 1

    .line 178
    invoke-static {p0}, Lals;->a(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic c(Lalv;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lalv;->b:Z

    return p0
.end method

.method static synthetic d(Lalv;)Laln;
    .locals 0

    .line 58
    iget-object p0, p0, Lalv;->d:Laln;

    return-object p0
.end method


# virtual methods
.method a(Lalp;)Lalv$b;
    .locals 8

    if-nez p1, :cond_3

    const/4 p1, 0x3

    .line 124
    new-array v0, p1, [Lalp;

    sget-object v1, Lalv$c;->SMALL:Lalv$c;

    invoke-static {v1}, Lalv;->a(Lalv$c;)Lalp;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lalv$c;->MEDIUM:Lalv$c;

    .line 125
    invoke-static {v1}, Lalv;->a(Lalv$c;)Lalp;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lalv$c;->LARGE:Lalv$c;

    .line 126
    invoke-static {v1}, Lalv;->a(Lalv$c;)Lalp;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 127
    new-array v1, p1, [Lalv$b;

    aget-object v5, v0, v2

    invoke-virtual {p0, v5}, Lalv;->c(Lalp;)Lalv$b;

    move-result-object v5

    aput-object v5, v1, v2

    aget-object v5, v0, v3

    .line 128
    invoke-virtual {p0, v5}, Lalv;->c(Lalp;)Lalv$b;

    move-result-object v5

    aput-object v5, v1, v3

    aget-object v3, v0, v4

    .line 129
    invoke-virtual {p0, v3}, Lalv;->c(Lalp;)Lalv$b;

    move-result-object v3

    aput-object v3, v1, v4

    const v3, 0x7fffffff

    const/4 v4, -0x1

    :goto_0
    if-ge v2, p1, :cond_1

    .line 133
    aget-object v5, v1, v2

    invoke-virtual {v5}, Lalv$b;->a()I

    move-result v5

    .line 134
    aget-object v6, v0, v2

    iget-object v7, p0, Lalv;->d:Laln;

    invoke-static {v5, v6, v7}, Lals;->a(ILalp;Laln;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-ge v5, v3, :cond_0

    move v4, v2

    move v3, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ltz v4, :cond_2

    .line 142
    aget-object p1, v1, v4

    return-object p1

    .line 140
    :cond_2
    new-instance p1, Lald;

    const-string v0, "Data too big for any version"

    invoke-direct {p1, v0}, Lald;-><init>(Ljava/lang/String;)V

    throw p1

    .line 144
    :cond_3
    invoke-virtual {p0, p1}, Lalv;->c(Lalp;)Lalv$b;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lalv$b;->a()I

    move-result v1

    invoke-virtual {v0}, Lalv$b;->b()Lalp;

    move-result-object v2

    invoke-static {v2}, Lalv;->b(Lalp;)Lalv$c;

    move-result-object v2

    invoke-static {v2}, Lalv;->a(Lalv$c;)Lalp;

    move-result-object v2

    iget-object v3, p0, Lalv;->d:Laln;

    invoke-static {v1, v2, v3}, Lals;->a(ILalp;Laln;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    .line 146
    :cond_4
    new-instance v0, Lald;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data too big for version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lald;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(Lalp;[[[Lalv$a;ILalv$a;)V
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move/from16 v11, p3

    .line 222
    iget-object v0, v9, Lalv;->c:Lalh;

    invoke-virtual {v0}, Lalh;->a()I

    move-result v0

    .line 223
    iget-object v1, v9, Lalv;->c:Lalh;

    invoke-virtual {v1}, Lalh;->b()I

    move-result v1

    if-ltz v1, :cond_0

    .line 224
    iget-object v2, v9, Lalv;->c:Lalh;

    iget-object v3, v9, Lalv;->a:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3, v1}, Lalh;->a(CI)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v12, v0

    move v13, v1

    :goto_1
    if-ge v13, v12, :cond_2

    .line 230
    iget-object v0, v9, Lalv;->c:Lalh;

    iget-object v1, v9, Lalv;->a:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1, v13}, Lalh;->a(CI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    new-instance v14, Lalv$a;

    sget-object v2, Lalo;->BYTE:Lalo;

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v3, p3

    move v4, v13

    move-object/from16 v6, p4

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v8}, Lalv$a;-><init>(Lalv;Lalo;IIILalv$a;Lalp;Lalv$1;)V

    invoke-virtual {v9, v10, v11, v14}, Lalv;->a([[[Lalv$a;ILalv$a;)V

    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 235
    :cond_2
    sget-object v0, Lalo;->KANJI:Lalo;

    iget-object v1, v9, Lalv;->a:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v9, v0, v1}, Lalv;->a(Lalo;C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    new-instance v12, Lalv$a;

    sget-object v2, Lalo;->KANJI:Lalo;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object v0, v12

    move-object/from16 v1, p0

    move/from16 v3, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v8}, Lalv$a;-><init>(Lalv;Lalo;IIILalv$a;Lalp;Lalv$1;)V

    invoke-virtual {v9, v10, v11, v12}, Lalv;->a([[[Lalv$a;ILalv$a;)V

    .line 239
    :cond_3
    iget-object v0, v9, Lalv;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    .line 240
    sget-object v0, Lalo;->ALPHANUMERIC:Lalo;

    iget-object v1, v9, Lalv;->a:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v9, v0, v1}, Lalv;->a(Lalo;C)Z

    move-result v0

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eqz v0, :cond_6

    .line 241
    new-instance v15, Lalv$a;

    sget-object v2, Lalo;->ALPHANUMERIC:Lalo;

    const/4 v4, 0x0

    add-int/lit8 v0, v11, 0x1

    if-ge v0, v12, :cond_5

    sget-object v1, Lalo;->ALPHANUMERIC:Lalo;

    iget-object v3, v9, Lalv;->a:Ljava/lang/String;

    .line 242
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v9, v1, v0}, Lalv;->a(Lalo;C)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move v5, v13

    goto :goto_3

    :cond_5
    :goto_2
    move v5, v14

    :goto_3
    const/4 v8, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v3, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v8}, Lalv$a;-><init>(Lalv;Lalo;IIILalv$a;Lalp;Lalv$1;)V

    .line 241
    invoke-virtual {v9, v10, v11, v15}, Lalv;->a([[[Lalv$a;ILalv$a;)V

    .line 245
    :cond_6
    sget-object v0, Lalo;->NUMERIC:Lalo;

    iget-object v1, v9, Lalv;->a:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v9, v0, v1}, Lalv;->a(Lalo;C)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 246
    new-instance v15, Lalv$a;

    sget-object v2, Lalo;->NUMERIC:Lalo;

    const/4 v4, 0x0

    add-int/lit8 v0, v11, 0x1

    if-ge v0, v12, :cond_a

    sget-object v1, Lalo;->NUMERIC:Lalo;

    iget-object v3, v9, Lalv;->a:Ljava/lang/String;

    .line 247
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v9, v1, v0}, Lalv;->a(Lalo;C)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v0, v11, 0x2

    if-ge v0, v12, :cond_9

    sget-object v1, Lalo;->NUMERIC:Lalo;

    iget-object v3, v9, Lalv;->a:Ljava/lang/String;

    .line 248
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v9, v1, v0}, Lalv;->a(Lalo;C)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    const/4 v0, 0x3

    move v5, v0

    goto :goto_6

    :cond_9
    :goto_4
    move v5, v13

    goto :goto_6

    :cond_a
    :goto_5
    move v5, v14

    :goto_6
    const/4 v8, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v3, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v8}, Lalv$a;-><init>(Lalv;Lalo;IIILalv$a;Lalp;Lalv$1;)V

    .line 246
    invoke-virtual {v9, v10, v11, v15}, Lalv;->a([[[Lalv$a;ILalv$a;)V

    :cond_b
    return-void
.end method

.method a([[[Lalv$a;ILalv$a;)V
    .locals 2

    .line 212
    invoke-static {p3}, Lalv$a;->a(Lalv$a;)I

    move-result v0

    add-int/2addr p2, v0

    .line 213
    aget-object p1, p1, p2

    invoke-static {p3}, Lalv$a;->b(Lalv$a;)I

    move-result p2

    aget-object p1, p1, p2

    .line 214
    invoke-static {p3}, Lalv$a;->c(Lalv$a;)Lalo;

    move-result-object p2

    invoke-static {p2}, Lalv;->a(Lalo;)I

    move-result p2

    .line 215
    aget-object v0, p1, p2

    if-eqz v0, :cond_0

    aget-object v0, p1, p2

    invoke-static {v0}, Lalv$a;->d(Lalv$a;)I

    move-result v0

    invoke-static {p3}, Lalv$a;->d(Lalv$a;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 216
    :cond_0
    aput-object p3, p1, p2

    :cond_1
    return-void
.end method

.method a(Lalo;C)Z
    .locals 2

    .line 182
    sget-object v0, Lalv$1;->b:[I

    invoke-virtual {p1}, Lalo;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0

    .line 185
    :cond_1
    invoke-static {p2}, Lalv;->a(C)Z

    move-result p1

    return p1

    .line 184
    :cond_2
    invoke-static {p2}, Lalv;->c(C)Z

    move-result p1

    return p1

    .line 183
    :cond_3
    invoke-static {p2}, Lalv;->b(C)Z

    move-result p1

    return p1
.end method

.method c(Lalp;)Lalv$b;
    .locals 11

    .line 363
    iget-object v0, p0, Lalv;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 371
    iget-object v2, p0, Lalv;->c:Lalh;

    invoke-virtual {v2}, Lalh;->a()I

    move-result v2

    const/4 v3, 0x4

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    const-class v2, Lalv$a;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[Lalv$a;

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 372
    invoke-virtual {p0, p1, v1, v2, v4}, Lalv;->a(Lalp;[[[Lalv$a;ILalv$a;)V

    const/4 v4, 0x1

    :goto_0
    if-gt v4, v0, :cond_3

    move v5, v2

    .line 375
    :goto_1
    iget-object v6, p0, Lalv;->c:Lalh;

    invoke-virtual {v6}, Lalh;->a()I

    move-result v6

    if-ge v5, v6, :cond_2

    move v6, v2

    :goto_2
    if-ge v6, v3, :cond_1

    .line 377
    aget-object v7, v1, v4

    aget-object v7, v7, v5

    aget-object v7, v7, v6

    if-eqz v7, :cond_0

    if-ge v4, v0, :cond_0

    .line 378
    aget-object v7, v1, v4

    aget-object v7, v7, v5

    aget-object v7, v7, v6

    invoke-virtual {p0, p1, v1, v4, v7}, Lalv;->a(Lalp;[[[Lalv$a;ILalv$a;)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const v4, 0x7fffffff

    const/4 v5, -0x1

    move v7, v4

    move v6, v5

    move v4, v2

    .line 387
    :goto_3
    iget-object v8, p0, Lalv;->c:Lalh;

    invoke-virtual {v8}, Lalh;->a()I

    move-result v8

    if-ge v4, v8, :cond_6

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v2

    :goto_4
    if-ge v5, v3, :cond_5

    .line 389
    aget-object v9, v1, v0

    aget-object v9, v9, v4

    aget-object v9, v9, v5

    if-eqz v9, :cond_4

    .line 390
    aget-object v9, v1, v0

    aget-object v9, v9, v4

    aget-object v9, v9, v5

    .line 391
    invoke-static {v9}, Lalv$a;->d(Lalv$a;)I

    move-result v10

    if-ge v10, v8, :cond_4

    .line 392
    invoke-static {v9}, Lalv$a;->d(Lalv$a;)I

    move-result v8

    move v6, v4

    move v7, v5

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v4, v4, 0x1

    move v5, v6

    move v6, v7

    move v7, v8

    goto :goto_3

    :cond_6
    if-ltz v5, :cond_7

    .line 402
    new-instance v2, Lalv$b;

    aget-object v0, v1, v0

    aget-object v0, v0, v5

    aget-object v0, v0, v6

    invoke-direct {v2, p0, p1, v0}, Lalv$b;-><init>(Lalv;Lalp;Lalv$a;)V

    return-object v2

    .line 400
    :cond_7
    new-instance p1, Lald;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Internal error: failed to encode \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lalv;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lald;-><init>(Ljava/lang/String;)V

    throw p1
.end method
