.class Lcom/xiaopeng/xui/widget/dialogview/d$a;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "XDialogViewDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/widget/dialogview/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

.field private aiR:I

.field private aiS:I

.field private mMaxHeight:I


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xui/widget/dialogview/d;Landroid/content/Context;)V
    .locals 1
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 597
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/dialogview/d$a;-><init>(Lcom/xiaopeng/xui/widget/dialogview/d;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 598
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/xui/widget/dialogview/d;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 600
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d$a;->aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

    .line 601
    invoke-direct {p0, p2, p3}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 602
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/dialogview/d$a;->setOrientation(I)V

    .line 603
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/dialogview/d$a;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/xiaopeng/xpui/R$string;->vui_label_dialog:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/dialogview/d$a;->fm(Ljava/lang/String;)V

    .line 604
    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d$a;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d$a;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/a;->qN()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d$a;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/a;->qN()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 655
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 629
    invoke-super/range {p0 .. p5}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onLayout(ZIIII)V

    .line 630
    if-eqz p1, :cond_0

    .line 631
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d$a;->aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onLayout-w:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/dialogview/d$a;->getWidth()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",h:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/dialogview/d$a;->getHeight()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mMaxHeight "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/xiaopeng/xui/widget/dialogview/d$a;->mMaxHeight:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/d;->a(Lcom/xiaopeng/xui/widget/dialogview/d;Ljava/lang/String;)V

    .line 633
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 637
    iget p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d$a;->aiR:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 638
    iget v1, p0, Lcom/xiaopeng/xui/widget/dialogview/d$a;->aiS:I

    if-gtz v1, :cond_1

    .line 639
    iget v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d$a;->mMaxHeight:I

    if-lez v0, :cond_0

    .line 640
    iget p2, p0, Lcom/xiaopeng/xui/widget/dialogview/d$a;->mMaxHeight:I

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 641
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onMeasure(II)V

    .line 642
    goto :goto_0

    .line 643
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onMeasure(II)V

    goto :goto_0

    .line 646
    :cond_1
    iget p2, p0, Lcom/xiaopeng/xui/widget/dialogview/d$a;->aiS:I

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 647
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onMeasure(II)V

    .line 649
    :goto_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .line 620
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onWindowFocusChanged(Z)V

    .line 621
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d$a;->aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasWindowFocus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/d;->a(Lcom/xiaopeng/xui/widget/dialogview/d;Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d$a;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d$a;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/a;->onWindowFocusChanged(Z)V

    .line 625
    :cond_0
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 615
    iput p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d$a;->aiS:I

    .line 616
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    .line 607
    iput p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d$a;->mMaxHeight:I

    .line 608
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 611
    iput p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d$a;->aiR:I

    .line 612
    return-void
.end method
