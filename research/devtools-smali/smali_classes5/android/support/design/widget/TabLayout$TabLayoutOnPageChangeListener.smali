.class public Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabLayoutOnPageChangeListener"
.end annotation


# instance fields
.field private previousScrollState:I

.field private scrollState:I

.field private final tabLayoutRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/design/widget/TabLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/design/widget/TabLayout;)V
    .locals 1

    .line 2710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2711
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->tabLayoutRef:Ljava/lang/ref/WeakReference;

    .line 2712
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 2716
    iget v0, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    iput v0, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->previousScrollState:I

    .line 2717
    iput p1, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    .line 2718
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 5

    .line 2723
    iget-object p3, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->tabLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/support/design/widget/TabLayout;

    .line 2724
    if-eqz p3, :cond_4

    .line 2727
    iget v0, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->previousScrollState:I

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 2732
    :cond_0
    move v0, v1

    goto :goto_1

    .line 2727
    :cond_1
    :goto_0
    nop

    .line 2732
    move v0, v3

    :goto_1
    iget v4, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    if-ne v4, v2, :cond_3

    iget v2, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->previousScrollState:I

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    goto :goto_3

    .line 2734
    :cond_3
    :goto_2
    move v1, v3

    :goto_3
    invoke-virtual {p3, p1, p2, v0, v1}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZZ)V

    .line 2736
    :cond_4
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 2740
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->tabLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    .line 2741
    if-eqz v0, :cond_2

    .line 2742
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v1, p1, :cond_2

    .line 2743
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 2746
    iget v1, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->previousScrollState:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 2750
    :goto_1
    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroid/support/design/widget/TabLayout;->selectTab(Landroid/support/design/widget/TabLayout$Tab;Z)V

    .line 2752
    :cond_2
    return-void
.end method

.method reset()V
    .locals 1

    .line 2755
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    iput v0, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->previousScrollState:I

    .line 2756
    return-void
.end method
