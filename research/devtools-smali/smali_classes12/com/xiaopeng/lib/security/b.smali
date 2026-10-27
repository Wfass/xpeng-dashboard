.class public final Lcom/xiaopeng/lib/security/b;
.super Ljava/lang/Object;
.source "SecurityCommon.java"


# static fields
.field private static Vq:Ljava/lang/Boolean;


# direct methods
.method public static D([B)Ljava/lang/String;
    .locals 4

    .line 70
    nop

    .line 71
    if-nez p0, :cond_0

    .line 72
    const-string p0, ""

    return-object p0

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v1, 0x2

    array-length v2, p0

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 76
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 77
    const-string v2, "0123456789ABCDEF"

    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, "0123456789ABCDEF"

    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static E([B)Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xb

    invoke-static {p0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 59
    const-string p0, "="

    invoke-virtual {v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    .line 62
    const/16 v0, 0x2b

    const/16 v1, 0x2d

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 65
    const/16 v0, 0x2f

    const/16 v1, 0x5f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 66
    return-object p0
.end method

.method public static ap(Landroid/content/Context;)Z
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 25
    sget-object v0, Lcom/xiaopeng/lib/security/b;->Vq:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 26
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 27
    return v0

    .line 31
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 32
    nop

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    .line 32
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 34
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x3e8

    if-ne p0, v1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/xiaopeng/lib/security/b;->Vq:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_1

    .line 35
    :catch_0
    move-exception p0

    .line 36
    const-string v1, "SecurityCommon"

    const-string v2, "init uid error!"

    invoke-static {v1, v2, p0}, Lcom/xiaopeng/lib/utils/c;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/xiaopeng/lib/security/b;->Vq:Ljava/lang/Boolean;

    .line 40
    :cond_2
    :goto_1
    sget-object p0, Lcom/xiaopeng/lib/security/b;->Vq:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static dF(Ljava/lang/String;)[B
    .locals 6

    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 86
    new-array v2, v0, [B

    .line 88
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 89
    mul-int v4, v1, v3

    add-int/lit8 v5, v4, 0x2

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->byteValue()B

    move-result v4

    aput-byte v4, v2, v3

    .line 88
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 92
    :cond_0
    return-object v2
.end method

.method public static oj()Ljava/lang/String;
    .locals 1

    .line 48
    invoke-static {}, Lcom/xiaopeng/lib/utils/c/b;->pi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "1"

    return-object v0

    .line 51
    :cond_0
    const-string v0, "2"

    return-object v0
.end method
