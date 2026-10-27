.class public Lbti;
.super Lbth;
.source "ActivityWebViewBindingImpl.java"


# static fields
.field private static final k:Landroidx/databinding/ViewDataBinding$b;

.field private static final l:Landroid/util/SparseIntArray;


# instance fields
.field private final m:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private n:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lbti;->l:Landroid/util/SparseIntArray;

    .line 17
    sget-object v0, Lbti;->l:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/webview/a$c;->window_container:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lbti;->l:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/webview/a$c;->web_view:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lbti;->l:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/webview/a$c;->web_view_overlay:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lbti;->l:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/webview/a$c;->fl_loading:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget-object v0, Lbti;->l:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/webview/a$c;->loading:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lbti;->l:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/webview/a$c;->layout_h5_fail:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Lbti;->l:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/webview/a$c;->btn_back:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget-object v0, Lbti;->l:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/webview/a$c;->tv_title:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/e;Landroid/view/View;)V
    .locals 3

    .line 35
    sget-object v0, Lbti;->k:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lbti;->l:Landroid/util/SparseIntArray;

    const/16 v2, 0x9

    invoke-static {p1, p2, v2, v0, v1}, Lbti;->a(Landroidx/databinding/e;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lbti;-><init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 13

    move-object v12, p0

    const/4 v0, 0x7

    .line 38
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Lcom/xiaopeng/xui/widget/XImageButton;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v6, Landroidx/databinding/l;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-direct {v6, v0}, Landroidx/databinding/l;-><init>(Landroid/view/ViewStub;)V

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Lcom/xiaopeng/xui/widget/XTextView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/webkit/WebView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v11}, Lbth;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/xiaopeng/xui/widget/XImageButton;Lcom/xiaopeng/xui/widget/XFrameLayout;Landroidx/databinding/l;Lcom/xiaopeng/musicradio/widget/LoadingTipsView;Lcom/xiaopeng/xui/widget/XTextView;Landroid/webkit/WebView;Lcom/xiaopeng/xui/widget/XImageView;Lcom/xiaopeng/xui/widget/XFrameLayout;)V

    const-wide/16 v0, -0x1

    .line 102
    iput-wide v0, v12, Lbti;->n:J

    .line 48
    iget-object v0, v12, Lbti;->e:Landroidx/databinding/l;

    invoke-virtual {v0, p0}, Landroidx/databinding/l;->a(Landroidx/databinding/ViewDataBinding;)V

    const/4 v0, 0x0

    .line 49
    aget-object v0, p3, v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, v12, Lbti;->m:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 50
    iget-object v0, v12, Lbti;->m:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setTag(Ljava/lang/Object;)V

    move-object v0, p2

    .line 51
    invoke-virtual {p0, p2}, Lbti;->a(Landroid/view/View;)V

    .line 53
    invoke-virtual {p0}, Lbti;->d()V

    return-void
.end method


# virtual methods
.method protected c()V
    .locals 2

    .line 90
    monitor-enter p0

    .line 91
    :try_start_0
    iget-wide v0, p0, Lbti;->n:J

    const-wide/16 v0, 0x0

    .line 92
    iput-wide v0, p0, Lbti;->n:J

    .line 93
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    iget-object v0, p0, Lbti;->e:Landroidx/databinding/l;

    invoke-virtual {v0}, Landroidx/databinding/l;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lbti;->e:Landroidx/databinding/l;

    invoke-virtual {v0}, Landroidx/databinding/l;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    invoke-static {v0}, Lbti;->a(Landroidx/databinding/ViewDataBinding;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 93
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 2

    .line 58
    monitor-enter p0

    const-wide/16 v0, 0x1

    .line 59
    :try_start_0
    iput-wide v0, p0, Lbti;->n:J

    .line 60
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-virtual {p0}, Lbti;->g()V

    return-void

    :catchall_0
    move-exception v0

    .line 60
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public e()Z
    .locals 4

    .line 66
    monitor-enter p0

    .line 67
    :try_start_0
    iget-wide v0, p0, Lbti;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 68
    monitor-exit p0

    return v0

    .line 70
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
