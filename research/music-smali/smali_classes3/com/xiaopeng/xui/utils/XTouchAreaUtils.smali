.class public Lcom/xiaopeng/xui/utils/XTouchAreaUtils;
.super Ljava/lang/Object;
.source "XTouchAreaUtils.java"


# static fields
.field public static final CLASSES:[Ljava/lang/Class;

.field public static final MIN_PADDING:I = 0x14


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 19
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Landroid/widget/ImageView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->CLASSES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extendTouchArea(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-static {p0, p1, v0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchArea(Landroid/view/View;Landroid/view/ViewGroup;[I)V

    return-void
.end method

.method public static extendTouchArea(Landroid/view/View;Landroid/view/ViewGroup;[I)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x4

    .line 63
    new-array p2, p2, [I

    fill-array-data p2, :array_0

    :cond_1
    const/4 v0, 0x0

    .line 65
    aget v3, p2, v0

    const/4 v0, 0x1

    aget v4, p2, v0

    const/4 v0, 0x2

    aget v5, p2, v0

    const/4 v0, 0x3

    aget v6, p2, v0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils;->extendViewTouchTarget(Landroid/view/View;Landroid/view/View;IIII)V

    return-void

    nop

    :array_0
    .array-data 4
        0x14
        0x14
        0x14
        0x14
    .end array-data
.end method

.method public static extendTouchArea(Landroid/view/ViewGroup;)V
    .locals 1

    .line 25
    sget-object v0, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->CLASSES:[Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchArea([Ljava/lang/Class;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static extendTouchArea([Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-static {p0, p1, v0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchArea([Landroid/view/View;Landroid/view/ViewGroup;[I)V

    return-void
.end method

.method public static extendTouchArea([Landroid/view/View;Landroid/view/ViewGroup;[I)V
    .locals 3

    .line 48
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 49
    invoke-static {v2, p1, p2}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchArea(Landroid/view/View;Landroid/view/ViewGroup;[I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static extendTouchArea([Ljava/lang/Class;Landroid/view/ViewGroup;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 29
    invoke-static {p0, p1, v0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchArea([Ljava/lang/Class;Landroid/view/ViewGroup;[I)V

    return-void
.end method

.method public static extendTouchArea([Ljava/lang/Class;Landroid/view/ViewGroup;[I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/view/ViewGroup;",
            "[I)V"
        }
    .end annotation

    .line 33
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 34
    invoke-static {p1, v2}, Lcom/xiaopeng/xui/utils/XuiUtils;->findViewsByType(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 35
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 36
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/view/View;

    .line 37
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 38
    invoke-static {v3, p1, p2}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchArea([Landroid/view/View;Landroid/view/ViewGroup;[I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static extendTouchAreaAsParentSameSize(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-static {p0, p1}, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils;->extendTouchAreaAsParentSameSize(Landroid/view/View;Landroid/view/ViewGroup;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static extendTouchAreaAsParentSameSize(Landroid/view/ViewGroup;)V
    .locals 1

    .line 76
    sget-object v0, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->CLASSES:[Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize([Ljava/lang/Class;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static extendTouchAreaAsParentSameSize([Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 3

    .line 91
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 92
    invoke-static {v2, p1}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize(Landroid/view/View;Landroid/view/ViewGroup;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static extendTouchAreaAsParentSameSize([Ljava/lang/Class;Landroid/view/ViewGroup;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .line 80
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 81
    invoke-static {p1, v2}, Lcom/xiaopeng/xui/utils/XuiUtils;->findViewsByType(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 82
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 83
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/view/View;

    .line 84
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 85
    invoke-static {v3, p1}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize([Landroid/view/View;Landroid/view/ViewGroup;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
