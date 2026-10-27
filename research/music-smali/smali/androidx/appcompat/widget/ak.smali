.class public final Landroidx/appcompat/widget/ak;
.super Ljava/lang/Object;
.source "ResourceManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ak$d;,
        Landroidx/appcompat/widget/ak$a;,
        Landroidx/appcompat/widget/ak$b;,
        Landroidx/appcompat/widget/ak$g;,
        Landroidx/appcompat/widget/ak$c;,
        Landroidx/appcompat/widget/ak$e;,
        Landroidx/appcompat/widget/ak$f;
    }
.end annotation


# static fields
.field private static final a:Landroid/graphics/PorterDuff$Mode;

.field private static b:Landroidx/appcompat/widget/ak;

.field private static final c:Landroidx/appcompat/widget/ak$c;


# instance fields
.field private d:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Landroidx/collection/f<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Landroidx/collection/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/e<",
            "Ljava/lang/String;",
            "Landroidx/appcompat/widget/ak$e;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroidx/collection/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Landroidx/collection/c<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private h:Landroid/util/TypedValue;

.field private i:Z

.field private j:Landroidx/appcompat/widget/ak$f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 85
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroidx/appcompat/widget/ak;->a:Landroid/graphics/PorterDuff$Mode;

    .line 115
    new-instance v0, Landroidx/appcompat/widget/ak$c;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ak$c;-><init>(I)V

    sput-object v0, Landroidx/appcompat/widget/ak;->c:Landroidx/appcompat/widget/ak$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/widget/ak;->g:Ljava/util/WeakHashMap;

    return-void
.end method

