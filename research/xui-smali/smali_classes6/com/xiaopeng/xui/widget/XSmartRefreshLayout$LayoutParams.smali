.class public Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "XSmartRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public backgroundColor:I

.field public spinnerStyle:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1832
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1843
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;->backgroundColor:I

    .line 1844
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;->spinnerStyle:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    .line 1833
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 1822
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1843
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;->backgroundColor:I

    .line 1844
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;->spinnerStyle:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    .line 1823
    sget-object v0, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1824
    .local v0, "ta":Landroid/content/res/TypedArray;
    sget v1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_Layout_layout_srlBackgroundColor:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;->backgroundColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;->backgroundColor:I

    .line 1825
    sget v1, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_Layout_layout_srlSpinnerStyle:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1826
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->values:[Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    sget v2, Lcom/scwang/smart/refresh/layout/kernel/R$styleable;->SmartRefreshLayout_Layout_layout_srlSpinnerStyle:I

    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    iget v3, v3, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->ordinal:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$LayoutParams;->spinnerStyle:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    .line 1828
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1829
    return-void
.end method
