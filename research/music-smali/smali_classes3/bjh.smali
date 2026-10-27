.class public Lbjh;
.super Lcom/xiaopeng/musicradio/commonui/adapter/h;
.source "SingerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbjh$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/adapter/h<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field protected g:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

.field private h:I

.field private i:Landroid/content/Context;

.field private j:I

.field private k:Z

.field private l:[I

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 57
    sget v0, Lbez$f;->music_item_singer_single_list:I

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/h;-><init>(Landroid/content/Context;I)V

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lbjh;->h:I

    const/4 v0, 0x1

    .line 47
    iput v0, p0, Lbjh;->j:I

    const/4 v1, 0x0

    .line 48
    iput-boolean v1, p0, Lbjh;->k:Z

    const/4 v2, 0x3

    .line 50
    new-array v2, v2, [I

    sget v3, Lbez$c;->img_small_no_1:I

    aput v3, v2, v1

    sget v1, Lbez$c;->img_small_no_2:I

    aput v1, v2, v0

    sget v0, Lbez$c;->img_small_no_3:I

    const/4 v1, 0x2

    aput v0, v2, v1

    iput-object v2, p0, Lbjh;->l:[I

    .line 58
    iput-object p1, p0, Lbjh;->i:Landroid/content/Context;

    .line 59
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object p1

    invoke-virtual {p1}, Lbdt;->m()I

    move-result p1

    const-string v0, "SELECT_MENU_SCENE"

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lbjh;->m:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V
    .locals 4

    .line 63
    sget v0, Lbez$f;->music_item_singer_single_list:I

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/h;-><init>(Landroid/content/Context;I)V

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lbjh;->h:I

    const/4 v0, 0x1

    .line 47
    iput v0, p0, Lbjh;->j:I

    const/4 v1, 0x0

    .line 48
    iput-boolean v1, p0, Lbjh;->k:Z

    const/4 v2, 0x3

    .line 50
    new-array v2, v2, [I

    sget v3, Lbez$c;->img_small_no_1:I

    aput v3, v2, v1

    sget v1, Lbez$c;->img_small_no_2:I

    aput v1, v2, v0

    sget v0, Lbez$c;->img_small_no_3:I

    const/4 v1, 0x2

    aput v0, v2, v1

    iput-object v2, p0, Lbjh;->l:[I

    .line 64
    iput-object p1, p0, Lbjh;->i:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lbjh;->g:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    return-void
.end method

.method static synthetic a(Lbjh;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;
    .locals 0

    .line 41
    iget-object p0, p0, Lbjh;->a:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;

    return-object p0
.end method

.method private a(ILbjh$a;)V
    .locals 2

    .line 221
    invoke-static {p2}, Lbjh$a;->d(Lbjh$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Lbxo;->a(ZILcom/xiaopeng/xui/widget/XImageView;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 225
    :goto_0
    iget-boolean p1, p0, Lbjh;->k:Z

    if-eq p1, v1, :cond_1

    .line 226
    invoke-static {p2}, Lbjh$a;->f(Lbjh$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p2}, Lbjh$a;->f(Lbjh$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 227
    invoke-static {p2}, Lbjh$a;->f(Lbjh$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object p1

    invoke-static {p2}, Lbjh$a;->f(Lbjh$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->updateVui(Landroid/view/View;)V

    .line 228
    iput-boolean v1, p0, Lbjh;->k:Z

    :cond_1
    return-void
.end method

.method static synthetic b(Lbjh;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;
    .locals 0

    .line 41
    iget-object p0, p0, Lbjh;->a:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;

    return-object p0
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method public d(I)V
    .locals 0

    .line 237
    iput p1, p0, Lbjh;->h:I

    return-void
.end method

.method protected h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()I
    .locals 1

    .line 233
    iget v0, p0, Lbjh;->h:I

    return v0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;",
            ">;"
        }
    .end annotation

    .line 241
    invoke-virtual {p0}, Lbjh;->i()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 12

    .line 96
    check-cast p1, Lbjh$a;

    .line 97
    invoke-virtual {p0, p2}, Lbjh;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;

    if-eqz v0, :cond_9

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    if-eq p2, v3, :cond_0

    if-eq p2, v2, :cond_0

    .line 108
    invoke-static {p1}, Lbjh$a;->b(Lbjh$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 109
    invoke-static {p1}, Lbjh$a;->b(Lbjh$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/xiaopeng/xui/widget/XImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-static {p1}, Lbjh$a;->b(Lbjh$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 105
    invoke-static {p1}, Lbjh$a;->b(Lbjh$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v5

    iget-object v6, p0, Lbjh;->l:[I

    aget v6, v6, p2

    invoke-virtual {v5, v6}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 113
    :goto_0
    invoke-static {p1}, Lbjh$a;->c(Lbjh$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v5

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-static {p1}, Lbjh$a;->a(Lbjh$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/xui/widget/XImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;->getLogo()Ljava/lang/String;

    move-result-object v6

    sget v7, Lbez$c;->pic_covers_music_round:I

    invoke-static {p1}, Lbjh$a;->a(Lbjh$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v8

    const/16 v9, 0x168

    invoke-static {v5, v6, v7, v8, v9}, Lbxo;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;I)V

    .line 116
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;->getId()Ljava/lang/String;

    move-result-object v5

    .line 118
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v6

    invoke-virtual {v6}, Lbqp;->b()I

    move-result v6

    .line 119
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v7

    invoke-virtual {v7}, Lbid;->g()Ljava/lang/String;

    move-result-object v7

    if-nez v6, :cond_1

    .line 120
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "listsign_artist_radio"

    .line 121
    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\"collectId\":\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\","

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    const/4 v6, 0x3

    if-eqz v5, :cond_4

    .line 127
    iput p2, p0, Lbjh;->h:I

    .line 128
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v5

    invoke-virtual {v5}, Lbid;->q()I

    move-result v5

    if-eq v5, v3, :cond_3

    if-eq v5, v2, :cond_3

    if-eq v5, v6, :cond_2

    .line 139
    invoke-direct {p0, v4, p1}, Lbjh;->a(ILbjh$a;)V

    goto :goto_2

    .line 136
    :cond_2
    invoke-direct {p0, v5, p1}, Lbjh;->a(ILbjh$a;)V

    goto :goto_2

    .line 132
    :cond_3
    invoke-direct {p0, v5, p1}, Lbjh;->a(ILbjh$a;)V

    move v5, v3

    goto :goto_3

    .line 143
    :cond_4
    invoke-direct {p0, v4, p1}, Lbjh;->a(ILbjh$a;)V

    :goto_2
    move v5, v4

    .line 145
    :goto_3
    invoke-static {p1}, Lbjh$a;->d(Lbjh$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v7

    invoke-static {p1}, Lbjh$a;->e(Lbjh$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v8

    invoke-static {p1}, Lbjh$a;->f(Lbjh$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v9

    invoke-static {v7, v8, v9, v5}, Lbxo;->a(Lcom/xiaopeng/xui/widget/XImageView;Lcom/xiaopeng/xui/widget/XFrameLayout;Lcom/xiaopeng/xui/widget/XFrameLayout;Z)V

    add-int/lit8 v7, p2, 0x1

    .line 147
    invoke-static {p1}, Lbjh$a;->g(Lbjh$a;)Lcom/xiaopeng/xui/widget/XRelativeLayout;

    move-result-object v8

    .line 148
    invoke-virtual {v8, v7}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiPosition(I)V

    .line 149
    iget-object v9, p0, Lbjh;->g:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const-string v10, "_"

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getVuiPosition()I

    move-result v9

    if-ltz v9, :cond_5

    .line 150
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getId()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lbjh;->g:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v11}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getVuiPosition()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiElementId(Ljava/lang/String;)V

    goto :goto_4

    .line 152
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getId()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiElementId(Ljava/lang/String;)V

    .line 154
    :goto_4
    invoke-static {p1}, Lbjh$a;->h(Lbjh$a;)Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    move-result-object v9

    invoke-virtual {v9}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v11, Lcom/xiaopeng/musicradio/common/k$g;->vui_play_position:I

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v9, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiLabel(Ljava/lang/String;)V

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lbjh$a;->i(Lbjh$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    iget-object v2, p0, Lbjh;->g:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getVuiPosition()I

    move-result v2

    if-ltz v2, :cond_6

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lbjh;->g:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getVuiPosition()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    :cond_6
    invoke-static {p1}, Lbjh$a;->i(Lbjh$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiPosition(I)V

    .line 161
    invoke-static {p1}, Lbjh$a;->i(Lbjh$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v2

    sget-object v3, Lbxy;->BUTTON:Lbxy;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiElementType(Lbxy;)V

    .line 162
    invoke-static {p1}, Lbjh$a;->i(Lbjh$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiElementId(Ljava/lang/String;)V

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lbjh$a;->f(Lbjh$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-static {p1}, Lbjh$a;->f(Lbjh$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiPosition(I)V

    .line 166
    iget-object v3, p0, Lbjh;->g:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getVuiPosition()I

    move-result v3

    if-ltz v3, :cond_7

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbjh;->g:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getVuiPosition()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    :cond_7
    invoke-static {p1}, Lbjh$a;->f(Lbjh$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiElementId(Ljava/lang/String;)V

    .line 170
    invoke-static {p1}, Lbjh$a;->f(Lbjh$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1}, Lbjh$a;->f(Lbjh$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 171
    invoke-static {v8, v0}, Lcom/xiaopeng/musicradio/vui/c;->a(Lcom/xiaopeng/xui/vui/VuiView;Ljava/lang/String;)V

    .line 173
    invoke-static {p1}, Lbjh$a;->h(Lbjh$a;)Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    move-result-object v0

    iget v2, p0, Lbjh;->j:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;->setText(I)V

    .line 174
    invoke-static {p1}, Lbjh$a;->h(Lbjh$a;)Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result v2

    if-eqz v2, :cond_8

    move v1, v4

    :cond_8
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;->setVisibility(I)V

    .line 175
    invoke-static {p1}, Lbjh$a;->f(Lbjh$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v0

    new-instance v1, Lbjh$1;

    invoke-direct {v1, p0, p2}, Lbjh$1;-><init>(Lbjh;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    invoke-static {p1}, Lbjh$a;->i(Lbjh$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object p1

    new-instance v0, Lbjh$2;

    invoke-direct {v0, p0, p2}, Lbjh$2;-><init>(Lbjh;I)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 2

    .line 81
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0, p1, p2}, Lbjh;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0, p2}, Lbjh;->c(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "payload"

    .line 85
    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 86
    check-cast p1, Lbjh$a;

    .line 87
    invoke-virtual {p0, p2}, Lbjh;->c(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;

    .line 88
    invoke-static {p1}, Lbjh$a;->a(Lbjh$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object p3

    invoke-virtual {p3}, Lcom/xiaopeng/xui/widget/XImageView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;->getLogo()Ljava/lang/String;

    move-result-object p2

    sget v0, Lbez$c;->pic_covers_music_round:I

    invoke-static {p1}, Lbjh$a;->a(Lbjh$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object p1

    const/16 v1, 0x168

    invoke-static {p3, p2, v0, p1, v1}, Lbxo;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 75
    invoke-virtual {p0}, Lbjh;->c()Landroid/view/View;

    move-result-object p1

    .line 76
    new-instance p2, Lbjh$a;

    invoke-direct {p2, p0, p1}, Lbjh$a;-><init>(Lbjh;Landroid/view/View;)V

    return-object p2
.end method
