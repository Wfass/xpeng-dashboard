.class public Lavl;
.super Lavk;
.source "MineNetradioItemLayoutBindingImpl.java"


# static fields
.field private static final d:Landroidx/databinding/ViewDataBinding$b;

.field private static final e:Landroid/util/SparseIntArray;


# instance fields
.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/e;Landroid/view/View;)V
    .locals 3

    .line 25
    sget-object v0, Lavl;->d:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lavl;->e:Landroid/util/SparseIntArray;

    const/4 v2, 0x1

    invoke-static {p1, p2, v2, v0, v1}, Lavl;->a(Landroidx/databinding/e;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lavl;-><init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    .line 28
    aget-object p3, p3, v0

    check-cast p3, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-direct {p0, p1, p2, v0, p3}, Lavk;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;)V

    const-wide/16 v0, -0x1

    .line 80
    iput-wide v0, p0, Lavl;->f:J

    .line 31
    iget-object p1, p0, Lavl;->c:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->setTag(Ljava/lang/Object;)V

    .line 32
    invoke-virtual {p0, p2}, Lavl;->a(Landroid/view/View;)V

    .line 34
    invoke-virtual {p0}, Lavl;->d()V

    return-void
.end method


# virtual methods
.method protected c()V
    .locals 2

    .line 71
    monitor-enter p0

    .line 72
    :try_start_0
    iget-wide v0, p0, Lavl;->f:J

    const-wide/16 v0, 0x0

    .line 73
    iput-wide v0, p0, Lavl;->f:J

    .line 74
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 2

    .line 39
    monitor-enter p0

    const-wide/16 v0, 0x1

    .line 40
    :try_start_0
    iput-wide v0, p0, Lavl;->f:J

    .line 41
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-virtual {p0}, Lavl;->g()V

    return-void

    :catchall_0
    move-exception v0

    .line 41
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public e()Z
    .locals 4

    .line 47
    monitor-enter p0

    .line 48
    :try_start_0
    iget-wide v0, p0, Lavl;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 49
    monitor-exit p0

    return v0

    .line 51
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
