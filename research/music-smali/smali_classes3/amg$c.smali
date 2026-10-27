.class public Lamg$c;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SmartRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public b:Lamp;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1795
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 1806
    iput p1, p0, Lamg$c;->a:I

    const/4 p1, 0x0

    .line 1807
    iput-object p1, p0, Lamg$c;->b:Lamp;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1785
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 1806
    iput v0, p0, Lamg$c;->a:I

    const/4 v0, 0x0

    .line 1807
    iput-object v0, p0, Lamg$c;->b:Lamp;

    .line 1786
    sget-object v0, Lamq$c;->SmartRefreshLayout_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1787
    sget p2, Lamq$c;->SmartRefreshLayout_Layout_layout_srlBackgroundColor:I

    iget v0, p0, Lamg$c;->a:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lamg$c;->a:I

    .line 1788
    sget p2, Lamq$c;->SmartRefreshLayout_Layout_layout_srlSpinnerStyle:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1789
    sget-object p2, Lamp;->f:[Lamp;

    sget v0, Lamq$c;->SmartRefreshLayout_Layout_layout_srlSpinnerStyle:I

    sget-object v1, Lamp;->a:Lamp;

    iget v1, v1, Lamp;->g:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    aget-object p2, p2, v0

    iput-object p2, p0, Lamg$c;->b:Lamp;

    .line 1791
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
