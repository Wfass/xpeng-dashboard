.class public final Landroidx/appcompat/widget/j;
.super Ljava/lang/Object;
.source "AppCompatDrawableManager.java"


# static fields
.field private static final a:Landroid/graphics/PorterDuff$Mode;

.field private static b:Landroidx/appcompat/widget/j;


# instance fields
.field private c:Landroidx/appcompat/widget/ak;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroidx/appcompat/widget/j;->a:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    const-class v0, Landroidx/appcompat/widget/j;

    monitor-enter v0

    .line 507
    :try_start_0
    invoke-static {p0, p1}, Landroidx/appcompat/widget/ak;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a()V
    .locals 3

    const-class v0, Landroidx/appcompat/widget/j;

    monitor-enter v0

    .line 59
    :try_start_0
    sget-object v1, Landroidx/appcompat/widget/j;->b:Landroidx/appcompat/widget/j;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Landroidx/appcompat/widget/j;

    invoke-direct {v1}, Landroidx/appcompat/widget/j;-><init>()V

    sput-object v1, Landroidx/appcompat/widget/j;->b:Landroidx/appcompat/widget/j;

    .line 61
    sget-object v1, Landroidx/appcompat/widget/j;->b:Landroidx/appcompat/widget/j;

    invoke-static {}, Landroidx/appcompat/widget/ak;->a()Landroidx/appcompat/widget/ak;

    move-result-object v2

    iput-object v2, v1, Landroidx/appcompat/widget/j;->c:Landroidx/appcompat/widget/ak;

    .line 62
    sget-object v1, Landroidx/appcompat/widget/j;->b:Landroidx/appcompat/widget/j;

    iget-object v1, v1, Landroidx/appcompat/widget/j;->c:Landroidx/appcompat/widget/ak;

    new-instance v2, Landroidx/appcompat/widget/j$1;

    invoke-direct {v2}, Landroidx/appcompat/widget/j$1;-><init>()V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ak;->a(Landroidx/appcompat/widget/ak$f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/ar;[I)V
    .locals 0

    .line 502
    invoke-static {p0, p1, p2}, Landroidx/appcompat/widget/ak;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/ar;[I)V

    return-void
.end method

.method public static declared-synchronized b()Landroidx/appcompat/widget/j;
    .locals 2

    const-class v0, Landroidx/appcompat/widget/j;

    monitor-enter v0

    .line 466
    :try_start_0
    sget-object v1, Landroidx/appcompat/widget/j;->b:Landroidx/appcompat/widget/j;

    if-nez v1, :cond_0

    .line 467
    invoke-static {}, Landroidx/appcompat/widget/j;->a()V

    .line 469
    :cond_0
    sget-object v1, Landroidx/appcompat/widget/j;->b:Landroidx/appcompat/widget/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic c()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 51
    sget-object v0, Landroidx/appcompat/widget/j;->a:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    .line 475
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/j;->c:Landroidx/appcompat/widget/ak;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/ak;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

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

    .line 480
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/j;->c:Landroidx/appcompat/widget/ak;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/widget/ak;->a(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

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

.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 484
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/j;->c:Landroidx/appcompat/widget/ak;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ak;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 1

    monitor-enter p0

    .line 498
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/j;->c:Landroidx/appcompat/widget/ak;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/ak;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

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
