.class final Lorg/apache/commons/codec/language/SoundexUtils;
.super Ljava/lang/Object;
.source "SoundexUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clean(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .line 41
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 44
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 45
    .local v0, "len":I
    new-array v1, v0, [C

    .line 46
    .local v1, "chars":[C
    const/4 v2, 0x0

    .line 47
    .local v2, "count":I
    const/4 v3, 0x0

    move v4, v2

    move v2, v3

    .local v2, "i":I
    .local v4, "count":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 48
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 49
    add-int/lit8 v5, v4, 0x1

    .local v5, "count":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v1, v4

    .line 47
    .end local v4    # "count":I
    move v4, v5

    .end local v5    # "count":I
    .restart local v4    # "count":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    .end local v2    # "i":I
    :cond_2
    if-ne v4, v0, :cond_3

    .line 53
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 55
    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([CII)V

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 42
    .end local v0    # "len":I
    .end local v1    # "chars":[C
    .end local v4    # "count":I
    :cond_4
    :goto_1
    return-object p0
.end method

.method static difference(Lorg/apache/commons/codec/StringEncoder;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "encoder"    # Lorg/apache/commons/codec/StringEncoder;
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 85
    invoke-interface {p0, p1}, Lorg/apache/commons/codec/StringEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p2}, Lorg/apache/commons/codec/StringEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/codec/language/SoundexUtils;->differenceEncoded(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static differenceEncoded(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "es1"    # Ljava/lang/String;
    .param p1, "es2"    # Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 113
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 114
    .local v1, "lengthToMatch":I
    const/4 v2, 0x0

    .line 115
    .local v2, "diff":I
    nop

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 116
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_1

    .line 117
    add-int/lit8 v2, v2, 0x1

    .line 115
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    .end local v0    # "i":I
    :cond_2
    return v2

    .line 111
    .end local v1    # "lengthToMatch":I
    .end local v2    # "diff":I
    :cond_3
    :goto_1
    return v0
.end method
