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

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isInScrollContainer(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 79
    .local v0, "p":Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 80
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    return-object v1

    .line 83
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 85
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic lambda$scrollByLocation$0(Landroid/view/View;Landroid/view/ViewGroup;Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "parentView"    # Landroid/view/ViewGroup;
    .param p2, "listener"    # Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 47
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    .line 48
    .local v1, "localVisible":Z
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 49
    .local v2, "h":I
    const-string v3, ""

    .line 50
    .local v3, "type":Ljava/lang/String;
    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x0

    if-gez v4, :cond_0

    .line 51
    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, -0x3c

    invoke-virtual {p1, v5, v4}, Landroid/view/ViewGroup;->scrollBy(II)V

    .line 52
    const-string v3, "top all "

    goto :goto_0

    .line 53
    :cond_0
    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-lez v4, :cond_2

    .line 54
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ge v4, v2, :cond_1

    .line 55
    iget v4, v0, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    add-int/lit8 v4, v4, -0x3c

    invoke-virtual {p1, v5, v4}, Landroid/view/ViewGroup;->scrollBy(II)V

    .line 56
    const-string v3, "top a part "

    goto :goto_0

    .line 58
    :cond_1
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    sub-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x3c

    invoke-virtual {p1, v5, v4}, Landroid/view/ViewGroup;->scrollBy(II)V

    .line 59
    const-string v3, "bottom all "

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ge v4, v2, :cond_3

    .line 63
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v2, v4

    add-int/lit8 v4, v4, 0x3c

    invoke-virtual {p1, v5, v4}, Landroid/view/ViewGroup;->scrollBy(II)V

    .line 64
    const-string v3, "bottom a part "

    .line 67
    :cond_3
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scrollByLocation end localVisible : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", top "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", bottom "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", rect h:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",h:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 67
    invoke-static {v4}, Lcom/xiaopeng/xui/utils/XViewLocationUtils;->log(Ljava/lang/String;)V

    .line 73
    invoke-interface {p2, p0}, Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;->onCorrectionLocationEnd(Landroid/view/View;)V

    .line 74
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 93
    const-string v0, "xui-ViewLocation"

    invoke-static {v0, p0}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public static scrollByLocation(Landroid/view/View;Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "listener"    # Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 26
    invoke-static {p0}, Lcom/xiaopeng/xui/utils/XViewLocationUtils;->isInScrollContainer(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 27
    .local v0, "parentView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 28
    invoke-static {v0, p0, p1}, Lcom/xiaopeng/xui/utils/XViewLocationUtils;->scrollByLocation(Landroid/view/ViewGroup;Landroid/view/View;Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;)V

    goto :goto_0

    .line 30
    :cond_0
    invoke-interface {p1, p0}, Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;->onCorrectionLocationEnd(Landroid/view/View;)V

    .line 32
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

    .line 44
    const-string v0, "scrollByLocation start "

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XViewLocationUtils;->log(Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/xiaopeng/xui/utils/-$$Lambda$XViewLocationUtils$ASPj6RLccAz9kzfwNAyScYQXOVU;

    invoke-direct {v0, p1, p0, p2}, Lcom/xiaopeng/xui/utils/-$$Lambda$XViewLocationUtils$ASPj6RLccAz9kzfwNAyScYQXOVU;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 75
    return-void
.end method
