.class public Ljg;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final a:[C


# instance fields
.field private final b:Ljava/io/Reader;

.field private c:Z

.field private final d:[C

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:J

.field private k:I

.field private l:Ljava/lang/String;

.field private m:[I

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ")]}\'\n"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Ljg;->a:[C

    new-instance v0, Ljg$1;

    invoke-direct {v0}, Ljg$1;-><init>()V

    sput-object v0, Lcom/O000000o/O000000o/O00000Oo/e;->a:Lcom/O000000o/O000000o/O00000Oo/e;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljg;->c:Z

    const/16 v1, 0x400

    new-array v1, v1, [C

    iput-object v1, p0, Ljg;->d:[C

    iput v0, p0, Ljg;->e:I

    iput v0, p0, Ljg;->f:I

    iput v0, p0, Ljg;->g:I

    iput v0, p0, Ljg;->h:I

    iput v0, p0, Ljg;->i:I

    const/16 v1, 0x20

    new-array v1, v1, [I

    iput-object v1, p0, Ljg;->m:[I

    iput v0, p0, Ljg;->n:I

    iget-object v0, p0, Ljg;->m:[I

    iget v1, p0, Ljg;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljg;->n:I

    const/4 v2, 0x6

    aput v2, v0, v1

    if-eqz p1, :cond_0

    iput-object p1, p0, Ljg;->b:Ljava/io/Reader;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "in == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Ljg;)I
    .locals 0

    iget p0, p0, Ljg;->i:I

    return p0
.end method

.method static synthetic a(Ljg;I)I
    .locals 0

    iput p1, p0, Ljg;->i:I

    return p1
.end method

.method private a(I)V
    .locals 4

    iget v0, p0, Ljg;->n:I

    iget-object v1, p0, Ljg;->m:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Ljg;->m:[I

    :cond_0
    iget-object v0, p0, Ljg;->m:[I

    iget v1, p0, Ljg;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljg;->n:I

    aput p1, v0, v1

    return-void
.end method

.method private a(C)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x1

    return p1

    :cond_0
    :pswitch_0
    invoke-direct {p0}, Ljg;->w()V

    :cond_1
    :pswitch_1
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    :goto_0
    iget v0, p0, Ljg;->e:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljg;->f:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Ljg;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    return v2

    :cond_1
    :goto_1
    iget-object v0, p0, Ljg;->d:[C

    iget v1, p0, Ljg;->e:I

    aget-char v0, v0, v1

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-ne v0, v3, :cond_2

    iget v0, p0, Ljg;->g:I

    add-int/2addr v0, v4

    iput v0, p0, Ljg;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljg;->h:I

    goto :goto_3

    :cond_2
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_4

    iget-object v0, p0, Ljg;->d:[C

    iget v1, p0, Ljg;->e:I

    add-int/2addr v1, v2

    aget-char v0, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v0, v1, :cond_3

    :goto_3
    iget v0, p0, Ljg;->e:I

    add-int/2addr v0, v4

    iput v0, p0, Ljg;->e:I

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return v4
.end method

.method static synthetic b(Ljg;)I
    .locals 0

    invoke-direct {p0}, Ljg;->o()I

    move-result p0

    return p0
.end method

.method private b(Z)I
    .locals 7

    iget-object v0, p0, Ljg;->d:[C

    :goto_0
    iget v1, p0, Ljg;->e:I

    :goto_1
    iget v2, p0, Ljg;->f:I

    :goto_2
    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    iput v1, p0, Ljg;->e:I

    invoke-direct {p0, v3}, Ljg;->b(I)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End of input at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljg;->u()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljg;->v()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget v1, p0, Ljg;->e:I

    iget v2, p0, Ljg;->f:I

    :cond_2
    add-int/lit8 v4, v1, 0x1

    aget-char v1, v0, v1

    const/16 v5, 0xa

    if-ne v1, v5, :cond_3

    iget v1, p0, Ljg;->g:I

    add-int/2addr v1, v3

    iput v1, p0, Ljg;->g:I

    iput v4, p0, Ljg;->h:I

    goto :goto_4

    :cond_3
    const/16 v5, 0x20

    if-eq v1, v5, :cond_b

    const/16 v5, 0xd

    if-eq v1, v5, :cond_b

    const/16 v5, 0x9

    if-ne v1, v5, :cond_4

    goto :goto_4

    :cond_4
    const/16 v5, 0x2f

    if-ne v1, v5, :cond_9

    iput v4, p0, Ljg;->e:I

    const/4 v6, 0x2

    if-ne v4, v2, :cond_5

    iget v2, p0, Ljg;->e:I

    sub-int/2addr v2, v3

    iput v2, p0, Ljg;->e:I

    invoke-direct {p0, v6}, Ljg;->b(I)Z

    move-result v2

    iget v4, p0, Ljg;->e:I

    add-int/2addr v4, v3

    iput v4, p0, Ljg;->e:I

    if-nez v2, :cond_5

    return v1

    :cond_5
    invoke-direct {p0}, Ljg;->w()V

    iget v2, p0, Ljg;->e:I

    aget-char v3, v0, v2

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_7

    if-eq v3, v5, :cond_6

    return v1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljg;->e:I

    :goto_3
    invoke-direct {p0}, Ljg;->x()V

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljg;->e:I

    const-string v1, "*/"

    invoke-direct {p0, v1}, Ljg;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, Ljg;->e:I

    add-int/2addr v1, v6

    goto/16 :goto_1

    :cond_8
    const-string p1, "Unterminated comment"

    invoke-direct {p0, p1}, Ljg;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_9
    const/16 v2, 0x23

    if-ne v1, v2, :cond_a

    iput v4, p0, Ljg;->e:I

    invoke-direct {p0}, Ljg;->w()V

    goto :goto_3

    :cond_a
    iput v4, p0, Ljg;->e:I

    return v1

    :cond_b
    :goto_4
    move v1, v4

    goto/16 :goto_2
.end method

.method private b(Ljava/lang/String;)Ljava/io/IOException;
    .locals 2

    new-instance v0, Ljj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at line "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljg;->u()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " column "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljg;->v()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljj;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(C)Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Ljg;->d:[C

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    iget v2, p0, Ljg;->e:I

    iget v3, p0, Ljg;->f:I

    move v4, v2

    :goto_1
    const/4 v5, 0x1

    if-ge v2, v3, :cond_3

    add-int/lit8 v6, v2, 0x1

    aget-char v2, v0, v2

    if-ne v2, p1, :cond_0

    iput v6, p0, Ljg;->e:I

    sub-int/2addr v6, v4

    sub-int/2addr v6, v5

    invoke-virtual {v1, v0, v4, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v7, 0x5c

    if-ne v2, v7, :cond_1

    iput v6, p0, Ljg;->e:I

    sub-int/2addr v6, v4

    sub-int/2addr v6, v5

    invoke-virtual {v1, v0, v4, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljg;->y()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v7, 0xa

    if-ne v2, v7, :cond_2

    iget v2, p0, Ljg;->g:I

    add-int/2addr v2, v5

    iput v2, p0, Ljg;->g:I

    iput v6, p0, Ljg;->h:I

    :cond_2
    move v2, v6

    goto :goto_1

    :cond_3
    sub-int v3, v2, v4

    invoke-virtual {v1, v0, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iput v2, p0, Ljg;->e:I

    invoke-direct {p0, v5}, Ljg;->b(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    const-string p1, "Unterminated string"

    invoke-direct {p0, p1}, Ljg;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private b(I)Z
    .locals 6

    iget-object v0, p0, Ljg;->d:[C

    iget v1, p0, Ljg;->h:I

    iget v2, p0, Ljg;->e:I

    sub-int/2addr v1, v2

    iput v1, p0, Ljg;->h:I

    iget v1, p0, Ljg;->f:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Ljg;->f:I

    iget v1, p0, Ljg;->f:I

    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    iput v3, p0, Ljg;->f:I

    :goto_0
    iput v3, p0, Ljg;->e:I

    :cond_1
    iget-object v1, p0, Ljg;->b:Ljava/io/Reader;

    iget v2, p0, Ljg;->f:I

    array-length v4, v0

    sub-int/2addr v4, v2

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget v2, p0, Ljg;->f:I

    add-int/2addr v2, v1

    iput v2, p0, Ljg;->f:I

    iget v1, p0, Ljg;->g:I

    const/4 v2, 0x1

    if-nez v1, :cond_2

    iget v1, p0, Ljg;->h:I

    if-nez v1, :cond_2

    iget v4, p0, Ljg;->f:I

    if-lez v4, :cond_2

    aget-char v4, v0, v3

    const v5, 0xfeff

    if-ne v4, v5, :cond_2

    iget v4, p0, Ljg;->e:I

    add-int/2addr v4, v2

    iput v4, p0, Ljg;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljg;->h:I

    add-int/lit8 p1, p1, 0x1

    :cond_2
    iget v1, p0, Ljg;->f:I

    if-lt v1, p1, :cond_1

    return v2

    :cond_3
    return v3
.end method

.method static synthetic c(Ljg;)I
    .locals 0

    invoke-direct {p0}, Ljg;->u()I

    move-result p0

    return p0
.end method

.method private c(C)V
    .locals 6

    iget-object v0, p0, Ljg;->d:[C

    :goto_0
    iget v1, p0, Ljg;->e:I

    iget v2, p0, Ljg;->f:I

    :goto_1
    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    add-int/lit8 v4, v1, 0x1

    aget-char v1, v0, v1

    if-ne v1, p1, :cond_0

    iput v4, p0, Ljg;->e:I

    return-void

    :cond_0
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_1

    iput v4, p0, Ljg;->e:I

    invoke-direct {p0}, Ljg;->y()C

    goto :goto_0

    :cond_1
    const/16 v5, 0xa

    if-ne v1, v5, :cond_2

    iget v1, p0, Ljg;->g:I

    add-int/2addr v1, v3

    iput v1, p0, Ljg;->g:I

    iput v4, p0, Ljg;->h:I

    :cond_2
    move v1, v4

    goto :goto_1

    :cond_3
    iput v1, p0, Ljg;->e:I

    invoke-direct {p0, v3}, Ljg;->b(I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    const-string p1, "Unterminated string"

    invoke-direct {p0, p1}, Ljg;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method static synthetic d(Ljg;)I
    .locals 0

    invoke-direct {p0}, Ljg;->v()I

    move-result p0

    return p0
.end method

.method private o()I
    .locals 15

    iget-object v0, p0, Ljg;->m:[I

    iget v1, p0, Ljg;->n:I

    add-int/lit8 v2, v1, -0x1

    aget v2, v0, v2

    const/16 v3, 0x8

    const/16 v4, 0x27

    const/16 v5, 0x22

    const/16 v6, 0x5d

    const/4 v7, 0x3

    const/4 v8, 0x7

    const/16 v9, 0x3b

    const/16 v10, 0x2c

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ne v2, v13, :cond_0

    sub-int/2addr v1, v13

    aput v12, v0, v1

    goto/16 :goto_1

    :cond_0
    if-ne v2, v12, :cond_3

    invoke-direct {p0, v13}, Ljg;->b(Z)I

    move-result v0

    if-eq v0, v10, :cond_c

    if-eq v0, v9, :cond_2

    if-ne v0, v6, :cond_1

    iput v11, p0, Ljg;->i:I

    return v11

    :cond_1
    const-string v0, "Unterminated array"

    invoke-direct {p0, v0}, Ljg;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_2
    invoke-direct {p0}, Ljg;->w()V

    goto :goto_1

    :cond_3
    const/4 v14, 0x5

    if-eq v2, v7, :cond_1b

    if-ne v2, v14, :cond_4

    goto/16 :goto_3

    :cond_4
    if-ne v2, v11, :cond_7

    sub-int/2addr v1, v13

    aput v14, v0, v1

    invoke-direct {p0, v13}, Ljg;->b(Z)I

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_c

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_6

    invoke-direct {p0}, Ljg;->w()V

    iget v0, p0, Ljg;->e:I

    iget v1, p0, Ljg;->f:I

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v13}, Ljg;->b(I)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_5
    iget-object v0, p0, Ljg;->d:[C

    iget v1, p0, Ljg;->e:I

    aget-char v0, v0, v1

    const/16 v14, 0x3e

    if-ne v0, v14, :cond_c

    add-int/2addr v1, v13

    iput v1, p0, Ljg;->e:I

    goto :goto_1

    :cond_6
    const-string v0, "Expected \':\'"

    invoke-direct {p0, v0}, Ljg;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_7
    const/4 v0, 0x6

    if-ne v2, v0, :cond_9

    iget-boolean v0, p0, Ljg;->c:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Ljg;->z()V

    :cond_8
    iget-object v0, p0, Ljg;->m:[I

    iget v1, p0, Ljg;->n:I

    sub-int/2addr v1, v13

    aput v8, v0, v1

    goto :goto_1

    :cond_9
    if-ne v2, v8, :cond_b

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljg;->b(Z)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    const/16 v0, 0x11

    :goto_0
    iput v0, p0, Ljg;->i:I

    return v0

    :cond_a
    invoke-direct {p0}, Ljg;->w()V

    iget v0, p0, Ljg;->e:I

    sub-int/2addr v0, v13

    iput v0, p0, Ljg;->e:I

    goto :goto_1

    :cond_b
    if-eq v2, v3, :cond_1a

    :cond_c
    :goto_1
    invoke-direct {p0, v13}, Ljg;->b(Z)I

    move-result v0

    if-eq v0, v5, :cond_18

    if-eq v0, v4, :cond_17

    if-eq v0, v10, :cond_14

    if-eq v0, v9, :cond_14

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_13

    if-eq v0, v6, :cond_12

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_11

    iget v0, p0, Ljg;->e:I

    sub-int/2addr v0, v13

    iput v0, p0, Ljg;->e:I

    iget v0, p0, Ljg;->n:I

    if-ne v0, v13, :cond_d

    invoke-direct {p0}, Ljg;->w()V

    :cond_d
    invoke-direct {p0}, Ljg;->q()I

    move-result v0

    if-eqz v0, :cond_e

    return v0

    :cond_e
    invoke-direct {p0}, Ljg;->r()I

    move-result v0

    if-eqz v0, :cond_f

    return v0

    :cond_f
    iget-object v0, p0, Ljg;->d:[C

    iget v1, p0, Ljg;->e:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Ljg;->a(C)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Ljg;->w()V

    const/16 v0, 0xa

    goto :goto_0

    :cond_10
    const-string v0, "Expected value"

    invoke-direct {p0, v0}, Ljg;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_11
    iput v13, p0, Ljg;->i:I

    return v13

    :cond_12
    if-ne v2, v13, :cond_14

    iput v11, p0, Ljg;->i:I

    return v11

    :cond_13
    iput v7, p0, Ljg;->i:I

    return v7

    :cond_14
    if-eq v2, v13, :cond_16

    if-ne v2, v12, :cond_15

    goto :goto_2

    :cond_15
    const-string v0, "Unexpected value"

    invoke-direct {p0, v0}, Ljg;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_16
    :goto_2
    invoke-direct {p0}, Ljg;->w()V

    iget v0, p0, Ljg;->e:I

    sub-int/2addr v0, v13

    iput v0, p0, Ljg;->e:I

    iput v8, p0, Ljg;->i:I

    return v8

    :cond_17
    invoke-direct {p0}, Ljg;->w()V

    iput v3, p0, Ljg;->i:I

    return v3

    :cond_18
    iget v0, p0, Ljg;->n:I

    if-ne v0, v13, :cond_19

    invoke-direct {p0}, Ljg;->w()V

    :cond_19
    const/16 v0, 0x9

    goto/16 :goto_0

    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    :goto_3
    iget-object v0, p0, Ljg;->m:[I

    iget v1, p0, Ljg;->n:I

    sub-int/2addr v1, v13

    aput v11, v0, v1

    const/16 v0, 0x7d

    if-ne v2, v14, :cond_1e

    invoke-direct {p0, v13}, Ljg;->b(Z)I

    move-result v1

    if-eq v1, v10, :cond_1e

    if-eq v1, v9, :cond_1d

    if-ne v1, v0, :cond_1c

    iput v12, p0, Ljg;->i:I

    return v12

    :cond_1c
    const-string v0, "Unterminated object"

    invoke-direct {p0, v0}, Ljg;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1d
    invoke-direct {p0}, Ljg;->w()V

    :cond_1e
    invoke-direct {p0, v13}, Ljg;->b(Z)I

    move-result v1

    if-eq v1, v5, :cond_23

    if-eq v1, v4, :cond_22

    const-string v3, "Expected name"

    if-eq v1, v0, :cond_20

    invoke-direct {p0}, Ljg;->w()V

    iget v0, p0, Ljg;->e:I

    sub-int/2addr v0, v13

    iput v0, p0, Ljg;->e:I

    int-to-char v0, v1

    invoke-direct {p0, v0}, Ljg;->a(C)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/16 v0, 0xe

    goto/16 :goto_0

    :cond_1f
    invoke-direct {p0, v3}, Ljg;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_20
    if-eq v2, v14, :cond_21

    iput v12, p0, Ljg;->i:I

    return v12

    :cond_21
    invoke-direct {p0, v3}, Ljg;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_22
    invoke-direct {p0}, Ljg;->w()V

    const/16 v0, 0xc

    goto/16 :goto_0

    :cond_23
    const/16 v0, 0xd

    goto/16 :goto_0
.end method

.method private q()I
    .locals 8

    iget-object v0, p0, Ljg;->d:[C

    iget v1, p0, Ljg;->e:I

    aget-char v0, v0, v1

    const/4 v1, 0x0

    const/16 v2, 0x74

    if-eq v0, v2, :cond_5

    const/16 v2, 0x54

    if-ne v0, v2, :cond_0

    goto :goto_2

    :cond_0
    const/16 v2, 0x66

    if-eq v0, v2, :cond_4

    const/16 v2, 0x46

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x6e

    if-eq v0, v2, :cond_3

    const/16 v2, 0x4e

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 v0, 0x7

    const-string v2, "null"

    const-string v3, "NULL"

    goto :goto_3

    :cond_4
    :goto_1
    const/4 v0, 0x6

    const-string v2, "false"

    const-string v3, "FALSE"

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v0, 0x5

    const-string v2, "true"

    const-string v3, "TRUE"

    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    :goto_4
    if-ge v5, v4, :cond_8

    iget v6, p0, Ljg;->e:I

    add-int/2addr v6, v5

    iget v7, p0, Ljg;->f:I

    if-lt v6, v7, :cond_6

    add-int/lit8 v6, v5, 0x1

    invoke-direct {p0, v6}, Ljg;->b(I)Z

    move-result v6

    if-nez v6, :cond_6

    return v1

    :cond_6
    iget-object v6, p0, Ljg;->d:[C

    iget v7, p0, Ljg;->e:I

    add-int/2addr v7, v5

    aget-char v6, v6, v7

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_7

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_7

    return v1

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    iget v2, p0, Ljg;->e:I

    add-int/2addr v2, v4

    iget v3, p0, Ljg;->f:I

    if-lt v2, v3, :cond_9

    add-int/lit8 v2, v4, 0x1

    invoke-direct {p0, v2}, Ljg;->b(I)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    iget-object v2, p0, Ljg;->d:[C

    iget v3, p0, Ljg;->e:I

    add-int/2addr v3, v4

    aget-char v2, v2, v3

    invoke-direct {p0, v2}, Ljg;->a(C)Z

    move-result v2

    if-eqz v2, :cond_a

    return v1

    :cond_a
    iget v1, p0, Ljg;->e:I

    add-int/2addr v1, v4

    iput v1, p0, Ljg;->e:I

    iput v0, p0, Ljg;->i:I

    return v0
.end method

.method private r()I
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Ljg;->d:[C

    iget v2, v0, Ljg;->e:I

    iget v3, v0, Ljg;->f:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    move v8, v3

    move v10, v6

    move v3, v7

    move v9, v3

    move v13, v9

    const-wide/16 v11, 0x0

    :goto_0
    add-int v14, v2, v3

    const/4 v15, 0x2

    if-ne v14, v8, :cond_2

    array-length v2, v1

    if-ne v3, v2, :cond_0

    return v7

    :cond_0
    add-int/lit8 v2, v3, 0x1

    invoke-direct {v0, v2}, Ljg;->b(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_6

    :cond_1
    iget v2, v0, Ljg;->e:I

    iget v8, v0, Ljg;->f:I

    :cond_2
    add-int v14, v2, v3

    aget-char v14, v1, v14

    const/16 v7, 0x2b

    const/4 v4, 0x3

    const/4 v5, 0x5

    if-eq v14, v7, :cond_1c

    const/16 v7, 0x45

    if-eq v14, v7, :cond_19

    const/16 v7, 0x65

    if-eq v14, v7, :cond_19

    const/16 v7, 0x2d

    if-eq v14, v7, :cond_16

    const/16 v7, 0x2e

    if-eq v14, v7, :cond_14

    const/16 v7, 0x30

    if-lt v14, v7, :cond_d

    const/16 v7, 0x39

    if-le v14, v7, :cond_3

    goto :goto_5

    :cond_3
    if-eq v9, v6, :cond_b

    if-nez v9, :cond_4

    goto :goto_3

    :cond_4
    if-ne v9, v15, :cond_8

    const-wide/16 v16, 0x0

    cmp-long v4, v11, v16

    if-nez v4, :cond_5

    const/4 v4, 0x0

    return v4

    :cond_5
    const-wide/16 v4, 0xa

    mul-long/2addr v4, v11

    add-int/lit8 v14, v14, -0x30

    int-to-long v14, v14

    sub-long/2addr v4, v14

    const-wide v14, -0xcccccccccccccccL

    cmp-long v7, v11, v14

    if-gtz v7, :cond_7

    if-nez v7, :cond_6

    cmp-long v7, v4, v11

    if-gez v7, :cond_6

    goto :goto_1

    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    move v7, v6

    :goto_2
    and-int/2addr v7, v10

    move-wide v11, v4

    move v10, v7

    goto :goto_4

    :cond_8
    const-wide/16 v16, 0x0

    if-ne v9, v4, :cond_9

    const/4 v7, 0x0

    const/4 v9, 0x4

    goto/16 :goto_c

    :cond_9
    if-eq v9, v5, :cond_a

    const/4 v4, 0x6

    if-ne v9, v4, :cond_c

    :cond_a
    const/4 v7, 0x0

    const/4 v9, 0x7

    goto/16 :goto_c

    :cond_b
    :goto_3
    const-wide/16 v16, 0x0

    add-int/lit8 v14, v14, -0x30

    neg-int v4, v14

    int-to-long v4, v4

    move-wide v11, v4

    move v9, v15

    :cond_c
    :goto_4
    const/4 v7, 0x0

    goto/16 :goto_c

    :cond_d
    :goto_5
    invoke-direct {v0, v14}, Ljg;->a(C)Z

    move-result v1

    if-nez v1, :cond_13

    :goto_6
    if-ne v9, v15, :cond_10

    if-eqz v10, :cond_10

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v1, v11, v1

    if-nez v1, :cond_e

    if-eqz v13, :cond_10

    :cond_e
    if-eqz v13, :cond_f

    goto :goto_7

    :cond_f
    neg-long v11, v11

    :goto_7
    iput-wide v11, v0, Ljg;->j:J

    iget v1, v0, Ljg;->e:I

    add-int/2addr v1, v3

    iput v1, v0, Ljg;->e:I

    const/16 v1, 0xf

    :goto_8
    iput v1, v0, Ljg;->i:I

    return v1

    :cond_10
    if-eq v9, v15, :cond_12

    const/4 v1, 0x4

    if-eq v9, v1, :cond_12

    const/4 v1, 0x7

    if-ne v9, v1, :cond_11

    goto :goto_9

    :cond_11
    const/4 v7, 0x0

    return v7

    :cond_12
    :goto_9
    iput v3, v0, Ljg;->k:I

    const/16 v1, 0x10

    goto :goto_8

    :cond_13
    const/4 v7, 0x0

    return v7

    :cond_14
    const/4 v7, 0x0

    const-wide/16 v16, 0x0

    if-ne v9, v15, :cond_15

    goto :goto_b

    :cond_15
    return v7

    :cond_16
    const/4 v4, 0x6

    const/4 v7, 0x0

    const-wide/16 v16, 0x0

    if-nez v9, :cond_17

    move v9, v6

    move v13, v9

    goto :goto_c

    :cond_17
    if-ne v9, v5, :cond_18

    goto :goto_b

    :cond_18
    return v7

    :cond_19
    const/4 v7, 0x0

    const-wide/16 v16, 0x0

    if-eq v9, v15, :cond_1b

    const/4 v4, 0x4

    if-ne v9, v4, :cond_1a

    goto :goto_a

    :cond_1a
    return v7

    :cond_1b
    :goto_a
    move v9, v5

    goto :goto_c

    :cond_1c
    const/4 v4, 0x6

    const/4 v7, 0x0

    const-wide/16 v16, 0x0

    if-ne v9, v5, :cond_1d

    :goto_b
    move v9, v4

    :goto_c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_1d
    return v7
.end method

.method private s()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    move v1, v0

    :goto_0
    iget v3, p0, Ljg;->e:I

    add-int v4, v3, v1

    iget v5, p0, Ljg;->f:I

    if-ge v4, v5, :cond_2

    iget-object v4, p0, Ljg;->d:[C

    add-int/2addr v3, v1

    aget-char v3, v4, v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_3

    const/16 v4, 0x23

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_1

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_1

    const/16 v4, 0x7b

    if-eq v3, v4, :cond_3

    const/16 v4, 0x7d

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :pswitch_0
    invoke-direct {p0}, Ljg;->w()V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Ljg;->d:[C

    array-length v3, v3

    if-ge v1, v3, :cond_4

    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3}, Ljg;->b(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    :pswitch_1
    move v0, v1

    goto :goto_2

    :cond_4
    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :cond_5
    iget-object v3, p0, Ljg;->d:[C

    iget v4, p0, Ljg;->e:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v3, p0, Ljg;->e:I

    add-int/2addr v3, v1

    iput v3, p0, Ljg;->e:I

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljg;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_2
    if-nez v2, :cond_6

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Ljg;->d:[C

    iget v3, p0, Ljg;->e:I

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3

    :cond_6
    iget-object v1, p0, Ljg;->d:[C

    iget v3, p0, Ljg;->e:I

    invoke-virtual {v2, v1, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    iget v2, p0, Ljg;->e:I

    add-int/2addr v2, v0

    iput v2, p0, Ljg;->e:I

    return-object v1

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private t()V
    .locals 4

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ljg;->e:I

    add-int v2, v1, v0

    iget v3, p0, Ljg;->f:I

    if-ge v2, v3, :cond_3

    iget-object v2, p0, Ljg;->d:[C

    add-int/2addr v1, v0

    aget-char v1, v2, v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    const/16 v2, 0x23

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_2

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_2

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :pswitch_0
    invoke-direct {p0}, Ljg;->w()V

    :cond_2
    :pswitch_1
    iget v1, p0, Ljg;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Ljg;->e:I

    return-void

    :cond_3
    add-int/2addr v1, v0

    iput v1, p0, Ljg;->e:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljg;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private u()I
    .locals 1

    iget v0, p0, Ljg;->g:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private v()I
    .locals 2

    iget v0, p0, Ljg;->e:I

    iget v1, p0, Ljg;->h:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private w()V
    .locals 1

    iget-boolean v0, p0, Ljg;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Ljg;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private x()V
    .locals 4

    :cond_0
    iget v0, p0, Ljg;->e:I

    iget v1, p0, Ljg;->f:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    invoke-direct {p0, v2}, Ljg;->b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Ljg;->d:[C

    iget v1, p0, Ljg;->e:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Ljg;->e:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    iget v0, p0, Ljg;->g:I

    add-int/2addr v0, v2

    iput v0, p0, Ljg;->g:I

    iget v0, p0, Ljg;->e:I

    iput v0, p0, Ljg;->h:I

    goto :goto_0

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    :cond_3
    :goto_0
    return-void
.end method

.method private y()C
    .locals 8

    iget v0, p0, Ljg;->e:I

    iget v1, p0, Ljg;->f:I

    const-string v2, "Unterminated escape sequence"

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, v3}, Ljg;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Ljg;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Ljg;->d:[C

    iget v1, p0, Ljg;->e:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Ljg;->e:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_e

    const/16 v3, 0x62

    if-eq v0, v3, :cond_d

    const/16 v3, 0x66

    if-eq v0, v3, :cond_c

    const/16 v4, 0x6e

    if-eq v0, v4, :cond_b

    const/16 v4, 0x72

    if-eq v0, v4, :cond_a

    const/16 v4, 0x74

    if-eq v0, v4, :cond_9

    const/16 v4, 0x75

    if-eq v0, v4, :cond_2

    goto/16 :goto_6

    :cond_2
    iget v0, p0, Ljg;->e:I

    const/4 v4, 0x4

    add-int/2addr v0, v4

    iget v5, p0, Ljg;->f:I

    if-le v0, v5, :cond_4

    invoke-direct {p0, v4}, Ljg;->b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, v2}, Ljg;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_4
    :goto_1
    const/4 v0, 0x0

    iget v2, p0, Ljg;->e:I

    add-int/lit8 v5, v2, 0x4

    :goto_2
    if-ge v2, v5, :cond_8

    iget-object v6, p0, Ljg;->d:[C

    aget-char v6, v6, v2

    shl-int/lit8 v0, v0, 0x4

    int-to-char v0, v0

    const/16 v7, 0x30

    if-lt v6, v7, :cond_5

    const/16 v7, 0x39

    if-gt v6, v7, :cond_5

    add-int/lit8 v6, v6, -0x30

    :goto_3
    add-int/2addr v0, v6

    int-to-char v0, v0

    goto :goto_5

    :cond_5
    const/16 v7, 0x61

    if-lt v6, v7, :cond_6

    if-gt v6, v3, :cond_6

    add-int/lit8 v6, v6, -0x61

    :goto_4
    add-int/2addr v6, v1

    goto :goto_3

    :cond_6
    const/16 v7, 0x41

    if-lt v6, v7, :cond_7

    const/16 v7, 0x46

    if-gt v6, v7, :cond_7

    add-int/lit8 v6, v6, -0x41

    goto :goto_4

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Ljg;->d:[C

    iget v5, p0, Ljg;->e:I

    invoke-direct {v2, v3, v5, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget v1, p0, Ljg;->e:I

    add-int/2addr v1, v4

    iput v1, p0, Ljg;->e:I

    return v0

    :cond_9
    const/16 v0, 0x9

    return v0

    :cond_a
    const/16 v0, 0xd

    return v0

    :cond_b
    return v1

    :cond_c
    const/16 v0, 0xc

    return v0

    :cond_d
    const/16 v0, 0x8

    return v0

    :cond_e
    iget v1, p0, Ljg;->g:I

    add-int/2addr v1, v3

    iput v1, p0, Ljg;->g:I

    iget v1, p0, Ljg;->e:I

    iput v1, p0, Ljg;->h:I

    :goto_6
    return v0
.end method

.method private z()V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljg;->b(Z)I

    iget v1, p0, Ljg;->e:I

    sub-int/2addr v1, v0

    iput v1, p0, Ljg;->e:I

    iget v0, p0, Ljg;->e:I

    sget-object v1, Ljg;->a:[C

    array-length v2, v1

    add-int/2addr v0, v2

    iget v2, p0, Ljg;->f:I

    if-le v0, v2, :cond_0

    array-length v0, v1

    invoke-direct {p0, v0}, Ljg;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Ljg;->a:[C

    array-length v2, v1

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Ljg;->d:[C

    iget v3, p0, Ljg;->e:I

    add-int/2addr v3, v0

    aget-char v2, v2, v3

    aget-char v1, v1, v0

    if-eq v2, v1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Ljg;->e:I

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Ljg;->e:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget v0, p0, Ljg;->i:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljg;->o()I

    move-result v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljg;->a(I)V

    const/4 v0, 0x0

    iput v0, p0, Ljg;->i:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljg;->f()Lji;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljg;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljg;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Ljg;->c:Z

    return-void
.end method

.method public b()V
    .locals 3

    iget v0, p0, Ljg;->i:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljg;->o()I

    move-result v0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget v0, p0, Ljg;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljg;->n:I

    const/4 v0, 0x0

    iput v0, p0, Ljg;->i:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected END_ARRAY but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljg;->f()Lji;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljg;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljg;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()V
    .locals 3

    iget v0, p0, Ljg;->i:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljg;->o()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Ljg;->a(I)V

    const/4 v0, 0x0

    iput v0, p0, Ljg;->i:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljg;->f()Lji;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljg;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljg;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Ljg;->i:I

    iget-object v1, p0, Ljg;->m:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    const/4 v0, 0x1

    iput v0, p0, Ljg;->n:I

    iget-object v0, p0, Ljg;->b:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public d()V
    .locals 3

    iget v0, p0, Ljg;->i:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljg;->o()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Ljg;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljg;->n:I

    const/4 v0, 0x0

    iput v0, p0, Ljg;->i:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected END_OBJECT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljg;->f()Lji;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljg;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljg;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Z
    .locals 2

    iget v0, p0, Ljg;->i:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljg;->o()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Lji;
    .locals 1

    iget v0, p0, Ljg;->i:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljg;->o()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    sget-object v0, Lji;->O0000Oo:Lji;

    return-object v0

    :pswitch_1
    sget-object v0, Lji;->O0000O0o:Lji;

    return-object v0

    :pswitch_2
    sget-object v0, Lji;->O00000oO:Lji;

    return-object v0

    :pswitch_3
    sget-object v0, Lji;->O00000oo:Lji;

    return-object v0

    :pswitch_4
    sget-object v0, Lji;->O0000Oo0:Lji;

    return-object v0

    :pswitch_5
    sget-object v0, Lji;->O0000OOo:Lji;

    return-object v0

    :pswitch_6
    sget-object v0, Lji;->O00000Oo:Lji;

    return-object v0

    :pswitch_7
    sget-object v0, Lji;->O000000o:Lji;

    return-object v0

    :pswitch_8
    sget-object v0, Lji;->O00000o:Lji;

    return-object v0

    :pswitch_9
    sget-object v0, Lji;->O00000o0:Lji;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public g()Ljava/lang/String;
    .locals 3

    iget v0, p0, Ljg;->i:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljg;->o()I

    move-result v0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Ljg;->s()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    :goto_0
    invoke-direct {p0, v0}, Ljg;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    goto :goto_0

    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Ljg;->i:I

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljg;->f()Lji;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljg;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljg;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()Ljava/lang/String;
    .locals 4

    iget v0, p0, Ljg;->i:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljg;->o()I

    move-result v0

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Ljg;->s()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    :goto_0
    invoke-direct {p0, v0}, Ljg;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Ljg;->l:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Ljg;->l:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    iget-wide v0, p0, Ljg;->j:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljg;->d:[C

    iget v2, p0, Ljg;->e:I

    iget v3, p0, Ljg;->k:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iget v1, p0, Ljg;->e:I

    iget v2, p0, Ljg;->k:I

    add-int/2addr v1, v2

    iput v1, p0, Ljg;->e:I

    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Ljg;->i:I

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a string but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljg;->f()Lji;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljg;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljg;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()Z
    .locals 3

    iget v0, p0, Ljg;->i:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljg;->o()I

    move-result v0

    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iput v2, p0, Ljg;->i:I

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    iput v2, p0, Ljg;->i:I

    return v2

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a boolean but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljg;->f()Lji;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljg;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljg;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j()V
    .locals 3

    iget v0, p0, Ljg;->i:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljg;->o()I

    move-result v0

    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Ljg;->i:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected null but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljg;->f()Lji;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljg;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljg;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k()D
    .locals 8

    iget v0, p0, Ljg;->i:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljg;->o()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iput v2, p0, Ljg;->i:I

    iget-wide v0, p0, Ljg;->j:J

    long-to-double v0, v0

    return-wide v0

    :cond_1
    const/16 v1, 0x10

    const-string v3, " column "

    const-string v4, " at line "

    const/16 v5, 0xb

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljg;->d:[C

    iget v6, p0, Ljg;->e:I

    iget v7, p0, Ljg;->k:I

    invoke-direct {v0, v1, v6, v7}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Ljg;->l:Ljava/lang/String;

    iget v0, p0, Ljg;->e:I

    iget v1, p0, Ljg;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Ljg;->e:I

    goto :goto_3

    :cond_2
    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v6, 0x9

    if-ne v0, v6, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Ljg;->s()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    if-ne v0, v5, :cond_5

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a double but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljg;->f()Lji;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljg;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljg;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_0
    if-ne v0, v1, :cond_7

    const/16 v0, 0x27

    goto :goto_1

    :cond_7
    const/16 v0, 0x22

    :goto_1
    invoke-direct {p0, v0}, Ljg;->b(C)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Ljg;->l:Ljava/lang/String;

    :goto_3
    iput v5, p0, Ljg;->i:I

    iget-object v0, p0, Ljg;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-boolean v5, p0, Ljg;->c:Z

    if-nez v5, :cond_9

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_4

    :cond_8
    new-instance v2, Ljj;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JSON forbids NaN and infinities: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljg;->u()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljg;->v()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljj;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    :goto_4
    const/4 v3, 0x0

    iput-object v3, p0, Ljg;->l:Ljava/lang/String;

    iput v2, p0, Ljg;->i:I

    return-wide v0
.end method

.method public l()J
    .locals 10

    iget v0, p0, Ljg;->i:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljg;->o()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iput v2, p0, Ljg;->i:I

    iget-wide v0, p0, Ljg;->j:J

    return-wide v0

    :cond_1
    const/16 v1, 0x10

    const-string v3, " column "

    const-string v4, " at line "

    const-string v5, "Expected a long but was "

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljg;->d:[C

    iget v6, p0, Ljg;->e:I

    iget v7, p0, Ljg;->k:I

    invoke-direct {v0, v1, v6, v7}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Ljg;->l:Ljava/lang/String;

    iget v0, p0, Ljg;->e:I

    iget v1, p0, Ljg;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Ljg;->e:I

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    const/16 v6, 0x9

    if-ne v0, v6, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljg;->f()Lji;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljg;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljg;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    if-ne v0, v1, :cond_5

    const/16 v0, 0x27

    goto :goto_1

    :cond_5
    const/16 v0, 0x22

    :goto_1
    invoke-direct {p0, v0}, Ljg;->b(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljg;->l:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Ljg;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput v2, p0, Ljg;->i:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    :goto_2
    const/16 v0, 0xb

    iput v0, p0, Ljg;->i:I

    iget-object v0, p0, Ljg;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v6, v0

    long-to-double v8, v6

    cmpl-double v0, v8, v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    iput-object v0, p0, Ljg;->l:Ljava/lang/String;

    iput v2, p0, Ljg;->i:I

    return-wide v6

    :cond_6
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljg;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljg;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljg;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public m()I
    .locals 9

    iget v0, p0, Ljg;->i:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljg;->o()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const-string v2, " column "

    const-string v3, " at line "

    const-string v4, "Expected an int but was "

    const/4 v5, 0x0

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Ljg;->j:J

    long-to-int v6, v0

    int-to-long v7, v6

    cmp-long v0, v0, v7

    if-nez v0, :cond_1

    iput v5, p0, Ljg;->i:I

    return v6

    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Ljg;->j:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljg;->u()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljg;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljg;->d:[C

    iget v6, p0, Ljg;->e:I

    iget v7, p0, Ljg;->k:I

    invoke-direct {v0, v1, v6, v7}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Ljg;->l:Ljava/lang/String;

    iget v0, p0, Ljg;->e:I

    iget v1, p0, Ljg;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Ljg;->e:I

    goto :goto_2

    :cond_3
    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v6, 0x9

    if-ne v0, v6, :cond_4

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljg;->f()Lji;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljg;->u()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljg;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    if-ne v0, v1, :cond_6

    const/16 v0, 0x27

    goto :goto_1

    :cond_6
    const/16 v0, 0x22

    :goto_1
    invoke-direct {p0, v0}, Ljg;->b(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljg;->l:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Ljg;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v5, p0, Ljg;->i:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :goto_2
    const/16 v0, 0xb

    iput v0, p0, Ljg;->i:I

    iget-object v0, p0, Ljg;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v6, v0

    int-to-double v7, v6

    cmpl-double v0, v7, v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Ljg;->l:Ljava/lang/String;

    iput v5, p0, Ljg;->i:I

    return v6

    :cond_7
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ljg;->l:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljg;->u()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljg;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    iget v2, p0, Ljg;->i:I

    if-nez v2, :cond_1

    invoke-direct {p0}, Ljg;->o()I

    move-result v2

    :cond_1
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    invoke-direct {p0, v4}, Ljg;->a(I)V

    :goto_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2
    if-ne v2, v4, :cond_3

    invoke-direct {p0, v3}, Ljg;->a(I)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    :goto_1
    iget v2, p0, Ljg;->n:I

    sub-int/2addr v2, v4

    iput v2, p0, Ljg;->n:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_4
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    goto :goto_1

    :cond_5
    const/16 v3, 0xe

    if-eq v2, v3, :cond_b

    const/16 v3, 0xa

    if-ne v2, v3, :cond_6

    goto :goto_5

    :cond_6
    const/16 v3, 0x8

    if-eq v2, v3, :cond_a

    const/16 v3, 0xc

    if-ne v2, v3, :cond_7

    goto :goto_3

    :cond_7
    const/16 v3, 0x9

    if-eq v2, v3, :cond_9

    const/16 v3, 0xd

    if-ne v2, v3, :cond_8

    goto :goto_2

    :cond_8
    const/16 v3, 0x10

    if-ne v2, v3, :cond_c

    iget v2, p0, Ljg;->e:I

    iget v3, p0, Ljg;->k:I

    add-int/2addr v2, v3

    iput v2, p0, Ljg;->e:I

    goto :goto_6

    :cond_9
    :goto_2
    const/16 v2, 0x22

    goto :goto_4

    :cond_a
    :goto_3
    const/16 v2, 0x27

    :goto_4
    invoke-direct {p0, v2}, Ljg;->c(C)V

    goto :goto_6

    :cond_b
    :goto_5
    invoke-direct {p0}, Ljg;->t()V

    :cond_c
    :goto_6
    iput v0, p0, Ljg;->i:I

    if-nez v1, :cond_0

    return-void
.end method

.method public final p()Z
    .locals 1

    iget-boolean v0, p0, Ljg;->c:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljg;->u()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljg;->v()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
