.class public Landroidx/constraintlayout/widget/d$d;
.super Ljava/lang/Object;
.source "ConstraintSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:F

.field public e:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1661
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/d$d;->a:Z

    .line 1662
    iput v0, p0, Landroidx/constraintlayout/widget/d$d;->b:I

    .line 1663
    iput v0, p0, Landroidx/constraintlayout/widget/d$d;->c:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1664
    iput v0, p0, Landroidx/constraintlayout/widget/d$d;->d:F

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 1665
    iput v0, p0, Landroidx/constraintlayout/widget/d$d;->e:F

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1676
    sget-object v0, Landroidx/constraintlayout/widget/h$b;->PropertySet:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 1677
    iput-boolean p2, p0, Landroidx/constraintlayout/widget/d$d;->a:Z

    .line 1678
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_4

    .line 1680
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 1682
    sget v2, Landroidx/constraintlayout/widget/h$b;->PropertySet_android_alpha:I

    if-ne v1, v2, :cond_0

    .line 1683
    iget v2, p0, Landroidx/constraintlayout/widget/d$d;->d:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$d;->d:F

    goto :goto_1

    .line 1684
    :cond_0
    sget v2, Landroidx/constraintlayout/widget/h$b;->PropertySet_android_visibility:I

    if-ne v1, v2, :cond_1

    .line 1685
    iget v2, p0, Landroidx/constraintlayout/widget/d$d;->b:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$d;->b:I

    .line 1686
    invoke-static {}, Landroidx/constraintlayout/widget/d;->a()[I

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/widget/d$d;->b:I

    aget v1, v1, v2

    iput v1, p0, Landroidx/constraintlayout/widget/d$d;->b:I

    goto :goto_1

    .line 1687
    :cond_1
    sget v2, Landroidx/constraintlayout/widget/h$b;->PropertySet_visibilityMode:I

    if-ne v1, v2, :cond_2

    .line 1688
    iget v2, p0, Landroidx/constraintlayout/widget/d$d;->c:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$d;->c:I

    goto :goto_1

    .line 1689
    :cond_2
    sget v2, Landroidx/constraintlayout/widget/h$b;->PropertySet_motionProgress:I

    if-ne v1, v2, :cond_3

    .line 1690
    iget v2, p0, Landroidx/constraintlayout/widget/d$d;->e:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/d$d;->e:F

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1693
    :cond_4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public a(Landroidx/constraintlayout/widget/d$d;)V
    .locals 1

    .line 1668
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/d$d;->a:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/d$d;->a:Z

    .line 1669
    iget v0, p1, Landroidx/constraintlayout/widget/d$d;->b:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$d;->b:I

    .line 1670
    iget v0, p1, Landroidx/constraintlayout/widget/d$d;->d:F

    iput v0, p0, Landroidx/constraintlayout/widget/d$d;->d:F

    .line 1671
    iget v0, p1, Landroidx/constraintlayout/widget/d$d;->e:F

    iput v0, p0, Landroidx/constraintlayout/widget/d$d;->e:F

    .line 1672
    iget p1, p1, Landroidx/constraintlayout/widget/d$d;->c:I

    iput p1, p0, Landroidx/constraintlayout/widget/d$d;->c:I

    return-void
.end method
