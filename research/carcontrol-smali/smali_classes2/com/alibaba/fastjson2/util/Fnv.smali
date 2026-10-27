.class public final Lcom/alibaba/fastjson2/util/Fnv;
.super Ljava/lang/Object;
.source "Fnv.java"


# static fields
.field public static final MAGIC_HASH_CODE:J = -0x340d631b7bdddcdbL

.field public static final MAGIC_PRIME:J = 0x100000001b3L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hashCode64(Ljava/lang/String;)J
    .locals 11

    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-gt v0, v1, :cond_5

    move v0, v2

    .line 87
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v0, v3, :cond_2

    .line 88
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0xff

    if-gt v3, v5, :cond_1

    if-nez v0, :cond_0

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v4

    :goto_2
    if-eqz v0, :cond_5

    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    const-wide/16 v5, 0x0

    move-wide v7, v5

    :goto_3
    if-ltz v0, :cond_4

    .line 97
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 98
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v4

    if-ne v0, v9, :cond_3

    int-to-byte v3, v3

    int-to-long v7, v3

    goto :goto_4

    :cond_3
    shl-long/2addr v7, v1

    int-to-long v9, v3

    add-long/2addr v7, v9

    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_4
    cmp-long v0, v7, v5

    if-eqz v0, :cond_5

    return-wide v7

    :cond_5
    const-wide v0, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 113
    :goto_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 114
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-long v3, v3

    xor-long/2addr v0, v3

    const-wide v3, 0x100000001b3L

    mul-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    return-wide v0
.end method

.method public static varargs hashCode64([Ljava/lang/String;)J
    .locals 6

    .line 67
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 68
    aget-object p0, p0, v1

    invoke-static {p0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide v2, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 73
    array-length v0, p0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v4, p0, v1

    .line 74
    invoke-static {v4}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v4

    xor-long/2addr v2, v4

    const-wide v4, 0x100000001b3L

    mul-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public static hashCode64LCase(Ljava/lang/String;)J
    .locals 15

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 13
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x5f

    const/16 v5, 0x2d

    const/16 v6, 0x20

    const/4 v7, 0x1

    if-ge v1, v3, :cond_4

    .line 14
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v8, 0xff

    if-gt v3, v8, :cond_3

    if-nez v1, :cond_0

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    if-eq v3, v5, :cond_1

    if-eq v3, v4, :cond_1

    if-ne v3, v6, :cond_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    move v1, v0

    goto :goto_2

    :cond_4
    move v1, v7

    :goto_2
    const/16 v3, 0x5a

    const/16 v8, 0x41

    if-eqz v1, :cond_a

    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    const/16 v2, 0x8

    if-gt v1, v2, :cond_a

    .line 26
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v7

    const-wide/16 v9, 0x0

    move v7, v0

    move-wide v11, v9

    :goto_3
    if-ltz v1, :cond_9

    .line 27
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-eq v13, v5, :cond_8

    if-eq v13, v4, :cond_8

    if-ne v13, v6, :cond_5

    goto :goto_5

    :cond_5
    if-lt v13, v8, :cond_6

    if-gt v13, v3, :cond_6

    add-int/lit8 v13, v13, 0x20

    int-to-char v13, v13

    :cond_6
    if-nez v7, :cond_7

    int-to-byte v11, v13

    int-to-long v11, v11

    goto :goto_4

    :cond_7
    shl-long/2addr v11, v2

    int-to-long v13, v13

    add-long/2addr v11, v13

    :goto_4
    add-int/lit8 v7, v7, 0x1

    :cond_8
    :goto_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_9
    cmp-long v1, v11, v9

    if-eqz v1, :cond_a

    return-wide v11

    :cond_a
    const-wide v1, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 50
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v0, v7, :cond_e

    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v5, :cond_d

    if-eq v7, v4, :cond_d

    if-ne v7, v6, :cond_b

    goto :goto_7

    :cond_b
    if-lt v7, v8, :cond_c

    if-gt v7, v3, :cond_c

    add-int/lit8 v7, v7, 0x20

    int-to-char v7, v7

    :cond_c
    int-to-long v9, v7

    xor-long/2addr v1, v9

    const-wide v9, 0x100000001b3L

    mul-long/2addr v1, v9

    :cond_d
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_e
    return-wide v1
.end method
