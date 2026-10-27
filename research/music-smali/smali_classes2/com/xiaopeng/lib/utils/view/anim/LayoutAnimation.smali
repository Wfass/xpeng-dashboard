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

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/xiaopeng/lib/utils/view/anim/LayoutAnimation;->mOrderIndex:I

    return-void
.end method

.method private bindAnimation(Landroid/view/View;ILcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;)V
    .locals 3

    .line 19
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 20
    check-cast p1, Landroid/view/ViewGroup;

    .line 21
    sget-object v0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->HORIZON_CROSS:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    const/4 v1, 0x0

    if-ne p3, v0, :cond_1

    .line 26
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-ge v1, p3, :cond_3

    .line 27
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    add-int/lit8 v0, p2, 0x1

    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_0

    sget-object v2, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->HORIZON_LEFT:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->HORIZON_RIGHT:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    :goto_1
    invoke-direct {p0, p3, v0, v2}, Lcom/xiaopeng/lib/utils/view/anim/LayoutAnimation;->bindAnimation(Landroid/view/View;ILcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    :cond_1
    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 32
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int/lit8 v2, p2, 0x1

    invoke-direct {p0, v0, v2, p3}, Lcom/xiaopeng/lib/utils/view/anim/LayoutAnimation;->bindAnimation(Landroid/view/View;ILcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 36
    :cond_2
    iget p2, p0, Lcom/xiaopeng/lib/utils/view/anim/LayoutAnimation;->mDelay:I

    iget v0, p0, Lcom/xiaopeng/lib/utils/view/anim/LayoutAnimation;->mOrderIndex:I

    mul-int/2addr p2, v0

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/xiaopeng/lib/utils/view/anim/LayoutAnimation;->runAnimation(Landroid/view/View;JLcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;)V

    .line 37
    iget p1, p0, Lcom/xiaopeng/lib/utils/view/anim/LayoutAnimation;->mOrderIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/xiaopeng/lib/utils/view/anim/LayoutAnimation;->mOrderIndex:I

    :cond_3
    return-void
.end method


# virtual methods
.method public startAnimation(Landroid/view/View;Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0, p2}, Lcom/xiaopeng/lib/utils/view/anim/LayoutAnimation;->bindAnimation(Landroid/view/View;ILcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;)V

    return-void
.end method
