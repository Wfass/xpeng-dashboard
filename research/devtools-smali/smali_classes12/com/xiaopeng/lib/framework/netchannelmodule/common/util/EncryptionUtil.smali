.class public Lcom/xiaopeng/lib/framework/netchannelmodule/common/util/EncryptionUtil;
.super Ljava/lang/Object;
.source "EncryptionUtil.java"


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "EncryptionUtil-XOR"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt([B[B)[B
    .locals 0

    .line 15
    invoke-static {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/util/EncryptionUtil;->encrypt([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encrypt([B[B)[B
    .locals 4

    .line 7
    array-length v0, p0

    new-array v0, v0, [B

    .line 8
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 9
    aget-byte v2, p0, v1

    array-length v3, p1

    rem-int v3, v1, v3

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 8
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_0
    return-object v0
.end method
