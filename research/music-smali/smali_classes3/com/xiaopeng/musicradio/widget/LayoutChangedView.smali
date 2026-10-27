.class public Lcom/xiaopeng/musicradio/widget/LayoutChangedView;
.super Landroid/view/View;
.source "LayoutChangedView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/widget/LayoutChangedView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/widget/LayoutChangedView$a;

.field private b:Lcom/xiaopeng/musicradio/widget/k;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 38
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;->c:I

    .line 39
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;->d:I

    .line 21
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 38
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;->c:I

    .line 39
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;->d:I

    .line 26
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 38
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;->c:I

    .line 39
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;->d:I

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 35
    new-instance v0, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;->b:Lcom/xiaopeng/musicradio/widget/k;

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 43
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;->a:Lcom/xiaopeng/musicradio/widget/LayoutChangedView$a;

    if-eqz p1, :cond_0

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onConfigurationChanged fromView: is13 = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " is23: = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isFront = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " AreaType = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ScreenId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " checkScreenChange = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;->b:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->b()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mScreenState.isIs13 = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;->b:Lcom/xiaopeng/musicradio/widget/k;

    .line 48
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->h()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mScreenState.isIs23 = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;->b:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->g()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mScreenState.isIsFront = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;->b:Lcom/xiaopeng/musicradio/widget/k;

    .line 49
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->f()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LayoutChangedView"

    .line 44
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;->b:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;->b:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 52
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;->a:Lcom/xiaopeng/musicradio/widget/LayoutChangedView$a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/widget/LayoutChangedView$a;->a()V

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;->c:I

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 73
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;->a:Lcom/xiaopeng/musicradio/widget/LayoutChangedView$a;

    if-eqz p1, :cond_0

    .line 76
    invoke-interface {p1}, Lcom/xiaopeng/musicradio/widget/LayoutChangedView$a;->b()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 60
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 61
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onMeasure: width "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mMeasureWidth "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;->c:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LayoutChangedView"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget p2, p0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;->c:I

    if-eq p2, p1, :cond_0

    .line 64
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;->c:I

    .line 65
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;->a:Lcom/xiaopeng/musicradio/widget/LayoutChangedView$a;

    if-eqz p1, :cond_0

    .line 66
    invoke-interface {p1}, Lcom/xiaopeng/musicradio/widget/LayoutChangedView$a;->a()V

    :cond_0
    return-void
.end method

.method public setOnLayoutChangedListener(Lcom/xiaopeng/musicradio/widget/LayoutChangedView$a;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;->a:Lcom/xiaopeng/musicradio/widget/LayoutChangedView$a;

    return-void
.end method
