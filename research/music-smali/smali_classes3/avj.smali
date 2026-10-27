.class public Lavj;
.super Lavi;
.source "MineMusicItemLayoutBindingImpl.java"


# static fields
.field private static final r:Landroidx/databinding/ViewDataBinding$b;

.field private static final s:Landroid/util/SparseIntArray;


# instance fields
.field private final t:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private u:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lavj;->s:Landroid/util/SparseIntArray;

    .line 17
    sget-object v0, Lavj;->s:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->root_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lavj;->s:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->tv_index_bg:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lavj;->s:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->tv_index:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lavj;->s:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->tv_local:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget-object v0, Lavj;->s:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->iv_icon:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lavj;->s:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->iv_loading:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Lavj;->s:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->iv_logo:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget-object v0, Lavj;->s:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->tv_speech_num:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget-object v0, Lavj;->s:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->iv_logo_shadow:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget-object v0, Lavj;->s:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->tv_title_layout:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    sget-object v0, Lavj;->s:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->tv_title:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    sget-object v0, Lavj;->s:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->music_label:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    sget-object v0, Lavj;->s:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->tv_sub_title:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    sget-object v0, Lavj;->s:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->cb_select:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 31
    sget-object v0, Lavj;->s:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->item_play_status_layout:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/e;Landroid/view/View;)V
    .locals 3

    .line 42
    sget-object v0, Lavj;->r:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lavj;->s:Landroid/util/SparseIntArray;

    const/16 v2, 0x10

    invoke-static {p1, p2, v2, v0, v1}, Lavj;->a(Landroidx/databinding/e;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lavj;-><init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 20

    move-object/from16 v3, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v4, 0xe

    .line 45
    aget-object v4, p3, v4

    check-cast v4, Lcom/xiaopeng/xui/widget/XCheckBox;

    const/16 v5, 0xf

    aget-object v5, p3, v5

    check-cast v5, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;

    const/4 v6, 0x5

    aget-object v6, p3, v6

    check-cast v6, Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v7, 0x6

    aget-object v7, p3, v7

    check-cast v7, Lcom/xiaopeng/musicradio/view/MusicItemLoadingView;

    const/4 v8, 0x7

    aget-object v8, p3, v8

    check-cast v8, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    const/16 v9, 0x9

    aget-object v9, p3, v9

    check-cast v9, Lcom/xiaopeng/xui/widget/XImageView;

    const/16 v10, 0xc

    aget-object v10, p3, v10

    check-cast v10, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;

    const/4 v11, 0x1

    aget-object v11, p3, v11

    check-cast v11, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    const/4 v12, 0x3

    aget-object v12, p3, v12

    check-cast v12, Lcom/xiaopeng/xui/widget/XTextView;

    const/4 v13, 0x2

    aget-object v13, p3, v13

    check-cast v13, Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v14, 0x4

    aget-object v14, p3, v14

    check-cast v14, Lcom/xiaopeng/xui/widget/XTextView;

    const/16 v15, 0x8

    aget-object v15, p3, v15

    check-cast v15, Lcom/xiaopeng/musicradio/widget/common/SpeechNumSmallLayout;

    const/16 v16, 0xd

    aget-object v16, p3, v16

    check-cast v16, Lcom/xiaopeng/xui/widget/XTextView;

    const/16 v17, 0xb

    aget-object v17, p3, v17

    check-cast v17, Lcom/xiaopeng/xui/widget/XTextView;

    const/16 v18, 0xa

    aget-object v18, p3, v18

    check-cast v18, Lcom/xiaopeng/xui/widget/XLinearLayout;

    const/16 v19, 0x0

    move/from16 v3, v19

    invoke-direct/range {v0 .. v18}, Lavi;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/xiaopeng/xui/widget/XCheckBox;Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;Lcom/xiaopeng/xui/widget/XImageView;Lcom/xiaopeng/musicradio/view/MusicItemLoadingView;Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;Lcom/xiaopeng/xui/widget/XImageView;Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;Lcom/xiaopeng/xui/widget/XRelativeLayout;Lcom/xiaopeng/xui/widget/XTextView;Lcom/xiaopeng/xui/widget/XImageView;Lcom/xiaopeng/xui/widget/XTextView;Lcom/xiaopeng/musicradio/widget/common/SpeechNumSmallLayout;Lcom/xiaopeng/xui/widget/XTextView;Lcom/xiaopeng/xui/widget/XTextView;Lcom/xiaopeng/xui/widget/XLinearLayout;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 112
    iput-wide v0, v2, Lavj;->u:J

    const/4 v0, 0x0

    .line 62
    aget-object v0, p3, v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, v2, Lavj;->t:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 63
    iget-object v0, v2, Lavj;->t:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 64
    invoke-virtual {v2, v0}, Lavj;->a(Landroid/view/View;)V

    .line 66
    invoke-virtual/range {p0 .. p0}, Lavj;->d()V

    return-void
.end method


# virtual methods
.method protected c()V
    .locals 2

    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    iget-wide v0, p0, Lavj;->u:J

    const-wide/16 v0, 0x0

    .line 105
    iput-wide v0, p0, Lavj;->u:J

    .line 106
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

    .line 71
    monitor-enter p0

    const-wide/16 v0, 0x1

    .line 72
    :try_start_0
    iput-wide v0, p0, Lavj;->u:J

    .line 73
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-virtual {p0}, Lavj;->g()V

    return-void

    :catchall_0
    move-exception v0

    .line 73
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public e()Z
    .locals 4

    .line 79
    monitor-enter p0

    .line 80
    :try_start_0
    iget-wide v0, p0, Lavj;->u:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 81
    monitor-exit p0

    return v0

    .line 83
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
