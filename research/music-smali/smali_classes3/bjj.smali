.class public Lbjj;
.super Lcom/xiaopeng/musicradio/commonui/adapter/h;
.source "MsHotSingerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbjj$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/adapter/h<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private g:I

.field private h:Landroid/content/Context;

.field private i:[I

.field private j:I

.field private k:Z

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 56
    sget v0, Lbez$f;->music_item_singer_single_list:I

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/h;-><init>(Landroid/content/Context;I)V

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lbjj;->g:I

    const/4 v0, 0x3

    .line 48
    new-array v0, v0, [I

    sget v1, Lbez$c;->img_small_no_1:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lbez$c;->img_small_no_2:I

    const/4 v3, 0x1

    aput v1, v0, v3

    sget v1, Lbez$c;->img_small_no_3:I

    const/4 v4, 0x2

    aput v1, v0, v4

    iput-object v0, p0, Lbjj;->i:[I

    .line 50
    iput v3, p0, Lbjj;->j:I

    .line 51
    iput-boolean v2, p0, Lbjj;->k:Z

    .line 57
    iput-object p1, p0, Lbjj;->h:Landroid/content/Context;

    .line 58
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object p1

    invoke-virtual {p1}, Lbdt;->m()I

    move-result p1

    const-string v0, "SELECT_MENU_SCENE"

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lbjj;->l:I

    return-void
.end method

.method private a(ILbjj$a;)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 204
    invoke-static {p2}, Lbjj$a;->i(Lbjj$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object p1

    sget v0, Lbez$c;->ic_btn_playall:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_0

    .line 201
    :cond_0
    invoke-static {p2}, Lbjj$a;->i(Lbjj$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object p1

    sget v0, Lbez$c;->ic_btn_playall:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_0

    .line 198
    :cond_1
    invoke-static {p2}, Lbjj$a;->i(Lbjj$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object p1

    sget v1, Lbez$c;->ic_btn_stop:I

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_1

    .line 194
    :cond_2
    invoke-static {p2}, Lbjj$a;->i(Lbjj$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object p1

    sget v0, Lbez$c;->ic_btn_stop:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    :goto_0
    const/4 v0, 0x0

    .line 208
    :goto_1
    iget-boolean p1, p0, Lbjj;->k:Z

    if-eq p1, v0, :cond_3

    .line 209
    invoke-static {p2}, Lbjj$a;->g(Lbjj$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p2}, Lbjj$a;->g(Lbjj$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 210
    invoke-static {p2}, Lbjj$a;->g(Lbjj$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    iget v1, p0, Lbjj;->l:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->j(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lbjj$a;->g(Lbjj$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 211
    iput-boolean v0, p0, Lbjj;->k:Z

    :cond_3
    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbjj$a;
    .locals 0

    .line 68
    invoke-virtual {p0}, Lbjj;->c()Landroid/view/View;

    move-result-object p1

    .line 69
    new-instance p2, Lbjj$a;

    invoke-direct {p2, p0, p1}, Lbjj$a;-><init>(Lbjj;Landroid/view/View;)V

    return-object p2
.end method

.method public b(I)V
    .locals 0

    .line 220
    iput p1, p0, Lbjj;->g:I

    return-void
.end method

.method public g()I
    .locals 1

    .line 216
    iget v0, p0, Lbjj;->g:I

    return v0
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
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;",
            ">;"
        }
    .end annotation

    .line 224
    invoke-virtual {p0}, Lbjj;->i()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 12
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 88
    check-cast p1, Lbjj$a;

    .line 89
    invoke-virtual {p0, p2}, Lbjj;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;

    if-eqz v0, :cond_6

    .line 91
    invoke-static {p1}, Lbjj$a;->c(Lbjj$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-static {p1}, Lbjj$a;->d(Lbjj$a;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;->a(I)V

    .line 93
    invoke-static {p1}, Lbjj$a;->d(Lbjj$a;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;->b(I)V

    .line 94
    invoke-static {p1}, Lbjj$a;->e(Lbjj$a;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;->a(I)V

    .line 95
    invoke-static {p1}, Lbjj$a;->e(Lbjj$a;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;->b(I)V

    .line 96
    invoke-static {p1}, Lbjj$a;->b(Lbjj$a;)Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;->getLogo()Ljava/lang/String;

    move-result-object v4

    sget v5, Lbez$c;->pic_covers_music_220:I

    invoke-static {p1}, Lbjj$a;->b(Lbjj$a;)Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    move-result-object v6

    invoke-static {v1, v4, v5, v6}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 97
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;->getId()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v4

    invoke-virtual {v4}, Lbqp;->b()I

    move-result v4

    .line 100
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v5

    invoke-virtual {v5}, Lbid;->g()Ljava/lang/String;

    move-result-object v5

    if-nez v4, :cond_0

    .line 101
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "listsign_artist_radio"

    .line 102
    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\"collectId\":\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\","

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/16 v4, 0x8

    const/4 v5, 0x2

    if-eqz p2, :cond_1

    if-eq p2, v3, :cond_1

    if-eq p2, v5, :cond_1

    .line 114
    invoke-static {p1}, Lbjj$a;->f(Lbjj$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 115
    invoke-static {p1}, Lbjj$a;->f(Lbjj$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/xiaopeng/xui/widget/XImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 110
    :cond_1
    invoke-static {p1}, Lbjj$a;->f(Lbjj$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 111
    iget-object v6, p0, Lbjj;->i:[I

    aget v6, v6, p2

    invoke-static {p1}, Lbjj$a;->f(Lbjj$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/musicradio/utils/af;->a(ILandroid/widget/ImageView;)V

    :goto_1
    const/4 v6, 0x3

    if-eqz v1, :cond_4

    .line 121
    iput p2, p0, Lbjj;->g:I

    .line 122
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v1

    invoke-virtual {v1}, Lbid;->q()I

    move-result v1

    if-eq v1, v3, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v6, :cond_3

    .line 133
    invoke-direct {p0, v2, p1}, Lbjj;->a(ILbjj$a;)V

    goto :goto_2

    .line 125
    :cond_2
    invoke-direct {p0, v1, p1}, Lbjj;->a(ILbjj$a;)V

    move v1, v3

    goto :goto_3

    .line 130
    :cond_3
    invoke-direct {p0, v1, p1}, Lbjj;->a(ILbjj$a;)V

    goto :goto_2

    .line 137
    :cond_4
    invoke-direct {p0, v2, p1}, Lbjj;->a(ILbjj$a;)V

    :goto_2
    move v1, v2

    .line 140
    :goto_3
    iget-object v7, p1, Lbjj$a;->itemView:Landroid/view/View;

    check-cast v7, Lcom/xiaopeng/xui/vui/VuiView;

    .line 141
    invoke-interface {v7, p2}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiPosition(I)V

    .line 142
    iget-object v8, p0, Lbjj;->h:Landroid/content/Context;

    invoke-static {v8}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v8

    iget-object v9, p1, Lbjj$a;->itemView:Landroid/view/View;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ms_hotsinger_list_item_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    .line 143
    invoke-static {p1}, Lbjj$a;->g(Lbjj$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v8

    invoke-virtual {v8}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lbez$g;->vui_play_position:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    iget v0, p0, Lbjj;->j:I

    add-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    iget v0, p0, Lbjj;->j:I

    add-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v5

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiLabel(Ljava/lang/String;)V

    .line 144
    invoke-static {p1}, Lbjj$a;->h(Lbjj$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiPosition(I)V

    .line 145
    invoke-static {p1}, Lbjj$a;->h(Lbjj$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lbjj$a;->h(Lbjj$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiElementId(Ljava/lang/String;)V

    .line 146
    invoke-static {p1}, Lbjj$a;->g(Lbjj$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiPosition(I)V

    .line 147
    iget-object v0, p0, Lbjj;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-static {p1}, Lbjj$a;->g(Lbjj$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ms_hotsinger_list_play_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lbjj;->h:Landroid/content/Context;

    invoke-static {p1}, Lbjj$a;->g(Lbjj$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 150
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "defaultExecElementId"

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lbjj$a;->h(Lbjj$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getId()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    invoke-interface {v7, v0}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :catch_0
    invoke-static {p1}, Lbjj$a;->a(Lbjj$a;)Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    move-result-object v0

    iget v1, p0, Lbjj;->j:I

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;->setText(I)V

    .line 156
    invoke-static {p1}, Lbjj$a;->a(Lbjj$a;)Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    move-result-object p1

    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_4

    :cond_5
    move v2, v4

    :goto_4
    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 1

    .line 74
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 75
    invoke-virtual {p0, p1, p2}, Lbjj;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_1

    .line 77
    :cond_0
    invoke-virtual {p0, p2}, Lbjj;->c(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 78
    check-cast p1, Lbjj$a;

    .line 79
    invoke-static {p1}, Lbjj$a;->a(Lbjj$a;)Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    move-result-object p3

    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p3, v0}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;->setVisibility(I)V

    .line 80
    invoke-virtual {p0, p2}, Lbjj;->c(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;

    .line 81
    invoke-static {p1}, Lbjj$a;->b(Lbjj$a;)Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    move-result-object p3

    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;->getLogo()Ljava/lang/String;

    move-result-object p2

    sget v0, Lbez$c;->pic_covers_music_220:I

    invoke-static {p1}, Lbjj$a;->b(Lbjj$a;)Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    move-result-object p1

    invoke-static {p3, p2, v0, p1}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2}, Lbjj;->a(Landroid/view/ViewGroup;I)Lbjj$a;

    move-result-object p1

    return-object p1
.end method
