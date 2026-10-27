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
    .locals 9

    .line 33
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    const/16 v5, 0x3a

    const/4 v6, 0x1

    if-ge v2, v0, :cond_4

    .line 34
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2e

    if-ne v7, v8, :cond_0

    move v4, v6

    goto :goto_1

    :cond_0
    if-ne v7, v5, :cond_2

    if-eqz v4, :cond_1

    .line 38
    sget-object p0, Lbrave/internal/IpLiteral$IpFamily;->Unknown:Lbrave/internal/IpLiteral$IpFamily;

    return-object p0

    :cond_1
    move v3, v6

    goto :goto_1

    .line 40
    :cond_2
    invoke-static {v7}, Lbrave/internal/IpLiteral;->notHex(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 41
    sget-object p0, Lbrave/internal/IpLiteral$IpFamily;->Unknown:Lbrave/internal/IpLiteral$IpFamily;

    return-object p0

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_c

    if-eqz v4, :cond_b

    .line 48
    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    .line 49
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {p0, v2, v3}, Lbrave/internal/IpLiteral;->isValidIpV4Address(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_5

    .line 50
    sget-object p0, Lbrave/internal/IpLiteral$IpFamily;->Unknown:Lbrave/internal/IpLiteral$IpFamily;

    return-object p0

    :cond_5
    if-ne v0, v6, :cond_6

    .line 52
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_6

    .line 53
    sget-object p0, Lbrave/internal/IpLiteral$IpFamily;->IPv4Embedded:Lbrave/internal/IpLiteral$IpFamily;

    return-object p0

    :cond_6
    const/4 v2, 0x6

    if-ne v0, v2, :cond_a

    .line 55
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_a

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v5, :cond_7

    goto :goto_3

    :cond_7
    const/4 v0, 0x2

    :goto_2
    if-ge v0, v2, :cond_9

    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x66

    if-eq v1, v3, :cond_8

    const/16 v3, 0x46

    if-eq v1, v3, :cond_8

    const/16 v3, 0x30

    if-eq v1, v3, :cond_8

    .line 60
    sget-object p0, Lbrave/internal/IpLiteral$IpFamily;->Unknown:Lbrave/internal/IpLiteral$IpFamily;

    return-object p0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 62
    :cond_9
    sget-object p0, Lbrave/internal/IpLiteral$IpFamily;->IPv4Embedded:Lbrave/internal/IpLiteral$IpFamily;

    return-object p0

    .line 56
    :cond_a
    :goto_3
    sget-object p0, Lbrave/internal/IpLiteral$IpFamily;->Unknown:Lbrave/internal/IpLiteral$IpFamily;

    return-object p0

    .line 64
    :cond_b
    sget-object p0, Lbrave/internal/IpLiteral$IpFamily;->IPv6:Lbrave/internal/IpLiteral$IpFamily;

    return-object p0

    :cond_c
    if-eqz v4, :cond_d

    .line 65
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, v1, v0}, Lbrave/internal/IpLiteral;->isValidIpV4Address(Ljava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 66
    sget-object p0, Lbrave/internal/IpLiteral$IpFamily;->IPv4:Lbrave/internal/IpLiteral$IpFamily;

    return-object p0

    .line 68
    :cond_d
    sget-object p0, Lbrave/internal/IpLiteral$IpFamily;->Unknown:Lbrave/internal/IpLiteral$IpFamily;

    return-object p0
.end method

.method public static ipOrNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "::1"

    .line 8
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "127.0.0.1"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {p0}, Lbrave/internal/IpLiteral;->detectFamily(Ljava/lang/String;)Lbrave/internal/IpLiteral$IpFamily;

    move-result-object v1

    .line 10
    sget-object v2, Lbrave/internal/IpLiteral$IpFamily;->IPv4Embedded:Lbrave/internal/IpLiteral$IpFamily;

    if-ne v1, v2, :cond_2

    const/16 v0, 0x3a

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 12
    :cond_2
    sget-object v2, Lbrave/internal/IpLiteral$IpFamily;->Unknown:Lbrave/internal/IpLiteral$IpFamily;

    if-ne v1, v2, :cond_3

    move-object p0, v0

    :cond_3
    :goto_0
    return-object p0

    :cond_4
    :goto_1
    return-object v0
.end method

.method private static isValidIpV4Address(Ljava/lang/String;II)Z
    .locals 3

    sub-int v0, p2, p1

    const/4 v1, 0x1

    const/16 v2, 0xf

    if-gt v0, v2, :cond_0

    const/4 v2, 0x7

    if-lt v0, v2, :cond_0

    add-int/lit8 v0, p1, 0x1

    const/16 v2, 0x2e

    .line 80
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0, p1, v0}, Lbrave/internal/IpLiteral;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/lit8 v0, v0, 0x2

    .line 81
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    if-lez p1, :cond_0

    sub-int/2addr v0, v1

    invoke-static {p0, v0, p1}, Lbrave/internal/IpLiteral;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x2

    .line 82
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-lez v0, :cond_0

    sub-int/2addr p1, v1

    invoke-static {p0, p1, v0}, Lbrave/internal/IpLiteral;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/2addr v0, v1

    .line 83
    invoke-static {p0, v0, p2}, Lbrave/internal/IpLiteral;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isValidIpV4Word(Ljava/lang/CharSequence;II)Z
    .locals 5

    sub-int/2addr p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p2, v1, :cond_6

    const/4 v2, 0x3

    if-le p2, v2, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x39

    if-ne p2, v2, :cond_4

    add-int/lit8 p2, p1, 0x1

    .line 92
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    const/16 v2, 0x30

    if-lt p2, v2, :cond_3

    add-int/lit8 p1, p1, 0x2

    .line 93
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    if-lt p0, v2, :cond_3

    const/16 p1, 0x31

    if-gt v3, p1, :cond_1

    if-gt p2, v4, :cond_1

    if-le p0, v4, :cond_2

    :cond_1
    const/16 p1, 0x32

    if-ne v3, p1, :cond_3

    const/16 p1, 0x35

    if-gt p2, p1, :cond_3

    if-le p0, p1, :cond_2

    if-ge p2, p1, :cond_3

    if-gt p0, v4, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0

    :cond_4
    if-gt v3, v4, :cond_6

    if-eq p2, v1, :cond_5

    add-int/2addr p1, v1

    .line 97
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lbrave/internal/IpLiteral;->isValidNumericChar(C)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    move v0, v1

    :cond_6
    :goto_0
    return v0
.end method

.method private static isValidNumericChar(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static notHex(C)Z
    .locals 1

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
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
