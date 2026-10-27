.class Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;
.super Landroid/widget/LinearLayout;
.source "MusicTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;

.field private b:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;

.field private h:I


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;Landroid/content/Context;)V
    .locals 2

    .line 1531
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->a:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;

    .line 1532
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    .line 1529
    iput v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->h:I

    .line 1533
    iget v0, p1, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabBackgroundResId:I

    if-eqz v0, :cond_0

    .line 1534
    iget v0, p1, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabBackgroundResId:I

    .line 1535
    invoke-static {p2, v0}, Lf;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 1534
    invoke-static {p0, p2}, Lgj;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1537
    :cond_0
    iget p2, p1, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabPaddingStart:I

    iget v0, p1, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabPaddingTop:I

    iget v1, p1, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabPaddingEnd:I

    iget p1, p1, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabPaddingBottom:I

    invoke-static {p0, p2, v0, v1, p1}, Lgj;->b(Landroid/view/View;IIII)V

    const/16 p1, 0x11

    .line 1539
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->setGravity(I)V

    const/4 p1, 0x1

    .line 1540
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->setOrientation(I)V

    .line 1541
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->setClickable(Z)V

    .line 1543
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x3ea

    invoke-static {p1, p2}, Lgf;->a(Landroid/content/Context;I)Lgf;

    move-result-object p1

    .line 1542
    invoke-static {p0, p1}, Lgj;->a(Landroid/view/View;Lgf;)V

    return-void
.end method

.method private a(Landroid/text/Layout;IF)F
    .locals 0

    .line 1797
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result p2

    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextSize()F

    move-result p1

    div-float/2addr p3, p1

    mul-float/2addr p2, p3

    return p2
.end method

