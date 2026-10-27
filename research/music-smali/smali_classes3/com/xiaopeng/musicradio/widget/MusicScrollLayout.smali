.class public Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;
.super Landroid/widget/LinearLayout;
.source "MusicScrollLayout.java"

# interfaces
.implements Lfy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/widget/MusicScrollLayout$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:I

.field private d:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout$a;

.field private e:I

.field private f:I

.field private g:Lga;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->e:I

    .line 37
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->f:I

    .line 39
    new-instance p1, Lga;

    invoke-direct {p1, p0}, Lga;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->g:Lga;

    const/4 p1, 0x1

    .line 55
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->setOrientation(I)V

    return-void
.end method


# virtual methods
.method public getNestedScrollAxes()I
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->g:Lga;

    invoke-virtual {v0}, Lga;->a()I

    move-result v0

    return v0
.end method

.method public getRefreshEnable()Z
    .locals 1

    .line 216
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->getScrollY()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTopHeight()I
    .locals 1

    .line 194
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->c:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 60
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 61
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->a:Landroid/view/View;

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 65
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->b:Landroid/view/View;

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->a:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->b:Landroid/view/View;

    if-eqz v0, :cond_2

    return-void

    .line 68
    :cond_2
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v1, "\u5bb9\u5668\u4e2d\u81f3\u5c11\u9700\u8981\u4e24\u4e2a\u5b50view"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 86
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->a:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-lez v1, :cond_1

    .line 92
    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->a:Landroid/view/View;

    if-eqz v2, :cond_1

    iget v3, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->c:I

    if-eq v3, v1, :cond_1

    .line 93
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->c:I

    .line 94
    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->d:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout$a;

    if-eqz v2, :cond_1

    iget v3, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->c:I

    if-lez v3, :cond_1

    .line 95
    invoke-interface {v2, v3}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout$a;->a(I)V

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->getMeasuredHeight()I

    move-result v2

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMeasure: topHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", layoutHeight = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MusicScrollLayout"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget v1, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->f:I

    if-eq v1, v2, :cond_2

    .line 101
    iput v2, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->f:I

    .line 102
    iget v1, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->f:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 103
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 3

    const/4 p2, 0x1

    const/4 p5, 0x0

    if-lez p3, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->getScrollY()I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->c:I

    if-ge v0, v1, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p5

    :goto_0
    const/4 v1, -0x1

    if-gez p3, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->getScrollY()I

    move-result v2

    if-lez v2, :cond_1

    .line 151
    invoke-static {p1, v1}, Lgj;->b(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->b:Landroid/view/View;

    .line 152
    invoke-static {v2, v1}, Lgj;->b(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, p2

    goto :goto_1

    :cond_1
    move v2, p5

    :goto_1
    if-nez v0, :cond_2

    if-eqz v2, :cond_3

    .line 155
    :cond_2
    invoke-virtual {p0, p5, p3}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->scrollBy(II)V

    .line 156
    aput p3, p4, p2

    .line 158
    :cond_3
    iget p2, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->e:I

    if-lez p2, :cond_5

    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->d:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout$a;

    if-eqz p2, :cond_5

    .line 159
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->getScrollY()I

    move-result p2

    iget p4, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->e:I

    if-le p2, p4, :cond_4

    .line 160
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->d:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout$a;

    invoke-interface {p2}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout$a;->a()V

    .line 162
    :cond_4
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->d:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout$a;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->getRefreshEnable()Z

    move-result p4

    invoke-interface {p2, p4}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout$a;->a(Z)V

    .line 163
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->getScrollY()I

    move-result p2

    iget p4, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->e:I

    if-gt p2, p4, :cond_5

    .line 164
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->d:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout$a;

    invoke-interface {p2}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout$a;->b()V

    .line 168
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onNestedPreScroll: dy = "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", getScrollY() = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->getScrollY()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", topHeight = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->c:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", canScrollVertically = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v1}, Lgj;->b(Landroid/view/View;I)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", canScrollVertically(contentView, -1) = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->b:Landroid/view/View;

    invoke-static {p1, v1}, Lgj;->b(Landroid/view/View;I)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MusicScrollLayout"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 0

    if-lez p5, :cond_0

    .line 174
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->a:Landroid/view/View;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 176
    invoke-virtual {p0, p1, p5}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->scrollBy(II)V

    :cond_0
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->g:Lga;

    invoke-virtual {v0, p1, p2, p3, p4}, Lga;->a(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 75
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->a:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->c:I

    .line 77
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->d:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout$a;

    if-eqz p1, :cond_0

    iget p2, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->c:I

    if-lez p2, :cond_0

    .line 78
    invoke-interface {p1, p2}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout$a;->a(I)V

    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 110
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->b:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 112
    instance-of p2, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_0

    .line 113
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    goto :goto_0

    .line 114
    :cond_0
    instance-of p2, p1, Landroidx/core/widget/NestedScrollView;

    if-eqz p2, :cond_1

    .line 115
    check-cast p1, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll()V

    goto :goto_0

    .line 116
    :cond_1
    instance-of p2, p1, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p2, :cond_2

    .line 117
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->stopNestedScroll()V

    goto :goto_0

    .line 118
    :cond_2
    instance-of p2, p1, Landroid/widget/FrameLayout;

    if-eqz p2, :cond_3

    .line 119
    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->stopNestedScroll()V

    .line 122
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->stopNestedScroll()V

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->g:Lga;

    invoke-virtual {v0, p1, p2}, Lga;->a(Landroid/view/View;I)V

    return-void
.end method

.method public scrollTo(II)V
    .locals 1

    if-gez p2, :cond_0

    const/4 p2, 0x0

    .line 187
    :cond_0
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->c:I

    if-le p2, v0, :cond_1

    move p2, v0

    .line 190
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->scrollTo(II)V

    return-void
.end method

.method public setOnTopListener(Lcom/xiaopeng/musicradio/widget/MusicScrollLayout$a;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->d:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout$a;

    return-void
.end method

.method public setTitleHeight(I)V
    .locals 0

    .line 212
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->e:I

    return-void
.end method
