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

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isInScrollContainer(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 129
    .local v0, "p":Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 133
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-nez v1, :cond_1

    instance-of v1, v0, Landroidx/core/widget/NestedScrollView;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 136
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_1
    :goto_1
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    return-object v1

    .line 138
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic lambda$scrollByLocation$0(Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;Landroid/view/View;)V
    .locals 0
    .param p0, "listener"    # Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;
    .param p1, "view"    # Landroid/view/View;

    .line 111
    invoke-interface {p0, p1}, Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;->onCorrectionLocationEnd(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$scrollByLocation$1(Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;Landroid/view/View;)V
    .locals 0
    .param p0, "listener"    # Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;
    .param p1, "view"    # Landroid/view/View;

    .line 115
    invoke-interface {p0, p1}, Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;->onCorrectionLocationEnd(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$scrollByLocation$2(Landroid/view/View;Landroid/view/ViewGroup;Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;)V
    .locals 13
    .param p0, "view"    # Landroid/view/View;
    .param p1, "parentView"    # Landroid/view/ViewGroup;
    .param p2, "listener"    # Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 52
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    .line 53
    .local v1, "localVisible":Z
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 54
    .local v2, "h":I
    const-string v3, ""

    .line 55
    .local v3, "type":Ljava/lang/String;
    const/4 v4, 0x0

    .line 56
    .local v4, "y":I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    .line 57
    .local v5, "parentH":I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    .line 58
    .local v6, "parentPt":I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v7

    .line 59
    .local v7, "parentPb":I
    if-eqz v1, :cond_2

    .line 60
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-ge v8, v2, :cond_1

    .line 61
    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-lez v8, :cond_0

    .line 62
    const-string v3, "top a part "

    .line 63
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int v8, v2, v8

    neg-int v8, v8

    add-int/lit8 v4, v8, -0x3c

    goto :goto_0

    .line 65
    :cond_0
    const-string v3, "bottom a part "

    .line 66
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int v8, v2, v8

    add-int/lit8 v4, v8, 0x3c

    goto :goto_0

    .line 69
    :cond_1
    const-string v3, "all visibile "

    goto :goto_0

    .line 72
    :cond_2
    iget v8, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 73
    const-string v3, "top all "

    .line 74
    iget v8, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/lit8 v4, v8, -0x3c

    goto :goto_0

    .line 76
    :cond_3
    const-string v3, "bottom all "

    .line 77
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v8, v9

    add-int/lit8 v4, v8, 0x3c

    .line 97
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "scrollByLocation end localVisible : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", top "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", bottom "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", rect h:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", vh:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", y:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", ph:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", ppt:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", ppb:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 97
    invoke-static {v8}, Lcom/xiaopeng/xui/utils/XViewLocationUtils;->log(Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isUseViewLocationSmoothScroll()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_6

    .line 108
    instance-of v8, p1, Landroid/widget/ScrollView;

    const-wide/16 v10, 0x12c

    if-eqz v8, :cond_4

    .line 109
    move-object v8, p1

    check-cast v8, Landroid/widget/ScrollView;

    .line 110
    .local v8, "scrollView":Landroid/widget/ScrollView;
    invoke-virtual {v8, v9, v4}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 111
    new-instance v9, Lcom/xiaopeng/xui/utils/-$$Lambda$XViewLocationUtils$Cc_L9u8VTugO8U3dj8yDhJMu2jQ;

    invoke-direct {v9, p2, p0}, Lcom/xiaopeng/xui/utils/-$$Lambda$XViewLocationUtils$Cc_L9u8VTugO8U3dj8yDhJMu2jQ;-><init>(Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;Landroid/view/View;)V

    invoke-static {v9, v10, v11}, Lcom/xiaopeng/xui/utils/ThreadUtils;->runOnMainThreadDelay(Ljava/lang/Runnable;J)V

    .line 112
    .end local v8    # "scrollView":Landroid/widget/ScrollView;
    goto :goto_1

    :cond_4
    instance-of v8, p1, Landroidx/core/widget/NestedScrollView;

    if-eqz v8, :cond_5

    .line 113
    move-object v8, p1

    check-cast v8, Landroidx/core/widget/NestedScrollView;

    .line 114
    .local v8, "nestedScrollView":Landroidx/core/widget/NestedScrollView;
    const/16 v12, 0xfa

    invoke-virtual {v8, v9, v4, v12}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(III)V

    .line 115
    new-instance v9, Lcom/xiaopeng/xui/utils/-$$Lambda$XViewLocationUtils$RC_mVcQu0o0IGopxiqXrYRTCmtE;

    invoke-direct {v9, p2, p0}, Lcom/xiaopeng/xui/utils/-$$Lambda$XViewLocationUtils$RC_mVcQu0o0IGopxiqXrYRTCmtE;-><init>(Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;Landroid/view/View;)V

    invoke-static {v9, v10, v11}, Lcom/xiaopeng/xui/utils/ThreadUtils;->runOnMainThreadDelay(Ljava/lang/Runnable;J)V

    .line 116
    .end local v8    # "nestedScrollView":Landroidx/core/widget/NestedScrollView;
    goto :goto_1

    .line 117
    :cond_5
    invoke-virtual {p1, v9, v4}, Landroid/view/ViewGroup;->scrollBy(II)V

    .line 118
    invoke-interface {p2, p0}, Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;->onCorrectionLocationEnd(Landroid/view/View;)V

    goto :goto_1

    .line 121
    :cond_6
    invoke-virtual {p1, v9, v4}, Landroid/view/ViewGroup;->scrollBy(II)V

    .line 122
    invoke-interface {p2, p0}, Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;->onCorrectionLocationEnd(Landroid/view/View;)V

    .line 124
    :goto_1
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 146
    const-string/jumbo v0, "xui-ViewLocation"

    invoke-static {v0, p0}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public static scrollByLocation(Landroid/view/View;Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "listener"    # Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    invoke-static {p0}, Lcom/xiaopeng/xui/utils/XViewLocationUtils;->isInScrollContainer(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 32
    .local v0, "parentView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_0

    .line 33
    invoke-static {v0, p0, p1}, Lcom/xiaopeng/xui/utils/XViewLocationUtils;->scrollByLocation(Landroid/view/ViewGroup;Landroid/view/View;Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;)V

    goto :goto_0

    .line 35
    :cond_0
    invoke-interface {p1, p0}, Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;->onCorrectionLocationEnd(Landroid/view/View;)V

    .line 37
    :goto_0
    return-void
.end method

.method public static scrollByLocation(Landroid/view/ViewGroup;Landroid/view/View;Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;)V
    .locals 1
    .param p0, "parentView"    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 49
    const-string v0, "scrollByLocation start "

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XViewLocationUtils;->log(Ljava/lang/String;)V

    .line 50
    new-instance v0, Lcom/xiaopeng/xui/utils/-$$Lambda$XViewLocationUtils$B4wuLwoY7aAh0I7HGre_OMvYghE;

    invoke-direct {v0, p1, p0, p2}, Lcom/xiaopeng/xui/utils/-$$Lambda$XViewLocationUtils$B4wuLwoY7aAh0I7HGre_OMvYghE;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 125
    return-void
.end method
