.class public final Lbrave/internal/IpLiteral;
.super Ljava/lang/Object;
.source "IpLiteral.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbrave/internal/IpLiteral$IpFamily;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static detectFamily(Ljava/lang/String;)Lbrave/internal/IpLiteral$IpFamily;
    .locals 7
    .param p0, "ipString"    # Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, "hasColon":Z
    const/4 v1, 0x0

    .line 33
    .local v1, "hasDot":Z
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "length":I
    :goto_0
    const/16 v4, 0x3a

    if-ge v2, v3, :cond_4

    .line 34
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 35
    .local v5, "c":C
    const/16 v6, 0x2e

    if-ne v5, v6, :cond_0

    .line 36
    const/4 v1, 0x1

    goto :goto_1

    .line 37
    :cond_0
    if-ne v5, v4, :cond_2

    .line 38
    if-eqz v1, :cond_1

    sget-object v4, Lbrave/internal/IpLiteral$IpFamily;->Unknown:Lbrave/internal/IpLiteral$IpFamily;

    return-object v4

    .line 39
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 40
    :cond_2
    invoke-static {v5}, Lbrave/internal/IpLiteral;->notHex(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 41
    sget-object v4, Lbrave/internal/IpLiteral$IpFamily;->Unknown:Lbrave/internal/IpLiteral$IpFamily;

    return-object v4

    .line 33
    .end local v5    # "c":C
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    .end local v2    # "i":I
    .end local v3    # "length":I
    :cond_4
    const/4 v2, 0x0

    if-eqz v0, :cond_c

    .line 47
    if-eqz v1, :cond_b

    .line 48
    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 49
    .local v3, "lastColonIndex":I
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {p0, v5, v6}, Lbrave/internal/IpLiteral;->isValidIpV4Address(Ljava/lang/String;II)Z

    move-result v5

    if-nez v5, :cond_5

    .line 50
    sget-object v2, Lbrave/internal/IpLiteral$IpFamily;->Unknown:Lbrave/internal/IpLiteral$IpFamily;

    return-object v2

    .line 52
    :cond_5
    const/4 v5, 0x1

    if-ne v3, v5, :cond_6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_6

    .line 53
    sget-object v2, Lbrave/internal/IpLiteral$IpFamily;->IPv4Embedded:Lbrave/internal/IpLiteral$IpFamily;

    return-object v2

    .line 55
    :cond_6
    const/4 v6, 0x6

    if-ne v3, v6, :cond_a

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_a

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_7

    goto :goto_3

    .line 58
    :cond_7
    const/4 v2, 0x2

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v6, :cond_9

    .line 59
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 60
    .local v4, "c":C
    const/16 v5, 0x66

    if-eq v4, v5, :cond_8

    const/16 v5, 0x46

    if-eq v4, v5, :cond_8

    const/16 v5, 0x30

    if-eq v4, v5, :cond_8

    sget-object v5, Lbrave/internal/IpLiteral$IpFamily;->Unknown:Lbrave/internal/IpLiteral$IpFamily;

    return-object v5

    .line 58
    .end local v4    # "c":C
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 62
    .end local v2    # "i":I
    :cond_9
    sget-object v2, Lbrave/internal/IpLiteral$IpFamily;->IPv4Embedded:Lbrave/internal/IpLiteral$IpFamily;

    return-object v2

    .line 56
    :cond_a
    :goto_3
    sget-object v2, Lbrave/internal/IpLiteral$IpFamily;->Unknown:Lbrave/internal/IpLiteral$IpFamily;

    return-object v2

    .line 64
    .end local v3    # "lastColonIndex":I
    :cond_b
    sget-object v2, Lbrave/internal/IpLiteral$IpFamily;->IPv6:Lbrave/internal/IpLiteral$IpFamily;

    return-object v2

    .line 65
    :cond_c
    if-eqz v1, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {p0, v2, v3}, Lbrave/internal/IpLiteral;->isValidIpV4Address(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 66
    sget-object v2, Lbrave/internal/IpLiteral$IpFamily;->IPv4:Lbrave/internal/IpLiteral$IpFamily;

    return-object v2

    .line 68
    :cond_d
    sget-object v2, Lbrave/internal/IpLiteral$IpFamily;->Unknown:Lbrave/internal/IpLiteral$IpFamily;

    return-object v2
.end method

.method public static ipOrNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "ip"    # Ljava/lang/String;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 7
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 8
    :cond_0
    const-string v0, "::1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "127.0.0.1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {p0}, Lbrave/internal/IpLiteral;->detectFamily(Ljava/lang/String;)Lbrave/internal/IpLiteral$IpFamily;

    move-result-object v0

    .line 10
    .local v0, "format":Lbrave/internal/IpLiteral$IpFamily;
    sget-object v1, Lbrave/internal/IpLiteral$IpFamily;->IPv4Embedded:Lbrave/internal/IpLiteral$IpFamily;

    if-ne v0, v1, :cond_2

    .line 11
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 12
    :cond_2
    sget-object v1, Lbrave/internal/IpLiteral$IpFamily;->Unknown:Lbrave/internal/IpLiteral$IpFamily;

    if-ne v0, v1, :cond_3

    .line 13
    const/4 p0, 0x0

    .line 15
    :cond_3
    :goto_0
    return-object p0

    .line 8
    .end local v0    # "format":Lbrave/internal/IpLiteral$IpFamily;
    :cond_4
    :goto_1
    return-object p0

    .line 7
    :cond_5
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private static isValidIpV4Address(Ljava/lang/String;II)Z
    .locals 4
    .param p0, "ip"    # Ljava/lang/String;
    .param p1, "from"    # I
    .param p2, "toExcluded"    # I

    .line 77
    sub-int v0, p2, p1

    .line 79
    .local v0, "len":I
    const/16 v1, 0xf

    if-gt v0, v1, :cond_0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, p1, 0x1

    .line 80
    const/16 v2, 0x2e

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    move v3, v1

    .local v3, "i":I
    if-lez v1, :cond_0

    invoke-static {p0, p1, v3}, Lbrave/internal/IpLiteral;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v3, 0x2

    move p1, v1

    .line 81
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    move v3, v1

    if-lez v1, :cond_0

    add-int/lit8 v1, p1, -0x1

    invoke-static {p0, v1, v3}, Lbrave/internal/IpLiteral;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v3, 0x2

    move p1, v1

    .line 82
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    move v2, v1

    .end local v3    # "i":I
    .local v2, "i":I
    if-lez v1, :cond_0

    add-int/lit8 v1, p1, -0x1

    invoke-static {p0, v1, v2}, Lbrave/internal/IpLiteral;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    .line 83
    invoke-static {p0, v1, p2}, Lbrave/internal/IpLiteral;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    const/4 v1, 0x1

    goto :goto_0

    .line 83
    .end local v2    # "i":I
    :cond_0
    const/4 v1, 0x0

    .line 79
    :goto_0
    return v1
.end method

.method private static isValidIpV4Word(Ljava/lang/CharSequence;II)Z
    .locals 9
    .param p0, "word"    # Ljava/lang/CharSequence;
    .param p1, "from"    # I
    .param p2, "toExclusive"    # I

    .line 87
    sub-int v0, p2, p1

    .line 89
    .local v0, "len":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_7

    const/4 v3, 0x3

    if-le v0, v3, :cond_0

    goto :goto_1

    .line 90
    :cond_0
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 91
    .local v4, "c0":C
    const/16 v5, 0x39

    if-ne v0, v3, :cond_4

    .line 92
    add-int/lit8 v3, p1, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    move v6, v3

    .local v6, "c1":C
    const/16 v7, 0x30

    if-lt v3, v7, :cond_3

    add-int/lit8 v3, p1, 0x2

    .line 93
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    move v8, v3

    .local v8, "c2":C
    if-lt v3, v7, :cond_3

    const/16 v3, 0x31

    if-gt v4, v3, :cond_1

    if-gt v6, v5, :cond_1

    if-le v8, v5, :cond_2

    :cond_1
    const/16 v3, 0x32

    if-ne v4, v3, :cond_3

    const/16 v3, 0x35

    if-gt v6, v3, :cond_3

    if-le v8, v3, :cond_2

    if-ge v6, v3, :cond_3

    if-gt v8, v5, :cond_3

    .line 92
    :cond_2
    move v1, v2

    goto :goto_0

    .line 93
    .end local v8    # "c2":C
    :cond_3
    nop

    .line 92
    :goto_0
    return v1

    .line 97
    .end local v6    # "c1":C
    :cond_4
    if-gt v4, v5, :cond_6

    if-eq v0, v2, :cond_5

    add-int/lit8 v3, p1, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lbrave/internal/IpLiteral;->isValidNumericChar(C)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    move v1, v2

    nop

    :cond_6
    return v1

    .line 89
    .end local v4    # "c0":C
    :cond_7
    :goto_1
    return v1
.end method

.method private static isValidNumericChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 101
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static notHex(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 72
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_3

    const/16 v0, 0x46

    if-le p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
