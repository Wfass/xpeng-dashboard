.class public Lcom/xiaopeng/musicradio/widget/common/b;
.super Lcom/xiaopeng/musicradio/commonui/adapter/h;
.source "SongListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/widget/common/b$a;,
        Lcom/xiaopeng/musicradio/widget/common/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/adapter/h<",
        "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field protected g:I

.field protected h:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

.field private i:I

.field private j:Lcom/xiaopeng/musicradio/widget/common/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/commonui/adapter/h;-><init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;)V

    const/4 p1, -0x1

    .line 30
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/b;->i:I

    .line 32
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/b;->g:I

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/widget/common/b;)Lcom/xiaopeng/musicradio/widget/common/b$a;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/xiaopeng/musicradio/widget/common/b;->j:Lcom/xiaopeng/musicradio/widget/common/b$a;

    return-object p0
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/16 v0, 0x12

    return v0
.end method

.method protected a(ILcom/xiaopeng/musicradio/widget/common/b$b;)V
    .locals 0

    .line 130
    iget-object p2, p2, Lcom/xiaopeng/musicradio/widget/common/b$b;->a:Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->setPlayState(I)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/widget/common/b$a;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/b;->j:Lcom/xiaopeng/musicradio/widget/common/b$a;

    return-void
.end method

.method protected a(Lcom/xiaopeng/musicradio/widget/common/b$b;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;IZ)V
    .locals 2

    .line 125
    iget-object v0, p1, Lcom/xiaopeng/musicradio/widget/common/b$b;->a:Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/common/b;->g:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->setAccountType(I)V

    .line 126
    iget-object p1, p1, Lcom/xiaopeng/musicradio/widget/common/b$b;->a:Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/b;->h:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p1, p2, p3, p4, v0}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;IZLcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 156
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/b;->g:I

    return-void
.end method

.method protected h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/b;->i()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public k()I
    .locals 1

    .line 169
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/common/b;->i:I

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 71
    instance-of v0, p1, Lcom/xiaopeng/musicradio/widget/common/b$b;

    if-eqz v0, :cond_5

    .line 72
    check-cast p1, Lcom/xiaopeng/musicradio/widget/common/b$b;

    .line 73
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/widget/common/b;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 75
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/xiaopeng/musicradio/widget/common/b;->a(Lcom/xiaopeng/musicradio/widget/common/b$b;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;IZ)V

    .line 76
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v2

    const-class v3, Lbfe;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbfe;

    .line 77
    invoke-interface {v2}, Lbfe;->getPlayingInfo()Lcom/xiaopeng/musicradio/music/api/bean/b;

    move-result-object v2

    .line 79
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v3

    invoke-virtual {v3}, Laqr;->b()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    .line 83
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/music/api/bean/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 92
    iput p2, p0, Lcom/xiaopeng/musicradio/widget/common/b;->i:I

    .line 93
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    .line 94
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v2

    invoke-virtual {v2, v0}, Laqr;->c(I)Laqt;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Laqt;->getPlayState()I

    move-result v0

    if-eq v0, v4, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 105
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/musicradio/widget/common/b;->a(ILcom/xiaopeng/musicradio/widget/common/b$b;)V

    goto :goto_1

    .line 102
    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/musicradio/widget/common/b;->a(ILcom/xiaopeng/musicradio/widget/common/b$b;)V

    goto :goto_1

    .line 99
    :cond_2
    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/musicradio/widget/common/b;->a(ILcom/xiaopeng/musicradio/widget/common/b$b;)V

    goto :goto_1

    .line 109
    :cond_3
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/musicradio/widget/common/b;->a(ILcom/xiaopeng/musicradio/widget/common/b$b;)V

    .line 111
    :goto_1
    iget-object v0, p1, Lcom/xiaopeng/musicradio/widget/common/b$b;->a:Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->b()V

    .line 114
    :cond_4
    iget-object p1, p1, Lcom/xiaopeng/musicradio/widget/common/b$b;->a:Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;

    new-instance v0, Lcom/xiaopeng/musicradio/widget/common/b$1;

    invoke-direct {v0, p0, p2}, Lcom/xiaopeng/musicradio/widget/common/b$1;-><init>(Lcom/xiaopeng/musicradio/widget/common/b;I)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 1

    .line 60
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/common/b;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 63
    :cond_0
    check-cast p1, Lcom/xiaopeng/musicradio/widget/common/b$b;

    const/4 v0, 0x0

    .line 64
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 65
    iget-object p1, p1, Lcom/xiaopeng/musicradio/widget/common/b$b;->a:Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;

    invoke-virtual {p1, p3, p2, v0}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;IZ)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/b;->c()Landroid/view/View;

    move-result-object p1

    .line 55
    new-instance p2, Lcom/xiaopeng/musicradio/widget/common/b$b;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/musicradio/widget/common/b$b;-><init>(Lcom/xiaopeng/musicradio/widget/common/b;Landroid/view/View;)V

    return-object p2
.end method
