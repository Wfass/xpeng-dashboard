.class public Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;
.super Landroid/widget/ScrollView;
.source "ObservableScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView$SavedState;
    }
.end annotation


# instance fields
.field private isCheckCallbacks:Z

.field private mCallbackCollection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/lib/libview/observablescrollview/a;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacks:Lcom/xiaopeng/lib/libview/observablescrollview/a;

.field private mDragging:Z

.field private mFirstScroll:Z

.field private mIntercepted:Z

.field private mPrevMoveEvent:Landroid/view/MotionEvent;

.field private mPrevScrollY:I

.field private mScrollState:Lcom/xiaopeng/lib/libview/observablescrollview/b;

.field private mScrollY:I

.field private mTouchInterceptionViewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->isCheckCallbacks:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->isCheckCallbacks:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->isCheckCallbacks:Z

    return-void
.end method

.method private dispatchOnDownMotionEvent()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mCallbacks:Lcom/xiaopeng/lib/libview/observablescrollview/a;

    if-eqz v0, :cond_0

    .line 248
    invoke-interface {v0}, Lcom/xiaopeng/lib/libview/observablescrollview/a;->a()V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mCallbackCollection:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 251
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mCallbackCollection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 252
    iget-object v1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mCallbackCollection:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib/libview/observablescrollview/a;

    .line 253
    invoke-interface {v1}, Lcom/xiaopeng/lib/libview/observablescrollview/a;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private dispatchOnScrollChanged(IZZ)V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mCallbacks:Lcom/xiaopeng/lib/libview/observablescrollview/a;

    if-eqz v0, :cond_0

    .line 260
    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/lib/libview/observablescrollview/a;->a(IZZ)V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mCallbackCollection:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 263
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mCallbackCollection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 264
    iget-object v1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mCallbackCollection:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib/libview/observablescrollview/a;

    .line 265
    invoke-interface {v1, p1, p2, p3}, Lcom/xiaopeng/lib/libview/observablescrollview/a;->a(IZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private dispatchOnUpOrCancelMotionEvent(Lcom/xiaopeng/lib/libview/observablescrollview/b;)V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mCallbacks:Lcom/xiaopeng/lib/libview/observablescrollview/a;

    if-eqz v0, :cond_0

    .line 272
    invoke-interface {v0, p1}, Lcom/xiaopeng/lib/libview/observablescrollview/a;->a(Lcom/xiaopeng/lib/libview/observablescrollview/b;)V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mCallbackCollection:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 275
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mCallbackCollection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 276
    iget-object v1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mCallbackCollection:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib/libview/observablescrollview/a;

    .line 277
    invoke-interface {v1, p1}, Lcom/xiaopeng/lib/libview/observablescrollview/a;->a(Lcom/xiaopeng/lib/libview/observablescrollview/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private hasNoCallbacks()Z
    .locals 2

    .line 283
    iget-boolean v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->isCheckCallbacks:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mCallbacks:Lcom/xiaopeng/lib/libview/observablescrollview/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mCallbackCollection:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public addScrollViewCallbacks(Lcom/xiaopeng/lib/libview/observablescrollview/a;)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mCallbackCollection:Ljava/util/List;

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mCallbackCollection:Ljava/util/List;

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mCallbackCollection:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearScrollViewCallbacks()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mCallbackCollection:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 222
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public getCurrentScrollY()I
    .locals 1

    .line 243
    iget v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mScrollY:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 108
    invoke-direct {p0}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->hasNoCallbacks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 111
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mDragging:Z

    iput-boolean v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mFirstScroll:Z

    .line 120
    invoke-direct {p0}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->dispatchOnDownMotionEvent()V

    .line 123
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 64
    check-cast p1, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView$SavedState;

    .line 65
    iget v0, p1, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView$SavedState;->a:I

    iput v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mPrevScrollY:I

    .line 66
    iget v0, p1, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView$SavedState;->b:I

    iput v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mScrollY:I

    .line 67
    invoke-virtual {p1}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 72
    invoke-super {p0}, Landroid/widget/ScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 73
    new-instance v1, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView$SavedState;

    invoke-direct {v1, v0}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 74
    iget v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mPrevScrollY:I

    iput v0, v1, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView$SavedState;->a:I

    .line 75
    iget v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mScrollY:I

    iput v0, v1, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView$SavedState;->b:I

    return-object v1
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 82
    invoke-direct {p0}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->hasNoCallbacks()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 85
    :cond_0
    iput p2, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mScrollY:I

    .line 87
    iget-boolean p1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mFirstScroll:Z

    iget-boolean p3, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mDragging:Z

    invoke-direct {p0, p2, p1, p3}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->dispatchOnScrollChanged(IZZ)V

    .line 88
    iget-boolean p1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mFirstScroll:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 89
    iput-boolean p1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mFirstScroll:Z

    .line 92
    :cond_1
    iget p1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mPrevScrollY:I

    if-ge p1, p2, :cond_2

    .line 93
    sget-object p1, Lcom/xiaopeng/lib/libview/observablescrollview/b;->UP:Lcom/xiaopeng/lib/libview/observablescrollview/b;

    iput-object p1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mScrollState:Lcom/xiaopeng/lib/libview/observablescrollview/b;

    goto :goto_0

    :cond_2
    if-ge p2, p1, :cond_3

    .line 95
    sget-object p1, Lcom/xiaopeng/lib/libview/observablescrollview/b;->DOWN:Lcom/xiaopeng/lib/libview/observablescrollview/b;

    iput-object p1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mScrollState:Lcom/xiaopeng/lib/libview/observablescrollview/b;

    .line 103
    :cond_3
    :goto_0
    iput p2, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mPrevScrollY:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 128
    invoke-direct {p0}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->hasNoCallbacks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 131
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

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mPrevMoveEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_2

    .line 140
    iput-object p1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mPrevMoveEvent:Landroid/view/MotionEvent;

    .line 142
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mPrevMoveEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v0, v3

    .line 143
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mPrevMoveEvent:Landroid/view/MotionEvent;

    .line 144
    invoke-virtual {p0}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->getCurrentScrollY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    const/4 v0, 0x0

    cmpg-float v3, v3, v0

    if-gtz v3, :cond_8

    .line 147
    iget-boolean v3, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mIntercepted:Z

    if-eqz v3, :cond_3

    return v2

    .line 154
    :cond_3
    iget-object v3, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mTouchInterceptionViewGroup:Landroid/view/ViewGroup;

    if-nez v3, :cond_4

    .line 155
    invoke-virtual {p0}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    :cond_4
    move v4, v0

    move v5, v4

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_5

    .line 165
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    add-float/2addr v4, v6

    .line 166
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 164
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 168
    :cond_5
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 169
    invoke-virtual {v0, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 171
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 172
    iput-boolean v1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mIntercepted:Z

    .line 177
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 181
    new-instance p1, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView$1;

    invoke-direct {p1, p0, v3, v0}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView$1;-><init>(Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;Landroid/view/ViewGroup;Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->post(Ljava/lang/Runnable;)Z

    return v2

    .line 192
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 134
    :cond_7
    iput-boolean v2, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mIntercepted:Z

    .line 135
    iput-boolean v2, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mDragging:Z

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mScrollState:Lcom/xiaopeng/lib/libview/observablescrollview/b;

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->dispatchOnUpOrCancelMotionEvent(Lcom/xiaopeng/lib/libview/observablescrollview/b;)V

    .line 196
    :cond_8
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public removeScrollViewCallbacks(Lcom/xiaopeng/lib/libview/observablescrollview/a;)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mCallbackCollection:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 215
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public scrollVerticallyTo(I)V
    .locals 1

    const/4 v0, 0x0

    .line 238
    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->scrollTo(II)V

    return-void
.end method

.method public setCheckCallbacks(Z)V
    .locals 0

    .line 291
    iput-boolean p1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->isCheckCallbacks:Z

    return-void
.end method

.method public setScrollViewCallbacks(Lcom/xiaopeng/lib/libview/observablescrollview/a;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mCallbacks:Lcom/xiaopeng/lib/libview/observablescrollview/a;

    return-void
.end method

.method public setTouchInterceptionViewGroup(Landroid/view/ViewGroup;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->mTouchInterceptionViewGroup:Landroid/view/ViewGroup;

    return-void
.end method

.method public updateAllView()V
    .locals 0

    return-void
.end method
