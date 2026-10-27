.class public Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "ObservableRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;
    }
.end annotation


# static fields
.field private static a:I = 0x16


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/util/SparseIntArray;

.field private h:Lcom/xiaopeng/lib/libview/observablescrollview/a;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/lib/libview/observablescrollview/a;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/xiaopeng/lib/libview/observablescrollview/b;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Landroid/view/MotionEvent;

.field private o:Landroid/view/ViewGroup;

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private a()V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->h:Lcom/xiaopeng/lib/libview/observablescrollview/a;

    if-eqz v0, :cond_0

    .line 391
    invoke-interface {v0}, Lcom/xiaopeng/lib/libview/observablescrollview/a;->a()V

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->i:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 394
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 395
    iget-object v1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib/libview/observablescrollview/a;

    .line 396
    invoke-interface {v1}, Lcom/xiaopeng/lib/libview/observablescrollview/a;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(IZZ)V
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->h:Lcom/xiaopeng/lib/libview/observablescrollview/a;

    if-eqz v0, :cond_0

    .line 403
    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/lib/libview/observablescrollview/a;->a(IZZ)V

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->i:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 406
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 407
    iget-object v1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib/libview/observablescrollview/a;

    .line 408
    invoke-interface {v1, p1, p2, p3}, Lcom/xiaopeng/lib/libview/observablescrollview/a;->a(IZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lcom/xiaopeng/lib/libview/observablescrollview/b;)V
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->h:Lcom/xiaopeng/lib/libview/observablescrollview/a;

    if-eqz v0, :cond_0

    .line 415
    invoke-interface {v0, p1}, Lcom/xiaopeng/lib/libview/observablescrollview/a;->a(Lcom/xiaopeng/lib/libview/observablescrollview/b;)V

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->i:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 418
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 419
    iget-object v1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib/libview/observablescrollview/a;

    .line 420
    invoke-interface {v1, p1}, Lcom/xiaopeng/lib/libview/observablescrollview/a;->a(Lcom/xiaopeng/lib/libview/observablescrollview/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b()Z
    .locals 2

    .line 426
    iget-boolean v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->p:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->h:Lcom/xiaopeng/lib/libview/observablescrollview/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->i:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public getChildAdapterPosition(Landroid/view/View;)I
    .locals 2

    .line 370
    sget v0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->a:I

    const/16 v1, 0x16

    if-gt v1, v0, :cond_0

    .line 371
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    return p1

    .line 373
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getCurrentScrollY()I
    .locals 1

    .line 365
    iget v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->f:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 200
    invoke-direct {p0}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 203
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 211
    iput-boolean v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->l:Z

    iput-boolean v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->k:Z

    .line 212
    invoke-direct {p0}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->a()V

    .line 215
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 79
    check-cast p1, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;

    .line 80
    iget v0, p1, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;->a:I

    iput v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->b:I

    .line 81
    iget v0, p1, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;->b:I

    iput v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->c:I

    .line 82
    iget v0, p1, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;->c:I

    iput v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->d:I

    .line 83
    iget v0, p1, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;->d:I

    iput v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->e:I

    .line 84
    iget v0, p1, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;->e:I

    iput v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->f:I

    .line 85
    iget-object v0, p1, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;->f:Landroid/util/SparseIntArray;

    iput-object v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->g:Landroid/util/SparseIntArray;

    .line 86
    invoke-virtual {p1}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;->a()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 91
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 92
    new-instance v1, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;

    invoke-direct {v1, v0}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 93
    iget v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->b:I

    iput v0, v1, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;->a:I

    .line 94
    iget v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->c:I

    iput v0, v1, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;->b:I

    .line 95
    iget v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->d:I

    iput v0, v1, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;->c:I

    .line 96
    iget v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->e:I

    iput v0, v1, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;->d:I

    .line 97
    iget v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->f:I

    iput v0, v1, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;->e:I

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->g:Landroid/util/SparseIntArray;

    iput-object v0, v1, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$SavedState;->f:Landroid/util/SparseIntArray;

    return-object v1
.end method

.method protected onScrollChanged(IIII)V
    .locals 5

    .line 104
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->onScrollChanged(IIII)V

    .line 105
    invoke-direct {p0}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->getChildCount()I

    move-result p1

    if-lez p1, :cond_13

    const/4 p1, 0x0

    .line 109
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 110
    invoke-virtual {p0}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->getChildCount()I

    move-result p3

    const/4 p4, 0x1

    sub-int/2addr p3, p4

    invoke-virtual {p0, p3}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p3

    move v1, p1

    move v0, p2

    :goto_0
    if-gt v0, p3, :cond_3

    .line 113
    invoke-virtual {p0, v1}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 115
    iget-object v3, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 116
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    goto :goto_1

    :cond_2
    move v2, p1

    .line 119
    :goto_1
    iget-object v3, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    :cond_3
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_13

    .line 124
    iget v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->b:I

    if-ge v0, p2, :cond_8

    sub-int v0, p2, v0

    if-eq v0, p4, :cond_6

    add-int/lit8 p4, p2, -0x1

    move v0, p1

    .line 128
    :goto_2
    iget v1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->b:I

    if-le p4, v1, :cond_7

    .line 129
    iget-object v1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-lez v1, :cond_5

    .line 130
    iget-object v1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-nez v1, :cond_4

    .line 131
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_3

    .line 133
    :cond_4
    iget-object v1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    goto :goto_3

    .line 139
    :cond_5
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    add-int/lit8 p4, p4, -0x1

    goto :goto_2

    :cond_6
    move v0, p1

    .line 143
    :cond_7
    iget p4, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->d:I

    iget v1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->c:I

    add-int/2addr v1, v0

    add-int/2addr p4, v1

    iput p4, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->d:I

    .line 144
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p4

    iput p4, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->c:I

    goto :goto_6

    :cond_8
    if-ge p2, v0, :cond_d

    sub-int v1, v0, p2

    if-eq v1, p4, :cond_b

    sub-int/2addr v0, p4

    move p4, p1

    :goto_4
    if-le v0, p2, :cond_c

    .line 150
    iget-object v1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-lez v1, :cond_a

    .line 151
    iget-object v1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-nez v1, :cond_9

    .line 152
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_5

    .line 154
    :cond_9
    iget-object v1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    goto :goto_5

    .line 160
    :cond_a
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v1

    :goto_5
    add-int/2addr p4, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_b
    move p4, p1

    .line 164
    :cond_c
    iget v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->d:I

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, p4

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->d:I

    .line 165
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p4

    iput p4, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->c:I

    goto :goto_6

    :cond_d
    if-nez p2, :cond_e

    .line 167
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p4

    iput p4, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->c:I

    .line 168
    iput p1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->d:I

    .line 170
    :cond_e
    :goto_6
    iget p4, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->c:I

    if-gez p4, :cond_f

    .line 171
    iput p1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->c:I

    .line 173
    :cond_f
    iget p4, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->d:I

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr p4, v0

    invoke-virtual {p0}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->getPaddingTop()I

    move-result v0

    add-int/2addr p4, v0

    iput p4, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->f:I

    .line 174
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mScrollY="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->f:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mPrevScrolledChildrenHeight="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->d:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " firstVisiblePosition="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " firstVisibleChild.getTop()="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " getPaddingTop()="

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {p0}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->getPaddingTop()I

    move-result p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " mPrevFirstVisibleChildHeight="

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->c:I

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "ObservableRecyclerView"

    .line 174
    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iput p2, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->b:I

    .line 179
    iget p2, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->f:I

    iget-boolean p3, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->k:Z

    iget-boolean p4, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->l:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->a(IZZ)V

    .line 180
    iget-boolean p2, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->k:Z

    if-eqz p2, :cond_10

    .line 181
    iput-boolean p1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->k:Z

    .line 184
    :cond_10
    iget p1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->e:I

    iget p2, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->f:I

    if-ge p1, p2, :cond_11

    .line 186
    sget-object p1, Lcom/xiaopeng/lib/libview/observablescrollview/b;->UP:Lcom/xiaopeng/lib/libview/observablescrollview/b;

    iput-object p1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->j:Lcom/xiaopeng/lib/libview/observablescrollview/b;

    goto :goto_7

    :cond_11
    if-ge p2, p1, :cond_12

    .line 189
    sget-object p1, Lcom/xiaopeng/lib/libview/observablescrollview/b;->DOWN:Lcom/xiaopeng/lib/libview/observablescrollview/b;

    iput-object p1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->j:Lcom/xiaopeng/lib/libview/observablescrollview/b;

    goto :goto_7

    .line 191
    :cond_12
    sget-object p1, Lcom/xiaopeng/lib/libview/observablescrollview/b;->STOP:Lcom/xiaopeng/lib/libview/observablescrollview/b;

    iput-object p1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->j:Lcom/xiaopeng/lib/libview/observablescrollview/b;

    .line 193
    :goto_7
    iget p1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->f:I

    iput p1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->e:I

    :cond_13
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 220
    invoke-direct {p0}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 223
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    goto/16 :goto_1

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->n:Landroid/view/MotionEvent;

    if-nez v0, :cond_2

    .line 232
    iput-object p1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->n:Landroid/view/MotionEvent;

    .line 234
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->n:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v0, v3

    .line 235
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->n:Landroid/view/MotionEvent;

    .line 236
    invoke-virtual {p0}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->getCurrentScrollY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    const/4 v0, 0x0

    cmpg-float v3, v3, v0

    if-gtz v3, :cond_8

    .line 239
    iget-boolean v3, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->m:Z

    if-eqz v3, :cond_3

    return v2

    .line 246
    :cond_3
    iget-object v3, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->o:Landroid/view/ViewGroup;

    if-nez v3, :cond_4

    .line 247
    invoke-virtual {p0}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    :cond_4
    move v4, v0

    move v5, v4

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_5

    .line 257
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    add-float/2addr v4, v6

    .line 258
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 256
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 260
    :cond_5
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 261
    invoke-virtual {v0, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 263
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 264
    iput-boolean v1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->m:Z

    .line 269
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 273
    new-instance p1, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$1;

    invoke-direct {p1, p0, v3, v0}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView$1;-><init>(Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;Landroid/view/ViewGroup;Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->post(Ljava/lang/Runnable;)Z

    return v2

    .line 284
    :cond_6
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 226
    :cond_7
    iput-boolean v2, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->m:Z

    .line 227
    iput-boolean v2, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->l:Z

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->j:Lcom/xiaopeng/lib/libview/observablescrollview/b;

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->a(Lcom/xiaopeng/lib/libview/observablescrollview/b;)V

    .line 288
    :cond_8
    :goto_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setCheckCallbacks(Z)V
    .locals 0

    .line 434
    iput-boolean p1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->p:Z

    return-void
.end method

.method public setScrollViewCallbacks(Lcom/xiaopeng/lib/libview/observablescrollview/a;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->h:Lcom/xiaopeng/lib/libview/observablescrollview/a;

    return-void
.end method

.method public setTouchInterceptionViewGroup(Landroid/view/ViewGroup;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;->o:Landroid/view/ViewGroup;

    return-void
.end method
