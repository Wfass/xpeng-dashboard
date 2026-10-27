.class public Lbna;
.super Ljava/lang/Object;
.source "ProgramStringUtil.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 37
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 41
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    .line 43
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 44
    aget-char v3, v0, v1

    invoke-static {v3}, Lbna;->a(C)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v1, v2, :cond_2

    add-int/lit8 v3, v2, -0x1

    .line 47
    aget-char v3, v0, v3

    invoke-static {v3}, Lbna;->a(C)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    if-gtz v1, :cond_3

    .line 50
    array-length v0, v0

    if-ge v2, v0, :cond_4

    :cond_3
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method public static a(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3000

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa0

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2002

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2003

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2005

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2009

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
