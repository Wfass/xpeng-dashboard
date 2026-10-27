.class public Lbyj;
.super Landroid/view/View;
.source "BaseIndicatorView.kt"

# interfaces
.implements Lbyk;


# annotations
.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field private mIndicatorOptions:Lbyu;

.field private final mOnPageChangeCallback:Lbyj$a;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private mViewPager2:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lccf;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    new-instance p1, Lbyj$a;

    invoke-direct {p1, p0}, Lbyj$a;-><init>(Lbyj;)V

    iput-object p1, p0, Lbyj;->mOnPageChangeCallback:Lbyj$a;

    .line 81
    new-instance p1, Lbyu;

    invoke-direct {p1}, Lbyu;-><init>()V

    iput-object p1, p0, Lbyj;->mIndicatorOptions:Lbyu;

    return-void
.end method

.method private final scrollSlider(IF)V
    .locals 4

    .line 108
    iget-object v0, p0, Lbyj;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0}, Lbyu;->c()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lbyj;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0}, Lbyu;->c()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p0}, Lbyj;->getPageSize()I

    move-result v0

    rem-int v0, p1, v0

    invoke-virtual {p0}, Lbyj;->getPageSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    float-to-double v0, p2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double p2, v0, v2

    const/4 v0, 0x0

    if-gez p2, :cond_1

    .line 115
    invoke-virtual {p0, p1}, Lbyj;->setCurrentPosition(I)V

    .line 116
    invoke-virtual {p0, v0}, Lbyj;->setSlideProgress(F)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 118
    invoke-virtual {p0, p1}, Lbyj;->setCurrentPosition(I)V

    .line 119
    invoke-virtual {p0, v0}, Lbyj;->setSlideProgress(F)V

    goto :goto_1

    .line 122
    :cond_2
    invoke-virtual {p0, p1}, Lbyj;->setCurrentPosition(I)V

    .line 123
    invoke-virtual {p0, p2}, Lbyj;->setSlideProgress(F)V

    goto :goto_1

    .line 110
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lbyj;->setCurrentPosition(I)V

    .line 111
    invoke-virtual {p0, p2}, Lbyj;->setSlideProgress(F)V

    :goto_1
    return-void
.end method

.method private final setupViewPager()V
    .locals 2

    .line 135
    iget-object v0, p0, Lbyj;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_4

    if-eqz v0, :cond_0

    .line 136
    move-object v1, p0

    check-cast v1, Landroidx/viewpager/widget/ViewPager$f;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$f;)V

    .line 137
    :cond_0
    iget-object v0, p0, Lbyj;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Landroidx/viewpager/widget/ViewPager$f;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$f;)V

    .line 138
    :cond_1
    iget-object v0, p0, Lbyj;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 139
    iget-object v0, p0, Lbyj;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_2

    invoke-static {}, Lccf;->a()V

    :cond_2
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lccf;->a()V

    :cond_3
    const-string v1, "mViewPager!!.adapter!!"

    invoke-static {v0, v1}, Lccf;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lbyj;->setPageSize(I)Lbyj;

    .line 143
    :cond_4
    iget-object v0, p0, Lbyj;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_9

    if-eqz v0, :cond_5

    .line 144
    iget-object v1, p0, Lbyj;->mOnPageChangeCallback:Lbyj$a;

    check-cast v1, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 145
    :cond_5
    iget-object v0, p0, Lbyj;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lbyj;->mOnPageChangeCallback:Lbyj$a;

    check-cast v1, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 146
    :cond_6
    iget-object v0, p0, Lbyj;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 147
    iget-object v0, p0, Lbyj;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_7

    invoke-static {}, Lccf;->a()V

    :cond_7
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-static {}, Lccf;->a()V

    :cond_8
    const-string v1, "mViewPager2!!.adapter!!"

    invoke-static {v0, v1}, Lccf;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lbyj;->setPageSize(I)Lbyj;

    :cond_9
    return-void
.end method


# virtual methods
.method public final getCheckedColor()I
    .locals 1

    .line 192
    iget-object v0, p0, Lbyj;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0}, Lbyu;->f()I

    move-result v0

    return v0
.end method

.method public final getCheckedSlideWidth()F
    .locals 1

    .line 161
    iget-object v0, p0, Lbyj;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0}, Lbyu;->j()F

    move-result v0

    return v0
.end method

.method public final getCheckedSliderWidth()F
    .locals 1

    .line 169
    iget-object v0, p0, Lbyj;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0}, Lbyu;->j()F

    move-result v0

    return v0
.end method

.method public final getCurrentPosition()I
    .locals 1

    .line 176
    iget-object v0, p0, Lbyj;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0}, Lbyu;->k()I

    move-result v0

    return v0
.end method

.method public final getIndicatorGap()F
    .locals 1

    .line 180
    iget-object v0, p0, Lbyj;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0}, Lbyu;->g()F

    move-result v0

    return v0
.end method

.method public final getMIndicatorOptions()Lbyu;
    .locals 1

    .line 57
    iget-object v0, p0, Lbyj;->mIndicatorOptions:Lbyu;

    return-object v0
.end method

.method public final getNormalSlideWidth()F
    .locals 1

    .line 153
    iget-object v0, p0, Lbyj;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0}, Lbyu;->i()F

    move-result v0

    return v0
.end method

.method public final getPageSize()I
    .locals 1

    .line 208
    iget-object v0, p0, Lbyj;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0}, Lbyu;->d()I

    move-result v0

    return v0
.end method

