.class public Lbtk;
.super Lbtj;
.source "LayoutWebViewFailBindingImpl.java"


# static fields
.field private static final h:Landroidx/databinding/ViewDataBinding$b;

.field private static final i:Landroid/util/SparseIntArray;


# instance fields
.field private j:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lbtk;->i:Landroid/util/SparseIntArray;

    .line 17
    sget-object v0, Lbtk;->i:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/webview/a$c;->iv_fail:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lbtk;->i:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/webview/a$c;->tv_fail:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lbtk;->i:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/webview/a$c;->tv_fail_desc:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lbtk;->i:Landroid/util/SparseIntArray;

    sget v1, Lcom/xiaopeng/musicradio/webview/a$c;->btn_refresh:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/e;Landroid/view/View;)V
    .locals 3

    .line 29
    sget-object v0, Lbtk;->h:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lbtk;->i:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-static {p1, p2, v2, v0, v1}, Lbtk;->a(Landroidx/databinding/e;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lbtk;-><init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 10

    const/4 v0, 0x4

    .line 32
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/xiaopeng/xui/widget/XButton;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/xiaopeng/xui/widget/XLinearLayout;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Lcom/xiaopeng/xui/widget/XTextView;

    const/4 v0, 0x3

    aget-object p3, p3, v0

    move-object v9, p3

    check-cast v9, Lcom/xiaopeng/xui/widget/XTextView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, Lbtj;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/xiaopeng/xui/widget/XButton;Lcom/xiaopeng/xui/widget/XLinearLayout;Lcom/xiaopeng/xui/widget/XImageView;Lcom/xiaopeng/xui/widget/XTextView;Lcom/xiaopeng/xui/widget/XTextView;)V

    const-wide/16 v0, -0x1

    .line 88
    iput-wide v0, p0, Lbtk;->j:J

    .line 39
    iget-object p1, p0, Lbtk;->d:Lcom/xiaopeng/xui/widget/XLinearLayout;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setTag(Ljava/lang/Object;)V

    .line 40
    invoke-virtual {p0, p2}, Lbtk;->a(Landroid/view/View;)V

    .line 42
    invoke-virtual {p0}, Lbtk;->d()V

    return-void
.end method


# virtual methods
.method protected c()V
    .locals 2

    .line 79
    monitor-enter p0

    .line 80
    :try_start_0
    iget-wide v0, p0, Lbtk;->j:J

    const-wide/16 v0, 0x0

    .line 81
    iput-wide v0, p0, Lbtk;->j:J

    .line 82
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

    .line 47
    monitor-enter p0

    const-wide/16 v0, 0x1

    .line 48
    :try_start_0
    iput-wide v0, p0, Lbtk;->j:J

    .line 49
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-virtual {p0}, Lbtk;->g()V

    return-void

    :catchall_0
    move-exception v0

    .line 49
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public e()Z
    .locals 4

    .line 55
    monitor-enter p0

    .line 56
    :try_start_0
    iget-wide v0, p0, Lbtk;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 57
    monitor-exit p0

    return v0

    .line 59
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
