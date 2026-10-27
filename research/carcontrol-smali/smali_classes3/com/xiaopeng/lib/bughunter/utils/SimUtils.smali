.class public Lcom/xiaopeng/lib/bughunter/utils/SimUtils;
.super Ljava/lang/Object;
.source "SimUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSim(Ljava/lang/String;Ljava/lang/String;)D
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "src",
            "dest"
        }
    .end annotation

    .line 18
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    invoke-static {p0, p1}, Lcom/xiaopeng/lib/bughunter/utils/SimUtils;->sim(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private static ld(Ljava/lang/String;Ljava/lang/String;)I
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str1",
            "str2"
        }
    .end annotation

    .line 38
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 39
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    const/4 v3, 0x0

    aput v2, v4, v3

    .line 51
    const-class v2, I

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    move v4, v3

    :goto_0
    if-gt v4, v0, :cond_2

    .line 53
    aget-object v6, v2, v4

    aput v4, v6, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_1
    if-gt v4, v1, :cond_3

    .line 56
    aget-object v6, v2, v3

    aput v4, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move v4, v5

    :goto_2
    if-gt v4, v0, :cond_6

    add-int/lit8 v6, v4, -0x1

    move-object/from16 v7, p0

    .line 59
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v9, v5

    :goto_3
    if-gt v9, v1, :cond_5

    add-int/lit8 v10, v9, -0x1

    move-object/from16 v11, p1

    .line 62
    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v8, v12, :cond_4

    move v12, v3

    goto :goto_4

    :cond_4
    move v12, v5

    .line 69
    :goto_4
    aget-object v13, v2, v4

    aget-object v14, v2, v6

    aget v14, v14, v9

    add-int/2addr v14, v5

    aget-object v15, v2, v4

    aget v15, v15, v10

    add-int/2addr v15, v5

    aget-object v16, v2, v6

    aget v10, v16, v10

    add-int/2addr v10, v12

    invoke-static {v14, v15, v10}, Lcom/xiaopeng/lib/bughunter/utils/SimUtils;->min(III)I

    move-result v10

    aput v10, v13, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v11, p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 72
    :cond_6
    aget-object v0, v2, v0

    aget v0, v0, v1

    return v0
.end method

.method private static min(III)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "one",
            "two",
            "three"
        }
    .end annotation

    if-ge p1, p0, :cond_0

    move p0, p1

    :cond_0
    if-ge p2, p0, :cond_1

    goto :goto_0

    :cond_1
    move p2, p0

    :goto_0
    return p2
.end method

.method private static sim(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str1",
            "str2"
        }
    .end annotation

    .line 76
    invoke-static {p0, p1}, Lcom/xiaopeng/lib/bughunter/utils/SimUtils;->ld(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    int-to-double v0, v0

    .line 77
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-double p0, p0

    div-double/2addr v0, p0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p0, v0

    return-wide p0
.end method
