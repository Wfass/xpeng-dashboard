.class public final Lapt;
.super Ljava/lang/Object;
.source "CustomQRCodeWriter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(II)I
    .locals 6

    const/4 v0, 0x0

    if-lt p0, p1, :cond_0

    return v0

    .line 161
    :cond_0
    div-int v1, p1, p0

    mul-int/2addr p0, v1

    sub-int p0, p1, p0

    int-to-double v2, p0

    int-to-double p0, p1

    const-wide v4, 0x3fa47ae147ae147bL    # 0.04

    mul-double/2addr p0, v4

    cmpg-double p0, v2, p0

    if-gez p0, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method private static a(Lalw;III)Lalf;
    .locals 9

    .line 87
    invoke-virtual {p0}, Lalw;->a()Lalr;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 91
    invoke-virtual {p0}, Lalr;->b()I

    move-result v0

    .line 92
    invoke-virtual {p0}, Lalr;->a()I

    move-result v1

    mul-int/lit8 v2, p3, 0x2

    add-int v3, v0, v2

    add-int/2addr v2, v1

    .line 101
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 102
    invoke-static {v3, v4}, Lapt;->a(II)I

    move-result v5

    if-lez v5, :cond_2

    mul-int/2addr v5, v3

    sub-int/2addr v4, v5

    .line 110
    div-int/lit8 v4, v4, 0x4

    mul-int/2addr v4, p3

    add-int p3, v5, v4

    if-ne p1, p2, :cond_0

    move p1, p3

    move p2, p1

    goto :goto_0

    :cond_0
    if-le p1, p2, :cond_1

    mul-int/2addr p1, p3

    .line 116
    div-int/2addr p1, p2

    move p2, p3

    goto :goto_0

    :cond_1
    mul-int/2addr p2, p3

    .line 119
    div-int/2addr p2, p1

    move p1, p3

    .line 124
    :cond_2
    :goto_0
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 125
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 127
    div-int p3, p1, v3

    div-int v2, p2, v2

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result p3

    mul-int v2, v0, p3

    sub-int v2, p1, v2

    .line 132
    div-int/lit8 v2, v2, 0x2

    mul-int v3, v1, p3

    sub-int v3, p2, v3

    .line 133
    div-int/lit8 v3, v3, 0x2

    .line 135
    new-instance v4, Lalf;

    invoke-direct {v4, p1, p2}, Lalf;-><init>(II)V

    const/4 p1, 0x0

    move p2, p1

    :goto_1
    if-ge p2, v1, :cond_5

    move v5, p1

    move v6, v2

    :goto_2
    if-ge v5, v0, :cond_4

    .line 140
    invoke-virtual {p0, v5, p2}, Lalr;->a(II)B

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 141
    invoke-virtual {v4, v6, v3, p3, p3}, Lalf;->a(IIII)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    add-int/2addr v6, p3

    goto :goto_2

    :cond_4
    add-int/lit8 p2, p2, 0x1

    add-int/2addr v3, p3

    goto :goto_1

    :cond_5
    return-object v4

    .line 89
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lalb;IILjava/util/Map;)Lalf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lalb;",
            "II",
            "Ljava/util/Map<",
            "Lalc;",
            "*>;)",
            "Lalf;"
        }
    .end annotation

    .line 56
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 60
    sget-object v0, Lalb;->QR_CODE:Lalb;

    if-ne p2, v0, :cond_3

    if-ltz p3, :cond_2

    if-ltz p4, :cond_2

    .line 69
    sget-object p2, Laln;->L:Laln;

    const/4 v0, 0x4

    if-eqz p5, :cond_1

    .line 72
    sget-object v1, Lalc;->ERROR_CORRECTION:Lalc;

    invoke-interface {p5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    sget-object p2, Lalc;->ERROR_CORRECTION:Lalc;

    invoke-interface {p5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Laln;->valueOf(Ljava/lang/String;)Laln;

    move-result-object p2

    .line 75
    :cond_0
    sget-object v1, Lalc;->MARGIN:Lalc;

    invoke-interface {p5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    sget-object v0, Lalc;->MARGIN:Lalc;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 80
    :cond_1
    invoke-static {p1, p2, p5}, Lals;->a(Ljava/lang/String;Laln;Ljava/util/Map;)Lalw;

    move-result-object p1

    .line 81
    invoke-static {p1, p3, p4, v0}, Lapt;->a(Lalw;III)Lalf;

    move-result-object p1

    return-object p1

    .line 65
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Requested dimensions are too small: "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x78

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Can only encode QR_CODE, but got "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Found empty contents"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
