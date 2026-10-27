.class public Lcom/xiaopeng/xuiservice/utils/ArrayUtil;
.super Ljava/lang/Object;
.source "ArrayUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static intArray([Ljava/lang/Integer;)[I
    .locals 6
    .param p0, "array"    # [Ljava/lang/Integer;

    .line 6
    if-nez p0, :cond_0

    .line 7
    const/4 v0, 0x0

    return-object v0

    .line 10
    :cond_0
    array-length v0, p0

    .line 11
    .local v0, "length":I
    new-array v1, v0, [I

    .line 14
    .local v1, "result":[I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 15
    aget-object v4, p0, v3

    .line 16
    .local v4, "integer":Ljava/lang/Integer;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    aput v5, v1, v3

    .line 14
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 19
    .end local v3    # "i":I
    .end local v4    # "integer":Ljava/lang/Integer;
    :cond_2
    return-object v1
.end method

.method public static integerArray([I)[Ljava/lang/Integer;
    .locals 4
    .param p0, "array"    # [I

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    array-length v0, p0

    .line 28
    .local v0, "length":I
    new-array v1, v0, [Ljava/lang/Integer;

    .line 30
    .local v1, "result":[Ljava/lang/Integer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 31
    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 30
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 34
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method
