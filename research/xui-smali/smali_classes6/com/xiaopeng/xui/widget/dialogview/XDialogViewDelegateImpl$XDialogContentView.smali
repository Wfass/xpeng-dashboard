.class Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "XDialogViewDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XDialogContentView"
.end annotation


# instance fields
.field private mH:I

.field private mMaxHeight:I

.field private mW:I

.field final synthetic this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;Landroid/content/Context;)V
    .locals 1
    .param p1    # Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;

    .line 644
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;-><init>(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 645
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 647
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    .line 648
    invoke-direct {p0, p2, p3}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 649
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->setOrientation(I)V

    .line 650
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/xiaopeng/xpui/R$string;->vui_label_dialog:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->setVuiLabel(Ljava/lang/String;)V

    .line 651
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 679
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$1600(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnTouchedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$1600(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnTouchedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnTouchedListener;->onTouched()V

    .line 682
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 687
    invoke-super/range {p0 .. p5}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onLayout(ZIIII)V

    .line 688
    if-eqz p1, :cond_0

    .line 689
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLayout-w:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",h:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mMaxHeight "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->mMaxHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$500(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;Ljava/lang/String;)V

    .line 691
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 695
    iget v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->mW:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 696
    .local v0, "wSpec":I
    iget v2, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->mH:I

    if-gtz v2, :cond_1

    .line 697
    iget v1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->mMaxHeight:I

    if-lez v1, :cond_0

    .line 698
    iget v1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->mMaxHeight:I

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 699
    .local v1, "hSpec":I
    invoke-super {p0, v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onMeasure(II)V

    .line 700
    .end local v1    # "hSpec":I
    goto :goto_0

    .line 701
    :cond_0
    invoke-super {p0, v0, p2}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onMeasure(II)V

    goto :goto_0

    .line 704
    :cond_1
    iget v2, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->mH:I

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 705
    .restart local v1    # "hSpec":I
    invoke-super {p0, v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onMeasure(II)V

    .line 707
    .end local v1    # "hSpec":I
    :goto_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .line 667
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onWindowFocusChanged(Z)V

    .line 668
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasWindowFocus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$500(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onWindowFocusChanged(Z)V

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$1500(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnWindowFocusChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 673
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$1500(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnWindowFocusChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnWindowFocusChangedListener;->onWindowFocusChanged(Z)V

    .line 675
    :cond_1
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "h"    # I

    .line 662
    iput p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->mH:I

    .line 663
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0
    .param p1, "maxHeight"    # I

    .line 654
    iput p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->mMaxHeight:I

    .line 655
    return-void
.end method

.method public setThemeCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V
    .locals 1
    .param p1, "onCallback"    # Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;

    .line 710
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 713
    :cond_0
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "w"    # I

    .line 658
    iput p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogContentView;->mW:I

    .line 659
    return-void
.end method
