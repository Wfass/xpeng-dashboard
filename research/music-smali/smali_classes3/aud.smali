.class public Laud;
.super Lauc;
.source "ActivityMusicListBindingImpl.java"


# static fields
.field private static final j:Landroidx/databinding/ViewDataBinding$b;

.field private static final k:Landroid/util/SparseIntArray;


# instance fields
.field private final l:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private m:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Laud;->k:Landroid/util/SparseIntArray;

    .line 17
    sget-object v0, Laud;->k:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->loading_tips_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Laud;->k:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->title_bar:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Laud;->k:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->logo_view:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Laud;->k:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->rv_list:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget-object v0, Laud;->k:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->rl_edit_bar:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Laud;->k:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->tv_delete_btn:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Laud;->k:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->iv_delete_btn_img:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/e;Landroid/view/View;)V
    .locals 3

    .line 34
    sget-object v0, Laud;->j:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Laud;->k:Landroid/util/SparseIntArray;

    const/16 v2, 0x8

    invoke-static {p1, p2, v2, v0, v1}, Laud;->a(Landroidx/databinding/e;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Laud;-><init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 12

    const/4 v0, 0x7

    .line 37
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/xiaopeng/musicradio/widget/ClickableLoadingTipsView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Lcom/xiaopeng/xui/widget/XButton;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v11}, Lauc;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/xiaopeng/xui/widget/XImageView;Lcom/xiaopeng/musicradio/widget/ClickableLoadingTipsView;Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;Lcom/xiaopeng/xui/widget/XRelativeLayout;Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;Lcom/xiaopeng/xui/widget/XButton;)V

    const-wide/16 v0, -0x1

    .line 96
    iput-wide v0, p0, Laud;->m:J

    const/4 p1, 0x0

    .line 46
    aget-object p1, p3, p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object p1, p0, Laud;->l:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 47
    iget-object p1, p0, Laud;->l:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 48
    invoke-virtual {p0, p2}, Laud;->a(Landroid/view/View;)V

    .line 50
    invoke-virtual {p0}, Laud;->d()V

    return-void
.end method


# virtual methods
.method protected c()V
    .locals 2

    .line 87
    monitor-enter p0

    .line 88
    :try_start_0
    iget-wide v0, p0, Laud;->m:J

    const-wide/16 v0, 0x0

    .line 89
    iput-wide v0, p0, Laud;->m:J

    .line 90
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

    .line 55
    monitor-enter p0

    const-wide/16 v0, 0x1

    .line 56
    :try_start_0
    iput-wide v0, p0, Laud;->m:J

    .line 57
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-virtual {p0}, Laud;->g()V

    return-void

    :catchall_0
    move-exception v0

    .line 57
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public e()Z
    .locals 4

    .line 63
    monitor-enter p0

    .line 64
    :try_start_0
    iget-wide v0, p0, Laud;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 65
    monitor-exit p0

    return v0

    .line 67
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