.method public final getSlideMode()I
    .locals 1

    .line 254
    iget-object v0, p0, Lbyj;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0}, Lbyu;->c()I

    move-result v0

    return v0
.end method

.method public final getSlideProgress()F
    .locals 1

    .line 200
    iget-object v0, p0, Lbyj;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0}, Lbyu;->l()F

    move-result v0

    return v0
.end method

.method public notifyDataChanged()V
    .locals 0

    .line 129
    invoke-direct {p0}, Lbyj;->setupViewPager()V

    .line 130
    invoke-virtual {p0}, Lbyj;->requestLayout()V

    .line 131
    invoke-virtual {p0}, Lbyj;->invalidate()V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 97
    invoke-virtual {p0}, Lbyj;->getSlideMode()I

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lbyj;->getPageSize()I

    move-result p3

    const/4 v0, 0x1

    if-le p3, v0, :cond_0

    .line 98
    invoke-direct {p0, p1, p2}, Lbyj;->scrollSlider(IF)V

    .line 99
    invoke-virtual {p0}, Lbyj;->invalidate()V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 85
    invoke-virtual {p0}, Lbyj;->getSlideMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0, p1}, Lbyj;->setCurrentPosition(I)V

    const/4 p1, 0x0

    .line 87
    invoke-virtual {p0, p1}, Lbyj;->setSlideProgress(F)V

    .line 88
    invoke-virtual {p0}, Lbyj;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setCheckedColor(I)V
    .locals 1

    .line 188
    iget-object v0, p0, Lbyj;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0, p1}, Lbyu;->f(I)V

    return-void
.end method

.method public final setCheckedSlideWidth(F)V
    .locals 1

    .line 165
    iget-object v0, p0, Lbyj;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0, p1}, Lbyu;->d(F)V

    return-void
.end method

.method public final setCurrentPosition(I)V
    .locals 1

    .line 172
    iget-object v0, p0, Lbyj;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0, p1}, Lbyu;->g(I)V

    return-void
.end method

.method public final setIndicatorGap(F)V
    .locals 1

    .line 184
    iget-object v0, p0, Lbyj;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0, p1}, Lbyu;->a(F)V

    return-void
.end method

.method public setIndicatorOptions(Lbyu;)V
    .locals 1

    const-string v0, "options"

    invoke-static {p1, v0}, Lccf;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    iput-object p1, p0, Lbyj;->mIndicatorOptions:Lbyu;

    return-void
.end method

.method public final setIndicatorStyle(I)Lbyj;
    .locals 1

    .line 263
    iget-object v0, p0, Lbyj;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0, p1}, Lbyu;->b(I)V

    return-object p0
.end method

.method public final setMIndicatorOptions(Lbyu;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lccf;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lbyj;->mIndicatorOptions:Lbyu;

    return-void
.end method

.method public final setNormalColor(I)V
    .locals 1

    .line 196
    iget-object v0, p0, Lbyj;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0, p1}, Lbyu;->e(I)V

    return-void
.end method

.method public final setNormalSlideWidth(F)V
    .locals 1

    .line 157
    iget-object v0, p0, Lbyj;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0, p1}, Lbyu;->c(F)V

    return-void
.end method

.method public final setPageSize(I)Lbyj;
    .locals 1

    .line 212
    iget-object v0, p0, Lbyj;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0, p1}, Lbyu;->d(I)V

    return-object p0
.end method

.method public final setSlideMode(I)Lbyj;
    .locals 1

    .line 258
    iget-object v0, p0, Lbyj;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0, p1}, Lbyu;->c(I)V

    return-object p0
.end method

.method public final setSlideProgress(F)V
    .locals 1

    .line 204
    iget-object v0, p0, Lbyj;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0, p1}, Lbyu;->e(F)V

    return-void
.end method

.method public final setSliderColor(II)Lbyj;
    .locals 1

    .line 220
    iget-object v0, p0, Lbyj;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0, p1, p2}, Lbyu;->a(II)V

    return-object p0
.end method

.method public final setSliderGap(F)Lbyj;
    .locals 1

    .line 249
    iget-object v0, p0, Lbyj;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0, p1}, Lbyu;->a(F)V

    return-object p0
.end method

.method public final setSliderHeight(F)Lbyj;
    .locals 1

    .line 268
    iget-object v0, p0, Lbyj;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0, p1}, Lbyu;->b(F)V

    return-object p0
.end method

.method public final setSliderWidth(F)Lbyj;
    .locals 1

    .line 230
    iget-object v0, p0, Lbyj;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0, p1}, Lbyu;->f(F)V

    return-object p0
.end method

.method public final setSliderWidth(FF)Lbyj;
    .locals 1

    .line 244
    iget-object v0, p0, Lbyj;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0, p1, p2}, Lbyu;->a(FF)V

    return-object p0
.end method

.method public final setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    const-string v0, "viewPager"

    invoke-static {p1, v0}, Lccf;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    iput-object p1, p0, Lbyj;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 274
    invoke-virtual {p0}, Lbyj;->notifyDataChanged()V

    return-void
.end method

.method public final setupWithViewPager(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 1

    const-string v0, "viewPager2"

    invoke-static {p1, v0}, Lccf;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    iput-object p1, p0, Lbyj;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    .line 279
    invoke-virtual {p0}, Lbyj;->notifyDataChanged()V

    return-void
.end method

.method public final showIndicatorWhenOneItem(Z)V
    .locals 1

    .line 283
    iget-object v0, p0, Lbyj;->mIndicatorOptions:Lbyu;

    invoke-virtual {v0, p1}, Lbyu;->a(Z)V

    return-void
.end method
