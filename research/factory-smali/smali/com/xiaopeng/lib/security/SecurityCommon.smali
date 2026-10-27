.class public final Lcom/xiaopeng/lib/security/SecurityCommon;
.super Ljava/lang/Object;
.source "SecurityCommon.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SecurityCommon"

.field private static sIsSystemUid:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static base64UrlEncode([B)Ljava/lang/String;
    .locals 3
    .param p0, "simple"    # [B

    .line 57
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xb

    invoke-static {p0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 59
    .local v0, "s":Ljava/lang/String;
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 62
    const/16 v1, 0x2b

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 65
    const/16 v1, 0x2f

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 66
    return-object v0
.end method

.method public static checkSystemUid(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 25
    sget-object v0, Lcom/xiaopeng/lib/security/SecurityCommon;->sIsSystemUid:Ljava/lang/Boolean;

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
    .local v1, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    .line 32
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 34
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/xiaopeng/lib/security/SecurityCommon;->sIsSystemUid:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_1

    .line 35
    :catch_0
    move-exception v1

    .line 36
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SecurityCommon"

    const-string v3, "init uid error!"

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/security/SecurityCommon;->sIsSystemUid:Ljava/lang/Boolean;

    .line 40
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    sget-object v0, Lcom/xiaopeng/lib/security/SecurityCommon;->sIsSystemUid:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getBuildInfoFlag()Ljava/lang/String;
    .locals 1

    .line 48
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isLanVersion()Z

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

.method public static parseByte2HexStr([B)Ljava/lang/String;
    .locals 5
    .param p0, "buf"    # [B

    .line 70
    const-string v0, "0123456789ABCDEF"

    .line 71
    .local v0, "HEX":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 72
    const-string v1, ""

    return-object v1

    .line 74
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    const/4 v2, 0x2

    array-length v3, p0

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 76
    .local v1, "result":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 77
    const-string v3, "0123456789ABCDEF"

    aget-byte v4, p0, v2

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v3, "0123456789ABCDEF"

    aget-byte v4, p0, v2

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static parseHexStr2Byte(Ljava/lang/String;)[B
    .locals 6
    .param p0, "hexStr"    # Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 86
    .local v0, "len":I
    new-array v2, v0, [B

    .line 88
    .local v2, "result":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 89
    mul-int v4, v1, v3

    mul-int v5, v1, v3

    add-int/2addr v5, v1

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
    .end local v3    # "i":I
    :cond_0
    return-object v2
.end method
