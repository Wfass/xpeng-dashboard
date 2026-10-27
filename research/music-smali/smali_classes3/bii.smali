.class public Lbii;
.super Lcom/xiaopeng/musicradio/commonui/adapter/h;
.source "MsMusicDetailListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbii$a;,
        Lbii$b;
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
.field private g:I

.field private h:Ljava/lang/String;

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/commonui/adapter/h;-><init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;)V

    const/4 p1, -0x1

    .line 46
    iput p1, p0, Lbii;->g:I

    const-string p2, ""

    .line 48
    iput-object p2, p0, Lbii;->h:Ljava/lang/String;

    .line 49
    iput p1, p0, Lbii;->i:I

    return-void
.end method

.method private a(ZLbii$b;)V
    .locals 3

    .line 281
    iget-object v0, p2, Lbii$b;->b:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 282
    iget-object v0, p2, Lbii$b;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setSelected(Z)V

    .line 283
    iget-object v0, p2, Lbii$b;->b:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setSelected(Z)V

    if-eqz p1, :cond_1

    .line 285
    iget-object p1, p2, Lbii$b;->b:Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setSelected(Z)V

    .line 286
    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 287
    iget-object p1, p2, Lbii$b;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setSelected(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method protected a(ILbii$b;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 3

    const/4 p3, 0x1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eq p1, p3, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    .line 271
    iget-object p1, p2, Lbii$b;->h:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->smoothToHide()V

    .line 272
    iget-object p1, p2, Lbii$b;->i:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 273
    iget-object p1, p2, Lbii$b;->k:Lcom/xiaopeng/xui/view/XView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/view/XView;->setVisibility(I)V

    .line 274
    iget-object p1, p2, Lbii$b;->c:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 275
    iget-object p1, p2, Lbii$b;->m:Lcom/xiaopeng/xui/view/XView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/view/XView;->setSelected(Z)V

    goto :goto_0

    .line 263
    :cond_0
    iget-object p1, p2, Lbii$b;->h:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->setVisibility(I)V

    .line 264
    iget-object p1, p2, Lbii$b;->h:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->stopAnimation()V

    .line 265
    iget-object p1, p2, Lbii$b;->i:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 266
    iget-object p1, p2, Lbii$b;->k:Lcom/xiaopeng/xui/view/XView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/view/XView;->setVisibility(I)V

    .line 267
    iget-object p1, p2, Lbii$b;->c:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 268
    iget-object p1, p2, Lbii$b;->m:Lcom/xiaopeng/xui/view/XView;

    invoke-virtual {p1, p3}, Lcom/xiaopeng/xui/view/XView;->setSelected(Z)V

    goto :goto_0

    .line 256
    :cond_1
    iget-object p1, p2, Lbii$b;->h:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->smoothToShow()V

    .line 257
    iget-object p1, p2, Lbii$b;->i:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 258
    iget-object p1, p2, Lbii$b;->k:Lcom/xiaopeng/xui/view/XView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/view/XView;->setVisibility(I)V

    .line 259
    iget-object p1, p2, Lbii$b;->c:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 260
    iget-object p1, p2, Lbii$b;->m:Lcom/xiaopeng/xui/view/XView;

    invoke-virtual {p1, p3}, Lcom/xiaopeng/xui/view/XView;->setSelected(Z)V

    goto :goto_0

    .line 249
    :cond_2
    iget-object p1, p2, Lbii$b;->h:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->smoothToHide()V

    .line 250
    iget-object p1, p2, Lbii$b;->i:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 251
    iget-object p1, p2, Lbii$b;->k:Lcom/xiaopeng/xui/view/XView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/view/XView;->setVisibility(I)V

    .line 252
    iget-object p1, p2, Lbii$b;->c:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 253
    iget-object p1, p2, Lbii$b;->m:Lcom/xiaopeng/xui/view/XView;

    invoke-virtual {p1, p3}, Lcom/xiaopeng/xui/view/XView;->setSelected(Z)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lbii;->h:Ljava/lang/String;

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 375
    iput p1, p0, Lbii;->i:I

    .line 376
    invoke-virtual {p0}, Lbii;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lbii;->notifyItemChanged(I)V

    return-void
.end method

.method public b()[Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$e;
    .locals 4

    const/4 v0, 0x1

    .line 65
    new-array v1, v0, [Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$e;

    new-instance v2, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$e;

    sget v3, Lbez$f;->item_musiclist_foot_view:I

    invoke-direct {v2, v0, v3, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$e;-><init>(III)V

    const/4 v0, 0x0

    aput-object v2, v1, v0

    return-object v1
.end method

.method public g()I
    .locals 1

    .line 336
    iget v0, p0, Lbii;->g:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 394
    invoke-virtual {p0}, Lbii;->i()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 397
    :cond_0
    invoke-virtual {p0}, Lbii;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 385
    invoke-virtual {p0}, Lbii;->getItemCount()I

    move-result v1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
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

    .line 344
    invoke-virtual {p0}, Lbii;->i()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public k()I
    .locals 1

    .line 380
    iget v0, p0, Lbii;->i:I

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 11
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 124
    instance-of v0, p1, Lbii$a;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 125
    check-cast p1, Lbii$a;

    .line 126
    iget-object p2, p1, Lbii$a;->a:Lcom/xiaopeng/xui/widget/XTextView;

    if-eqz p2, :cond_d

    .line 127
    iget p2, p0, Lbii;->i:I

    if-nez p2, :cond_0

    .line 128
    iget-object p2, p1, Lbii$a;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 129
    iget-object p2, p1, Lbii$a;->b:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p2, v3}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 130
    iget-object p1, p1, Lbii$a;->a:Lcom/xiaopeng/xui/widget/XTextView;

    sget p2, Lbez$g;->rv_loading:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    goto/16 :goto_6

    :cond_0
    const/4 v0, 0x4

    if-ne p2, v2, :cond_1

    .line 132
    iget-object p2, p1, Lbii$a;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 133
    iget-object p1, p1, Lbii$a;->b:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    goto/16 :goto_6

    :cond_1
    if-ne p2, v1, :cond_2

    .line 135
    iget-object p2, p1, Lbii$a;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 136
    iget-object p1, p1, Lbii$a;->b:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    goto/16 :goto_6

    .line 138
    :cond_2
    iget-object p2, p1, Lbii$a;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 139
    iget-object p1, p1, Lbii$a;->b:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    goto/16 :goto_6

    .line 142
    :cond_3
    instance-of v0, p1, Lbii$b;

    if-eqz v0, :cond_d

    .line 143
    check-cast p1, Lbii$b;

    .line 144
    invoke-virtual {p0, p2}, Lbii;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-eqz v0, :cond_d

    .line 146
    iget-object v4, p1, Lbii$b;->d:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v5

    sget v6, Lbez$c;->pic_covers_music_list_220:I

    iget-object v7, p1, Lbii$b;->d:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {v4, v5, v6, v7}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 147
    iget-object v4, p1, Lbii$b;->a:Lcom/xiaopeng/xui/widget/XTextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, p2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v4, p1, Lbii$b;->e:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v4, p1, Lbii$b;->f:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 151
    iget-object v4, p1, Lbii$b;->f:Lcom/xiaopeng/xui/widget/XTextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_0

    .line 153
    :cond_4
    iget-object v4, p1, Lbii$b;->f:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v4, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 154
    iget-object v4, p1, Lbii$b;->f:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :goto_0
    iget-object v4, p1, Lbii$b;->j:Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;

    invoke-virtual {v4, v0}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->setMusicInfo(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 157
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v4

    invoke-virtual {v4}, Lbid;->f()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v4

    .line 159
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v5

    invoke-virtual {v5}, Lbqp;->b()I

    move-result v5

    .line 160
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v7

    invoke-virtual {v7}, Lbid;->g()Ljava/lang/String;

    move-result-object v7

    if-nez v5, :cond_5

    .line 162
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    if-eqz v4, :cond_5

    invoke-virtual {v4, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\"collectId\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lbii;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v2

    goto :goto_1

    :cond_5
    move v4, v3

    :goto_1
    const/4 v5, 0x3

    if-eqz v4, :cond_8

    .line 172
    iput p2, p0, Lbii;->g:I

    .line 173
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v4

    invoke-virtual {v4}, Lbid;->q()I

    move-result v4

    if-eq v4, v2, :cond_7

    if-eq v4, v1, :cond_6

    if-eq v4, v5, :cond_7

    .line 186
    invoke-virtual {p0, v3, p1, v0}, Lbii;->a(ILbii$b;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 187
    invoke-direct {p0, v3, p1}, Lbii;->a(ZLbii$b;)V

    goto :goto_2

    .line 177
    :cond_6
    invoke-virtual {p0, v4, p1, v0}, Lbii;->a(ILbii$b;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 178
    invoke-direct {p0, v2, p1}, Lbii;->a(ZLbii$b;)V

    move v4, v2

    goto :goto_3

    .line 182
    :cond_7
    invoke-virtual {p0, v4, p1, v0}, Lbii;->a(ILbii$b;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 183
    invoke-direct {p0, v2, p1}, Lbii;->a(ZLbii$b;)V

    goto :goto_2

    .line 191
    :cond_8
    invoke-virtual {p0, v3, p1, v0}, Lbii;->a(ILbii$b;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 192
    invoke-direct {p0, v3, p1}, Lbii;->a(ZLbii$b;)V

    :goto_2
    move v4, v3

    .line 194
    :goto_3
    iget-object v7, p1, Lbii$b;->c:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->enableLove()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/xiaopeng/xui/widget/XImageView;->setEnabled(Z)V

    .line 196
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v7

    invoke-virtual {v7}, Lbdu;->d()I

    move-result v7

    if-ne v7, v1, :cond_9

    move v7, v2

    goto :goto_4

    :cond_9
    move v7, v3

    :goto_4
    if-eqz v7, :cond_b

    .line 199
    invoke-static {}, Lbad;->a()Lbad;

    move-result-object v7

    invoke-virtual {v7, v0}, Lbad;->g(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 200
    iget-object v7, p1, Lbii$b;->c:Lcom/xiaopeng/xui/widget/XImageView;

    sget v8, Lbez$c;->ic_32_cloudlike_hl:I

    invoke-virtual {v7, v8}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 201
    iget-object v7, p1, Lbii$b;->c:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v7, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setSelected(Z)V

    goto :goto_5

    .line 203
    :cond_a
    iget-object v7, p1, Lbii$b;->c:Lcom/xiaopeng/xui/widget/XImageView;

    sget v8, Lbez$c;->ic_32_cloudlike_nor:I

    invoke-virtual {v7, v8}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 204
    iget-object v7, p1, Lbii$b;->c:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v7, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setSelected(Z)V

    goto :goto_5

    .line 207
    :cond_b
    invoke-static {}, Lbad;->a()Lbad;

    move-result-object v7

    invoke-virtual {v7, v0}, Lbad;->g(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 208
    iget-object v7, p1, Lbii$b;->c:Lcom/xiaopeng/xui/widget/XImageView;

    sget v8, Lbez$c;->ic_32_list_like_hl:I

    invoke-virtual {v7, v8}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 209
    iget-object v7, p1, Lbii$b;->c:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v7, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setSelected(Z)V

    goto :goto_5

    .line 211
    :cond_c
    iget-object v7, p1, Lbii$b;->c:Lcom/xiaopeng/xui/widget/XImageView;

    sget v8, Lbez$c;->ic_32_list_like_nor:I

    invoke-virtual {v7, v8}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 212
    iget-object v7, p1, Lbii$b;->c:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v7, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setSelected(Z)V

    .line 216
    :goto_5
    invoke-static {p1}, Lbii$b;->a(Lbii$b;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;->a(I)V

    .line 217
    invoke-static {p1}, Lbii$b;->a(Lbii$b;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;->b(I)V

    .line 218
    invoke-static {p1}, Lbii$b;->b(Lbii$b;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;->a(I)V

    .line 219
    invoke-static {p1}, Lbii$b;->b(Lbii$b;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;->b(I)V

    .line 220
    iget-object v7, p1, Lbii$b;->g:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    invoke-virtual {v7, p2}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->setVuiPosition(I)V

    .line 221
    iget-object v7, p1, Lbii$b;->g:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p1, Lbii$b;->g:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    invoke-virtual {v9}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->setVuiElementId(Ljava/lang/String;)V

    .line 222
    iget-object v7, p1, Lbii$b;->g:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p1, Lbii$b;->g:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    invoke-virtual {v10}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->getId()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 223
    iget-object v7, p1, Lbii$b;->l:Lcom/xiaopeng/xui/view/XView;

    invoke-virtual {v7, p2}, Lcom/xiaopeng/xui/view/XView;->setVuiPosition(I)V

    .line 224
    iget-object v7, p1, Lbii$b;->l:Lcom/xiaopeng/xui/view/XView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p1, Lbii$b;->l:Lcom/xiaopeng/xui/view/XView;

    invoke-virtual {v10}, Lcom/xiaopeng/xui/view/XView;->getId()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/xiaopeng/xui/view/XView;->setVuiElementId(Ljava/lang/String;)V

    .line 225
    iget-object v7, p1, Lbii$b;->l:Lcom/xiaopeng/xui/view/XView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p1, Lbii$b;->l:Lcom/xiaopeng/xui/view/XView;

    invoke-virtual {v10}, Lcom/xiaopeng/xui/view/XView;->getId()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/xiaopeng/xui/view/XView;->setTag(Ljava/lang/Object;)V

    .line 226
    iget-object v7, p1, Lbii$b;->g:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    iget-object v8, p1, Lbii$b;->g:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    invoke-virtual {v8}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v10, Lbez$g;->vui_play_position:I

    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v5, v5, [Ljava/lang/Object;

    .line 227
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    .line 226
    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->setVuiLabel(Ljava/lang/String;)V

    .line 228
    iget-object v0, p1, Lbii$b;->l:Lcom/xiaopeng/xui/view/XView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lbii$b;->l:Lcom/xiaopeng/xui/view/XView;

    invoke-static {v0, v1, v4}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 229
    iget-object v0, p1, Lbii$b;->c:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xui/widget/XImageView;->setVuiPosition(I)V

    .line 230
    iget-object v0, p1, Lbii$b;->c:Lcom/xiaopeng/xui/widget/XImageView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lbii$b;->c:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XImageView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVuiElementId(Ljava/lang/String;)V

    .line 231
    iget-object v0, p1, Lbii$b;->c:Lcom/xiaopeng/xui/widget/XImageView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lbii$b;->c:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XImageView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setTag(Ljava/lang/Object;)V

    .line 233
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "defaultExecElementId"

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lbii$b;->l:Lcom/xiaopeng/xui/view/XView;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/view/XView;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    iget-object p2, p1, Lbii$b;->g:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :catch_0
    iget-object p2, p1, Lbii$b;->g:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p2

    iget-object p1, p1, Lbii$b;->g:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->setExecuteVirtualTag(Landroid/view/View;)V

    :cond_d
    :goto_6
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 3

    .line 89
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0, p1, p2}, Lbii;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_1

    .line 92
    :cond_0
    invoke-virtual {p0, p2}, Lbii;->c(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-eqz p2, :cond_5

    const/4 v0, 0x0

    .line 94
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .line 95
    invoke-virtual {p2, p3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHot(Z)V

    .line 96
    instance-of p2, p1, Lbii$b;

    if-eqz p2, :cond_5

    .line 97
    check-cast p1, Lbii$b;

    .line 98
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p2

    invoke-virtual {p2}, Lbdu;->d()I

    move-result p2

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p2, v1, :cond_1

    move p2, v2

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    .line 102
    iget-object p2, p1, Lbii$b;->c:Lcom/xiaopeng/xui/widget/XImageView;

    sget p3, Lbez$c;->ic_32_cloudlike_hl:I

    invoke-virtual {p2, p3}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 103
    iget-object p1, p1, Lbii$b;->c:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setSelected(Z)V

    goto :goto_1

    .line 105
    :cond_2
    iget-object p2, p1, Lbii$b;->c:Lcom/xiaopeng/xui/widget/XImageView;

    sget p3, Lbez$c;->ic_32_cloudlike_nor:I

    invoke-virtual {p2, p3}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 106
    iget-object p1, p1, Lbii$b;->c:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setSelected(Z)V

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    .line 110
    iget-object p2, p1, Lbii$b;->c:Lcom/xiaopeng/xui/widget/XImageView;

    sget p3, Lbez$c;->ic_32_list_like_hl:I

    invoke-virtual {p2, p3}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 111
    iget-object p1, p1, Lbii$b;->c:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setSelected(Z)V

    goto :goto_1

    .line 113
    :cond_4
    iget-object p2, p1, Lbii$b;->c:Lcom/xiaopeng/xui/widget/XImageView;

    sget p3, Lbez$c;->ic_32_list_like_nor:I

    invoke-virtual {p2, p3}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 114
    iget-object p1, p1, Lbii$b;->c:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setSelected(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 79
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lbez$f;->item_musiclist_foot_view:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 80
    new-instance p2, Lbii$a;

    invoke-direct {p2, p0, p1}, Lbii$a;-><init>(Lbii;Landroid/view/View;)V

    return-object p2

    .line 82
    :cond_0
    invoke-virtual {p0}, Lbii;->c()Landroid/view/View;

    move-result-object p1

    .line 83
    new-instance p2, Lbii$b;

    invoke-direct {p2, p0, p1}, Lbii$b;-><init>(Lbii;Landroid/view/View;)V

    return-object p2
.end method
