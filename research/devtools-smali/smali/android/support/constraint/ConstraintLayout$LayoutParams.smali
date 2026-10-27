.class public Landroid/support/constraint/ConstraintLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "ConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final BASELINE:I = 0x5

.field public static final BOTTOM:I = 0x4

.field public static final CHAIN_PACKED:I = 0x2

.field public static final CHAIN_SPREAD:I = 0x0

.field public static final CHAIN_SPREAD_INSIDE:I = 0x1

.field public static final END:I = 0x7

.field public static final HORIZONTAL:I = 0x0

.field public static final LEFT:I = 0x1

.field public static final MATCH_CONSTRAINT:I = 0x0

.field public static final MATCH_CONSTRAINT_PERCENT:I = 0x2

.field public static final MATCH_CONSTRAINT_SPREAD:I = 0x0

.field public static final MATCH_CONSTRAINT_WRAP:I = 0x1

.field public static final PARENT_ID:I = 0x0

.field public static final RIGHT:I = 0x2

.field public static final START:I = 0x6

.field public static final TOP:I = 0x3

.field public static final UNSET:I = -0x1

.field public static final VERTICAL:I = 0x1


# instance fields
.field public baselineToBaseline:I

.field public bottomToBottom:I

.field public bottomToTop:I

.field public dimensionRatio:Ljava/lang/String;

.field dimensionRatioSide:I

.field dimensionRatioValue:F

.field public editorAbsoluteX:I

.field public editorAbsoluteY:I

.field public endToEnd:I

.field public endToStart:I

.field public goneBottomMargin:I

.field public goneEndMargin:I

.field public goneLeftMargin:I

.field public goneRightMargin:I

.field public goneStartMargin:I

.field public goneTopMargin:I

.field public guideBegin:I

.field public guideEnd:I

.field public guidePercent:F

.field public helped:Z

.field public horizontalBias:F

.field public horizontalChainStyle:I

.field horizontalDimensionFixed:Z

.field public horizontalWeight:F

.field isGuideline:Z

.field isHelper:Z

.field isInPlaceholder:Z

.field public leftToLeft:I

.field public leftToRight:I

.field public matchConstraintDefaultHeight:I

.field public matchConstraintDefaultWidth:I

.field public matchConstraintMaxHeight:I

.field public matchConstraintMaxWidth:I

.field public matchConstraintMinHeight:I

.field public matchConstraintMinWidth:I

.field public matchConstraintPercentHeight:F

.field public matchConstraintPercentWidth:F

.field needsBaseline:Z

.field public orientation:I

.field resolveGoneLeftMargin:I

.field resolveGoneRightMargin:I

.field resolvedHorizontalBias:F

.field resolvedLeftToLeft:I

.field resolvedLeftToRight:I

.field resolvedRightToLeft:I

.field resolvedRightToRight:I

.field public rightToLeft:I

.field public rightToRight:I

.field public startToEnd:I

.field public startToStart:I

.field public topToBottom:I

.field public topToTop:I

.field public verticalBias:F

.field public verticalChainStyle:I

.field verticalDimensionFixed:Z

.field public verticalWeight:F

.field widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;


