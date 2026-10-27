.class public Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;
.super Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;
.source "KugooSingerPresenter.java"


# instance fields
.field protected b:I

.field protected c:I

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;-><init>()V

    const/4 v0, 0x1

    .line 16
    iput v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->b:I

    .line 18
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->j:Z

    const/16 v0, 0xa

    .line 19
    iput v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->c:I

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;Z)Z
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->j:Z

    return p1
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 110
    iput p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->b:I

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 23
    iget v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/main/view/b;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/b;->showLoadingView()V

    .line 29
    :cond_0
    invoke-static {}, Lasp;->a()Lasp;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->h:I

    iget v5, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->b:I

    new-instance v6, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter$1;

    invoke-direct {v6, p0, p1, p2}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter$1;-><init>(Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lasp;->a(ILjava/lang/String;Ljava/lang/String;ILbkv;)V

    return-void
.end method

.method public e()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->j:Z

    return v0
.end method
