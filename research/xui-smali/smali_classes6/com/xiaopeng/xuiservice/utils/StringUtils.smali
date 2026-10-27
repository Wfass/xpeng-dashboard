.class public Lcom/xiaopeng/xuiservice/utils/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field public static final EMPTY:Ljava/lang/String; = ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBlank(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 17
    const/4 v0, 0x1

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    move v2, v1

    .local v2, "strLen":I
    if-nez v1, :cond_0

    .end local v2    # "strLen":I
    goto :goto_1

    .line 18
    .restart local v2    # "strLen":I
    :cond_0
    nop

    .line 21
    const/4 v1, 0x0

    move v3, v1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 22
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 23
    return v1

    .line 21
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 27
    .end local v3    # "i":I
    :cond_2
    return v0

    .line 18
    .end local v2    # "strLen":I
    :cond_3
    :goto_1
    return v0
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 8
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isNotBlank(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 31
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/utils/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 12
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 35
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static trimToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 44
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static trimToNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 39
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/utils/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "ts":Ljava/lang/String;
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method
