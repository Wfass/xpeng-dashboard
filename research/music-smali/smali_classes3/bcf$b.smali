.class public Lbcf$b;
.super Layt$a;
.source "KugouFetchModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbcf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic f:Lbcf;


# direct methods
.method public constructor <init>(Lbcf;Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lbcf$b;->f:Lbcf;

    .line 96
    invoke-direct {p0, p1, p2}, Layt$a;-><init>(Layt;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lbcf$b;Ljava/util/List;JIIZZ)Ljava/lang/Runnable;
    .locals 0

    .line 93
    invoke-virtual/range {p0 .. p7}, Lbcf$b;->a(Ljava/util/List;JIIZZ)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lbcf$b;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lbcf$b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;

    .line 225
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean$PageBean;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 226
    iget-object v2, p0, Lbcf$b;->f:Lbcf;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean$PageBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean$PageBean;->getPage()I

    move-result v3

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v1

    iget-object v4, p0, Lbcf$b;->f:Lbcf;

    invoke-virtual {v4}, Lbcf;->h()I

    move-result v4

    invoke-static {v2, v3, v1, v4}, Lbcf;->a(Lbcf;ILjava/util/List;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 228
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static synthetic a(Lbcf$b;Z)V
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lbcf$b;->a(Z)V

    return-void
.end method

.method static synthetic a(Lbcf$b;)Z
    .locals 0

    .line 93
    invoke-virtual {p0}, Lbcf$b;->b()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lbcf$b;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lbcf$b;->e()V

    return-void
.end method

.method static synthetic b(Lbcf$b;Z)V
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lbcf$b;->a(Z)V

    return-void
.end method

.method static synthetic c(Lbcf$b;)Ljava/lang/String;
    .locals 0

    .line 93
    iget-object p0, p0, Lbcf$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lbcf$b;Z)V
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lbcf$b;->a(Z)V

    return-void
.end method

.method static synthetic d(Lbcf$b;)Ljava/lang/String;
    .locals 0

    .line 93
    iget-object p0, p0, Lbcf$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lbcf$b;Z)V
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lbcf$b;->a(Z)V

    return-void
.end method

.method private e()V
    .locals 4

    const-string v0, "KugouFetchModel"

    const-string v1, "requestAll: =========== "

    .line 136
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lbcf$b;->f:Lbcf;

    new-instance v1, Layw;

    invoke-direct {v1}, Layw;-><init>()V

    invoke-static {v0, v1}, Lbcf;->a(Lbcf;Layw;)Layw;

    .line 138
    iget-object v0, p0, Lbcf$b;->f:Lbcf;

    invoke-static {v0}, Lbcf;->a(Lbcf;)Layw;

    move-result-object v0

    new-instance v1, Lbcf$b$2;

    invoke-direct {v1, p0}, Lbcf$b$2;-><init>(Lbcf$b;)V

    const/4 v2, 0x0

    const/16 v3, 0x32

    invoke-virtual {v0, v2, v3, v1}, Layw;->a(Ljava/util/List;ILayw$a;)V

    return-void
.end method

.method static synthetic e(Lbcf$b;Z)V
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lbcf$b;->a(Z)V

    return-void
.end method

.method static synthetic e(Lbcf$b;)Z
    .locals 0

    .line 93
    invoke-virtual {p0}, Lbcf$b;->b()Z

    move-result p0

    return p0
.end method

.method static synthetic f(Lbcf$b;)J
    .locals 2

    .line 93
    iget-wide v0, p0, Lbcf$b;->c:J

    return-wide v0
.end method

.method static synthetic f(Lbcf$b;Z)V
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lbcf$b;->a(Z)V

    return-void
.end method

.method static synthetic g(Lbcf$b;)J
    .locals 2

    .line 93
    iget-wide v0, p0, Lbcf$b;->c:J

    return-wide v0
.end method

.method static synthetic g(Lbcf$b;Z)V
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lbcf$b;->a(Z)V

    return-void
.end method

.method static synthetic h(Lbcf$b;Z)V
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lbcf$b;->a(Z)V

    return-void
.end method

.method static synthetic h(Lbcf$b;)Z
    .locals 0

    .line 93
    invoke-virtual {p0}, Lbcf$b;->b()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "KugouFetchModel"

    const-string v1, "post: ======="

    .line 101
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbcf$b;->c:J

    const/4 v0, 0x1

    .line 103
    invoke-virtual {p0, v0}, Lbcf$b;->a(Z)V

    .line 104
    invoke-static {}, Lbce;->a()Lbce;

    move-result-object v1

    new-instance v2, Lbcf$b$1;

    invoke-direct {v2, p0}, Lbcf$b$1;-><init>(Lbcf$b;)V

    invoke-virtual {v1, v0, v2}, Lbce;->a(ILbce$b;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 237
    invoke-super {p0}, Layt$a;->d()V

    .line 238
    iget-object v0, p0, Lbcf$b;->f:Lbcf;

    invoke-static {v0}, Lbcf;->a(Lbcf;)Layw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lbcf$b;->f:Lbcf;

    invoke-static {v0}, Lbcf;->a(Lbcf;)Layw;

    move-result-object v0

    invoke-virtual {v0}, Layw;->b()V

    :cond_0
    return-void
.end method
