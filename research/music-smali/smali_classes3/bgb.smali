.class public Lbgb;
.super Lcom/xiaopeng/musicradio/commonui/adapter/h;
.source "MsRmListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbgb$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/adapter/h<",
        "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private g:Landroid/content/Context;

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 62
    sget v0, Lbez$f;->music_item_recommend_list:I

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/h;-><init>(Landroid/content/Context;I)V

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lbgb;->h:I

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lbgb;->i:I

    const-string v0, "listsign_recommend_music"

    .line 52
    iput-object v0, p0, Lbgb;->j:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lbgb;->g:Landroid/content/Context;

    .line 64
    iput p2, p0, Lbgb;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;ILcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/commonui/adapter/h;-><init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;)V

    const/4 p2, -0x1

    .line 48
    iput p2, p0, Lbgb;->h:I

    const/4 p2, 0x0

    .line 50
    iput p2, p0, Lbgb;->i:I

    const-string p2, "listsign_recommend_music"

    .line 52
    iput-object p2, p0, Lbgb;->j:Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lbgb;->g:Landroid/content/Context;

    .line 76
    iput p5, p0, Lbgb;->i:I

    .line 77
    iput-object p6, p0, Lbgb;->k:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/16 v0, 0x12

    return v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lbgb;->j:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbgb;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"collectId\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public d(I)V
    .locals 0

    .line 160
    iput p1, p0, Lbgb;->h:I

    return-void
.end method

.method protected h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()I
    .locals 1

    .line 156
    iget v0, p0, Lbgb;->h:I

    return v0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;"
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Lbgb;->i()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lbgb;->j:Ljava/lang/String;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 10
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 97
    instance-of v0, p1, Lbgb$a;

    if-eqz v0, :cond_3

    .line 98
    check-cast p1, Lbgb$a;

    .line 99
    invoke-virtual {p0, p2}, Lbgb;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    if-eqz v0, :cond_3

    .line 101
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogoUrl()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogo()Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    :cond_0
    move-object v4, v1

    .line 108
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v2

    invoke-virtual {v2}, Laqr;->b()I

    move-result v2

    .line 111
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    if-nez v2, :cond_1

    .line 112
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 113
    invoke-virtual {p0, v3, v1}, Lbgb;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v9

    :goto_0
    const/4 v2, -0x1

    if-eqz v1, :cond_2

    .line 117
    iput p2, p0, Lbgb;->h:I

    .line 118
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/i;->getPlayState()I

    move-result v1

    .line 119
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setPlayState(I)V

    move v7, v1

    goto :goto_1

    :cond_2
    move v7, v2

    .line 121
    :goto_1
    invoke-static {p1}, Lbgb$a;->a(Lbgb$a;)Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v3

    iget v0, p0, Lbgb;->i:I

    add-int v5, v0, p2

    sget v6, Lbez$c;->pic_covers_music_220:I

    iget-object v8, p0, Lbgb;->k:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual/range {v2 .. v8}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->a(Ljava/lang/String;Ljava/lang/String;IIILcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    .line 122
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;-><init>(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)V

    .line 123
    new-instance v1, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;-><init>(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)V

    .line 124
    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;->a(I)V

    .line 125
    invoke-virtual {v0, v9}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;->b(I)V

    .line 126
    invoke-virtual {v1, p2}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;->a(I)V

    const/4 p2, 0x1

    .line 127
    invoke-virtual {v1, p2}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;->b(I)V

    .line 129
    invoke-static {p1}, Lbgb$a;->a(Lbgb$a;)Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->setPlayClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    invoke-static {p1}, Lbgb$a;->a(Lbgb$a;)Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->setOpenDetailClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 1

    .line 88
    instance-of v0, p1, Lbgb$a;

    if-eqz v0, :cond_0

    .line 89
    move-object v0, p1

    check-cast v0, Lbgb$a;

    .line 90
    invoke-static {v0}, Lbgb$a;->a(Lbgb$a;)Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    move-result-object v0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    invoke-virtual {v0, p3}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->setNeedRefreshLogo(Z)V

    .line 92
    :cond_0
    invoke-virtual {p0, p1, p2}, Lbgb;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 82
    invoke-virtual {p0}, Lbgb;->c()Landroid/view/View;

    move-result-object p1

    .line 83
    new-instance p2, Lbgb$a;

    invoke-direct {p2, p0, p1}, Lbgb$a;-><init>(Lbgb;Landroid/view/View;)V

    return-object p2
.end method
