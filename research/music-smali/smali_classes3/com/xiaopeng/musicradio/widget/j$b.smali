.class public Lcom/xiaopeng/musicradio/widget/j$b;
.super Lcom/xiaopeng/musicradio/widget/j$a;
.source "RecyclerTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/widget/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/widget/j$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/widget/j$a<",
        "Lcom/xiaopeng/musicradio/widget/j$b$a;",
        ">;"
    }
.end annotation


# instance fields
.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:Z

.field protected i:I

.field public j:Landroid/content/Context;

.field private k:I

.field private l:I

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 509
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/j$a;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/xiaopeng/musicradio/widget/j$b$a;
    .locals 4

    .line 516
    new-instance p2, Lcom/xiaopeng/musicradio/widget/j$d;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/xiaopeng/musicradio/widget/j$d;-><init>(Landroid/content/Context;)V

    .line 517
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/j$b;->j:Landroid/content/Context;

    .line 519
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/j$b;->h:Z

    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/widget/j$d;->getCurrentTextColor()I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/j$b;->i:I

    .line 520
    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/widget/j$d;->a(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/widget/j$d;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 524
    :cond_0
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/j$b;->c:I

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/j$b;->d:I

    iget v2, p0, Lcom/xiaopeng/musicradio/widget/j$b;->e:I

    iget v3, p0, Lcom/xiaopeng/musicradio/widget/j$b;->f:I

    invoke-static {p2, v0, v1, v2, v3}, Lgj;->b(Landroid/view/View;IIII)V

    .line 526
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/j$b;->g:I

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/widget/j$d;->setTextAppearance(Landroid/content/Context;I)V

    const/16 v0, 0x11

    .line 527
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/widget/j$d;->setGravity(I)V

    const/4 v0, 0x2

    .line 528
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/widget/j$d;->setMaxLines(I)V

    .line 529
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/widget/j$d;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 531
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/j$b;->n:I

    if-lez v0, :cond_1

    .line 532
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/j$b;->n:I

    div-int/2addr p1, v0

    .line 533
    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/widget/j$d;->setMaxWidth(I)V

    .line 534
    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/widget/j$d;->setMinWidth(I)V

    goto :goto_0

    .line 537
    :cond_1
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/j$b;->k:I

    if-lez p1, :cond_2

    .line 538
    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/widget/j$d;->setMaxWidth(I)V

    .line 540
    :cond_2
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/j$b;->l:I

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/widget/j$d;->setMinWidth(I)V

    .line 543
    :goto_0
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/widget/j$d;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/j$b;->g:I

    invoke-virtual {p2, p1, v0}, Lcom/xiaopeng/musicradio/widget/j$d;->setTextAppearance(Landroid/content/Context;I)V

    .line 544
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/j$b;->h:Z

    if-eqz p1, :cond_3

    .line 546
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/widget/j$d;->getCurrentTextColor()I

    move-result p1

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/j$b;->i:I

    .line 545
    invoke-virtual {p2, p1, v0}, Lcom/xiaopeng/musicradio/widget/j$d;->a(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/widget/j$d;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 548
    :cond_3
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/j$b;->m:I

    if-eqz p1, :cond_4

    .line 550
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/widget/j$d;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/j$b;->m:I

    invoke-static {p1, v0}, Lf;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 549
    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/widget/j$d;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 552
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/j$b;->c()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/widget/j$d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 553
    new-instance p1, Lcom/xiaopeng/musicradio/widget/j$b$a;

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/musicradio/widget/j$b$a;-><init>(Lcom/xiaopeng/musicradio/widget/j$b;Landroid/view/View;)V

    return-object p1
.end method

.method public a(IIII)V
    .locals 0

    .line 576
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/j$b;->c:I

    .line 577
    iput p2, p0, Lcom/xiaopeng/musicradio/widget/j$b;->d:I

    .line 578
    iput p3, p0, Lcom/xiaopeng/musicradio/widget/j$b;->e:I

    .line 579
    iput p4, p0, Lcom/xiaopeng/musicradio/widget/j$b;->f:I

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/widget/j$b$a;I)V
    .locals 2

    .line 558
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/j$b;->a()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/j$b;->a()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/j$b;->a()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/viewpager/widget/a;->a(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 560
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/j$b$a;->a:Lcom/xiaopeng/musicradio/widget/j$d;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/j$d;->setText(Ljava/lang/CharSequence;)V

    .line 562
    :cond_0
    iget-object p1, p1, Lcom/xiaopeng/musicradio/widget/j$b$a;->a:Lcom/xiaopeng/musicradio/widget/j$d;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/j$b;->b()I

    move-result v0

    if-ne v0, p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/j$d;->setSelected(Z)V

    return-void
.end method

.method public a(ZI)V
    .locals 0

    .line 588
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/j$b;->h:Z

    .line 589
    iput p2, p0, Lcom/xiaopeng/musicradio/widget/j$b;->i:I

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 583
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/j$b;->g:I

    return-void
.end method

.method protected c()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 3

    .line 609
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 593
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/j$b;->k:I

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 597
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/j$b;->l:I

    return-void
.end method

.method public e(I)V
    .locals 0

    .line 601
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/j$b;->m:I

    return-void
.end method

.method public f(I)V
    .locals 0

    .line 605
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/j$b;->n:I

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 567
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/j$b;->a()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/j$b;->a()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 568
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/j$b;->a()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->a()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 490
    check-cast p1, Lcom/xiaopeng/musicradio/widget/j$b$a;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/j$b;->a(Lcom/xiaopeng/musicradio/widget/j$b$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 490
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/j$b;->a(Landroid/view/ViewGroup;I)Lcom/xiaopeng/musicradio/widget/j$b$a;

    move-result-object p1

    return-object p1
.end method
