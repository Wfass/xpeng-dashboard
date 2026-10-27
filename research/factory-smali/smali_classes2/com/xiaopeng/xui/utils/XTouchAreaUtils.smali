.class public Lcom/xiaopeng/xui/utils/XTouchAreaUtils;
.super Ljava/lang/Object;
.source "XTouchAreaUtils.java"


# static fields
.field public static final CLASSES:[Ljava/lang/Class;

.field public static final MIN_PADDING:I = 0x14


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 19
    const/4 v0, 0x2

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
    .param p0, "view"    # Landroid/view/View;
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .line 54
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchArea(Landroid/view/View;Landroid/view/ViewGroup;[I)V

    .line 55
    return-void
.end method

.method public static extendTouchArea(Landroid/view/View;Landroid/view/ViewGroup;[I)V
    .locals 10
    .param p0, "view"    # Landroid/view/View;
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "padding"    # [I

    .line 58
    if-nez p0, :cond_0

    .line 59
    return-void

    .line 61
    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_1

    .line 62
    const/16 v4, 0x14

    .line 63
    .local v4, "p":I
    const/4 v5, 0x4

    new-array v5, v5, [I

    aput v4, v5, v3

    aput v4, v5, v2

    aput v4, v5, v1

    aput v4, v5, v0

    move-object p2, v5

    .line 65
    .end local v4    # "p":I
    :cond_1
    aget v6, p2, v3

    aget v7, p2, v2

    aget v8, p2, v1

    aget v9, p2, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v4 .. v9}, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils;->extendViewTouchTarget(Landroid/view/View;Landroid/view/View;IIII)V

    .line 67
    return-void
.end method

.method public static extendTouchArea(Landroid/view/ViewGroup;)V
    .locals 1
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;

    .line 25
    sget-object v0, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->CLASSES:[Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchArea([Ljava/lang/Class;Landroid/view/ViewGroup;)V

    .line 26
    return-void
.end method

.method public static extendTouchArea([Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1
    .param p0, "views"    # [Landroid/view/View;
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .line 44
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchArea([Landroid/view/View;Landroid/view/ViewGroup;[I)V

    .line 45
    return-void
.end method

.method public static extendTouchArea([Landroid/view/View;Landroid/view/ViewGroup;[I)V
    .locals 3
    .param p0, "views"    # [Landroid/view/View;
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "padding"    # [I

    .line 48
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 49
    .local v2, "view":Landroid/view/View;
    invoke-static {v2, p1, p2}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchArea(Landroid/view/View;Landroid/view/ViewGroup;[I)V

    .line 48
    .end local v2    # "view":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method

.method public static extendTouchArea([Ljava/lang/Class;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .line 29
    .local p0, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchArea([Ljava/lang/Class;Landroid/view/ViewGroup;[I)V

    .line 30
    return-void
.end method

.method public static extendTouchArea([Ljava/lang/Class;Landroid/view/ViewGroup;[I)V
    .locals 5
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "padding"    # [I
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
    .local p0, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 34
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1, v2}, Lcom/xiaopeng/xui/utils/XuiUtils;->findViewsByType(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 35
    .local v3, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 36
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/view/View;

    .line 37
    .local v4, "views1":[Landroid/view/View;
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 38
    invoke-static {v4, p1, p2}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchArea([Landroid/view/View;Landroid/view/ViewGroup;[I)V

    .line 33
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v4    # "views1":[Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method

.method public static extendTouchAreaAsParentSameSize(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 97
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-static {p0, p1}, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils;->extendTouchAreaAsParentSameSize(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 101
    return-void

    .line 98
    :cond_1
    :goto_0
    return-void
.end method

.method public static extendTouchAreaAsParentSameSize(Landroid/view/ViewGroup;)V
    .locals 1
    .param p0, "parent"    # Landroid/view/ViewGroup;

    .line 76
    sget-object v0, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->CLASSES:[Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize([Ljava/lang/Class;Landroid/view/ViewGroup;)V

    .line 77
    return-void
.end method

.method public static extendTouchAreaAsParentSameSize([Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 3
    .param p0, "views"    # [Landroid/view/View;
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 91
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 92
    .local v2, "view":Landroid/view/View;
    invoke-static {v2, p1}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 91
    .end local v2    # "view":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :cond_0
    return-void
.end method

.method public static extendTouchAreaAsParentSameSize([Ljava/lang/Class;Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
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
    .local p0, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 81
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1, v2}, Lcom/xiaopeng/xui/utils/XuiUtils;->findViewsByType(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 82
    .local v3, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 83
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/view/View;

    .line 84
    .local v4, "views1":[Landroid/view/View;
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 85
    invoke-static {v4, p1}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize([Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 80
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v4    # "views1":[Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_1
    return-void
.end method
