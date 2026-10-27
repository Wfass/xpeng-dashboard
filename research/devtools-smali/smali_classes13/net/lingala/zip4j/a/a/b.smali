.class public Lnet/lingala/zip4j/a/a/b;
.super Ljava/lang/Object;
.source "PBKDF2Engine.java"


# instance fields
.field private alD:Lnet/lingala/zip4j/a/a/c;

.field private alE:Lnet/lingala/zip4j/a/a/d;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/a/a/c;)V
    .locals 1

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/lingala/zip4j/a/a/b;-><init>(Lnet/lingala/zip4j/a/a/c;Lnet/lingala/zip4j/a/a/d;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lnet/lingala/zip4j/a/a/c;Lnet/lingala/zip4j/a/a/d;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lnet/lingala/zip4j/a/a/b;->alD:Lnet/lingala/zip4j/a/a/c;

    .line 37
    iput-object p2, p0, Lnet/lingala/zip4j/a/a/b;->alE:Lnet/lingala/zip4j/a/a/d;

    .line 38
    return-void
.end method

.method private E(II)I
    .locals 1

    .line 111
    nop

    .line 112
    rem-int v0, p1, p2

    if-lez v0, :cond_0

    .line 113
    const/4 v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    const/4 v0, 0x0

    :goto_0
    div-int/2addr p1, p2

    add-int/2addr p1, v0

    return p1
.end method

.method private I([B)V
    .locals 2

    .line 78
    iget-object v0, p0, Lnet/lingala/zip4j/a/a/b;->alE:Lnet/lingala/zip4j/a/a/d;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lnet/lingala/zip4j/a/a/a;

    iget-object v1, p0, Lnet/lingala/zip4j/a/a/b;->alD:Lnet/lingala/zip4j/a/a/c;

    invoke-virtual {v1}, Lnet/lingala/zip4j/a/a/c;->sr()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/a/a/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/lingala/zip4j/a/a/b;->alE:Lnet/lingala/zip4j/a/a/d;

    .line 81
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/a/a/b;->alE:Lnet/lingala/zip4j/a/a/d;

    invoke-interface {v0, p1}, Lnet/lingala/zip4j/a/a/d;->init([B)V

    .line 82
    return-void
.end method

.method private a([BILnet/lingala/zip4j/a/a/d;[BII)V
    .locals 5

    .line 120
    invoke-interface {p3}, Lnet/lingala/zip4j/a/a/d;->sq()I

    move-result v0

    .line 121
    new-array v1, v0, [B

    .line 124
    array-length v2, p4

    add-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    .line 125
    array-length v3, p4

    const/4 v4, 0x0

    invoke-static {p4, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    array-length p4, p4

    invoke-virtual {p0, v2, p4, p6}, Lnet/lingala/zip4j/a/a/b;->e([BII)V

    .line 128
    move p4, v4

    :goto_0
    if-ge p4, p5, :cond_0

    .line 129
    invoke-interface {p3, v2}, Lnet/lingala/zip4j/a/a/d;->doFinal([B)[B

    move-result-object v2

    .line 130
    invoke-direct {p0, v1, v2}, Lnet/lingala/zip4j/a/a/b;->e([B[B)V

    .line 128
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 132
    :cond_0
    invoke-static {v1, v4, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    return-void
.end method

.method private a(Lnet/lingala/zip4j/a/a/d;[BII)[B
    .locals 17

    .line 89
    move/from16 v0, p4

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 90
    new-array v2, v1, [B

    goto :goto_0

    .line 92
    :cond_0
    move-object/from16 v2, p2

    :goto_0
    invoke-interface/range {p1 .. p1}, Lnet/lingala/zip4j/a/a/d;->sq()I

    move-result v10

    .line 93
    move-object/from16 v11, p0

    invoke-direct {v11, v0, v10}, Lnet/lingala/zip4j/a/a/b;->E(II)I

    move-result v12

    .line 94
    add-int/lit8 v3, v12, -0x1

    mul-int/2addr v3, v10

    sub-int v13, v0, v3

    .line 95
    mul-int v3, v12, v10

    new-array v14, v3, [B

    .line 96
    nop

    .line 97
    const/4 v3, 0x1

    move/from16 v16, v1

    move v15, v3

    :goto_1
    if-gt v15, v12, :cond_1

    .line 98
    move-object v3, v11

    move-object v4, v14

    move/from16 v5, v16

    move-object/from16 v6, p1

    move-object v7, v2

    move/from16 v8, p3

    move v9, v15

    invoke-direct/range {v3 .. v9}, Lnet/lingala/zip4j/a/a/b;->a([BILnet/lingala/zip4j/a/a/d;[BII)V

    .line 99
    add-int v16, v16, v10

    .line 97
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 101
    :cond_1
    if-ge v13, v10, :cond_2

    .line 103
    new-array v2, v0, [B

    .line 104
    invoke-static {v14, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    return-object v2

    .line 107
    :cond_2
    return-object v14
.end method

.method private e([B[B)V
    .locals 3

    .line 136
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 137
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_0
    return-void
.end method


# virtual methods
.method public a([CI)[B
    .locals 2

    .line 46
    if-eqz p1, :cond_1

    .line 50
    invoke-static {p1}, Lnet/lingala/zip4j/d/f;->b([C)[B

    move-result-object p1

    .line 52
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/a/a/b;->I([B)V

    .line 53
    if-nez p2, :cond_0

    .line 54
    iget-object p1, p0, Lnet/lingala/zip4j/a/a/b;->alE:Lnet/lingala/zip4j/a/a/d;

    invoke-interface {p1}, Lnet/lingala/zip4j/a/a/d;->sq()I

    move-result p2

    .line 56
    :cond_0
    iget-object p1, p0, Lnet/lingala/zip4j/a/a/b;->alE:Lnet/lingala/zip4j/a/a/d;

    iget-object v0, p0, Lnet/lingala/zip4j/a/a/b;->alD:Lnet/lingala/zip4j/a/a/c;

    invoke-virtual {v0}, Lnet/lingala/zip4j/a/a/c;->getSalt()[B

    move-result-object v0

    iget-object v1, p0, Lnet/lingala/zip4j/a/a/b;->alD:Lnet/lingala/zip4j/a/a/c;

    invoke-virtual {v1}, Lnet/lingala/zip4j/a/a/c;->getIterationCount()I

    move-result v1

    invoke-direct {p0, p1, v0, v1, p2}, Lnet/lingala/zip4j/a/a/b;->a(Lnet/lingala/zip4j/a/a/d;[BII)[B

    move-result-object p1

    return-object p1

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method protected e([BII)V
    .locals 2

    .line 142
    const/high16 v0, 0x1000000

    div-int v0, p3, v0

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 143
    add-int/lit8 v0, p2, 0x1

    const/high16 v1, 0x10000

    div-int v1, p3, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 144
    add-int/lit8 v0, p2, 0x2

    div-int/lit16 v1, p3, 0x100

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 145
    add-int/lit8 p2, p2, 0x3

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    .line 146
    return-void
.end method