.method private static a(Landroid/util/TypedValue;)J
    .locals 4

    .line 170
    iget v0, p0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget p0, p0, Landroid/util/TypedValue;->data:I

    int-to-long v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static declared-synchronized a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 3

    const-class v0, Landroidx/appcompat/widget/ak;

    monitor-enter v0

    .line 473
    :try_start_0
    sget-object v1, Landroidx/appcompat/widget/ak;->c:Landroidx/appcompat/widget/ak$c;

    invoke-virtual {v1, p0, p1}, Landroidx/appcompat/widget/ak$c;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 477
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 478
    sget-object v2, Landroidx/appcompat/widget/ak;->c:Landroidx/appcompat/widget/ak$c;

    invoke-virtual {v2, p0, p1, v1}, Landroidx/appcompat/widget/ak$c;->a(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 466
    invoke-virtual {p0, p2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    .line 467
    invoke-static {p0, p1}, Landroidx/appcompat/widget/ak;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 203
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/ak;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 206
    invoke-static {p4}, Landroidx/appcompat/widget/ad;->c(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 207
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 209
    :cond_0
    invoke-static {p4}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 210
    invoke-static {p4, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 213
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ak;->a(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 215
    invoke-static {p4, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 217
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ak;->j:Landroidx/appcompat/widget/ak$f;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2, p4}, Landroidx/appcompat/widget/ak$f;->a(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 221
    :cond_2
    invoke-virtual {p0, p1, p2, p4}, Landroidx/appcompat/widget/ak;->a(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz p3, :cond_3

    const/4 p4, 0x0

    :cond_3
    :goto_0
    return-object p4
.end method

.method private declared-synchronized a(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .locals 3

    monitor-enter p0

    .line 318
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/ak;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 320
    monitor-exit p0

    return-object v1

    .line 323
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2, p3}, Landroidx/collection/c;->a(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    .line 326
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v2, :cond_1

    .line 328
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 331
    :cond_1
    :try_start_2
    invoke-virtual {v0, p2, p3}, Landroidx/collection/c;->b(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 334
    :cond_2
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized a()Landroidx/appcompat/widget/ak;
    .locals 2

    const-class v0, Landroidx/appcompat/widget/ak;

    monitor-enter v0

    .line 96
    :try_start_0
    sget-object v1, Landroidx/appcompat/widget/ak;->b:Landroidx/appcompat/widget/ak;

    if-nez v1, :cond_0

    .line 97
    new-instance v1, Landroidx/appcompat/widget/ak;

    invoke-direct {v1}, Landroidx/appcompat/widget/ak;-><init>()V

    sput-object v1, Landroidx/appcompat/widget/ak;->b:Landroidx/appcompat/widget/ak;

    .line 98
    sget-object v1, Landroidx/appcompat/widget/ak;->b:Landroidx/appcompat/widget/ak;

    invoke-static {v1}, Landroidx/appcompat/widget/ak;->a(Landroidx/appcompat/widget/ak;)V

    .line 100
    :cond_0
    sget-object v1, Landroidx/appcompat/widget/ak;->b:Landroidx/appcompat/widget/ak;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    .locals 2

    .line 405
    iget-object v0, p0, Landroidx/appcompat/widget/ak;->d:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    .line 406
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/ak;->d:Ljava/util/WeakHashMap;

    .line 408
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ak;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/f;

    if-nez v0, :cond_1

    .line 410
    new-instance v0, Landroidx/collection/f;

    invoke-direct {v0}, Landroidx/collection/f;-><init>()V

    .line 411
    iget-object v1, p0, Landroidx/appcompat/widget/ak;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    :cond_1
    invoke-virtual {v0, p2, p3}, Landroidx/collection/f;->c(ILjava/lang/Object;)V

    return-void
.end method

.method static a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/ar;[I)V
    .locals 2

    .line 439
    invoke-static {p0}, Landroidx/appcompat/widget/ad;->c(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p0, :cond_0

    const-string p0, "ResourceManagerInternal"

    const-string p1, "Mutated drawable is not the same instance as the input."

    .line 441
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 445
    :cond_0
    iget-boolean v0, p1, Landroidx/appcompat/widget/ar;->d:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Landroidx/appcompat/widget/ar;->c:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 451
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_3

    .line 447
    :cond_2
    :goto_0
    iget-boolean v0, p1, Landroidx/appcompat/widget/ar;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroidx/appcompat/widget/ar;->a:Landroid/content/res/ColorStateList;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 448
    :goto_1
    iget-boolean v1, p1, Landroidx/appcompat/widget/ar;->c:Z

    if-eqz v1, :cond_4

    iget-object p1, p1, Landroidx/appcompat/widget/ar;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2

    :cond_4
    sget-object p1, Landroidx/appcompat/widget/ak;->a:Landroid/graphics/PorterDuff$Mode;

    .line 446
    :goto_2
    invoke-static {v0, p1, p2}, Landroidx/appcompat/widget/ak;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 454
    :goto_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-gt p1, p2, :cond_5

    .line 457
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_5
    return-void
.end method

.method private static a(Landroidx/appcompat/widget/ak;)V
    .locals 2

    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 108
    new-instance v0, Landroidx/appcompat/widget/ak$g;

    invoke-direct {v0}, Landroidx/appcompat/widget/ak$g;-><init>()V

    const-string v1, "vector"

    invoke-direct {p0, v1, v0}, Landroidx/appcompat/widget/ak;->a(Ljava/lang/String;Landroidx/appcompat/widget/ak$e;)V

    .line 109
    new-instance v0, Landroidx/appcompat/widget/ak$b;

    invoke-direct {v0}, Landroidx/appcompat/widget/ak$b;-><init>()V

    const-string v1, "animated-vector"

    invoke-direct {p0, v1, v0}, Landroidx/appcompat/widget/ak;->a(Ljava/lang/String;Landroidx/appcompat/widget/ak$e;)V

    .line 110
    new-instance v0, Landroidx/appcompat/widget/ak$a;

    invoke-direct {v0}, Landroidx/appcompat/widget/ak$a;-><init>()V

    const-string v1, "animated-selector"

    invoke-direct {p0, v1, v0}, Landroidx/appcompat/widget/ak;->a(Ljava/lang/String;Landroidx/appcompat/widget/ak$e;)V

    .line 111
    new-instance v0, Landroidx/appcompat/widget/ak$d;

    invoke-direct {v0}, Landroidx/appcompat/widget/ak$d;-><init>()V

    const-string v1, "drawable"

    invoke-direct {p0, v1, v0}, Landroidx/appcompat/widget/ak;->a(Ljava/lang/String;Landroidx/appcompat/widget/ak$e;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Landroidx/appcompat/widget/ak$e;)V
    .locals 1

    .line 370
    iget-object v0, p0, Landroidx/appcompat/widget/ak;->e:Landroidx/collection/e;

    if-nez v0, :cond_0

    .line 371
    new-instance v0, Landroidx/collection/e;

    invoke-direct {v0}, Landroidx/collection/e;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/ak;->e:Landroidx/collection/e;

    .line 373
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ak;->e:Landroidx/collection/e;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    .locals 2

    monitor-enter p0

    .line 339
    :try_start_0
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 341
    iget-object v0, p0, Landroidx/appcompat/widget/ak;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/c;

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Landroidx/collection/c;

    invoke-direct {v0}, Landroidx/collection/c;-><init>()V

    .line 344
    iget-object v1, p0, Landroidx/appcompat/widget/ak;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    :cond_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, p3, p1}, Landroidx/collection/c;->b(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 347
    monitor-exit p0

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 349
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static a(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 501
    instance-of v0, p0, Lio;

    if-nez v0, :cond_1

    .line 502
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.graphics.drawable.VectorDrawable"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    .line 485
    iget-boolean v0, p0, Landroidx/appcompat/widget/ak;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 491
    iput-boolean v0, p0, Landroidx/appcompat/widget/ak;->i:Z

    .line 492
    sget v0, Ll$a;->abc_vector_test:I

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/ak;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 493
    invoke-static {p1}, Landroidx/appcompat/widget/ak;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 494
    iput-boolean p1, p0, Landroidx/appcompat/widget/ak;->i:Z

    .line 495
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 175
    iget-object v0, p0, Landroidx/appcompat/widget/ak;->h:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/ak;->h:Landroid/util/TypedValue;

    .line 178
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ak;->h:Landroid/util/TypedValue;

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 180
    invoke-static {v0}, Landroidx/appcompat/widget/ak;->a(Landroid/util/TypedValue;)J

    move-result-wide v1

    .line 182
    invoke-direct {p0, p1, v1, v2}, Landroidx/appcompat/widget/ak;->a(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    .line 189
    :cond_1
    iget-object v3, p0, Landroidx/appcompat/widget/ak;->j:Landroidx/appcompat/widget/ak$f;

    if-nez v3, :cond_2

    const/4 p2, 0x0

    goto :goto_0

    .line 190
    :cond_2
    invoke-interface {v3, p0, p1, p2}, Landroidx/appcompat/widget/ak$f;->a(Landroidx/appcompat/widget/ak;Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_3

    .line 193
    iget v0, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 195
    invoke-direct {p0, p1, v1, v2, p2}, Landroidx/appcompat/widget/ak;->a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    :cond_3
    return-object p2
.end method

.method private d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 10

    .line 232
    iget-object v0, p0, Landroidx/appcompat/widget/ak;->e:Landroidx/collection/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/collection/e;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 233
    iget-object v0, p0, Landroidx/appcompat/widget/ak;->f:Landroidx/collection/f;

    const-string v2, "appcompat_skip_skip"

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {v0, p2}, Landroidx/collection/f;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 235
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_2

    iget-object v3, p0, Landroidx/appcompat/widget/ak;->e:Landroidx/collection/e;

    .line 236
    invoke-virtual {v3, v0}, Landroidx/collection/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    return-object v1

    .line 247
    :cond_1
    new-instance v0, Landroidx/collection/f;

    invoke-direct {v0}, Landroidx/collection/f;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/ak;->f:Landroidx/collection/f;

    .line 250
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/ak;->h:Landroid/util/TypedValue;

    if-nez v0, :cond_3

    .line 251
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/ak;->h:Landroid/util/TypedValue;

    .line 253
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/widget/ak;->h:Landroid/util/TypedValue;

    .line 254
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v3, 0x1

    .line 255
    invoke-virtual {v1, p2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 257
    invoke-static {v0}, Landroidx/appcompat/widget/ak;->a(Landroid/util/TypedValue;)J

    move-result-wide v4

    .line 259
    invoke-direct {p0, p1, v4, v5}, Landroidx/appcompat/widget/ak;->a(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_4

    return-object v6

    .line 269
    :cond_4
    iget-object v7, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v7, :cond_8

    iget-object v7, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 272
    :try_start_0
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 273
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    .line 275
    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_5

    if-eq v8, v3, :cond_5

    goto :goto_0

    :cond_5
    if-ne v8, v9, :cond_7

    .line 283
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 285
    iget-object v8, p0, Landroidx/appcompat/widget/ak;->f:Landroidx/collection/f;

    invoke-virtual {v8, p2, v3}, Landroidx/collection/f;->c(ILjava/lang/Object;)V

    .line 288
    iget-object v8, p0, Landroidx/appcompat/widget/ak;->e:Landroidx/collection/e;

    invoke-virtual {v8, v3}, Landroidx/collection/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/ak$e;

    if-eqz v3, :cond_6

    .line 291
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 290
    invoke-interface {v3, p1, v1, v7, v8}, Landroidx/appcompat/widget/ak$e;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v6, v1

    :cond_6
    if-eqz v6, :cond_8

    .line 295
    iget v0, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 296
    invoke-direct {p0, p1, v4, v5, v6}, Landroidx/appcompat/widget/ak;->a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    goto :goto_1

    .line 280
    :cond_7
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "No start tag found"

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "ResourceManagerInternal"

    const-string v1, "Exception while inflating drawable"

    .line 302
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_1
    if-nez v6, :cond_9

    .line 308
    iget-object p1, p0, Landroidx/appcompat/widget/ak;->f:Landroidx/collection/f;

    invoke-virtual {p1, p2, v2}, Landroidx/collection/f;->c(ILjava/lang/Object;)V

    :cond_9
    return-object v6

    :cond_a
    return-object v1
.end method

.method private e(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2

    .line 396
    iget-object v0, p0, Landroidx/appcompat/widget/ak;->d:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/collection/f;

    if-eqz p1, :cond_0

    .line 398
    invoke-virtual {p1, p2}, Landroidx/collection/f;->a(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/content/res/ColorStateList;

    :cond_0
    return-object v1
.end method


# virtual methods
.method a(I)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 377
    iget-object v0, p0, Landroidx/appcompat/widget/ak;->j:Landroidx/appcompat/widget/ak$f;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/ak$f;->a(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public declared-synchronized a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 135
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/widget/ak;->a(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized a(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    .line 140
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ak;->b(Landroid/content/Context;)V

    .line 142
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/ak;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 144
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/ak;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 147
    invoke-static {p1, p2}, Ldj;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 152
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/ak;->a(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    .line 156
    invoke-static {v0}, Landroidx/appcompat/widget/ad;->b(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized a(Landroid/content/Context;Landroidx/appcompat/widget/ay;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    .line 354
    :try_start_0
    invoke-direct {p0, p1, p3}, Landroidx/appcompat/widget/ak;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 356
    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/ay;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 p2, 0x0

    .line 359
    invoke-direct {p0, p1, p3, p2, v0}, Landroidx/appcompat/widget/ak;->a(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 361
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/ak;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/collection/c;

    if-eqz p1, :cond_0

    .line 165
    invoke-virtual {p1}, Landroidx/collection/c;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroidx/appcompat/widget/ak$f;)V
    .locals 0

    monitor-enter p0

    .line 131
    :try_start_0
    iput-object p1, p0, Landroidx/appcompat/widget/ak;->j:Landroidx/appcompat/widget/ak$f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 366
    iget-object v0, p0, Landroidx/appcompat/widget/ak;->j:Landroidx/appcompat/widget/ak$f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Landroidx/appcompat/widget/ak$f;->b(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method declared-synchronized b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 1

    monitor-enter p0

    .line 382
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/ak;->e(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 386
    iget-object v0, p0, Landroidx/appcompat/widget/ak;->j:Landroidx/appcompat/widget/ak$f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ak;->j:Landroidx/appcompat/widget/ak$f;

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/widget/ak$f;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 389
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/ak;->a(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
