.class Lcom/xiaopeng/musicradio/commonui/base/b$b;
.super Lcom/bumptech/glide/RequestManager;
.source "FragmentContextWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/commonui/base/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/commonui/base/b;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/commonui/base/b;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/base/b$b;->a:Lcom/xiaopeng/musicradio/commonui/base/b;

    .line 102
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bumptech/glide/RequestManager;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/commonui/base/b$b;)Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/xiaopeng/musicradio/commonui/base/b$b;->b:Z

    return p0
.end method


# virtual methods
.method public declared-synchronized onDestroy()V
    .locals 1

    monitor-enter p0

    .line 107
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/base/b$b;->b:Z

    if-nez v0, :cond_0

    .line 108
    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->onDestroy()V

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/base/b$b;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
