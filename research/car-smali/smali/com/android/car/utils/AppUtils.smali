.class public final Lcom/android/car/utils/AppUtils;
.super Ljava/lang/Object;
.source "AppUtils.java"


# static fields
.field private static final HEX_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/car/utils/AppUtils;->HEX_DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytes2HexString([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .line 71
    if-nez p0, :cond_0

    const-string v0, ""

    return-object v0

    .line 72
    :cond_0
    array-length v0, p0

    .line 73
    .local v0, "len":I
    if-gtz v0, :cond_1

    const-string v1, ""

    return-object v1

    .line 74
    :cond_1
    shl-int/lit8 v1, v0, 0x1

    new-array v1, v1, [C

    .line 75
    .local v1, "ret":[C
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 76
    add-int/lit8 v4, v3, 0x1

    .local v4, "j":I
    sget-object v5, Lcom/android/car/utils/AppUtils;->HEX_DIGITS:[C

    aget-byte v6, p0, v2

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v1, v3

    .line 77
    .end local v3    # "j":I
    add-int/lit8 v3, v4, 0x1

    .restart local v3    # "j":I
    sget-object v5, Lcom/android/car/utils/AppUtils;->HEX_DIGITS:[C

    aget-byte v6, p0, v2

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v1, v4

    .line 75
    .end local v4    # "j":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static getAppSignature(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 58
    invoke-static {p1}, Lcom/android/car/utils/AppUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 60
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 62
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/16 v2, 0x40

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 63
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    :goto_0
    return-object v1

    .line 64
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 66
    return-object v1
.end method

.method private static getAppSignatureHash(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lcom/android/car/utils/AppUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 41
    :cond_0
    invoke-static {p0, p1}, Lcom/android/car/utils/AppUtils;->getAppSignature(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    .line 42
    .local v0, "signature":[Landroid/content/pm/Signature;
    if-eqz v0, :cond_2

    array-length v1, v0

    if-gtz v1, :cond_1

    goto :goto_0

    .line 43
    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/car/utils/AppUtils;->hashTemplate([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/car/utils/AppUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(?<=[0-9A-F]{2})[0-9A-F]{2}"

    const-string v3, ":$0"

    .line 44
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    return-object v1

    .line 42
    :cond_2
    :goto_0
    const-string v1, ""

    return-object v1
.end method

.method public static getAppSignatureSHA1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 36
    const-string v0, "SHA1"

    invoke-static {p0, p1, v0}, Lcom/android/car/utils/AppUtils;->getAppSignatureHash(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hashTemplate([BLjava/lang/String;)[B
    .locals 3
    .param p0, "data"    # [B
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length v1, p0

    if-gtz v1, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 86
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 87
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 88
    .end local v1    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 90
    return-object v0

    .line 83
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static isSpace(Ljava/lang/String;)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 48
    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 49
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 50
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 51
    const/4 v0, 0x0

    return v0

    .line 49
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_2
    return v0
.end method