.method private a(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 6

    .line 1745
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->b:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1746
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->b:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->d()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 1747
    :goto_1
    iget-object v3, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->b:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->g()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz p2, :cond_4

    if-eqz v0, :cond_3

    .line 1751
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1752
    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1753
    invoke-virtual {p0, v5}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->setVisibility(I)V

    goto :goto_3

    .line 1755
    :cond_3
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1756
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1758
    :goto_3
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1761
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz p1, :cond_6

    if-eqz v0, :cond_5

    .line 1764
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1765
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1766
    invoke-virtual {p0, v5}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->setVisibility(I)V

    goto :goto_4

    .line 1768
    :cond_5
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1769
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1771
    :goto_4
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6
    if-eqz p2, :cond_8

    .line 1775
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_7

    .line 1777
    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7

    .line 1779
    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->a:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;

    invoke-virtual {v2, v4}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->dpToPx(I)I

    move-result v5

    .line 1781
    :cond_7
    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v5, v2, :cond_8

    .line 1782
    iput v5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1783
    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    :cond_8
    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    move-object v1, v3

    .line 1786
    :goto_5
    invoke-static {p0, v1}, Landroidx/appcompat/widget/av;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x0

    .line 1673
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->a(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;)V

    const/4 v0, 0x0

    .line 1674
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->setSelected(Z)V

    return-void
.end method

.method a(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;)V
    .locals 1

    .line 1666
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->b:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;

    if-eq p1, v0, :cond_0

    .line 1667
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->b:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;

    .line 1668
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->b()V

    :cond_0
    return-void
.end method

.method final b()V
    .locals 5

    .line 1678
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->b:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1679
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->a()Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_6

    .line 1681
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eq v3, p0, :cond_2

    if-eqz v3, :cond_1

    .line 1684
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1686
    :cond_1
    invoke-virtual {p0, v2}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->addView(Landroid/view/View;)V

    .line 1688
    :cond_2
    iput-object v2, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->e:Landroid/view/View;

    .line 1689
    iget-object v3, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->c:Landroid/widget/TextView;

    const/16 v4, 0x8

    if-eqz v3, :cond_3

    .line 1690
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1692
    :cond_3
    iget-object v3, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->d:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    .line 1693
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1694
    iget-object v3, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->d:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    const v1, 0x1020014

    .line 1697
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->f:Landroid/widget/TextView;

    .line 1698
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->f:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 1699
    invoke-static {v1}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->h:I

    :cond_5
    const v1, 0x1020006

    .line 1701
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->g:Landroid/widget/ImageView;

    goto :goto_1

    .line 1704
    :cond_6
    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->e:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 1705
    invoke-virtual {p0, v2}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->removeView(Landroid/view/View;)V

    .line 1706
    iput-object v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->e:Landroid/view/View;

    .line 1708
    :cond_7
    iput-object v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->f:Landroid/widget/TextView;

    .line 1709
    iput-object v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->g:Landroid/widget/ImageView;

    .line 1712
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->e:Landroid/view/View;

    const/4 v2, 0x0

    if-nez v1, :cond_b

    .line 1714
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->d:Landroid/widget/ImageView;

    if-nez v1, :cond_8

    .line 1715
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/xiaopeng/musicradio/common/k$f;->design_layout_tab_icon:I

    .line 1716
    invoke-virtual {v1, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1717
    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->addView(Landroid/view/View;I)V

    .line 1718
    iput-object v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->d:Landroid/widget/ImageView;

    .line 1720
    :cond_8
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->c:Landroid/widget/TextView;

    if-nez v1, :cond_9

    .line 1721
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/xiaopeng/musicradio/common/k$f;->design_layout_tab_text:I

    .line 1722
    invoke-virtual {v1, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1723
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->addView(Landroid/view/View;)V

    .line 1724
    iput-object v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->c:Landroid/widget/TextView;

    .line 1725
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->c:Landroid/widget/TextView;

    invoke-static {v1}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->h:I

    .line 1727
    :cond_9
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->a:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;

    iget v3, v3, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabTextAppearance:I

    invoke-static {v1, v3}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;I)V

    .line 1728
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->a:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_a

    .line 1729
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->a:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;

    iget-object v3, v3, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1731
    :cond_a
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->d:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v3}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->a(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_2

    .line 1734
    :cond_b
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->f:Landroid/widget/TextView;

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->g:Landroid/widget/ImageView;

    if-eqz v1, :cond_d

    .line 1735
    :cond_c
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->f:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->g:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v3}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->a(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    :cond_d
    :goto_2
    if-eqz v0, :cond_e

    .line 1740
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->f()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v2, 0x1

    :cond_e
    invoke-virtual {p0, v2}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->setSelected(Z)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1587
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1589
    const-class v0, Landroidx/appcompat/app/a$c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1594
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1596
    const-class v0, Landroidx/appcompat/app/a$c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 7

    .line 1601
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1602
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1603
    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->a:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->getTabMaxWidth()I

    move-result v2

    if-lez v2, :cond_1

    if-eqz v1, :cond_0

    if-le v0, v2, :cond_1

    .line 1612
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->a:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;

    iget p1, p1, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabMaxWidth:I

    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1619
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1622
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 1623
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->getResources()Landroid/content/res/Resources;

    .line 1624
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->a:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;

    iget v0, v0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabTextSize:F

    .line 1625
    iget v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->h:I

    .line 1627
    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->d:Landroid/widget/ImageView;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    move v1, v3

    goto :goto_0

    .line 1630
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    if-le v2, v3, :cond_3

    .line 1632
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->a:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;

    iget v0, v0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabTextMultiLineSize:F

    .line 1635
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    .line 1636
    iget-object v4, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    .line 1637
    iget-object v5, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->c:Landroid/widget/TextView;

    invoke-static {v5}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;)I

    move-result v5

    cmpl-float v2, v0, v2

    if-nez v2, :cond_4

    if-ltz v5, :cond_7

    if-eq v1, v5, :cond_7

    .line 1643
    :cond_4
    iget-object v5, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->a:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;

    iget v5, v5, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mMode:I

    const/4 v6, 0x0

    if-ne v5, v3, :cond_6

    if-lez v2, :cond_6

    if-ne v4, v3, :cond_6

    .line 1649
    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1650
    invoke-direct {p0, v2, v6, v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->a(Landroid/text/Layout;IF)F

    move-result v2

    .line 1651
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_6

    :cond_5
    move v3, v6

    :cond_6
    if-eqz v3, :cond_7

    .line 1657
    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1658
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1659
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_7
    return-void
.end method

.method public performClick()Z
    .locals 2

    .line 1548
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    .line 1550
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->b:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1552
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->playSoundEffect(I)V

    .line 1554
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->b:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->e()V

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public setSelected(Z)V
    .locals 2

    .line 1563
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1565
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1567
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    const/4 v0, 0x4

    .line 1569
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->sendAccessibilityEvent(I)V

    .line 1574
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1575
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1577
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 1578
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1580
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->e:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1581
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_4
    return-void
.end method