# direct methods
.method public constructor <init>(II)V
    .locals 3

    .line 2116
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1554
    const/4 p1, -0x1

    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 1559
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 1564
    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 1569
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1574
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 1579
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 1584
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1589
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1594
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 1599
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 1604
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1609
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 1614
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 1619
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 1624
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 1629
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 1634
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 1639
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 1644
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 1649
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 1654
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 1659
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 1664
    const/high16 p2, 0x3f000000    # 0.5f

    iput p2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 1669
    iput p2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 1674
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 1679
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    .line 1684
    const/4 v1, 0x1

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 1690
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 1696
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 1708
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 1720
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 1732
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 1744
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 1750
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 1756
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 1762
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 1768
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 1773
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 1778
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 1784
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 1790
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 1792
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    .line 1795
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 1796
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 1798
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1799
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 1800
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    .line 1801
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    .line 1803
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 1804
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 1805
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 1806
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 1807
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 1808
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 1809
    iput p2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 1811
    new-instance p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-direct {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1813
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->helped:Z

    .line 2117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .line 1877
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1554
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 1559
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 1564
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 1569
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1574
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 1579
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 1584
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1589
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1594
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 1599
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 1604
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1609
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 1614
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 1619
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 1624
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 1629
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 1634
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 1639
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 1644
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 1649
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 1654
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 1659
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 1664
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 1669
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 1674
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 1679
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    .line 1684
    const/4 v3, 0x1

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 1690
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 1696
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 1708
    const/4 v4, 0x0

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 1720
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 1732
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 1744
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 1750
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 1756
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 1762
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 1768
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 1773
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 1778
    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 1784
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 1790
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 1792
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    .line 1795
    iput-boolean v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 1796
    iput-boolean v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 1798
    iput-boolean v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1799
    iput-boolean v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 1800
    iput-boolean v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    .line 1801
    iput-boolean v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    .line 1803
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 1804
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 1805
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 1806
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 1807
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 1808
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 1809
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 1811
    new-instance v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-direct {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    iput-object v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1813
    iput-boolean v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->helped:Z

    .line 1879
    sget-object v1, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1880
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    .line 1881
    move v1, v4

    :goto_0
    if-ge v1, p2, :cond_39

    .line 1882
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 1883
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintLeft_toLeftOf:I

    if-ne v5, v6, :cond_0

    .line 1884
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1885
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    if-ne v6, v0, :cond_38

    .line 1886
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    goto/16 :goto_a

    .line 1888
    :cond_0
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintLeft_toRightOf:I

    if-ne v5, v6, :cond_1

    .line 1889
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 1890
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    if-ne v6, v0, :cond_38

    .line 1891
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    goto/16 :goto_a

    .line 1893
    :cond_1
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintRight_toLeftOf:I

    if-ne v5, v6, :cond_2

    .line 1894
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 1895
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    if-ne v6, v0, :cond_38

    .line 1896
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    goto/16 :goto_a

    .line 1898
    :cond_2
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintRight_toRightOf:I

    if-ne v5, v6, :cond_3

    .line 1899
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1900
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    if-ne v6, v0, :cond_38

    .line 1901
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    goto/16 :goto_a

    .line 1903
    :cond_3
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintTop_toTopOf:I

    if-ne v5, v6, :cond_4

    .line 1904
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1905
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    if-ne v6, v0, :cond_38

    .line 1906
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    goto/16 :goto_a

    .line 1908
    :cond_4
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintTop_toBottomOf:I

    if-ne v5, v6, :cond_5

    .line 1909
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 1910
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    if-ne v6, v0, :cond_38

    .line 1911
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    goto/16 :goto_a

    .line 1913
    :cond_5
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintBottom_toTopOf:I

    if-ne v5, v6, :cond_6

    .line 1914
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 1915
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    if-ne v6, v0, :cond_38

    .line 1916
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    goto/16 :goto_a

    .line 1918
    :cond_6
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintBottom_toBottomOf:I

    if-ne v5, v6, :cond_7

    .line 1919
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1920
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    if-ne v6, v0, :cond_38

    .line 1921
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    goto/16 :goto_a

    .line 1923
    :cond_7
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf:I

    if-ne v5, v6, :cond_8

    .line 1924
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 1925
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    if-ne v6, v0, :cond_38

    .line 1926
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    goto/16 :goto_a

    .line 1928
    :cond_8
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_editor_absoluteX:I

    if-ne v5, v6, :cond_9

    .line 1929
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    goto/16 :goto_a

    .line 1930
    :cond_9
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_editor_absoluteY:I

    if-ne v5, v6, :cond_a

    .line 1931
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    goto/16 :goto_a

    .line 1932
    :cond_a
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintGuide_begin:I

    if-ne v5, v6, :cond_b

    .line 1933
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    goto/16 :goto_a

    .line 1934
    :cond_b
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintGuide_end:I

    if-ne v5, v6, :cond_c

    .line 1935
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    goto/16 :goto_a

    .line 1936
    :cond_c
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintGuide_percent:I

    if-ne v5, v6, :cond_d

    .line 1937
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    goto/16 :goto_a

    .line 1938
    :cond_d
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_orientation:I

    if-ne v5, v6, :cond_e

    .line 1939
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    goto/16 :goto_a

    .line 1940
    :cond_e
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintStart_toEndOf:I

    if-ne v5, v6, :cond_f

    .line 1941
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 1942
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    if-ne v6, v0, :cond_38

    .line 1943
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    goto/16 :goto_a

    .line 1945
    :cond_f
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintStart_toStartOf:I

    if-ne v5, v6, :cond_10

    .line 1946
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 1947
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    if-ne v6, v0, :cond_38

    .line 1948
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    goto/16 :goto_a

    .line 1950
    :cond_10
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintEnd_toStartOf:I

    if-ne v5, v6, :cond_11

    .line 1951
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 1952
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    if-ne v6, v0, :cond_38

    .line 1953
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    goto/16 :goto_a

    .line 1955
    :cond_11
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintEnd_toEndOf:I

    if-ne v5, v6, :cond_12

    .line 1956
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 1957
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    if-ne v6, v0, :cond_38

    .line 1958
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    goto/16 :goto_a

    .line 1960
    :cond_12
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_goneMarginLeft:I

    if-ne v5, v6, :cond_13

    .line 1961
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    goto/16 :goto_a

    .line 1962
    :cond_13
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_goneMarginTop:I

    if-ne v5, v6, :cond_14

    .line 1963
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    goto/16 :goto_a

    .line 1964
    :cond_14
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_goneMarginRight:I

    if-ne v5, v6, :cond_15

    .line 1965
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    goto/16 :goto_a

    .line 1966
    :cond_15
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_goneMarginBottom:I

    if-ne v5, v6, :cond_16

    .line 1967
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    goto/16 :goto_a

    .line 1968
    :cond_16
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_goneMarginStart:I

    if-ne v5, v6, :cond_17

    .line 1969
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    goto/16 :goto_a

    .line 1970
    :cond_17
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_goneMarginEnd:I

    if-ne v5, v6, :cond_18

    .line 1971
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    goto/16 :goto_a

    .line 1972
    :cond_18
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintHorizontal_bias:I

    if-ne v5, v6, :cond_19

    .line 1973
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    goto/16 :goto_a

    .line 1974
    :cond_19
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintVertical_bias:I

    if-ne v5, v6, :cond_1a

    .line 1975
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    goto/16 :goto_a

    .line 1976
    :cond_1a
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintDimensionRatio:I

    if-ne v5, v6, :cond_23

    .line 1977
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 1978
    const/high16 v5, 0x7fc00000    # Float.NaN

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    .line 1979
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 1980
    iget-object v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    if-eqz v5, :cond_38

    .line 1981
    iget-object v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 1982
    iget-object v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 1983
    if-lez v6, :cond_1d

    add-int/lit8 v7, v5, -0x1

    if-ge v6, v7, :cond_1d

    .line 1984
    iget-object v7, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    invoke-virtual {v7, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1985
    const-string v8, "W"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 1986
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    goto :goto_1

    .line 1987
    :cond_1b
    const-string v8, "H"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 1988
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 1990
    :cond_1c
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 1991
    goto :goto_2

    .line 1992
    :cond_1d
    nop

    .line 1994
    move v6, v4

    :goto_2
    iget-object v7, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 1995
    if-ltz v7, :cond_21

    add-int/lit8 v5, v5, -0x1

    if-ge v7, v5, :cond_21

    .line 1996
    iget-object v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1997
    iget-object v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 1998
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_20

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_20

    .line 2000
    :try_start_0
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 2001
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 2002
    cmpl-float v7, v5, v2

    if-lez v7, :cond_1f

    cmpl-float v7, v6, v2

    if-lez v7, :cond_1f

    .line 2003
    iget v7, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    if-ne v7, v3, :cond_1e

    .line 2004
    div-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    goto :goto_3

    .line 2006
    :cond_1e
    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2011
    :cond_1f
    :goto_3
    goto :goto_4

    .line 2009
    :catch_0
    move-exception v5

    .line 2013
    :cond_20
    :goto_4
    goto :goto_5

    .line 2014
    :cond_21
    iget-object v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 2015
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_22

    .line 2017
    :try_start_1
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2020
    goto :goto_5

    .line 2018
    :catch_1
    move-exception v5

    .line 2023
    :cond_22
    :goto_5
    goto/16 :goto_a

    .line 2024
    :cond_23
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintHorizontal_weight:I

    if-ne v5, v6, :cond_24

    .line 2025
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    goto/16 :goto_a

    .line 2026
    :cond_24
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintVertical_weight:I

    if-ne v5, v6, :cond_25

    .line 2027
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    goto/16 :goto_a

    .line 2028
    :cond_25
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle:I

    if-ne v5, v6, :cond_26

    .line 2029
    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    goto/16 :goto_a

    .line 2030
    :cond_26
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintVertical_chainStyle:I

    if-ne v5, v6, :cond_27

    .line 2031
    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    goto/16 :goto_a

    .line 2032
    :cond_27
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintWidth_default:I

    if-ne v5, v6, :cond_28

    .line 2033
    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    goto/16 :goto_a

    .line 2034
    :cond_28
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintHeight_default:I

    if-ne v5, v6, :cond_29

    .line 2035
    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    goto/16 :goto_a

    .line 2036
    :cond_29
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintWidth_min:I

    const/4 v7, -0x2

    if-ne v5, v6, :cond_2b

    .line 2038
    :try_start_2
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I
    :try_end_2
    .catch Landroid/view/InflateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    .line 2039
    :catch_2
    move-exception v6

    .line 2040
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 2041
    if-ne v5, v7, :cond_2a

    .line 2042
    iput v7, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 2044
    :cond_2a
    :goto_6
    goto/16 :goto_a

    .line 2045
    :cond_2b
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintWidth_max:I

    if-ne v5, v6, :cond_2d

    .line 2047
    :try_start_3
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I
    :try_end_3
    .catch Landroid/view/InflateException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    .line 2048
    :catch_3
    move-exception v6

    .line 2049
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 2050
    if-ne v5, v7, :cond_2c

    .line 2051
    iput v7, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 2053
    :cond_2c
    :goto_7
    goto/16 :goto_a

    .line 2054
    :cond_2d
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintWidth_percent:I

    if-ne v5, v6, :cond_2e

    .line 2055
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    goto :goto_a

    .line 2056
    :cond_2e
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintHeight_min:I

    if-ne v5, v6, :cond_30

    .line 2058
    :try_start_4
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I
    :try_end_4
    .catch Landroid/view/InflateException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_8

    .line 2059
    :catch_4
    move-exception v6

    .line 2060
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 2061
    if-ne v5, v7, :cond_2f

    .line 2062
    iput v7, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 2064
    :cond_2f
    :goto_8
    goto :goto_a

    .line 2065
    :cond_30
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintHeight_max:I

    if-ne v5, v6, :cond_32

    .line 2067
    :try_start_5
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I
    :try_end_5
    .catch Landroid/view/InflateException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_9

    .line 2068
    :catch_5
    move-exception v6

    .line 2069
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 2070
    if-ne v5, v7, :cond_31

    .line 2071
    iput v7, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 2073
    :cond_31
    :goto_9
    goto :goto_a

    .line 2074
    :cond_32
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintHeight_percent:I

    if-ne v5, v6, :cond_33

    .line 2075
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    goto :goto_a

    .line 2076
    :cond_33
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintLeft_creator:I

    if-ne v5, v6, :cond_34

    goto :goto_a

    .line 2078
    :cond_34
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintTop_creator:I

    if-ne v5, v6, :cond_35

    goto :goto_a

    .line 2080
    :cond_35
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintRight_creator:I

    if-ne v5, v6, :cond_36

    goto :goto_a

    .line 2082
    :cond_36
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintBottom_creator:I

    if-ne v5, v6, :cond_37

    goto :goto_a

    .line 2084
    :cond_37
    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintBaseline_creator:I

    .line 1881
    :cond_38
    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2090
    :cond_39
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2091
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->validate()V

    .line 2092
    return-void
.end method

.method public constructor <init>(Landroid/support/constraint/ConstraintLayout$LayoutParams;)V
    .locals 5

    .line 1821
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1554
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 1559
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 1564
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 1569
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1574
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 1579
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 1584
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1589
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1594
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 1599
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 1604
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1609
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 1614
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 1619
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 1624
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 1629
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 1634
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 1639
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 1644
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 1649
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 1654
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 1659
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 1664
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 1669
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 1674
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 1679
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    .line 1684
    const/4 v3, 0x1

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 1690
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 1696
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 1708
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 1720
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 1732
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 1744
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 1750
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 1756
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 1762
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 1768
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 1773
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 1778
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 1784
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 1790
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 1792
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    .line 1795
    iput-boolean v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 1796
    iput-boolean v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 1798
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1799
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 1800
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    .line 1801
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    .line 1803
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 1804
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 1805
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 1806
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 1807
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 1808
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 1809
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 1811
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1813
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->helped:Z

    .line 1822
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 1823
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 1824
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 1825
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1826
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 1827
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 1828
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1829
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1830
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 1831
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 1832
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1833
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 1834
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 1835
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 1836
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 1837
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 1838
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 1839
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 1840
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 1841
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 1842
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 1843
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 1844
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 1845
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 1846
    iget-object v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 1847
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    .line 1848
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 1849
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 1850
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 1851
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 1852
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 1853
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 1854
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 1855
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 1856
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 1857
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 1858
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 1859
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 1860
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 1861
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    .line 1862
    iget-boolean v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 1863
    iget-boolean v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 1864
    iget-boolean v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1865
    iget-boolean v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 1866
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 1867
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 1868
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 1869
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 1870
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 1871
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 1872
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 1873
    iget-object p1, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1874
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .line 2120
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1554
    const/4 p1, -0x1

    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 1559
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 1564
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 1569
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1574
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 1579
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 1584
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1589
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1594
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 1599
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 1604
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1609
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 1614
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 1619
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 1624
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 1629
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 1634
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 1639
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 1644
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 1649
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 1654
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 1659
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 1664
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 1669
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 1674
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 1679
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    .line 1684
    const/4 v2, 0x1

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 1690
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 1696
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 1708
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 1720
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 1732
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 1744
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 1750
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 1756
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 1762
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 1768
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 1773
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 1778
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 1784
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 1790
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 1792
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    .line 1795
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 1796
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 1798
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1799
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 1800
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    .line 1801
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    .line 1803
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 1804
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 1805
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 1806
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 1807
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 1808
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 1809
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 1811
    new-instance p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-direct {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1813
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->helped:Z

    .line 2121
    return-void
.end method


# virtual methods
.method public resolveLayoutDirection(I)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 2129
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    .line 2131
    const/4 p1, -0x1

    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 2132
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 2133
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 2134
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 2136
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 2137
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 2138
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 2139
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 2140
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 2142
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    .line 2144
    move v0, v2

    goto :goto_0

    .line 2142
    :cond_0
    nop

    .line 2144
    move v0, v1

    :goto_0
    if-eqz v0, :cond_8

    .line 2145
    nop

    .line 2146
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    if-eq v0, p1, :cond_1

    .line 2147
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 2148
    nop

    .line 2153
    :goto_1
    move v1, v2

    goto :goto_2

    .line 2149
    :cond_1
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    if-eq v0, p1, :cond_2

    .line 2150
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 2151
    goto :goto_1

    .line 2153
    :cond_2
    :goto_2
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    if-eq v0, p1, :cond_3

    .line 2154
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 2155
    nop

    .line 2157
    move v1, v2

    :cond_3
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    if-eq v0, p1, :cond_4

    .line 2158
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 2159
    nop

    .line 2161
    move v1, v2

    :cond_4
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    if-eq v0, p1, :cond_5

    .line 2162
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 2164
    :cond_5
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    if-eq v0, p1, :cond_6

    .line 2165
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 2167
    :cond_6
    if-eqz v1, :cond_7

    .line 2168
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 2170
    :cond_7
    goto :goto_3

    .line 2171
    :cond_8
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    if-eq v0, p1, :cond_9

    .line 2172
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 2174
    :cond_9
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    if-eq v0, p1, :cond_a

    .line 2175
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 2177
    :cond_a
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    if-eq v0, p1, :cond_b

    .line 2178
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 2180
    :cond_b
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    if-eq v0, p1, :cond_c

    .line 2181
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 2183
    :cond_c
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    if-eq v0, p1, :cond_d

    .line 2184
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 2186
    :cond_d
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    if-eq v0, p1, :cond_e

    .line 2187
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 2191
    :cond_e
    :goto_3
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    if-ne v0, p1, :cond_10

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    if-ne v0, p1, :cond_10

    .line 2192
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    if-eq v0, p1, :cond_f

    .line 2193
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    goto :goto_4

    .line 2194
    :cond_f
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    if-eq v0, p1, :cond_10

    .line 2195
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 2198
    :cond_10
    :goto_4
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    if-ne v0, p1, :cond_12

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    if-ne v0, p1, :cond_12

    .line 2199
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    if-eq v0, p1, :cond_11

    .line 2200
    iget p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    goto :goto_5

    .line 2201
    :cond_11
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    if-eq v0, p1, :cond_12

    .line 2202
    iget p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 2205
    :cond_12
    :goto_5
    return-void
.end method

.method public validate()V
    .locals 4

    .line 2095
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 2096
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 2097
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 2098
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    if-ne v2, v3, :cond_1

    .line 2099
    :cond_0
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 2101
    :cond_1
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-ne v2, v3, :cond_3

    .line 2102
    :cond_2
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 2104
    :cond_3
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_4

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    if-ne v0, v3, :cond_4

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    if-eq v0, v3, :cond_6

    .line 2105
    :cond_4
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 2106
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 2107
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 2108
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    instance-of v0, v0, Landroid/support/constraint/solver/widgets/Guideline;

    if-nez v0, :cond_5

    .line 2109
    new-instance v0, Landroid/support/constraint/solver/widgets/Guideline;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/Guideline;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2111
    :cond_5
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    check-cast v0, Landroid/support/constraint/solver/widgets/Guideline;

    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/Guideline;->setOrientation(I)V

    .line 2113
    :cond_6
    return-void
.end method
