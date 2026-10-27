.class public abstract Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.super Ljava/lang/Object;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SpanSizeLookup"
.end annotation


# instance fields
.field private mCacheSpanIndices:Z

.field final mSpanIndexCache:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 830
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    .line 834
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    return-void
.end method


# virtual methods
.method findReferenceIndexFromCache(I)I
    .locals 4

    .line 940
    nop

    .line 941
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 943
    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_1

    .line 944
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 945
    iget-object v3, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 946
    if-ge v3, p1, :cond_0

    .line 947
    add-int/lit8 v2, v2, 0x1

    .line 951
    move v1, v2

    goto :goto_1

    .line 949
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 951
    move v0, v2

    :goto_1
    goto :goto_0

    .line 952
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 953
    if-ltz v1, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    if-ge v1, p1, :cond_2

    .line 954
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p1

    return p1

    .line 956
    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method getCachedSpanIndex(II)I
    .locals 2

    .line 873
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    if-nez v0, :cond_0

    .line 874
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result p1

    return p1

    .line 876
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 877
    if-eq v0, v1, :cond_1

    .line 878
    return v0

    .line 880
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result p2

    .line 881
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 882
    return p2
.end method

.method public getSpanGroupIndex(II)I
    .locals 6

    .line 970
    nop

    .line 971
    nop

    .line 972
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v0

    .line 973
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, p1, :cond_2

    .line 974
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v5

    .line 975
    add-int/2addr v3, v5

    .line 976
    if-ne v3, p2, :cond_0

    .line 977
    nop

    .line 978
    add-int/lit8 v4, v4, 0x1

    .line 973
    move v3, v1

    goto :goto_1

    .line 979
    :cond_0
    if-le v3, p2, :cond_1

    .line 981
    nop

    .line 982
    add-int/lit8 v4, v4, 0x1

    .line 973
    move v3, v5

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 985
    :cond_2
    add-int/2addr v3, v0

    if-le v3, p2, :cond_3

    .line 986
    add-int/lit8 v4, v4, 0x1

    .line 988
    :cond_3
    return v4
.end method

.method public getSpanIndex(II)I
    .locals 5

    .line 909
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v0

    .line 910
    const/4 v1, 0x0

    if-ne v0, p2, :cond_0

    .line 911
    return v1

    .line 913
    :cond_0
    nop

    .line 914
    nop

    .line 916
    iget-boolean v2, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 917
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->findReferenceIndexFromCache(I)I

    move-result v2

    .line 918
    if-ltz v2, :cond_1

    .line 919
    iget-object v3, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 920
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 923
    :cond_1
    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p1, :cond_4

    .line 924
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v4

    .line 925
    add-int/2addr v3, v4

    .line 926
    if-ne v3, p2, :cond_2

    .line 927
    nop

    .line 923
    move v3, v1

    goto :goto_1

    .line 928
    :cond_2
    if-le v3, p2, :cond_3

    .line 930
    nop

    .line 923
    move v3, v4

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 933
    :cond_4
    add-int/2addr v0, v3

    if-gt v0, p2, :cond_5

    .line 934
    return v3

    .line 936
    :cond_5
    return v1
.end method

.method public abstract getSpanSize(I)I
.end method

.method public invalidateSpanIndexCache()V
    .locals 1

    .line 860
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 861
    return-void
.end method

.method public isSpanIndexCacheEnabled()Z
    .locals 1

    .line 869
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    return v0
.end method

.method public setSpanIndexCacheEnabled(Z)V
    .locals 0

    .line 852
    iput-boolean p1, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    .line 853
    return-void
.end method
