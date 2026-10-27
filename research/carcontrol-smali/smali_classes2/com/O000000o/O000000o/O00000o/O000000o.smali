.class public Lcom/O000000o/O000000o/O00000o/O000000o;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final O000000o:[C

.field private static final O00000Oo:J = -0xcccccccccccccccL

.field private static final O00000o:I = 0x1

.field private static final O00000o0:I = 0x0

.field private static final O00000oO:I = 0x2

.field private static final O00000oo:I = 0x3

.field private static final O0000O0o:I = 0x4

.field private static final O0000OOo:I = 0x5

.field private static final O0000Oo:I = 0x7

.field private static final O0000Oo0:I = 0x6

.field private static final O0000OoO:I = 0x8

.field private static final O0000Ooo:I = 0x9

.field private static final O0000o:I = 0xe

.field private static final O0000o0:I = 0xb

.field private static final O0000o00:I = 0xa

.field private static final O0000o0O:I = 0xc

.field private static final O0000o0o:I = 0xd

.field private static final O0000oO:I = 0x10

.field private static final O0000oO0:I = 0xf

.field private static final O0000oOO:I = 0x11

.field private static final O0000oOo:I = 0x0

.field private static final O0000oo:I = 0x2

.field private static final O0000oo0:I = 0x1

.field private static final O0000ooO:I = 0x3

.field private static final O0000ooo:I = 0x4

.field private static final O000O00o:I = 0x7

.field private static final O00oOooO:I = 0x5

.field private static final O00oOooo:I = 0x6


# instance fields
.field private final O000O0OO:Ljava/io/Reader;

.field private O000O0Oo:Z

.field private O000O0o:I

.field private O000O0o0:I

.field private O000O0oO:I

.field private O000O0oo:I

.field private O000OO:I

.field private O000OO00:I

.field private O000OO0o:J

.field private O000OOOo:Ljava/lang/String;

.field private O000OOo:I

.field private O000OOo0:[I

.field private final O00oOoOo:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ")]}\'\n"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000000o:[C

    new-instance v0, Lcom/O000000o/O000000o/O00000o/O000000o$1;

    invoke-direct {v0}, Lcom/O000000o/O000000o/O00000o/O000000o$1;-><init>()V

    sput-object v0, Lcom/O000000o/O000000o/O00000Oo/O0000O0o;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O0000O0o;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0Oo:Z

    const/16 v1, 0x400

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O00oOoOo:[C

    iput v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    iput v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o:I

    iput v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0oO:I

    iput v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0oo:I

    iput v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    const/16 v1, 0x20

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OOo0:[I

    iput v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OOo:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OOo:I

    const/4 v2, 0x6

    aput v2, v1, v0

    const-string v0, "in == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0OO:Ljava/io/Reader;

    return-void
.end method

.method static synthetic O000000o(Lcom/O000000o/O000000o/O00000o/O000000o;)I
    .locals 0

    iget p0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    return p0
.end method

.method static synthetic O000000o(Lcom/O000000o/O000000o/O00000o/O000000o;I)I
    .locals 0

    iput p1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    return p1
.end method

.method private O000000o(I)V
    .locals 4

    iget v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OOo:I

    iget-object v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OOo0:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OOo0:[I

    :cond_0
    iget-object v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OOo0:[I

    iget v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OOo:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OOo:I

    aput p1, v0, v1

    return-void
.end method

.method private O000000o(C)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oo()V

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

.method private O000000o(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    return v2

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O00oOoOo:[C

    iget v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    aget-char v0, v0, v1

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-ne v0, v3, :cond_2

    iget v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0oO:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0oO:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0oo:I

    goto :goto_3

    :cond_2
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_4

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O00oOoOo:[C

    iget v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    add-int/2addr v1, v2

    aget-char v0, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v0, v1, :cond_3

    :goto_3
    iget v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return v4
.end method

.method static synthetic O00000Oo(Lcom/O000000o/O000000o/O00000o/O000000o;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000o0O()I

    move-result p0

    return p0
.end method

.method private O00000Oo(Z)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O00oOoOo:[C

    :goto_0
    iget v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    :goto_1
    iget v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o:I

    :goto_2
    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    iput v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    invoke-direct {p0, v3}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(I)Z

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

    move-result-object v0

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oOo()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oo0()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    iget v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o:I

    :cond_2
    add-int/lit8 v4, v1, 0x1

    aget-char v1, v0, v1

    const/16 v5, 0xa

    if-ne v1, v5, :cond_3

    iget v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0oO:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0oO:I

    iput v4, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0oo:I

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

    iput v4, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    const/4 v6, 0x2

    if-ne v4, v2, :cond_5

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    invoke-direct {p0, v6}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(I)Z

    move-result v2

    iget v4, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    if-nez v2, :cond_5

    return v1

    :cond_5
    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oo()V

    iget v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    aget-char v3, v0, v2

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_7

    if-eq v3, v5, :cond_6

    return v1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    :goto_3
    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000ooO()V

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    const-string v1, "*/"

    invoke-direct {p0, v1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O000000o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    add-int/2addr v1, v6

    goto/16 :goto_1

    :cond_8
    const-string p1, "Unterminated comment"

    invoke-direct {p0, p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_9
    const/16 v2, 0x23

    iput v4, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    if-ne v1, v2, :cond_a

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oo()V

    goto :goto_3

    :cond_a
    return v1

    :cond_b
    :goto_4
    move v1, v4

    goto/16 :goto_2
.end method

.method private O00000Oo(Ljava/lang/String;)Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/O000000o/O000000o/O00000o/O0000O0o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " at line "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oOo()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " column "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oo0()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/O000000o/O000000o/O00000o/O0000O0o;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private O00000Oo(C)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O00oOoOo:[C

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    iget v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    iget v3, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o:I

    move v4, v3

    move v3, v2

    :goto_1
    const/4 v5, 0x1

    if-ge v2, v4, :cond_3

    add-int/lit8 v6, v2, 0x1

    aget-char v2, v0, v2

    if-ne v2, p1, :cond_0

    iput v6, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    sub-int/2addr v6, v3

    sub-int/2addr v6, v5

    invoke-virtual {v1, v0, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v7, 0x5c

    if-ne v2, v7, :cond_1

    iput v6, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    sub-int/2addr v6, v3

    sub-int/2addr v6, v5

    invoke-virtual {v1, v0, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000ooo()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v7, 0xa

    if-ne v2, v7, :cond_2

    iget v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0oO:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0oO:I

    iput v6, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0oo:I

    :cond_2
    move v2, v6

    goto :goto_1

    :cond_3
    sub-int v4, v2, v3

    invoke-virtual {v1, v0, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iput v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    invoke-direct {p0, v5}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    const-string p1, "Unterminated string"

    invoke-direct {p0, p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private O00000Oo(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O00oOoOo:[C

    iget v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0oo:I

    iget v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0oo:I

    iget v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o:I

    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    iput v3, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o:I

    :goto_0
    iput v3, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    :cond_1
    iget-object v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0OO:Ljava/io/Reader;

    iget v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o:I

    array-length v4, v0

    sub-int/2addr v4, v2

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o:I

    iget v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0oO:I

    const/4 v4, 0x1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0oo:I

    if-nez v1, :cond_2

    if-lez v2, :cond_2

    aget-char v5, v0, v3

    const v6, 0xfeff

    if-ne v5, v6, :cond_2

    iget v5, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0oo:I

    add-int/lit8 p1, p1, 0x1

    :cond_2
    if-lt v2, p1, :cond_1

    return v4

    :cond_3
    return v3
.end method

.method static synthetic O00000o(Lcom/O000000o/O000000o/O00000o/O000000o;)I
    .locals 0

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oo0()I

    move-result p0

    return p0
.end method

.method static synthetic O00000o0(Lcom/O000000o/O000000o/O00000o/O000000o;)I
    .locals 0

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oOo()I

    move-result p0

    return p0
.end method

.method private O00000o0(C)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O00oOoOo:[C

    :goto_0
    iget v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    iget v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o:I

    :goto_1
    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    add-int/lit8 v4, v1, 0x1

    aget-char v1, v0, v1

    if-ne v1, p1, :cond_0

    iput v4, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    return-void

    :cond_0
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_1

    iput v4, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000ooo()C

    goto :goto_0

    :cond_1
    const/16 v5, 0xa

    if-ne v1, v5, :cond_2

    iget v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0oO:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0oO:I

    iput v4, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0oo:I

    :cond_2
    move v1, v4

    goto :goto_1

    :cond_3
    iput v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    invoke-direct {p0, v3}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    const-string p1, "Unterminated string"

    invoke-direct {p0, p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private O0000o()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O00oOoOo:[C

    iget v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

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

    const-string/jumbo v2, "true"

    const-string v3, "TRUE"

    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    :goto_4
    if-ge v5, v4, :cond_8

    iget v6, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    add-int/2addr v6, v5

    iget v7, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o:I

    if-lt v6, v7, :cond_6

    add-int/lit8 v6, v5, 0x1

    invoke-direct {p0, v6}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(I)Z

    move-result v6

    if-nez v6, :cond_6

    return v1

    :cond_6
    iget-object v6, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O00oOoOo:[C

    iget v7, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

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
    iget v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    add-int/2addr v2, v4

    iget v3, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o:I

    if-lt v2, v3, :cond_9

    add-int/lit8 v2, v4, 0x1

    invoke-direct {p0, v2}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(I)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    iget-object v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O00oOoOo:[C

    iget v3, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    add-int/2addr v3, v4

    aget-char v2, v2, v3

    invoke-direct {p0, v2}, Lcom/O000000o/O000000o/O00000o/O000000o;->O000000o(C)Z

    move-result v2

    if-eqz v2, :cond_a

    return v1

    :cond_a
    iget v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    iput v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    return v0
.end method

.method private O0000o0O()I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OOo0:[I

    iget v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OOo:I

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

    invoke-direct {p0, v13}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(Z)I

    move-result v0

    if-eq v0, v10, :cond_c

    if-eq v0, v9, :cond_2

    if-ne v0, v6, :cond_1

    iput v11, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    return v11

    :cond_1
    const-string v0, "Unterminated array"

    invoke-direct {p0, v0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_2
    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oo()V

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

    invoke-direct {p0, v13}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(Z)I

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_c

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_6

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oo()V

    iget v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    iget v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o:I

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v13}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(I)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_5
    iget-object v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O00oOoOo:[C

    iget v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    aget-char v0, v0, v1

    const/16 v14, 0x3e

    if-ne v0, v14, :cond_c

    add-int/2addr v1, v13

    iput v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    goto :goto_1

    :cond_6
    const-string v0, "Expected \':\'"

    invoke-direct {p0, v0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_7
    const/4 v0, 0x6

    if-ne v2, v0, :cond_9

    iget-boolean v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0Oo:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00oOooO()V

    :cond_8
    iget-object v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OOo0:[I

    iget v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OOo:I

    sub-int/2addr v1, v13

    aput v8, v0, v1

    goto :goto_1

    :cond_9
    if-ne v2, v8, :cond_b

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(Z)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    const/16 v0, 0x11

    :goto_0
    iput v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    return v0

    :cond_a
    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oo()V

    iget v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    sub-int/2addr v0, v13

    iput v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    goto :goto_1

    :cond_b
    if-eq v2, v3, :cond_1a

    :cond_c
    :goto_1
    invoke-direct {p0, v13}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(Z)I

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

    iget v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    sub-int/2addr v0, v13

    iput v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    iget v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OOo:I

    if-ne v0, v13, :cond_d

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oo()V

    :cond_d
    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000o()I

    move-result v0

    if-eqz v0, :cond_e

    return v0

    :cond_e
    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oO0()I

    move-result v0

    if-eqz v0, :cond_f

    return v0

    :cond_f
    iget-object v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O00oOoOo:[C

    iget v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O000000o(C)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oo()V

    const/16 v0, 0xa

    goto :goto_0

    :cond_10
    const-string v0, "Expected value"

    invoke-direct {p0, v0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_11
    iput v13, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    return v13

    :cond_12
    if-ne v2, v13, :cond_14

    iput v11, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    return v11

    :cond_13
    iput v7, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    return v7

    :cond_14
    if-eq v2, v13, :cond_16

    if-ne v2, v12, :cond_15

    goto :goto_2

    :cond_15
    const-string v0, "Unexpected value"

    invoke-direct {p0, v0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_16
    :goto_2
    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oo()V

    iget v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    sub-int/2addr v0, v13

    iput v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    iput v8, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    return v8

    :cond_17
    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oo()V

    iput v3, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    return v3

    :cond_18
    iget v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OOo:I

    if-ne v0, v13, :cond_19

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oo()V

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
    sub-int/2addr v1, v13

    aput v11, v0, v1

    const/16 v0, 0x7d

    if-ne v2, v14, :cond_1e

    invoke-direct {p0, v13}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(Z)I

    move-result v1

    if-eq v1, v10, :cond_1e

    if-eq v1, v9, :cond_1d

    if-ne v1, v0, :cond_1c

    iput v12, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    return v12

    :cond_1c
    const-string v0, "Unterminated object"

    invoke-direct {p0, v0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1d
    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oo()V

    :cond_1e
    invoke-direct {p0, v13}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(Z)I

    move-result v1

    if-eq v1, v5, :cond_23

    if-eq v1, v4, :cond_22

    const-string v3, "Expected name"

    if-eq v1, v0, :cond_20

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oo()V

    iget v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    sub-int/2addr v0, v13

    iput v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    int-to-char v0, v1

    invoke-direct {p0, v0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O000000o(C)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/16 v0, 0xe

    goto/16 :goto_0

    :cond_1f
    invoke-direct {p0, v3}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_20
    if-eq v2, v14, :cond_21

    iput v12, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    return v12

    :cond_21
    invoke-direct {p0, v3}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_22
    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oo()V

    const/16 v0, 0xc

    goto/16 :goto_0

    :cond_23
    const/16 v0, 0xd

    goto/16 :goto_0
.end method

.method private O0000oO()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    move v2, v0

    :goto_0
    iget v3, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    add-int v4, v3, v2

    iget v5, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o:I

    if-ge v4, v5, :cond_2

    iget-object v4, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O00oOoOo:[C

    add-int/2addr v3, v2

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

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :pswitch_0
    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oo()V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O00oOoOo:[C

    array-length v3, v3

    if-ge v2, v3, :cond_4

    add-int/lit8 v3, v2, 0x1

    invoke-direct {p0, v3}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    :pswitch_1
    move v0, v2

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_5
    iget-object v3, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O00oOoOo:[C

    iget v4, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_2
    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O00oOoOo:[C

    iget v3, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O00oOoOo:[C

    iget v3, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    invoke-virtual {v1, v2, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    iget v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private O0000oO0()I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/O000000o/O000000o/O00000o/O000000o;->O00oOoOo:[C

    iget v2, v0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    iget v3, v0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    move v10, v6

    move v8, v7

    move v9, v8

    move v13, v9

    const-wide/16 v11, 0x0

    :goto_0
    add-int v14, v2, v8

    const/4 v15, 0x2

    if-ne v14, v3, :cond_2

    array-length v2, v1

    if-ne v8, v2, :cond_0

    return v7

    :cond_0
    add-int/lit8 v2, v8, 0x1

    invoke-direct {v0, v2}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_6

    :cond_1
    iget v2, v0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    iget v3, v0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o:I

    :cond_2
    add-int v14, v2, v8

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
    const-wide/16 v16, 0x0

    if-ne v9, v15, :cond_8

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
    and-int/2addr v10, v7

    move-wide v11, v4

    goto :goto_4

    :cond_8
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

    int-to-long v11, v4

    move v9, v15

    :cond_c
    :goto_4
    const/4 v7, 0x0

    goto/16 :goto_c

    :cond_d
    :goto_5
    invoke-direct {v0, v14}, Lcom/O000000o/O000000o/O00000o/O000000o;->O000000o(C)Z

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
    iput-wide v11, v0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO0o:J

    iget v1, v0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    add-int/2addr v1, v8

    iput v1, v0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    const/16 v1, 0xf

    :goto_8
    iput v1, v0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

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
    iput v8, v0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO:I

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
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_1d
    return v7
.end method

.method private O0000oOO()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    add-int v2, v1, v0

    iget v3, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o:I

    if-ge v2, v3, :cond_3

    iget-object v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O00oOoOo:[C

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
    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oo()V

    :cond_2
    :pswitch_1
    iget v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    return-void

    :cond_3
    add-int/2addr v1, v0

    iput v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(I)Z

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

.method private O0000oOo()I
    .locals 1

    iget v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0oO:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private O0000oo()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0Oo:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private O0000oo0()I
    .locals 2

    iget v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    iget v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0oo:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private O0000ooO()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    iget v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    iget v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    invoke-direct {p0, v2}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O00oOoOo:[C

    iget v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0oO:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0oO:I

    iput v3, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0oo:I

    goto :goto_0

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    :cond_3
    :goto_0
    return-void
.end method

.method private O0000ooo()C
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    iget v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o:I

    const-string v2, "Unterminated escape sequence"

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, v3}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O00oOoOo:[C

    iget v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_e

    const/16 v3, 0x62

    if-eq v0, v3, :cond_d

    const/16 v3, 0x66

    if-eq v0, v3, :cond_c

    const/16 v5, 0x6e

    if-eq v0, v5, :cond_b

    const/16 v5, 0x72

    if-eq v0, v5, :cond_a

    const/16 v5, 0x74

    if-eq v0, v5, :cond_9

    const/16 v5, 0x75

    if-eq v0, v5, :cond_2

    goto/16 :goto_6

    :cond_2
    const/4 v0, 0x4

    add-int/2addr v4, v0

    iget v5, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o:I

    if-le v4, v5, :cond_4

    invoke-direct {p0, v0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(I)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, v2}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_4
    :goto_1
    const/4 v2, 0x0

    iget v4, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    add-int/lit8 v5, v4, 0x4

    :goto_2
    if-ge v4, v5, :cond_8

    iget-object v6, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O00oOoOo:[C

    aget-char v6, v6, v4

    shl-int/lit8 v2, v2, 0x4

    int-to-char v2, v2

    const/16 v7, 0x30

    if-lt v6, v7, :cond_5

    const/16 v7, 0x39

    if-gt v6, v7, :cond_5

    add-int/lit8 v6, v6, -0x30

    :goto_3
    add-int/2addr v2, v6

    int-to-char v2, v2

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
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O00oOoOo:[C

    iget v5, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    invoke-direct {v3, v4, v5, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    iget v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    return v2

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
    iget v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0oO:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0oO:I

    iput v4, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0oo:I

    :goto_6
    return v0
.end method

.method private O00oOooO()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(Z)I

    iget v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    sget-object v0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000000o:[C

    array-length v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o:I

    if-le v1, v2, :cond_0

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/O000000o/O000000o/O00000o/O000000o;->O000000o:[C

    array-length v2, v1

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O00oOoOo:[C

    iget v3, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    add-int/2addr v3, v0

    aget-char v2, v2, v3

    aget-char v1, v1, v0

    if-eq v2, v1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    return-void
.end method


# virtual methods
.method public O000000o()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000o0O()I

    move-result v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O000000o(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000oo()Lcom/O000000o/O000000o/O00000o/O00000o0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oOo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oo0()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final O000000o(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0Oo:Z

    return-void
.end method

.method public O00000Oo()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000o0O()I

    move-result v0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OOo:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OOo:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected END_ARRAY but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000oo()Lcom/O000000o/O000000o/O00000o/O00000o0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oOo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oo0()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public O00000o()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000o0O()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OOo:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OOo:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected END_OBJECT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000oo()Lcom/O000000o/O000000o/O00000o/O00000o0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oOo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oo0()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public O00000o0()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000o0O()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O000000o(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000oo()Lcom/O000000o/O000000o/O00000o/O00000o0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oOo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oo0()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public O00000oO()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000o0O()I

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

.method public O00000oo()Lcom/O000000o/O000000o/O00000o/O00000o0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000o0O()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/O000000o/O000000o/O00000o/O00000o0;->O0000Oo:Lcom/O000000o/O000000o/O00000o/O00000o0;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/O000000o/O000000o/O00000o/O00000o0;->O0000O0o:Lcom/O000000o/O000000o/O00000o/O00000o0;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/O000000o/O000000o/O00000o/O00000o0;->O00000oO:Lcom/O000000o/O000000o/O00000o/O00000o0;

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/O000000o/O000000o/O00000o/O00000o0;->O00000oo:Lcom/O000000o/O000000o/O00000o/O00000o0;

    return-object v0

    :pswitch_4
    sget-object v0, Lcom/O000000o/O000000o/O00000o/O00000o0;->O0000Oo0:Lcom/O000000o/O000000o/O00000o/O00000o0;

    return-object v0

    :pswitch_5
    sget-object v0, Lcom/O000000o/O000000o/O00000o/O00000o0;->O0000OOo:Lcom/O000000o/O000000o/O00000o/O00000o0;

    return-object v0

    :pswitch_6
    sget-object v0, Lcom/O000000o/O000000o/O00000o/O00000o0;->O00000Oo:Lcom/O000000o/O000000o/O00000o/O00000o0;

    return-object v0

    :pswitch_7
    sget-object v0, Lcom/O000000o/O000000o/O00000o/O00000o0;->O000000o:Lcom/O000000o/O000000o/O00000o/O00000o0;

    return-object v0

    :pswitch_8
    sget-object v0, Lcom/O000000o/O000000o/O00000o/O00000o0;->O00000o:Lcom/O000000o/O000000o/O00000o/O00000o0;

    return-object v0

    :pswitch_9
    sget-object v0, Lcom/O000000o/O000000o/O00000o/O00000o0;->O00000o0:Lcom/O000000o/O000000o/O00000o/O00000o0;

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

.method public O0000O0o()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000o0O()I

    move-result v0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oO()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    :goto_0
    invoke-direct {p0, v0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    goto :goto_0

    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000oo()Lcom/O000000o/O000000o/O00000o/O00000o0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oOo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oo0()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public O0000OOo()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000o0O()I

    move-result v0

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oO()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    :goto_0
    invoke-direct {p0, v0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(C)Ljava/lang/String;

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

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OOOo:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OOOo:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    iget-wide v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO0o:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O00oOoOo:[C

    iget v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    iget v3, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iget v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    iget v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a string but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000oo()Lcom/O000000o/O000000o/O00000o/O00000o0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oOo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oo0()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public O0000Oo()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000o0O()I

    move-result v0

    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected null but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000oo()Lcom/O000000o/O000000o/O00000o/O00000o0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oOo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oo0()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public O0000Oo0()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000o0O()I

    move-result v0

    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iput v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    iput v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    return v2

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a boolean but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000oo()Lcom/O000000o/O000000o/O00000o/O00000o0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oOo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oo0()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public O0000OoO()D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000o0O()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iput v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    iget-wide v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO0o:J

    long-to-double v0, v0

    return-wide v0

    :cond_1
    const/16 v1, 0x10

    const-string v3, " column "

    const-string v4, " at line "

    const/16 v5, 0xb

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O00oOoOo:[C

    iget v6, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    iget v7, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO:I

    invoke-direct {v0, v1, v6, v7}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OOOo:Ljava/lang/String;

    iget v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    iget v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

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

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oO()Ljava/lang/String;

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

    move-result-object v1

    invoke-virtual {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000oo()Lcom/O000000o/O000000o/O00000o/O00000o0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oOo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oo0()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

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
    invoke-direct {p0, v0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(C)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OOOo:Ljava/lang/String;

    :goto_3
    iput v5, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OOOo:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-boolean v5, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0Oo:Z

    if-nez v5, :cond_9

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_4

    :cond_8
    new-instance v2, Lcom/O000000o/O000000o/O00000o/O0000O0o;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JSON forbids NaN and infinities: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oOo()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oo0()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/O000000o/O000000o/O00000o/O0000O0o;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    :goto_4
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OOOo:Ljava/lang/String;

    iput v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    return-wide v0
.end method

.method public O0000Ooo()J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000o0O()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iput v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    iget-wide v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO0o:J

    return-wide v0

    :cond_1
    const/16 v1, 0x10

    const-string v3, " column "

    const-string v4, " at line "

    const-string v5, "Expected a long but was "

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O00oOoOo:[C

    iget v6, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    iget v7, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO:I

    invoke-direct {v0, v1, v6, v7}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OOOo:Ljava/lang/String;

    iget v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    iget v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

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

    move-result-object v1

    invoke-virtual {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000oo()Lcom/O000000o/O000000o/O00000o/O00000o0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oOo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oo0()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

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
    invoke-direct {p0, v0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OOOo:Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    :goto_2
    const/16 v0, 0xb

    iput v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OOOo:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v6, v0

    long-to-double v8, v6

    cmpl-double v0, v8, v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OOOo:Ljava/lang/String;

    iput v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    return-wide v6

    :cond_6
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OOOo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oOo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oo0()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public O0000o0()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    iget v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000o0O()I

    move-result v2

    :cond_1
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    invoke-direct {p0, v4}, Lcom/O000000o/O000000o/O00000o/O000000o;->O000000o(I)V

    :goto_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2
    if-ne v2, v4, :cond_3

    invoke-direct {p0, v3}, Lcom/O000000o/O000000o/O00000o/O000000o;->O000000o(I)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    :goto_1
    iget v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OOo:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OOo:I

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

    iget v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    iget v3, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    goto :goto_6

    :cond_9
    :goto_2
    const/16 v2, 0x22

    goto :goto_4

    :cond_a
    :goto_3
    const/16 v2, 0x27

    :goto_4
    invoke-direct {p0, v2}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000o0(C)V

    goto :goto_6

    :cond_b
    :goto_5
    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oOO()V

    :cond_c
    :goto_6
    iput v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    if-nez v1, :cond_0

    return-void
.end method

.method public O0000o00()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000o0O()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const-string v2, " column "

    const-string v3, " at line "

    const-string v4, "Expected an int but was "

    const/4 v5, 0x0

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO0o:J

    long-to-int v6, v0

    int-to-long v7, v6

    cmp-long v0, v0, v7

    if-nez v0, :cond_1

    iput v5, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    return v6

    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO0o:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oOo()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oo0()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O00oOoOo:[C

    iget v6, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    iget v7, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO:I

    invoke-direct {v0, v1, v6, v7}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OOOo:Ljava/lang/String;

    iget v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

    iget v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0o0:I

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

    move-result-object v1

    invoke-virtual {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000oo()Lcom/O000000o/O000000o/O00000o/O00000o0;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oOo()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oo0()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

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
    invoke-direct {p0, v0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OOOo:Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v5, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :goto_2
    const/16 v0, 0xb

    iput v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OOOo:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v6, v0

    int-to-double v7, v6

    cmpl-double v0, v7, v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OOOo:Ljava/lang/String;

    iput v5, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    return v6

    :cond_7
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OOOo:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oOo()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oo0()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final O0000o0o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0Oo:Z

    return v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OO00:I

    iget-object v1, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OOo0:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    const/4 v0, 0x1

    iput v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000OOo:I

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000o/O000000o;->O000O0OO:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
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

    move-result-object v0

    const-string v1, " at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oOo()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000oo0()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
