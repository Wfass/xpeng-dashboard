.class public Lorg/apache/commons/codec/binary/CharSequenceUtils;
.super Ljava/lang/Object;
.source "CharSequenceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z
    .locals 8
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "ignoreCase"    # Z
    .param p2, "thisStart"    # I
    .param p3, "substring"    # Ljava/lang/CharSequence;
    .param p4, "start"    # I
    .param p5, "length"    # I

    .line 54
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 55
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    move-object v4, p3

    check-cast v4, Ljava/lang/String;

    move v2, p1

    move v3, p2

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0

    .line 57
    :cond_0
    move v0, p2

    .line 58
    .local v0, "index1":I
    move v1, p4

    .line 59
    .local v1, "index2":I
    move v2, v1

    move v1, v0

    move v0, p5

    .line 61
    .local v0, "tmpLen":I
    .local v1, "index1":I
    .local v2, "index2":I
    :goto_0
    add-int/lit8 v3, v0, -0x1

    .local v3, "tmpLen":I
    if-lez v0, :cond_4

    .line 62
    .end local v0    # "tmpLen":I
    add-int/lit8 v0, v1, 0x1

    .local v0, "index1":I
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 63
    .local v1, "c1":C
    add-int/lit8 v4, v2, 0x1

    .local v4, "index2":I
    invoke-interface {p3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 65
    .local v2, "c2":C
    if-ne v1, v2, :cond_1

    .line 66
    goto :goto_1

    .line 69
    :cond_1
    const/4 v5, 0x0

    if-nez p1, :cond_2

    .line 70
    return v5

    .line 74
    :cond_2
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    if-eq v6, v7, :cond_3

    .line 75
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    if-eq v6, v7, :cond_3

    .line 76
    return v5

    .line 78
    .end local v1    # "c1":C
    .end local v2    # "c2":C
    :cond_3
    nop

    .line 59
    :goto_1
    move v1, v0

    move v0, v3

    move v2, v4

    goto :goto_0

    .line 80
    .end local v0    # "index1":I
    .end local v4    # "index2":I
    .local v1, "index1":I
    .local v2, "index2":I
    :cond_4
    const/4 v0, 0x1

    return v0
.end method
