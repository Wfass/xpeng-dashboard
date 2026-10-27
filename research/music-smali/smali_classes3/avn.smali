.class public Lavn;
.super Lavm;
.source "MineProgramItemLayoutBindingImpl.java"


# static fields
.field private static final e:Landroidx/databinding/ViewDataBinding$b;

.field private static final f:Landroid/util/SparseIntArray;


# instance fields
.field private final g:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lavn;->f:Landroid/util/SparseIntArray;

    .line 17
    sget-object v0, Lavn;->f:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->album_item_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lavn;->f:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->top_right_label:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/e;Landroid/view/View;)V
    .locals 3

    .line 29
    sget-object v0, Lavn;->e:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lavn;->f:Landroid/util/SparseIntArray;

    const/4 v2, 0x3

    invoke-static {p1, p2, v2, v0, v1}, Lavn;->a(Landroidx/databinding/e;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lavn;-><init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x1

    .line 32
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lavm;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;Lcom/xiaopeng/xui/widget/XImageView;)V

    const-wide/16 v0, -0x1

    .line 86
    iput-wide v0, p0, Lavn;->h:J

    const/4 p1, 0x0

    .line 36
    aget-object p1, p3, p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object p1, p0, Lavn;->g:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 37
    iget-object p1, p0, Lavn;->g:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p0, p2}, Lavn;->a(Landroid/view/View;)V

    .line 40
    invoke-virtual {p0}, Lavn;->d()V

    return-void
.end method


# virtual methods
.method protected c()V
    .locals 2

    .line 77
    monitor-enter p0

    .line 78
    :try_start_0
    iget-wide v0, p0, Lavn;->h:J

    const-wide/16 v0, 0x0

    .line 79
    iput-wide v0, p0, Lavn;->h:J

    .line 80
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

    .line 45
    monitor-enter p0

    const-wide/16 v0, 0x1

    .line 46
    :try_start_0
    iput-wide v0, p0, Lavn;->h:J

    .line 47
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-virtual {p0}, Lavn;->g()V

    return-void

    :catchall_0
    move-exception v0

    .line 47
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public e()Z
    .locals 4

    .line 53
    monitor-enter p0

    .line 54
    :try_start_0
    iget-wide v0, p0, Lavn;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 55
    monitor-exit p0

    return v0

    .line 57
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
