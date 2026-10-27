.class public Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;
.super Landroid/support/v7/widget/RecyclerView$LayoutParams;
.source "FlexboxLayoutManager.java"

# interfaces
.implements Lcom/google/android/flexbox/FlexItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/flexbox/FlexboxLayoutManager;
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
            "Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;",
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2774
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams$1;

    invoke-direct {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams$1;-><init>()V

    sput-object v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2686
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 2508
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->hG:F

    .line 2513
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->hH:F

    .line 2518
    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->hI:I

    .line 2523
    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->hJ:F

    .line 2538
    const p1, 0xffffff

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxWidth:I

    .line 2543
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxHeight:I

    .line 2687
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2682
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2508
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->hG:F

    .line 2513
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->hH:F

    .line 2518
    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->hI:I

    .line 2523
    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->hJ:F

    .line 2538
    const p1, 0xffffff

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxWidth:I

    .line 2543
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxHeight:I

    .line 2683
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2756
    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 2508
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->hG:F

    .line 2513
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->hH:F

    .line 2518
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->hI:I

    .line 2523
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->hJ:F

    .line 2538
    const v0, 0xffffff

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxWidth:I

    .line 2543
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxHeight:I

    .line 2757
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->hG:F

    .line 2758
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->hH:F

    .line 2759
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->hI:I

    .line 2760
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->hJ:F

    .line 2761
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinWidth:I

    .line 2762
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinHeight:I

    .line 2763
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxWidth:I

    .line 2764
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxHeight:I

    .line 2765
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->hK:Z

    .line 2766
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->bottomMargin:I

    .line 2767
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->leftMargin:I

    .line 2768
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->rightMargin:I

    .line 2769
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->topMargin:I

    .line 2770
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->height:I

    .line 2771
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->width:I

    .line 2772
    return-void
.end method


# virtual methods
.method public bS()F
    .locals 1

    .line 2572
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->hG:F

    return v0
.end method

.method public bT()F
    .locals 1

    .line 2582
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->hH:F

    return v0
.end method

.method public bU()I
    .locals 1

    .line 2593
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->hI:I

    return v0
.end method

.method public bV()Z
    .locals 1

    .line 2643
    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->hK:Z

    return v0
.end method

.method public bW()F
    .locals 1

    .line 2653
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->hJ:F

    return v0
.end method

.method public bX()I
    .locals 1

    .line 2663
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->leftMargin:I

    return v0
.end method

.method public bY()I
    .locals 1

    .line 2668
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->topMargin:I

    return v0
.end method

.method public bZ()I
    .locals 1

    .line 2673
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->rightMargin:I

    return v0
.end method

.method public ca()I
    .locals 1

    .line 2678
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->bottomMargin:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .line 2733
    const/4 v0, 0x0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 2562
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->height:I

    return v0
.end method

.method public getMaxHeight()I
    .locals 1

    .line 2633
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 2623
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxWidth:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 2613
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinHeight:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 2603
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinWidth:I

    return v0
.end method

.method public getOrder()I
    .locals 1

    .line 2717
    const/4 v0, 0x1

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 2552
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->width:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 2738
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->hG:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2739
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->hH:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2740
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->hI:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2741
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->hJ:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2742
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2743
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2744
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2745
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2746
    iget-boolean p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->hK:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 2747
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2748
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->leftMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2749
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->rightMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2750
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->topMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2751
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2752
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2753
    return-void
.end method
