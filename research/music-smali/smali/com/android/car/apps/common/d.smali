.class public Lcom/android/car/apps/common/d;
.super Landroid/widget/RelativeLayout;
.source "ControlBar.java"

# interfaces
.implements Lcom/android/car/apps/common/f;


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:[Landroid/widget/FrameLayout;

.field private c:Landroid/widget/FrameLayout;

.field private final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:I

.field private h:Z

.field private i:[Landroid/view/View;

.field private j:I

.field private k:I

.field private l:Z

.field private m:Lcom/android/car/apps/common/f$a;

.field private n:Landroid/view/ViewGroup;

.field private o:Z

.field private final p:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 119
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/apps/common/d;->d:Landroid/util/SparseArray;

    .line 107
    new-instance v0, Lcom/android/car/apps/common/-$$Lambda$d$N_WPGMcIxOvEutnUaZ77D7z9hz8;

    invoke-direct {v0, p0}, Lcom/android/car/apps/common/-$$Lambda$d$N_WPGMcIxOvEutnUaZ77D7z9hz8;-><init>(Lcom/android/car/apps/common/d;)V

    iput-object v0, p0, Lcom/android/car/apps/common/d;->p:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 120
    invoke-direct {p0, p1, v1, v0, v0}, Lcom/android/car/apps/common/d;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 124
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/apps/common/d;->d:Landroid/util/SparseArray;

    .line 107
    new-instance v0, Lcom/android/car/apps/common/-$$Lambda$d$N_WPGMcIxOvEutnUaZ77D7z9hz8;

    invoke-direct {v0, p0}, Lcom/android/car/apps/common/-$$Lambda$d$N_WPGMcIxOvEutnUaZ77D7z9hz8;-><init>(Lcom/android/car/apps/common/d;)V

    iput-object v0, p0, Lcom/android/car/apps/common/d;->p:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/car/apps/common/d;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 129
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/apps/common/d;->d:Landroid/util/SparseArray;

    .line 107
    new-instance v0, Lcom/android/car/apps/common/-$$Lambda$d$N_WPGMcIxOvEutnUaZ77D7z9hz8;

    invoke-direct {v0, p0}, Lcom/android/car/apps/common/-$$Lambda$d$N_WPGMcIxOvEutnUaZ77D7z9hz8;-><init>(Lcom/android/car/apps/common/d;)V

    iput-object v0, p0, Lcom/android/car/apps/common/d;->p:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    const/4 v0, 0x0

    .line 130
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/car/apps/common/d;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 134
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/apps/common/d;->d:Landroid/util/SparseArray;

    .line 107
    new-instance v0, Lcom/android/car/apps/common/-$$Lambda$d$N_WPGMcIxOvEutnUaZ77D7z9hz8;

    invoke-direct {v0, p0}, Lcom/android/car/apps/common/-$$Lambda$d$N_WPGMcIxOvEutnUaZ77D7z9hz8;-><init>(Lcom/android/car/apps/common/d;)V

    iput-object v0, p0, Lcom/android/car/apps/common/d;->p:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    .line 135
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/car/apps/common/d;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private a(I)I
    .locals 1

    .line 185
    iget v0, p0, Lcom/android/car/apps/common/d;->j:I

    invoke-static {p1, v0}, Lcom/android/car/apps/common/b;->a(II)I

    move-result p1

    return p1
.end method

.method private a()V
    .locals 9

    .line 280
    iget-object v0, p0, Lcom/android/car/apps/common/d;->b:[Landroid/widget/FrameLayout;

    array-length v0, v0

    .line 281
    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    move v3, v2

    .line 284
    :goto_0
    iget-object v4, p0, Lcom/android/car/apps/common/d;->d:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 285
    iget-object v4, p0, Lcom/android/car/apps/common/d;->d:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/car/apps/common/d;->a(I)I

    move-result v4

    if-ltz v4, :cond_0

    .line 286
    array-length v5, v1

    if-ge v4, v5, :cond_0

    .line 287
    iget-object v5, p0, Lcom/android/car/apps/common/d;->d:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    aput-object v5, v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    .line 292
    invoke-direct {p0, v3}, Lcom/android/car/apps/common/d;->a(I)I

    move-result v3

    move v4, v2

    move v5, v4

    :goto_1
    const/4 v6, 0x1

    if-ge v2, v0, :cond_6

    const/4 v7, 0x0

    .line 298
    aget-object v8, v1, v2

    if-eqz v8, :cond_2

    .line 300
    aget-object v7, v1, v2

    goto :goto_2

    .line 301
    :cond_2
    iget-boolean v8, p0, Lcom/android/car/apps/common/d;->l:Z

    if-eqz v8, :cond_3

    if-ne v2, v3, :cond_3

    iget-object v8, p0, Lcom/android/car/apps/common/d;->i:[Landroid/view/View;

    if-eqz v8, :cond_3

    array-length v8, v8

    sub-int/2addr v8, v6

    if-ge v5, v8, :cond_3

    .line 304
    invoke-direct {p0}, Lcom/android/car/apps/common/d;->getExpandCollapseView()Landroid/view/View;

    move-result-object v7

    .line 305
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "Setting expand control"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "ControlBar"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 306
    :cond_3
    iget-object v6, p0, Lcom/android/car/apps/common/d;->i:[Landroid/view/View;

    if-eqz v6, :cond_4

    array-length v8, v6

    if-ge v5, v8, :cond_4

    .line 309
    aget-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    .line 312
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/android/car/apps/common/d;->b:[Landroid/widget/FrameLayout;

    aget-object v6, v6, v2

    invoke-static {v7, v6}, Laia;->a(Landroid/view/View;Landroid/widget/FrameLayout;)V

    if-eqz v7, :cond_5

    move v4, v2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 318
    :cond_6
    iget v0, p0, Lcom/android/car/apps/common/d;->j:I

    div-int v0, v4, v0

    iput v0, p0, Lcom/android/car/apps/common/d;->g:I

    .line 321
    iget v0, p0, Lcom/android/car/apps/common/d;->k:I

    if-le v0, v6, :cond_7

    .line 323
    iget-object v0, p0, Lcom/android/car/apps/common/d;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/car/apps/common/-$$Lambda$d$lcyX1mDJbJBbprnGNbH5gpGtzFs;

    invoke-direct {v1, p0, v4}, Lcom/android/car/apps/common/-$$Lambda$d$lcyX1mDJbJBbprnGNbH5gpGtzFs;-><init>(Lcom/android/car/apps/common/d;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_7
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    .line 139
    sget v0, Lcom/android/car/apps/common/h$h;->control_bar:I

    invoke-static {p1, v0, p0}, Lcom/android/car/apps/common/d;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 141
    sget-object v0, Lcom/android/car/apps/common/h$j;->ControlBar:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 143
    sget p3, Lcom/android/car/apps/common/h$j;->ControlBar_columns:I

    const/4 p4, 0x3

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/android/car/apps/common/d;->j:I

    .line 144
    sget p3, Lcom/android/car/apps/common/h$j;->ControlBar_enableOverflow:I

    const/4 p4, 0x1

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/car/apps/common/d;->l:Z

    .line 145
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 147
    sget p2, Lcom/android/car/apps/common/h$f;->rows_container:I

    invoke-virtual {p0, p2}, Lcom/android/car/apps/common/d;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/car/apps/common/d;->a:Landroid/view/ViewGroup;

    .line 148
    iget-object p2, p0, Lcom/android/car/apps/common/d;->a:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    iput p2, p0, Lcom/android/car/apps/common/d;->k:I

    .line 149
    iget p2, p0, Lcom/android/car/apps/common/d;->k:I

    const/4 p3, 0x0

    if-lez p2, :cond_0

    move p2, p4

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    const-string v0, "Must have at least 1 row"

    invoke-static {p2, v0}, Lfg;->a(ZLjava/lang/String;)V

    .line 151
    iget p2, p0, Lcom/android/car/apps/common/d;->j:I

    iget v0, p0, Lcom/android/car/apps/common/d;->k:I

    mul-int/2addr p2, v0

    new-array p2, p2, [Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/android/car/apps/common/d;->b:[Landroid/widget/FrameLayout;

    .line 153
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    move v0, p3

    .line 156
    :goto_1
    iget v1, p0, Lcom/android/car/apps/common/d;->k:I

    if-ge v0, v1, :cond_4

    .line 158
    iget-object v2, p0, Lcom/android/car/apps/common/d;->a:Landroid/view/ViewGroup;

    sub-int/2addr v1, v0

    sub-int/2addr v1, p4

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    move v2, p3

    .line 160
    :goto_2
    iget v3, p0, Lcom/android/car/apps/common/d;->j:I

    if-ge v2, v3, :cond_3

    mul-int/2addr v3, v0

    add-int/2addr v3, v2

    .line 162
    iget-object v4, p0, Lcom/android/car/apps/common/d;->b:[Landroid/widget/FrameLayout;

    sget v5, Lcom/android/car/apps/common/h$h;->control_bar_slot:I

    invoke-virtual {p2, v5, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    aput-object v5, v4, v3

    .line 164
    iget-object v4, p0, Lcom/android/car/apps/common/d;->c:Landroid/widget/FrameLayout;

    if-nez v4, :cond_1

    .line 165
    iget-object v4, p0, Lcom/android/car/apps/common/d;->b:[Landroid/widget/FrameLayout;

    aget-object v4, v4, v3

    iput-object v4, p0, Lcom/android/car/apps/common/d;->c:Landroid/widget/FrameLayout;

    :cond_1
    if-lez v2, :cond_2

    .line 168
    new-instance v4, Landroid/widget/Space;

    invoke-direct {v4, p1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 169
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 170
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, p3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    :cond_2
    iget-object v4, p0, Lcom/android/car/apps/common/d;->b:[Landroid/widget/FrameLayout;

    aget-object v3, v4, v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 177
    :cond_4
    sget p2, Lcom/android/car/apps/common/h$e;->ic_overflow_button:I

    .line 178
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 177
    invoke-virtual {p0, p2}, Lcom/android/car/apps/common/d;->a(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;

    move-result-object p2

    iput-object p2, p0, Lcom/android/car/apps/common/d;->f:Landroid/view/View;

    .line 179
    iget-object p2, p0, Lcom/android/car/apps/common/d;->f:Landroid/view/View;

    sget p3, Lcom/android/car/apps/common/h$i;->control_bar_expand_collapse_button:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 181
    iget-object p1, p0, Lcom/android/car/apps/common/d;->f:Landroid/view/View;

    new-instance p2, Lcom/android/car/apps/common/-$$Lambda$d$YQfd5_hKKbZq0Cc3M74WGnhY_yI;

    invoke-direct {p2, p0}, Lcom/android/car/apps/common/-$$Lambda$d$YQfd5_hKKbZq0Cc3M74WGnhY_yI;-><init>(Lcom/android/car/apps/common/d;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 219
    invoke-direct {p0}, Lcom/android/car/apps/common/d;->b()V

    return-void
.end method

.method private synthetic a(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 110
    invoke-virtual {p0}, Lcom/android/car/apps/common/d;->hasFocus()Z

    move-result p1

    .line 111
    iget-boolean p2, p0, Lcom/android/car/apps/common/d;->o:Z

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    iget-boolean p2, p0, Lcom/android/car/apps/common/d;->h:Z

    if-eqz p2, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/android/car/apps/common/d;->b()V

    .line 114
    :cond_0
    iput-boolean p1, p0, Lcom/android/car/apps/common/d;->o:Z

    return-void
.end method

.method private b()V
    .locals 4

    .line 345
    iget-boolean v0, p0, Lcom/android/car/apps/common/d;->h:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/car/apps/common/d;->h:Z

    .line 346
    iget-object v0, p0, Lcom/android/car/apps/common/d;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 347
    iget-boolean v1, p0, Lcom/android/car/apps/common/d;->h:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/android/car/apps/common/d;->m:Lcom/android/car/apps/common/f$a;

    if-eqz v0, :cond_1

    .line 350
    iget-boolean v1, p0, Lcom/android/car/apps/common/d;->h:Z

    invoke-interface {v0, v1}, Lcom/android/car/apps/common/f$a;->a(Z)V

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/android/car/apps/common/d;->b:[Landroid/widget/FrameLayout;

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/car/apps/common/d;->a(I)I

    move-result v1

    aget-object v0, v0, v1

    iget-boolean v1, p0, Lcom/android/car/apps/common/d;->h:Z

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setActivated(Z)V

    .line 354
    invoke-virtual {p0}, Lcom/android/car/apps/common/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/car/apps/common/d;->h:Z

    if-eqz v1, :cond_2

    sget v1, Lcom/android/car/apps/common/h$g;->control_bar_expand_anim_duration:I

    goto :goto_0

    :cond_2
    sget v1, Lcom/android/car/apps/common/h$g;->control_bar_collapse_anim_duration:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 357
    new-instance v1, Landroid/transition/TransitionSet;

    invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V

    new-instance v2, Landroid/transition/ChangeBounds;

    invoke-direct {v2}, Landroid/transition/ChangeBounds;-><init>()V

    .line 358
    invoke-virtual {v1, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v1

    new-instance v2, Landroid/transition/Fade;

    invoke-direct {v2}, Landroid/transition/Fade;-><init>()V

    .line 359
    invoke-virtual {v1, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v1

    int-to-long v2, v0

    .line 360
    invoke-virtual {v1, v2, v3}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    move-result-object v0

    new-instance v1, Lhm;

    invoke-direct {v1}, Lhm;-><init>()V

    .line 361
    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    move-result-object v0

    .line 362
    invoke-direct {p0}, Lcom/android/car/apps/common/d;->c()V

    .line 363
    iget-object v1, p0, Lcom/android/car/apps/common/d;->n:Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    const/4 v0, 0x0

    move v1, v0

    .line 364
    :goto_1
    iget v2, p0, Lcom/android/car/apps/common/d;->g:I

    if-ge v1, v2, :cond_4

    .line 365
    iget-object v2, p0, Lcom/android/car/apps/common/d;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/car/apps/common/d;->h:Z

    if-eqz v3, :cond_3

    move v3, v0

    goto :goto_2

    :cond_3
    const/16 v3, 0x8

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private synthetic b(I)V
    .locals 6

    const/4 v0, 0x1

    move v1, v0

    .line 324
    :goto_0
    iget v2, p0, Lcom/android/car/apps/common/d;->k:I

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    add-int/lit8 v1, v1, 0x1

    .line 327
    iget v3, p0, Lcom/android/car/apps/common/d;->j:I

    mul-int/2addr v3, v1

    if-ge p1, v3, :cond_0

    .line 332
    iget-object v3, p0, Lcom/android/car/apps/common/d;->b:[Landroid/widget/FrameLayout;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getX()F

    move-result v3

    .line 333
    iget-object v4, p0, Lcom/android/car/apps/common/d;->b:[Landroid/widget/FrameLayout;

    iget v5, p0, Lcom/android/car/apps/common/d;->j:I

    sub-int/2addr v5, v0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getX()F

    move-result v4

    .line 334
    iget-object v5, p0, Lcom/android/car/apps/common/d;->a:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sub-float/2addr v4, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v4, v3

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 337
    :cond_0
    iget-object v3, p0, Lcom/android/car/apps/common/d;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 0

    .line 181
    invoke-direct {p0}, Lcom/android/car/apps/common/d;->b()V

    return-void
.end method

.method private c()V
    .locals 3

    .line 370
    iget-object v0, p0, Lcom/android/car/apps/common/d;->n:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    return-void

    .line 377
    :cond_0
    iput-object p0, p0, Lcom/android/car/apps/common/d;->n:Landroid/view/ViewGroup;

    .line 378
    invoke-virtual {p0}, Lcom/android/car/apps/common/d;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 379
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 380
    check-cast v0, Landroid/view/ViewGroup;

    .line 381
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    .line 382
    iput-object v0, p0, Lcom/android/car/apps/common/d;->n:Landroid/view/ViewGroup;

    .line 383
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getExpandCollapseView()Landroid/view/View;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/android/car/apps/common/d;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/car/apps/common/d;->f:Landroid/view/View;

    :goto_0
    return-object v0
.end method

.method public static synthetic lambda$N_WPGMcIxOvEutnUaZ77D7z9hz8(Lcom/android/car/apps/common/d;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/car/apps/common/d;->a(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$YQfd5_hKKbZq0Cc3M74WGnhY_yI(Lcom/android/car/apps/common/d;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/apps/common/d;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$lcyX1mDJbJBbprnGNbH5gpGtzFs(Lcom/android/car/apps/common/d;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/apps/common/d;->b(I)V

    return-void
.end method

.method public static synthetic lambda$luGToBlkXj5hwv24lLiWc7IPgUM(Lcom/android/car/apps/common/d;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/apps/common/d;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;
    .locals 1

    .line 229
    sget v0, Lcom/android/car/apps/common/h$h;->control_bar_button:I

    invoke-virtual {p0, p1, v0}, Lcom/android/car/apps/common/d;->a(Landroid/graphics/drawable/Drawable;I)Landroid/widget/ImageButton;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/graphics/drawable/Drawable;I)Landroid/widget/ImageButton;
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/android/car/apps/common/d;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/android/car/apps/common/d;->c:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    .line 238
    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/car/apps/common/d;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 205
    :cond_0
    iget-object p1, p0, Lcom/android/car/apps/common/d;->d:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 207
    :goto_0
    invoke-direct {p0}, Lcom/android/car/apps/common/d;->a()V

    return-void
.end method

.method public getFocusedViewIndex()I
    .locals 3

    const/4 v0, 0x0

    .line 244
    :goto_0
    iget-object v1, p0, Lcom/android/car/apps/common/d;->b:[Landroid/widget/FrameLayout;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 245
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 190
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 191
    invoke-virtual {p0}, Lcom/android/car/apps/common/d;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/apps/common/d;->p:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 196
    invoke-virtual {p0}, Lcom/android/car/apps/common/d;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/apps/common/d;->p:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 197
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public setExpandCollapseView(Landroid/view/View;)V
    .locals 1

    .line 218
    iput-object p1, p0, Lcom/android/car/apps/common/d;->e:Landroid/view/View;

    .line 219
    iget-object p1, p0, Lcom/android/car/apps/common/d;->e:Landroid/view/View;

    new-instance v0, Lcom/android/car/apps/common/-$$Lambda$d$luGToBlkXj5hwv24lLiWc7IPgUM;

    invoke-direct {v0, p0}, Lcom/android/car/apps/common/-$$Lambda$d$luGToBlkXj5hwv24lLiWc7IPgUM;-><init>(Lcom/android/car/apps/common/d;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    invoke-direct {p0}, Lcom/android/car/apps/common/d;->a()V

    return-void
.end method

.method public setFocusAtViewIndex(I)V
    .locals 2

    const/4 v0, -0x1

    if-ge v0, p1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/car/apps/common/d;->b:[Landroid/widget/FrameLayout;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    .line 256
    aget-object p1, v0, p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public setViews([Landroid/view/View;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/android/car/apps/common/d;->i:[Landroid/view/View;

    .line 275
    invoke-direct {p0}, Lcom/android/car/apps/common/d;->a()V

    return-void
.end method
