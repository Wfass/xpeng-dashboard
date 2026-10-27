.class public Lcom/xiaopeng/xui/utils/XViewLocationUtils;
.super Ljava/lang/Object;
.source "XViewLocationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;
    }
.end annotation


# static fields
.field private static final FADING_EDGE_LENGTH:I = 0x3c


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isInScrollContainer(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 1

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 144
    :goto_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 148
    instance-of v0, p0, Landroid/widget/ScrollView;

    if-nez v0, :cond_1

    instance-of v0, p0, Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 151
    :cond_0
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    .line 149
    :cond_1
    :goto_1
    check-cast p0, Landroid/view/ViewGroup;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$null$0(Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;Landroid/view/View;)V
    .locals 0

    .line 126
    invoke-interface {p0, p1}, Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;->onCorrectionLocationEnd(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$null$1(Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;Landroid/view/View;)V
    .locals 0

    .line 130
    invoke-interface {p0, p1}, Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;->onCorrectionLocationEnd(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$scrollByLocation$2(Landroid/view/View;Landroid/view/ViewGroup;ILcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;)V
    .locals 11

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 77
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 81
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    .line 82
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    .line 83
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "top all "

    const-string v9, "top a part "

    if-eqz v1, :cond_3

    .line 85
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-ge v8, v2, :cond_2

    .line 86
    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-lez v8, :cond_1

    .line 88
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int v8, v2, v8

    neg-int v8, v8

    add-int/lit8 v8, v8, -0x3c

    if-ne p2, v6, :cond_0

    add-int/lit8 v6, v8, -0x78

    goto :goto_0

    :cond_0
    move v6, v8

    :goto_0
    move-object v8, v9

    goto :goto_1

    .line 94
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int v6, v2, v6

    add-int/lit8 v6, v6, 0x3c

    const-string v8, "bottom a part "

    goto :goto_1

    :cond_2
    const-string v8, "all visibile "

    move v6, v7

    goto :goto_1

    .line 100
    :cond_3
    iget v9, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v10

    if-ge v9, v10, :cond_5

    .line 102
    iget v9, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x3c

    if-ne p2, v6, :cond_4

    add-int/lit8 v6, v9, -0x78

    goto :goto_1

    :cond_4
    move v6, v9

    goto :goto_1

    .line 108
    :cond_5
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int/2addr v6, v8

    add-int/lit8 v6, v6, 0x3c

    const-string v8, "bottom all "

    .line 111
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "scrollByLocation end localVisible : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", top "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottom "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rect h:"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", vh:"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", y:"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", ph:"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", ppt:"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", ppb:"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", type: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", locationType: "

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 111
    invoke-static {p2}, Lcom/xiaopeng/xui/utils/XViewLocationUtils;->log(Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isUseViewLocationSmoothScroll()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 123
    instance-of p2, p1, Landroid/widget/ScrollView;

    const-wide/16 v0, 0x12c

    if-eqz p2, :cond_6

    .line 124
    check-cast p1, Landroid/widget/ScrollView;

    .line 125
    invoke-virtual {p1, v7, v6}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 126
    new-instance p1, Lcom/xiaopeng/xui/utils/-$$Lambda$XViewLocationUtils$TmKSp-GAe4KP9tTZts3joQ915ew;

    invoke-direct {p1, p3, p0}, Lcom/xiaopeng/xui/utils/-$$Lambda$XViewLocationUtils$TmKSp-GAe4KP9tTZts3joQ915ew;-><init>(Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;Landroid/view/View;)V

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/xui/utils/ThreadUtils;->runOnMainThreadDelay(Ljava/lang/Runnable;J)V

    goto :goto_2

    .line 127
    :cond_6
    instance-of p2, p1, Landroidx/core/widget/NestedScrollView;

    if-eqz p2, :cond_7

    .line 128
    check-cast p1, Landroidx/core/widget/NestedScrollView;

    const/16 p2, 0xfa

    .line 129
    invoke-virtual {p1, v7, v6, p2}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(III)V

    .line 130
    new-instance p1, Lcom/xiaopeng/xui/utils/-$$Lambda$XViewLocationUtils$bQOOBlGyZGTOOx5vJFwBKmZoRR4;

    invoke-direct {p1, p3, p0}, Lcom/xiaopeng/xui/utils/-$$Lambda$XViewLocationUtils$bQOOBlGyZGTOOx5vJFwBKmZoRR4;-><init>(Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;Landroid/view/View;)V

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/xui/utils/ThreadUtils;->runOnMainThreadDelay(Ljava/lang/Runnable;J)V

    goto :goto_2

    .line 132
    :cond_7
    invoke-virtual {p1, v7, v6}, Landroid/view/ViewGroup;->scrollBy(II)V

    .line 133
    invoke-interface {p3, p0}, Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;->onCorrectionLocationEnd(Landroid/view/View;)V

    goto :goto_2

    .line 136
    :cond_8
    invoke-virtual {p1, v7, v6}, Landroid/view/ViewGroup;->scrollBy(II)V

    .line 137
    invoke-interface {p3, p0}, Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;->onCorrectionLocationEnd(Landroid/view/View;)V

    :goto_2
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "xui-ViewLocation"

    .line 161
    invoke-static {v0, p0}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static scrollByLocation(Landroid/view/View;ILcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;)V
    .locals 2

    .line 32
    invoke-static {p0}, Lcom/xiaopeng/xui/utils/XViewLocationUtils;->isInScrollContainer(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_0

    .line 34
    invoke-static {v0, p0, p1, p2}, Lcom/xiaopeng/xui/utils/XViewLocationUtils;->scrollByLocation(Landroid/view/ViewGroup;Landroid/view/View;ILcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;)V

    goto :goto_0

    .line 36
    :cond_0
    invoke-interface {p2, p0}, Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;->onCorrectionLocationEnd(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public static scrollByLocation(Landroid/view/View;Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-static {p0, v0, p1}, Lcom/xiaopeng/xui/utils/XViewLocationUtils;->scrollByLocation(Landroid/view/View;ILcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;)V

    return-void
.end method

.method public static scrollByLocation(Landroid/view/ViewGroup;Landroid/view/View;ILcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;)V
    .locals 1

    const-string v0, "scrollByLocation start "

    .line 74
    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XViewLocationUtils;->log(Ljava/lang/String;)V

    .line 75
    new-instance v0, Lcom/xiaopeng/xui/utils/-$$Lambda$XViewLocationUtils$VKfFeZbm2Opi5DZL9EfNLVET8ks;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/xiaopeng/xui/utils/-$$Lambda$XViewLocationUtils$VKfFeZbm2Opi5DZL9EfNLVET8ks;-><init>(Landroid/view/View;Landroid/view/ViewGroup;ILcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static scrollByLocation(Landroid/view/ViewGroup;Landroid/view/View;Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-static {p0, p1, v0, p2}, Lcom/xiaopeng/xui/utils/XViewLocationUtils;->scrollByLocation(Landroid/view/ViewGroup;Landroid/view/View;ILcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;)V

    return-void
.end method
