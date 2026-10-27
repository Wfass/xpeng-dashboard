.class public Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "FlexboxLayout.java"

# interfaces
.implements Lcom/google/android/flexbox/FlexItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/flexbox/FlexboxLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hG:F

.field private hH:F

.field private hI:I

.field private hJ:F

.field private hK:Z

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMinHeight:I

.field private mMinWidth:I

.field private mOrder:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1822
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams$1;

    invoke-direct {v0}, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams$1;-><init>()V

    sput-object v0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 1581
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1533
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mOrder:I

    .line 1538
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hG:F

    .line 1543
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hH:F

    .line 1548
    const/4 v3, -0x1

    iput v3, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hI:I

    .line 1553
    const/high16 v4, -0x40800000    # -1.0f

    iput v4, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hJ:F

    .line 1568
    const v5, 0xffffff

    iput v5, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxWidth:I

    .line 1573
    iput v5, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxHeight:I

    .line 1583
    sget-object v6, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_Layout:[I

    .line 1584
    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1585
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_Layout_layout_order:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mOrder:I

    .line 1586
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_Layout_layout_flexGrow:I

    .line 1587
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hG:F

    .line 1588
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_Layout_layout_flexShrink:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hH:F

    .line 1590
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_Layout_layout_alignSelf:I

    .line 1591
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hI:I

    .line 1592
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_Layout_layout_flexBasisPercent:I

    .line 1593
    invoke-virtual {p1, p2, v0, v0, v4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hJ:F

    .line 1595
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_Layout_layout_minWidth:I

    .line 1596
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMinWidth:I

    .line 1597
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_Layout_layout_minHeight:I

    .line 1598
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMinHeight:I

    .line 1599
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_Layout_layout_maxWidth:I

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxWidth:I

    .line 1601
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_Layout_layout_maxHeight:I

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxHeight:I

    .line 1603
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_Layout_layout_wrapBefore:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hK:Z

    .line 1604
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1605
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 1803
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1533
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mOrder:I

    .line 1538
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hG:F

    .line 1543
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hH:F

    .line 1548
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hI:I

    .line 1553
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hJ:F

    .line 1568
    const v2, 0xffffff

    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxWidth:I

    .line 1573
    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxHeight:I

    .line 1804
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mOrder:I

    .line 1805
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hG:F

    .line 1806
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hH:F

    .line 1807
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hI:I

    .line 1808
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hJ:F

    .line 1809
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMinWidth:I

    .line 1810
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMinHeight:I

    .line 1811
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxWidth:I

    .line 1812
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxHeight:I

    .line 1813
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    nop

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hK:Z

    .line 1814
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->bottomMargin:I

    .line 1815
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->leftMargin:I

    .line 1816
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->rightMargin:I

    .line 1817
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->topMargin:I

    .line 1818
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->height:I

    .line 1819
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->width:I

    .line 1820
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1623
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1533
    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mOrder:I

    .line 1538
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hG:F

    .line 1543
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hH:F

    .line 1548
    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hI:I

    .line 1553
    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hJ:F

    .line 1568
    const p1, 0xffffff

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxWidth:I

    .line 1573
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxHeight:I

    .line 1624
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 1631
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1533
    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mOrder:I

    .line 1538
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hG:F

    .line 1543
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hH:F

    .line 1548
    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hI:I

    .line 1553
    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hJ:F

    .line 1568
    const p1, 0xffffff

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxWidth:I

    .line 1573
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxHeight:I

    .line 1632
    return-void
.end method

.method public constructor <init>(Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;)V
    .locals 1

    .line 1608
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1533
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mOrder:I

    .line 1538
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hG:F

    .line 1543
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hH:F

    .line 1548
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hI:I

    .line 1553
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hJ:F

    .line 1568
    const v0, 0xffffff

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxWidth:I

    .line 1573
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxHeight:I

    .line 1610
    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mOrder:I

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mOrder:I

    .line 1611
    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hG:F

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hG:F

    .line 1612
    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hH:F

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hH:F

    .line 1613
    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hI:I

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hI:I

    .line 1614
    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hJ:F

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hJ:F

    .line 1615
    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMinWidth:I

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMinWidth:I

    .line 1616
    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMinHeight:I

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMinHeight:I

    .line 1617
    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxWidth:I

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxWidth:I

    .line 1618
    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxHeight:I

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxHeight:I

    .line 1619
    iget-boolean p1, p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hK:Z

    iput-boolean p1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hK:Z

    .line 1620
    return-void
.end method


# virtual methods
.method public bS()F
    .locals 1

    .line 1666
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hG:F

    return v0
.end method

.method public bT()F
    .locals 1

    .line 1676
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hH:F

    return v0
.end method

.method public bU()I
    .locals 1

    .line 1687
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hI:I

    return v0
.end method

.method public bV()Z
    .locals 1

    .line 1737
    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hK:Z

    return v0
.end method

.method public bW()F
    .locals 1

    .line 1747
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hJ:F

    return v0
.end method

.method public bX()I
    .locals 1

    .line 1757
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->leftMargin:I

    return v0
.end method

.method public bY()I
    .locals 1

    .line 1762
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->topMargin:I

    return v0
.end method

.method public bZ()I
    .locals 1

    .line 1767
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->rightMargin:I

    return v0
.end method

.method public ca()I
    .locals 1

    .line 1772
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->bottomMargin:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .line 1777
    const/4 v0, 0x0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1646
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->height:I

    return v0
.end method

.method public getMaxHeight()I
    .locals 1

    .line 1727
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 1717
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxWidth:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 1707
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMinHeight:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 1697
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMinWidth:I

    return v0
.end method

.method public getOrder()I
    .locals 1

    .line 1656
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mOrder:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1636
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->width:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1782
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mOrder:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1783
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hG:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1784
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hH:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1785
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hI:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1786
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hJ:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1787
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMinWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1788
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMinHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1789
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1790
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1791
    iget-boolean p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->hK:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1792
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1793
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1794
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1795
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1796
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1797
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1798
    return-void
.end method
