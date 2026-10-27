.class public Lcom/xiaopeng/lib/utils/view/anim/LayoutAnimation;
.super Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;
.source "LayoutAnimation.java"


# instance fields
.field private mOrderIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/lib/utils/view/anim/LayoutAnimation;->mOrderIndex:I

    .line 11
    return-void
.end method

.method private bindAnimation(Landroid/view/View;ILcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "depth"    # I
    .param p3, "type"    # Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "depth",
            "type"
        }
    .end annotation

    .line 19
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 20
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 21
    .local v0, "group":Landroid/view/ViewGroup;
    sget-object v1, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->HORIZON_CROSS:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    const/4 v2, 0x0

    if-ne p3, v1, :cond_1

    .line 26
    nop

    .local v2, "i":I
    :goto_0
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    rem-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_0

    sget-object v4, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->HORIZON_LEFT:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    goto :goto_1

    :cond_0
    sget-object v4, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->HORIZON_RIGHT:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    :goto_1
    invoke-direct {p0, v2, v3, v4}, Lcom/xiaopeng/lib/utils/view/anim/LayoutAnimation;->bindAnimation(Landroid/view/View;ILcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;)V

    .line 26
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 31
    .end local v2    # "i":I
    :cond_1
    nop

    .restart local v2    # "i":I
    :goto_2
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, v2, v3, p3}, Lcom/xiaopeng/lib/utils/view/anim/LayoutAnimation;->bindAnimation(Landroid/view/View;ILcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;)V

    .line 31
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 35
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_2
    goto :goto_3

    .line 36
    :cond_3
    iget v0, p0, Lcom/xiaopeng/lib/utils/view/anim/LayoutAnimation;->mDelay:I

    iget v1, p0, Lcom/xiaopeng/lib/utils/view/anim/LayoutAnimation;->mOrderIndex:I

    mul-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/xiaopeng/lib/utils/view/anim/LayoutAnimation;->runAnimation(Landroid/view/View;JLcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;)V

    .line 37
    iget v0, p0, Lcom/xiaopeng/lib/utils/view/anim/LayoutAnimation;->mOrderIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaopeng/lib/utils/view/anim/LayoutAnimation;->mOrderIndex:I

    .line 39
    :goto_3
    return-void
.end method


# virtual methods
.method public startAnimation(Landroid/view/View;Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;)V
    .locals 1
    .param p1, "root"    # Landroid/view/View;
    .param p2, "type"    # Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "root",
            "type"
        }
    .end annotation

    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaopeng/lib/utils/view/anim/LayoutAnimation;->bindAnimation(Landroid/view/View;ILcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;)V

    .line 15
    return-void
.end method
