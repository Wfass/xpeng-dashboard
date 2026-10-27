.class public Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;
.source "BottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;,
        Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;,
        Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$b<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final F:I


# instance fields
.field private A:Z

.field private B:Lakp;

.field private C:Z

.field private D:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "TV;>.b;"
        }
    .end annotation
.end field

.field private E:Landroid/animation/ValueAnimator;

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:I

.field private K:Z

.field private L:I

.field private final M:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;",
            ">;"
        }
    .end annotation
.end field

.field private N:Landroid/view/VelocityTracker;

.field private O:I

.field private P:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private Q:I

.field private final R:Lhi$a;

.field a:I

.field b:I

.field c:I

.field d:F

.field e:I

.field f:F

.field g:Z

.field h:I

.field i:Lhi;

.field j:I

.field k:I

.field l:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TV;>;"
        }
    .end annotation
.end field

.field m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field n:I

.field o:Z

.field private p:I

.field private q:Z

.field private r:Z

.field private s:F

.field private t:I

.field private u:Z

.field private v:I

.field private w:I

.field private x:Z

.field private y:Lakk;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 232
    sget v0, Laiv$k;->Widget_Design_BottomSheet_Modal:I

    sput v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 284
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;-><init>()V

    const/4 v0, 0x0

    .line 187
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->p:I

    const/4 v1, 0x1

    .line 197
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:Z

    .line 199
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:Z

    const/4 v0, 0x0

    .line 228
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 240
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 244
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f:F

    .line 250
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Z

    const/4 v0, 0x4

    .line 252
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 282
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Q:I

    .line 1346
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->R:Lhi$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 287
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 187
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->p:I

    const/4 v1, 0x1

    .line 197
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:Z

    .line 199
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:Z

    const/4 v2, 0x0

    .line 228
    iput-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;

    const/high16 v2, 0x3f000000    # 0.5f

    .line 240
    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d:F

    const/high16 v3, -0x40800000    # -1.0f

    .line 244
    iput v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f:F

    .line 250
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Z

    const/4 v4, 0x4

    .line 252
    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    .line 270
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M:Ljava/util/ArrayList;

    const/4 v4, -0x1

    .line 282
    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Q:I

    .line 1346
    new-instance v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;

    invoke-direct {v5, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    iput-object v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->R:Lhi$a;

    .line 290
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Laiv$d;->mtrl_min_touch_target_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:I

    .line 292
    sget-object v5, Laiv$l;->BottomSheetBehavior_Layout:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 293
    sget v6, Laiv$l;->BottomSheetBehavior_Layout_shapeAppearance:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:Z

    .line 294
    sget v6, Laiv$l;->BottomSheetBehavior_Layout_backgroundTint:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 296
    sget v7, Laiv$l;->BottomSheetBehavior_Layout_backgroundTint:I

    .line 297
    invoke-static {p1, v5, v7}, Lajv;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 299
    invoke-direct {p0, p1, p2, v6, v7}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/content/Context;Landroid/util/AttributeSet;ZLandroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 301
    :cond_0
    invoke-direct {p0, p1, p2, v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 303
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->j()V

    .line 305
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt p2, v6, :cond_1

    .line 306
    sget p2, Laiv$l;->BottomSheetBehavior_Layout_android_elevation:I

    invoke-virtual {v5, p2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f:F

    .line 309
    :cond_1
    sget p2, Laiv$l;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    invoke-virtual {v5, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 310
    iget v3, p2, Landroid/util/TypedValue;->data:I

    if-ne v3, v4, :cond_2

    .line 311
    iget p2, p2, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(I)V

    goto :goto_1

    .line 313
    :cond_2
    sget p2, Laiv$l;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    .line 314
    invoke-virtual {v5, p2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 313
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(I)V

    .line 317
    :goto_1
    sget p2, Laiv$l;->BottomSheetBehavior_Layout_behavior_hideable:I

    invoke-virtual {v5, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b(Z)V

    .line 318
    sget p2, Laiv$l;->BottomSheetBehavior_Layout_gestureInsetBottomIgnored:I

    .line 319
    invoke-virtual {v5, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 318
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e(Z)V

    .line 320
    sget p2, Laiv$l;->BottomSheetBehavior_Layout_behavior_fitToContents:I

    .line 321
    invoke-virtual {v5, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 320
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Z)V

    .line 322
    sget p2, Laiv$l;->BottomSheetBehavior_Layout_behavior_skipCollapsed:I

    .line 323
    invoke-virtual {v5, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 322
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c(Z)V

    .line 324
    sget p2, Laiv$l;->BottomSheetBehavior_Layout_behavior_draggable:I

    invoke-virtual {v5, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d(Z)V

    .line 325
    sget p2, Laiv$l;->BottomSheetBehavior_Layout_behavior_saveFlags:I

    invoke-virtual {v5, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c(I)V

    .line 326
    sget p2, Laiv$l;->BottomSheetBehavior_Layout_behavior_halfExpandedRatio:I

    .line 327
    invoke-virtual {v5, p2, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    .line 326
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(F)V

    .line 329
    sget p2, Laiv$l;->BottomSheetBehavior_Layout_behavior_expandedOffset:I

    invoke-virtual {v5, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 330
    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    .line 331
    iget p2, p2, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b(I)V

    goto :goto_2

    .line 333
    :cond_3
    sget p2, Laiv$l;->BottomSheetBehavior_Layout_behavior_expandedOffset:I

    .line 334
    invoke-virtual {v5, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    .line 333
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b(I)V

    .line 337
    :goto_2
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 338
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 339
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:F

    return-void
.end method

.method private a(Landroid/view/View;II)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;II)I"
        }
    .end annotation

    .line 1778
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1779
    invoke-direct {p0, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i(I)Lgx;

    move-result-object p3

    .line 1776
    invoke-static {p1, p2, p3}, Lgj;->a(Landroid/view/View;Ljava/lang/CharSequence;Lgx;)I

    move-result p1

    return p1
.end method

.method static synthetic a(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)I
    .locals 0

    .line 82
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Lakk;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:Lakk;

    return-object p0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1227
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/content/Context;Landroid/util/AttributeSet;ZLandroid/content/res/ColorStateList;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;ZLandroid/content/res/ColorStateList;)V
    .locals 2

    .line 1235
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:Z

    if-eqz v0, :cond_1

    .line 1236
    sget v0, Laiv$b;->bottomSheetStyle:I

    sget v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F:I

    .line 1237
    invoke-static {p1, p2, v0, v1}, Lakp;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lakp$a;

    move-result-object p2

    .line 1238
    invoke-virtual {p2}, Lakp$a;->a()Lakp;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:Lakp;

    .line 1240
    new-instance p2, Lakk;

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:Lakp;

    invoke-direct {p2, v0}, Lakk;-><init>(Lakp;)V

    iput-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:Lakk;

    .line 1241
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:Lakk;

    invoke-virtual {p2, p1}, Lakk;->a(Landroid/content/Context;)V

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 1244
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:Lakk;

    invoke-virtual {p1, p4}, Lakk;->g(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 1247
    :cond_0
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 1248
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const p3, 0x1010031

    const/4 p4, 0x1

    invoke-virtual {p1, p3, p2, p4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1249
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:Lakk;

    iget p2, p2, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1, p2}, Lakk;->setTint(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Landroid/view/View;Lgu$a;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lgu$a;",
            "I)V"
        }
    .end annotation

    .line 1772
    invoke-direct {p0, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i(I)Lgx;

    move-result-object p3

    const/4 v0, 0x0

    .line 1771
    invoke-static {p1, p2, v0, p3}, Lgj;->a(Landroid/view/View;Lgu$a;Ljava/lang/CharSequence;Lgx;)V

    return-void
.end method

.method private a(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;)V
    .locals 3

    .line 1175
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->p:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    .line 1179
    :cond_1
    iget v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->b:I

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t:I

    .line 1181
    :cond_2
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->p:I

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_4

    .line 1183
    :cond_3
    iget-boolean v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->c:Z

    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:Z

    .line 1185
    :cond_4
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->p:I

    if-eq v0, v1, :cond_5

    const/4 v2, 0x4

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_6

    .line 1186
    :cond_5
    iget-boolean v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->d:Z

    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:Z

    .line 1188
    :cond_6
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->p:I

    if-eq v0, v1, :cond_7

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    .line 1190
    :cond_7
    iget-boolean p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->e:Z

    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:Z

    :cond_8
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f(Z)V

    return-void
.end method

.method public static b(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;)",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "TV;>;"
        }
    .end annotation

    .line 1637
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 1638
    instance-of v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;

    if-eqz v0, :cond_1

    .line 1641
    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;

    .line 1642
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->b()Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;

    move-result-object p0

    .line 1643
    instance-of v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_0

    .line 1646
    check-cast p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-object p0

    .line 1644
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The view is not associated with BottomSheetBehavior"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1639
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The view is not a child of CoordinatorLayout"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic b(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Z

    return p0
.end method

.method private c(Landroid/view/View;)V
    .locals 2

    .line 1274
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->u:Z

    if-nez v0, :cond_0

    .line 1275
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    invoke-static {p1, v0}, Lcom/google/android/material/internal/u;->a(Landroid/view/View;Lcom/google/android/material/internal/u$a;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:Z

    return p0
.end method

.method static synthetic d(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)I
    .locals 0

    .line 82
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t:I

    return p0
.end method

.method static synthetic e(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:Z

    return p0
.end method

.method private f()I
    .locals 3

    .line 1142
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->u:Z

    if-eqz v0, :cond_0

    .line 1143
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->v:I

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:I

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->j:I

    mul-int/lit8 v2, v2, 0x9

    div-int/lit8 v2, v2, 0x10

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1144
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->L:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 1146
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:I

    if-lez v0, :cond_1

    .line 1147
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t:I

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:I

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 1149
    :cond_1
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t:I

    return v0
.end method

.method private f(Z)V
    .locals 2

    .line 796
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 797
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g()V

    .line 798
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 799
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 802
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g(I)V

    goto :goto_0

    .line 804
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_1
    :goto_0
    return-void
.end method

.method private g()V
    .locals 2

    .line 1153
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f()I

    move-result v0

    .line 1155
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:Z

    if-eqz v1, :cond_0

    .line 1156
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:I

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    goto :goto_0

    .line 1158
    :cond_0
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    :goto_0
    return-void
.end method

.method private g(I)V
    .locals 2

    .line 1060
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 1065
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1066
    invoke-interface {v1}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lgj;->E(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1068
    new-instance v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1076
    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method private g(Z)V
    .locals 7

    .line 1662
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    .line 1666
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1667
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-nez v1, :cond_1

    return-void

    .line 1671
    :cond_1
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 1672
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .line 1673
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_3

    if-eqz p1, :cond_3

    .line 1674
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:Ljava/util/Map;

    if-nez v2, :cond_2

    .line 1675
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:Ljava/util/Map;

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_8

    .line 1683
    invoke-virtual {v0, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1684
    iget-object v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_4

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_6

    .line 1690
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v3, :cond_5

    .line 1691
    iget-object v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:Ljava/util/Map;

    invoke-virtual {v4}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1693
    :cond_5
    iget-boolean v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:Z

    if-eqz v5, :cond_7

    const/4 v5, 0x4

    .line 1694
    invoke-static {v4, v5}, Lgj;->d(Landroid/view/View;I)V

    goto :goto_2

    .line 1698
    :cond_6
    iget-boolean v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:Ljava/util/Map;

    if-eqz v5, :cond_7

    .line 1700
    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1702
    iget-object v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, v5}, Lgj;->d(Landroid/view/View;I)V

    :cond_7
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    if-nez p1, :cond_9

    const/4 p1, 0x0

    .line 1708
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:Ljava/util/Map;

    goto :goto_3

    .line 1709
    :cond_9
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:Z

    if-eqz p1, :cond_a

    .line 1712
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_a
    :goto_3
    return-void
.end method

.method private h()V
    .locals 3

    .line 1163
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:I

    return-void
.end method

.method private h(I)V
    .locals 5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v3

    .line 1126
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C:Z

    if-eq v1, p1, :cond_4

    .line 1127
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C:Z

    .line 1128
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:Lakk;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_4

    .line 1129
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1130
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_2

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    move p1, v1

    :goto_1
    sub-float/2addr v1, p1

    .line 1134
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    aput v1, v0, v3

    aput p1, v0, v2

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1135
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    :goto_2
    return-void
.end method

.method private i(I)Lgx;
    .locals 1

    .line 1783
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$5;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)V

    return-object v0
.end method

.method private i()V
    .locals 1

    const/4 v0, -0x1

    .line 1167
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:I

    .line 1168
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->N:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1169
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 1170
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->N:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private j()V
    .locals 3

    const/4 v0, 0x2

    .line 1255
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:Landroid/animation/ValueAnimator;

    .line 1256
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1257
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;

    invoke-direct {v1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private k()F
    .locals 3

    .line 1290
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->N:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v1, 0x3e8

    .line 1293
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:F

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1294
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->N:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    return v0
.end method

.method private l()V
    .locals 5

    .line 1717
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    .line 1720
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/high16 v1, 0x80000

    .line 1724
    invoke-static {v0, v1}, Lgj;->e(Landroid/view/View;I)V

    const/high16 v1, 0x40000

    .line 1725
    invoke-static {v0, v1}, Lgj;->e(Landroid/view/View;I)V

    const/high16 v1, 0x100000

    .line 1726
    invoke-static {v0, v1}, Lgj;->e(Landroid/view/View;I)V

    .line 1728
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Q:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1729
    invoke-static {v0, v1}, Lgj;->e(Landroid/view/View;I)V

    .line 1731
    :cond_2
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    .line 1732
    sget v1, Laiv$j;->bottomsheet_action_expand_halfway:I

    .line 1733
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/view/View;II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Q:I

    .line 1737
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    const/4 v3, 0x5

    if-eq v1, v3, :cond_4

    .line 1738
    sget-object v1, Lgu$a;->u:Lgu$a;

    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/view/View;Lgu$a;I)V

    .line 1742
    :cond_4
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_8

    if-eq v1, v3, :cond_6

    if-eq v1, v2, :cond_5

    goto :goto_0

    .line 1752
    :cond_5
    sget-object v1, Lgu$a;->t:Lgu$a;

    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/view/View;Lgu$a;I)V

    .line 1754
    sget-object v1, Lgu$a;->s:Lgu$a;

    invoke-direct {p0, v0, v1, v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/view/View;Lgu$a;I)V

    goto :goto_0

    .line 1760
    :cond_6
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:Z

    if-eqz v1, :cond_7

    move v2, v4

    .line 1761
    :cond_7
    sget-object v1, Lgu$a;->s:Lgu$a;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/view/View;Lgu$a;I)V

    goto :goto_0

    .line 1745
    :cond_8
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:Z

    if-eqz v1, :cond_9

    move v2, v3

    .line 1746
    :cond_9
    sget-object v1, Lgu$a;->t:Lgu$a;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/view/View;Lgu$a;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method a(Landroid/view/View;)Landroid/view/View;
    .locals 3

    .line 1210
    invoke-static {p1}, Lgj;->z(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 1213
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1214
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 1215
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 1216
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 374
    invoke-super {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;->a()V

    const/4 v0, 0x0

    .line 376
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    .line 377
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Lhi;

    return-void
.end method

.method public a(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_1

    .line 838
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d:F

    .line 841
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 842
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h()V

    :cond_0
    return-void

    .line 836
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ratio must be a float value between 0 and 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(I)V
    .locals 1

    const/4 v0, 0x0

    .line 763
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(IZ)V

    return-void
.end method

.method public final a(IZ)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 779
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->u:Z

    if-nez p1, :cond_1

    .line 780
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->u:Z

    goto :goto_1

    .line 783
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->u:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t:I

    if-eq v2, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 784
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->u:Z

    .line 785
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t:I

    :goto_1
    if-eqz v0, :cond_3

    .line 791
    invoke-direct {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f(Z)V

    :cond_3
    return-void
.end method

.method a(Landroid/view/View;I)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 1300
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    if-ne p2, v1, :cond_2

    .line 1302
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:I

    .line 1303
    iget-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:I

    if-gt v1, v2, :cond_1

    move p2, v0

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-ne p2, v0, :cond_3

    .line 1309
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b()I

    move-result v0

    goto :goto_0

    .line 1310
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    if-ne p2, v0, :cond_4

    .line 1311
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:I

    :goto_0
    const/4 v1, 0x0

    .line 1315
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/view/View;IIZ)V

    return-void

    .line 1313
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state argument: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Landroid/view/View;IIZ)V
    .locals 2

    .line 1319
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Lhi;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    .line 1322
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p4

    invoke-virtual {v0, p4, p3}, Lhi;->a(II)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    .line 1323
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p4

    invoke-virtual {v0, p1, p4, p3}, Lhi;->a(Landroid/view/View;II)Z

    move-result p3

    if-eqz p3, :cond_1

    :goto_0
    move p3, v1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    if-eqz p3, :cond_4

    const/4 p3, 0x2

    .line 1325
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e(I)V

    .line 1327
    invoke-direct {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h(I)V

    .line 1328
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;

    if-nez p3, :cond_2

    .line 1330
    new-instance p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;

    invoke-direct {p3, p0, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V

    iput-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;

    .line 1333
    :cond_2
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;

    invoke-static {p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->a(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 1334
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;

    iput p2, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->a:I

    .line 1335
    invoke-static {p1, p3}, Lgj;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1336
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;

    invoke-static {p1, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->a(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;Z)Z

    goto :goto_2

    .line 1339
    :cond_3
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;

    iput p2, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->a:I

    goto :goto_2

    .line 1342
    :cond_4
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e(I)V

    :goto_2
    return-void
.end method

.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;)V
    .locals 0

    .line 365
    invoke-super {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;)V

    const/4 p1, 0x0

    .line 368
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    .line 369
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Lhi;

    return-void
.end method

.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .line 351
    check-cast p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;

    .line 352
    invoke-virtual {p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 354
    invoke-direct {p0, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;)V

    .line 356
    iget p1, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->a:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    iget p1, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->a:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 359
    :cond_0
    iget p1, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->a:I

    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x4

    .line 357
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    :goto_1
    return-void
.end method

.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 614
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b()I

    move-result p4

    const/4 v0, 0x3

    if-ne p1, p4, :cond_0

    .line 615
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e(I)V

    return-void

    .line 618
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_e

    .line 619
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne p3, p1, :cond_e

    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->K:Z

    if-nez p1, :cond_1

    goto/16 :goto_3

    .line 625
    :cond_1
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:I

    const/4 p3, 0x4

    const/4 p4, 0x6

    if-lez p1, :cond_4

    .line 626
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:Z

    if-eqz p1, :cond_2

    .line 627
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:I

    goto/16 :goto_2

    .line 630
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    .line 631
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:I

    if-le p1, p3, :cond_3

    move p1, p3

    goto/16 :goto_1

    .line 635
    :cond_3
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:I

    goto/16 :goto_2

    .line 639
    :cond_4
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:Z

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k()F

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/view/View;F)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 640
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:I

    const/4 v0, 0x5

    goto/16 :goto_2

    .line 642
    :cond_5
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:I

    if-nez p1, :cond_b

    .line 643
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    .line 644
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:Z

    if-eqz v1, :cond_7

    .line 645
    iget p4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:I

    sub-int p4, p1, p4

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge p4, p1, :cond_6

    .line 646
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:I

    goto :goto_2

    .line 649
    :cond_6
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    goto :goto_0

    .line 653
    :cond_7
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:I

    if-ge p1, v1, :cond_9

    .line 654
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    sub-int p3, p1, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-ge p1, p3, :cond_8

    .line 655
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:I

    goto :goto_2

    .line 658
    :cond_8
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:I

    goto :goto_1

    :cond_9
    sub-int v0, p1, v1

    .line 662
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge v0, p1, :cond_a

    .line 663
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:I

    goto :goto_1

    .line 666
    :cond_a
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    goto :goto_0

    .line 672
    :cond_b
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:Z

    if-eqz p1, :cond_c

    .line 673
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    :goto_0
    move v0, p3

    goto :goto_2

    .line 677
    :cond_c
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    .line 678
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge v0, p1, :cond_d

    .line 679
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:I

    :goto_1
    move v0, p4

    goto :goto_2

    .line 682
    :cond_d
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    goto :goto_0

    :goto_2
    const/4 p3, 0x0

    .line 687
    invoke-virtual {p0, p2, v0, p1, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/view/View;IIZ)V

    .line 688
    iput-boolean p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->K:Z

    :cond_e
    :goto_3
    return-void
.end method

.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "IIIII[I)V"
        }
    .end annotation

    return-void
.end method

.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[II)V"
        }
    .end annotation

    const/4 p1, 0x1

    if-ne p7, p1, :cond_0

    return-void

    .line 564
    :cond_0
    iget-object p4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:Ljava/lang/ref/WeakReference;

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_0
    if-eq p3, p4, :cond_2

    return-void

    .line 568
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p4

    sub-int p7, p4, p5

    if-lez p5, :cond_5

    .line 571
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b()I

    move-result p3

    if-ge p7, p3, :cond_3

    .line 572
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b()I

    move-result p3

    sub-int/2addr p4, p3

    aput p4, p6, p1

    .line 573
    aget p3, p6, p1

    neg-int p3, p3

    invoke-static {p2, p3}, Lgj;->g(Landroid/view/View;I)V

    const/4 p3, 0x3

    .line 574
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e(I)V

    goto :goto_2

    .line 576
    :cond_3
    iget-boolean p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Z

    if-nez p3, :cond_4

    return-void

    .line 581
    :cond_4
    aput p5, p6, p1

    neg-int p3, p5

    .line 582
    invoke-static {p2, p3}, Lgj;->g(Landroid/view/View;I)V

    .line 583
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e(I)V

    goto :goto_2

    :cond_5
    if-gez p5, :cond_9

    const/4 v0, -0x1

    .line 586
    invoke-virtual {p3, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p3

    if-nez p3, :cond_9

    .line 587
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    if-le p7, p3, :cond_7

    iget-boolean p7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:Z

    if-eqz p7, :cond_6

    goto :goto_1

    :cond_6
    sub-int/2addr p4, p3

    .line 597
    aput p4, p6, p1

    .line 598
    aget p3, p6, p1

    neg-int p3, p3

    invoke-static {p2, p3}, Lgj;->g(Landroid/view/View;I)V

    const/4 p3, 0x4

    .line 599
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e(I)V

    goto :goto_2

    .line 588
    :cond_7
    :goto_1
    iget-boolean p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Z

    if-nez p3, :cond_8

    return-void

    .line 593
    :cond_8
    aput p5, p6, p1

    neg-int p3, p5

    .line 594
    invoke-static {p2, p3}, Lgj;->g(Landroid/view/View;I)V

    .line 595
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e(I)V

    .line 603
    :cond_9
    :goto_2
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f(I)V

    .line 604
    iput p5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:I

    .line 605
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->K:Z

    return-void
.end method

.method public a(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;)V
    .locals 1

    .line 1001
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 738
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 741
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:Z

    .line 745
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    .line 746
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g()V

    .line 749
    :cond_1
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    const/4 p1, 0x3

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e(I)V

    .line 751
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l()V

    return-void
.end method

.method a(Landroid/view/View;F)Z
    .locals 4

    .line 1195
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1198
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    return v3

    .line 1202
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f()I

    move-result v0

    .line 1203
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr p2, v2

    add-float/2addr p1, p2

    .line 1204
    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    int-to-float p2, v0

    div-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    return v1
.end method

.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 383
    invoke-static {p1}, Lgj;->s(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2}, Lgj;->s(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    invoke-virtual {p2, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-nez v0, :cond_6

    .line 390
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Laiv$d;->design_bottom_sheet_peek_height_min:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->v:I

    .line 391
    invoke-direct {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c(Landroid/view/View;)V

    .line 392
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    .line 395
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:Lakk;

    if-eqz v0, :cond_1

    .line 396
    invoke-static {p2, v0}, Lgj;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:Lakk;

    if-eqz v0, :cond_5

    .line 401
    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v5, v4, v5

    if-nez v5, :cond_2

    .line 402
    invoke-static {p2}, Lgj;->o(Landroid/view/View;)F

    move-result v4

    .line 401
    :cond_2
    invoke-virtual {v0, v4}, Lakk;->r(F)V

    .line 404
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    if-ne v0, v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C:Z

    .line 405
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:Lakk;

    iget-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v0, v4}, Lakk;->p(F)V

    .line 407
    :cond_5
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l()V

    .line 408
    invoke-static {p2}, Lgj;->f(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_6

    .line 410
    invoke-static {p2, v1}, Lgj;->d(Landroid/view/View;I)V

    .line 413
    :cond_6
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Lhi;

    if-nez v0, :cond_7

    .line 414
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->R:Lhi$a;

    invoke-static {p1, v0}, Lhi;->a(Landroid/view/ViewGroup;Lhi$a;)Lhi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Lhi;

    .line 417
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 419
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/View;I)V

    .line 421
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result p3

    iput p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->j:I

    .line 422
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:I

    .line 423
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->L:I

    .line 424
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:I

    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->L:I

    sub-int/2addr p1, p3

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:I

    .line 425
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h()V

    .line 426
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g()V

    .line 428
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    if-ne p1, v2, :cond_8

    .line 429
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b()I

    move-result p1

    invoke-static {p2, p1}, Lgj;->g(Landroid/view/View;I)V

    goto :goto_2

    :cond_8
    const/4 p3, 0x6

    if-ne p1, p3, :cond_9

    .line 431
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:I

    invoke-static {p2, p1}, Lgj;->g(Landroid/view/View;I)V

    goto :goto_2

    .line 432
    :cond_9
    iget-boolean p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:Z

    if-eqz p3, :cond_a

    const/4 p3, 0x5

    if-ne p1, p3, :cond_a

    .line 433
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:I

    invoke-static {p2, p1}, Lgj;->g(Landroid/view/View;I)V

    goto :goto_2

    .line 434
    :cond_a
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    const/4 p3, 0x4

    if-ne p1, p3, :cond_b

    .line 435
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    invoke-static {p2, p1}, Lgj;->g(Landroid/view/View;I)V

    goto :goto_2

    :cond_b
    if-eq p1, v1, :cond_c

    const/4 p3, 0x2

    if-ne p1, p3, :cond_d

    .line 437
    :cond_c
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Lgj;->g(Landroid/view/View;I)V

    .line 440
    :cond_d
    :goto_2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:Ljava/lang/ref/WeakReference;

    return v1
.end method

.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 447
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 451
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 454
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i()V

    .line 456
    :cond_1
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->N:Landroid/view/VelocityTracker;

    if-nez v3, :cond_2

    .line 457
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->N:Landroid/view/VelocityTracker;

    .line 459
    :cond_2
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->N:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x2

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    const/4 p2, 0x3

    if-eq v0, p2, :cond_3

    goto :goto_2

    .line 463
    :cond_3
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->o:Z

    .line 464
    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:I

    .line 466
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I:Z

    if-eqz p2, :cond_8

    .line 467
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I:Z

    return v1

    .line 472
    :cond_4
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    .line 473
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->O:I

    .line 476
    iget v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    if-eq v7, v5, :cond_6

    .line 477
    iget-object v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    goto :goto_0

    :cond_5
    move-object v7, v3

    :goto_0
    if-eqz v7, :cond_6

    .line 478
    iget v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->O:I

    invoke-virtual {p1, v7, v6, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 479
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    invoke-virtual {p3, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:I

    .line 480
    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->o:Z

    .line 483
    :cond_6
    iget v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:I

    if-ne v7, v4, :cond_7

    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->O:I

    .line 485
    invoke-virtual {p1, p2, v6, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result p2

    if-nez p2, :cond_7

    move p2, v2

    goto :goto_1

    :cond_7
    move p2, v1

    :goto_1
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I:Z

    .line 489
    :cond_8
    :goto_2
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I:Z

    if-nez p2, :cond_9

    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Lhi;

    if-eqz p2, :cond_9

    .line 491
    invoke-virtual {p2, p3}, Lhi;->a(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_9

    return v2

    .line 497
    :cond_9
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/view/View;

    :cond_a
    if-ne v0, v5, :cond_b

    if-eqz v3, :cond_b

    .line 498
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I:Z

    if-nez p2, :cond_b

    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    if-eq p2, v2, :cond_b

    .line 502
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v3, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Lhi;

    if-eqz p1, :cond_b

    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->O:I

    int-to-float p1, p1

    .line 504
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Lhi;

    invoke-virtual {p2}, Lhi;->e()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_b

    move v1, v2

    :cond_b
    return v1

    .line 448
    :cond_c
    :goto_3
    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I:Z

    return v1
.end method

.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    .line 712
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 713
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p3, v0, :cond_1

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 715
    invoke-super/range {p0 .. p5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    const/4 p1, 0x0

    .line 546
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:I

    .line 547
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->K:Z

    and-int/lit8 p2, p5, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public b()I
    .locals 1

    .line 882
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:I

    :goto_0
    return v0
.end method

.method public b(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 871
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:I

    return-void

    .line 869
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "offset must be greater than or equal to 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;)V
    .locals 1

    .line 1012
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 892
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:Z

    if-eq v0, p1, :cond_1

    .line 893
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:Z

    if-nez p1, :cond_0

    .line 894
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/4 p1, 0x4

    .line 896
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d(I)V

    .line 898
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l()V

    :cond_1
    return-void
.end method

.method public b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 510
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 513
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    .line 514
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    return v1

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Lhi;

    if-eqz v0, :cond_2

    .line 518
    invoke-virtual {v0, p3}, Lhi;->b(Landroid/view/MotionEvent;)V

    :cond_2
    if-nez p1, :cond_3

    .line 522
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i()V

    .line 524
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->N:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    .line 525
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->N:Landroid/view/VelocityTracker;

    .line 527
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->N:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 530
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Lhi;

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I:Z

    if-nez p1, :cond_5

    .line 531
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->O:I

    int-to-float p1, p1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Lhi;

    invoke-virtual {v0}, Lhi;->e()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    .line 532
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Lhi;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lhi;->a(Landroid/view/View;I)V

    .line 535
    :cond_5
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I:Z

    xor-int/2addr p1, v1

    return p1
.end method

.method public c(I)V
    .locals 0

    .line 960
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->p:I

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 921
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:Z

    return-void
.end method

.method public c()Z
    .locals 1

    .line 909
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:Z

    return v0
.end method

.method public d(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .line 345
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;

    invoke-super {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;->d(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;-><init>(Landroid/os/Parcelable;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    return-object v0
.end method

.method public d(I)V
    .locals 1

    .line 1023
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    if-ne p1, v0, :cond_0

    return-void

    .line 1026
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    .line 1028
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 1032
    :cond_1
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    :cond_2
    return-void

    .line 1036
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g(I)V

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 944
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Z

    return-void
.end method

.method public d()Z
    .locals 1

    .line 1056
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A:Z

    return v0
.end method

.method public e()I
    .locals 1

    .line 1088
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    return v0
.end method

.method e(I)V
    .locals 3

    .line 1092
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1095
    :cond_0
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    .line 1097
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    return-void

    .line 1101
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne p1, v1, :cond_3

    const/4 v1, 0x1

    .line 1107
    invoke-direct {p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g(Z)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x6

    if-eq p1, v1, :cond_4

    const/4 v1, 0x5

    if-eq p1, v1, :cond_4

    const/4 v1, 0x4

    if-ne p1, v1, :cond_5

    .line 1109
    :cond_4
    invoke-direct {p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g(Z)V

    .line 1112
    :cond_5
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h(I)V

    .line 1113
    :goto_1
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_6

    .line 1114
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;->a(Landroid/view/View;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1116
    :cond_6
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l()V

    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 1049
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A:Z

    return-void
.end method

.method f(I)V
    .locals 3

    .line 1496
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1497
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1498
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    if-gt p1, v1, :cond_1

    .line 1499
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b()I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    sub-int p1, v1, p1

    int-to-float p1, p1

    .line 1501
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    goto :goto_1

    .line 1499
    :cond_1
    :goto_0
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    sub-int p1, v1, p1

    int-to-float p1, p1

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:I

    sub-int/2addr v2, v1

    int-to-float v1, v2

    :goto_1
    div-float/2addr p1, v1

    const/4 v1, 0x0

    .line 1502
    :goto_2
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1503
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;

    invoke-virtual {v2, v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;->a(Landroid/view/View;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method
