.class public Lcom/activeandroid/util/NaturalOrderComparator;
.super Ljava/lang/Object;
.source "NaturalOrderComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static charAt(Ljava/lang/String;I)C
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "i"    # I

    .line 134
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 135
    const/4 v0, 0x0

    return v0

    .line 138
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 11
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "a":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "b":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "ia":I
    const/4 v3, 0x0

    .line 72
    .local v3, "ib":I
    const/4 v4, 0x0

    .local v4, "nza":I
    const/4 v5, 0x0

    move v6, v3

    move v3, v2

    move v2, v5

    .line 78
    .local v2, "nzb":I
    .local v3, "ia":I
    .local v6, "ib":I
    :goto_0
    move v2, v5

    move v4, v5

    .line 80
    invoke-static {v0, v3}, Lcom/activeandroid/util/NaturalOrderComparator;->charAt(Ljava/lang/String;I)C

    move-result v7

    .line 81
    .local v7, "ca":C
    invoke-static {v1, v6}, Lcom/activeandroid/util/NaturalOrderComparator;->charAt(Ljava/lang/String;I)C

    move-result v8

    .line 84
    .local v8, "cb":C
    :goto_1
    invoke-static {v7}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v9

    const/16 v10, 0x30

    if-nez v9, :cond_8

    if-ne v7, v10, :cond_0

    goto :goto_5

    .line 96
    :cond_0
    :goto_2
    invoke-static {v8}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v9

    if-nez v9, :cond_6

    if-ne v8, v10, :cond_1

    goto :goto_3

    .line 109
    :cond_1
    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 110
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/activeandroid/util/NaturalOrderComparator;->compareRight(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    move v10, v9

    .local v10, "result":I
    if-eqz v9, :cond_2

    .line 111
    return v10

    .line 115
    .end local v10    # "result":I
    :cond_2
    if-nez v7, :cond_3

    if-nez v8, :cond_3

    .line 118
    sub-int v5, v4, v2

    return v5

    .line 121
    :cond_3
    if-ge v7, v8, :cond_4

    .line 122
    const/4 v5, -0x1

    return v5

    .line 124
    :cond_4
    if-le v7, v8, :cond_5

    .line 125
    const/4 v5, 0x1

    return v5

    .line 128
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 129
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 97
    :cond_6
    :goto_3
    if-ne v8, v10, :cond_7

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 102
    :cond_7
    const/4 v2, 0x0

    .line 105
    :goto_4
    add-int/lit8 v6, v6, 0x1

    invoke-static {v1, v6}, Lcom/activeandroid/util/NaturalOrderComparator;->charAt(Ljava/lang/String;I)C

    move-result v8

    goto :goto_2

    .line 85
    :cond_8
    :goto_5
    if-ne v7, v10, :cond_9

    .line 86
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 90
    :cond_9
    const/4 v4, 0x0

    .line 93
    :goto_6
    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v3}, Lcom/activeandroid/util/NaturalOrderComparator;->charAt(Ljava/lang/String;I)C

    move-result v7

    goto :goto_1
.end method

.method compareRight(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, "bias":I
    const/4 v1, 0x0

    .line 33
    .local v1, "ia":I
    const/4 v2, 0x0

    .line 40
    .local v2, "ib":I
    :goto_0
    invoke-static {p1, v1}, Lcom/activeandroid/util/NaturalOrderComparator;->charAt(Ljava/lang/String;I)C

    move-result v3

    .line 41
    .local v3, "ca":C
    invoke-static {p2, v2}, Lcom/activeandroid/util/NaturalOrderComparator;->charAt(Ljava/lang/String;I)C

    move-result v4

    .line 43
    .local v4, "cb":C
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 44
    return v0

    .line 46
    :cond_0
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_1

    .line 47
    const/4 v5, -0x1

    return v5

    .line 49
    :cond_1
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_2

    .line 50
    const/4 v5, 0x1

    return v5

    .line 52
    :cond_2
    if-ge v3, v4, :cond_3

    .line 53
    if-nez v0, :cond_5

    .line 54
    const/4 v0, -0x1

    goto :goto_1

    .line 57
    :cond_3
    if-le v3, v4, :cond_4

    .line 58
    if-nez v0, :cond_5

    .line 59
    const/4 v0, 0x1

    goto :goto_1

    .line 61
    :cond_4
    if-nez v3, :cond_5

    if-nez v4, :cond_5

    .line 62
    return v0

    .line 39
    .end local v3    # "ca":C
    .end local v4    # "cb":C
    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
