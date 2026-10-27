.class public Lcom/xiaopeng/xuiservice/innerutils/DensityUtil;
.super Ljava/lang/Object;
.source "DensityUtil.java"


# static fields
.field private static final DIMEN_TYPE_DP:I = 0x2

.field private static final DIMEN_TYPE_PX:I = 0x1

.field private static final DIMEN_TYPE_SP:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static displayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    .line 18
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->getInstance()Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method public static dp2px(I)I
    .locals 3
    .param p0, "dp"    # I

    .line 10
    int-to-float v0, p0

    invoke-static {}, Lcom/xiaopeng/xuiservice/innerutils/DensityUtil;->displayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static parseDimen(Ljava/lang/String;)I
    .locals 4
    .param p0, "text"    # Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, "type":I
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 36
    const-string v1, "px"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    const/4 v0, 0x1

    goto :goto_0

    .line 38
    :cond_0
    const-string v1, "dp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    const/4 v0, 0x2

    goto :goto_0

    .line 40
    :cond_1
    const-string v1, "sp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 41
    const/4 v0, 0x3

    .line 43
    :cond_2
    :goto_0
    if-eqz v0, :cond_5

    .line 47
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 48
    .local v1, "value":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 49
    return v1

    .line 50
    :cond_3
    if-ne v0, v3, :cond_4

    .line 51
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/innerutils/DensityUtil;->dp2px(I)I

    move-result v2

    return v2

    .line 53
    :cond_4
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/innerutils/DensityUtil;->sp2px(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 55
    .end local v1    # "value":I
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid value"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 44
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid unit"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static sp2px(I)I
    .locals 3
    .param p0, "sp"    # I

    .line 14
    int-to-float v0, p0

    invoke-static {}, Lcom/xiaopeng/xuiservice/innerutils/DensityUtil;->displayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method
