.class public Lcom/xiaopeng/commonfunc/utils/NumberUtil;
.super Ljava/lang/Object;
.source "NumberUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNumber(C)I
    .locals 3
    .param p0, "c"    # C

    .line 9
    const/4 v0, -0x1

    .line 10
    .local v0, "value":I
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 11
    .local v1, "i":I
    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    .line 12
    add-int/lit8 v0, v1, -0x30

    .line 14
    :cond_0
    const/16 v2, 0x61

    if-lt v1, v2, :cond_1

    .line 15
    add-int/lit8 v0, v1, -0x57

    .line 18
    :cond_1
    return v0
.end method
