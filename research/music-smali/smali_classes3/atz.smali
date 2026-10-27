.class public Latz;
.super Laty;
.source "ActivityCollectedMusicListBindingImpl.java"


# static fields
.field private static final k:Landroidx/databinding/ViewDataBinding$b;

.field private static final l:Landroid/util/SparseIntArray;


# instance fields
.field private final m:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private n:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Latz;->l:Landroid/util/SparseIntArray;

    .line 17
    sget-object v0, Latz;->l:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->loading_tips_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Latz;->l:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->title_bar:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Latz;->l:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->logo_view:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Latz;->l:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->rv_list:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget-object v0, Latz;->l:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->rl_edit_bar:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Latz;->l:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->tv_delete_btn:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Latz;->l:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->iv_delete_btn_img:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget-object v0, Latz;->l:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->tv_playlist_btn:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/e;Landroid/view/View;)V
    .locals 3

    .line 35
    sget-object v0, Latz;->k:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Latz;->l:Landroid/util/SparseIntArray;

    const/16 v2, 0x9

    invoke-static {p1, p2, v2, v0, v1}, Latz;->a(Landroidx/databinding/e;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Latz;-><init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 13

    move-object v12, p0

    const/4 v0, 0x7

    .line 38
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/xiaopeng/musicradio/widget/ClickableLoadingTipsView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Lcom/xiaopeng/xui/widget/XButton;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Lcom/xiaopeng/xui/widget/XButton;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v11}, Laty;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/xiaopeng/xui/widget/XImageView;Lcom/xiaopeng/musicradio/widget/ClickableLoadingTipsView;Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;Lcom/xiaopeng/xui/widget/XRelativeLayout;Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;Lcom/xiaopeng/xui/widget/XButton;Lcom/xiaopeng/xui/widget/XButton;)V

    const-wide/16 v0, -0x1

    .line 98
    iput-wide v0, v12, Latz;->n:J

    const/4 v0, 0x0

    .line 48
    aget-object v0, p3, v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, v12, Latz;->m:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 49
    iget-object v0, v12, Latz;->m:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setTag(Ljava/lang/Object;)V

    move-object v0, p2

    .line 50
    invoke-virtual {p0, p2}, Latz;->a(Landroid/view/View;)V

    .line 52
    invoke-virtual {p0}, Latz;->d()V

    return-void
.end method


# virtual methods
.method protected c()V
    .locals 2

    .line 89
    monitor-enter p0

    .line 90
    :try_start_0
    iget-wide v0, p0, Latz;->n:J

    const-wide/16 v0, 0x0

    .line 91
    iput-wide v0, p0, Latz;->n:J

    .line 92
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

    .line 57
    monitor-enter p0

    const-wide/16 v0, 0x1

    .line 58
    :try_start_0
    iput-wide v0, p0, Latz;->n:J

    .line 59
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-virtual {p0}, Latz;->g()V

    return-void

    :catchall_0
    move-exception v0

    .line 59
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public e()Z
    .locals 4

    .line 65
    monitor-enter p0

    .line 66
    :try_start_0
    iget-wide v0, p0, Latz;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 67
    monitor-exit p0

    return v0

    .line 69
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
