.class public Lcom/xiaopeng/musicradio/music/player/view/k;
.super Lcom/xiaopeng/musicradio/commonui/adapter/i;
.source "MusicPlayListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/music/player/view/k$c;,
        Lcom/xiaopeng/musicradio/music/player/view/k$d;,
        Lcom/xiaopeng/musicradio/music/player/view/k$a;,
        Lcom/xiaopeng/musicradio/music/player/view/k$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/adapter/i<",
        "Lcom/xiaopeng/musicradio/music/player/view/k$d;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private g:Lcom/xiaopeng/musicradio/music/player/view/k$c;

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 59
    sget v0, Lbez$f;->item_music_play_list:I

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/i;-><init>(Landroid/content/Context;I)V

    const/4 p1, -0x1

    .line 51
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/view/k;->h:I

    .line 52
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/view/k;->i:I

    const-string p1, "payload_label_color"

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/k;->j:Ljava/lang/String;

    const-string p1, "payload_duration"

    .line 55
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/k;->k:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/player/view/k;)Lcom/xiaopeng/musicradio/music/player/view/k$c;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/player/view/k;->g:Lcom/xiaopeng/musicradio/music/player/view/k$c;

    return-object p0
.end method

.method private a(Lcom/xiaopeng/musicradio/music/player/view/k$b;I)V
    .locals 10

    .line 127
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/music/player/view/k;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/view/k$d;

    if-eqz v0, :cond_11

    .line 128
    iget-object v1, v0, Lcom/xiaopeng/musicradio/music/player/view/k$d;->c:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-nez v1, :cond_0

    goto/16 :goto_7

    .line 131
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindDataHolder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/xiaopeng/musicradio/music/player/view/k$d;->c:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " playTime = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/xiaopeng/musicradio/music/player/view/k$d;->c:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongPlayTime()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " location =  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/xiaopeng/musicradio/music/player/view/k$d;->c:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLocaiotn()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MusicPlayListAdapter"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->b:Lcom/xiaopeng/xui/widget/XTextView;

    add-int/lit8 v4, p2, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->f:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v5, v0, Lcom/xiaopeng/musicradio/music/player/view/k$d;->c:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v1, v0, Lcom/xiaopeng/musicradio/music/player/view/k$d;->c:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongPlayTime()I

    move-result v1

    if-lez v1, :cond_1

    .line 135
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->p:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v5, v0, Lcom/xiaopeng/musicradio/music/player/view/k$d;->c:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongPlayTime()I

    move-result v5

    invoke-static {v5}, Lcom/xiaopeng/musicradio/utils/r;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 137
    :cond_1
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->p:Lcom/xiaopeng/xui/widget/XTextView;

    const-string v5, ""

    invoke-virtual {v1, v5}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :goto_0
    iget-object v1, v0, Lcom/xiaopeng/musicradio/music/player/view/k$d;->c:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    .line 140
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->g:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v1, v5}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 141
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->k:Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;

    invoke-virtual {v1, v5}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->setVisibility(I)V

    goto :goto_1

    .line 143
    :cond_2
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->g:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v1, v6}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 144
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->k:Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;

    invoke-virtual {v1, v6}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->setVisibility(I)V

    .line 145
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->g:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v7, v0, Lcom/xiaopeng/musicradio/music/player/view/k$d;->c:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v7}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->k:Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;

    iget-object v7, v0, Lcom/xiaopeng/musicradio/music/player/view/k$d;->c:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v8

    invoke-virtual {v8}, Lbid;->s()I

    move-result v8

    invoke-virtual {v1, v7, v8}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    .line 149
    :goto_1
    iget-object v1, v0, Lcom/xiaopeng/musicradio/music/player/view/k$d;->c:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/xiaopeng/musicradio/music/player/view/k$d;->c:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumLogo()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    iget-object v1, v0, Lcom/xiaopeng/musicradio/music/player/view/k$d;->c:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v1

    .line 150
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 151
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->i:Lcom/xiaopeng/xui/widget/XImageView;

    sget v7, Lbez$c;->pic_covers_music_220:I

    invoke-virtual {v1, v7}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_3

    .line 153
    :cond_4
    iget-object v7, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->i:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v7, v6}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 154
    iget-object v7, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 155
    invoke-static {}, Lcom/xiaopeng/musicradio/common/l;->a()Lcom/xiaopeng/musicradio/common/l;

    move-result-object v8

    sget v9, Lbez$c;->pic_covers_music_220:I

    invoke-virtual {v8, v9}, Lcom/xiaopeng/musicradio/common/l;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iget-object v9, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->i:Lcom/xiaopeng/xui/widget/XImageView;

    .line 154
    invoke-static {v7, v1, v8, v9}, Lcom/xiaopeng/musicradio/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    .line 158
    :goto_3
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->d:Lcom/xiaopeng/xui/widget/XImageView;

    if-eqz v1, :cond_6

    .line 159
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->d:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/music/player/view/k;->a(Lcom/xiaopeng/xui/widget/XImageView;)V

    .line 160
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->d:Lcom/xiaopeng/xui/widget/XImageView;

    iget-boolean v7, v0, Lcom/xiaopeng/musicradio/music/player/view/k$d;->d:Z

    invoke-virtual {v1, v7}, Lcom/xiaopeng/xui/widget/XImageView;->setSelected(Z)V

    .line 161
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->d:Lcom/xiaopeng/xui/widget/XImageView;

    new-instance v7, Lcom/xiaopeng/musicradio/music/player/view/k$1;

    invoke-direct {v7, p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/k$1;-><init>(Lcom/xiaopeng/musicradio/music/player/view/k;Lcom/xiaopeng/musicradio/music/player/view/k$d;)V

    invoke-virtual {v1, v7}, Lcom/xiaopeng/xui/widget/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->d:Lcom/xiaopeng/xui/widget/XImageView;

    iget-boolean v7, v0, Lcom/xiaopeng/musicradio/music/player/view/k$d;->e:Z

    if-eqz v7, :cond_5

    move v7, v5

    goto :goto_4

    :cond_5
    move v7, v6

    :goto_4
    invoke-virtual {v1, v7}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 173
    :cond_6
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->l:Lcom/xiaopeng/xui/widget/XTextView;

    if-eqz v1, :cond_8

    .line 174
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->l:Lcom/xiaopeng/xui/widget/XTextView;

    iget-boolean v7, v0, Lcom/xiaopeng/musicradio/music/player/view/k$d;->e:Z

    if-eqz v7, :cond_7

    move v7, v6

    goto :goto_5

    :cond_7
    move v7, v5

    :goto_5
    invoke-virtual {v1, v7}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 176
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/xiaopeng/musicradio/music/player/view/k$d;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/xiaopeng/musicradio/music/player/view/k$d;->c:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget v1, v0, Lcom/xiaopeng/musicradio/music/player/view/k$d;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_9

    .line 178
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->e:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->smoothToHide()V

    .line 179
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->e:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {v1, v5}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->setVisibility(I)V

    .line 180
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->h:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->n:Lcom/xiaopeng/xui/view/XView;

    invoke-virtual {v1, v5}, Lcom/xiaopeng/xui/view/XView;->setVisibility(I)V

    .line 182
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->m:Lcom/xiaopeng/xui/view/XView;

    invoke-virtual {v1, v6}, Lcom/xiaopeng/xui/view/XView;->setSelected(Z)V

    goto :goto_6

    .line 184
    :cond_9
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->m:Lcom/xiaopeng/xui/view/XView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/view/XView;->setSelected(Z)V

    .line 185
    iget v1, v0, Lcom/xiaopeng/musicradio/music/player/view/k$d;->b:I

    if-ne v1, v3, :cond_b

    .line 186
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->h:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->e:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->smoothToHide()V

    .line 188
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->e:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->setVisibility(I)V

    .line 189
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->n:Lcom/xiaopeng/xui/view/XView;

    invoke-virtual {v1, v6}, Lcom/xiaopeng/xui/view/XView;->setVisibility(I)V

    .line 190
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->d:Lcom/xiaopeng/xui/widget/XImageView;

    if-eqz v1, :cond_a

    .line 191
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->d:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v1, v5}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 193
    :cond_a
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->l:Lcom/xiaopeng/xui/widget/XTextView;

    if-eqz v1, :cond_d

    .line 194
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->l:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v1, v5}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_6

    .line 196
    :cond_b
    iget v1, v0, Lcom/xiaopeng/musicradio/music/player/view/k$d;->b:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_c

    .line 197
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->e:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {v1, v6}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->setVisibility(I)V

    .line 198
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->e:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->smoothToShow()V

    .line 199
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->h:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 200
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->n:Lcom/xiaopeng/xui/view/XView;

    invoke-virtual {v1, v6}, Lcom/xiaopeng/xui/view/XView;->setVisibility(I)V

    goto :goto_6

    .line 202
    :cond_c
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->e:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->stopAnimation()V

    .line 203
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->e:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {v1, v6}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->setVisibility(I)V

    .line 204
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->n:Lcom/xiaopeng/xui/view/XView;

    invoke-virtual {v1, v6}, Lcom/xiaopeng/xui/view/XView;->setVisibility(I)V

    .line 205
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->h:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 209
    :cond_d
    :goto_6
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->o:Lcom/xiaopeng/musicradio/widget/common/SpeechNumVoiceTagLayout;

    invoke-virtual {v1, v4}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumVoiceTagLayout;->setText(I)V

    .line 210
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->o:Lcom/xiaopeng/musicradio/widget/common/SpeechNumVoiceTagLayout;

    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result v3

    if-eqz v3, :cond_e

    move v5, v6

    :cond_e
    invoke-virtual {v1, v5}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumVoiceTagLayout;->setVisibility(I)V

    .line 212
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->a:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    new-instance v3, Lcom/xiaopeng/musicradio/music/player/view/k$2;

    invoke-direct {v3, p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/k$2;-><init>(Lcom/xiaopeng/musicradio/music/player/view/k;Lcom/xiaopeng/musicradio/music/player/view/k$d;)V

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget v1, p0, Lcom/xiaopeng/musicradio/music/player/view/k;->h:I

    if-eq v1, v2, :cond_f

    .line 222
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->k:Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;

    iget v2, p0, Lcom/xiaopeng/musicradio/music/player/view/k;->h:I

    iget v3, p0, Lcom/xiaopeng/musicradio/music/player/view/k;->i:I

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->a(II)V

    .line 225
    :cond_f
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->d:Lcom/xiaopeng/xui/widget/XImageView;

    if-eqz v1, :cond_10

    .line 226
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->d:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v1, p2}, Lcom/xiaopeng/xui/widget/XImageView;->setVuiPosition(I)V

    .line 227
    iget-object v1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->d:Lcom/xiaopeng/xui/widget/XImageView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->d:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XImageView;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setVuiElementId(Ljava/lang/String;)V

    .line 229
    :cond_10
    iget-object v1, v0, Lcom/xiaopeng/musicradio/music/player/view/k$d;->c:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->a:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    iget v0, v0, Lcom/xiaopeng/musicradio/music/player/view/k$d;->b:I

    iget-object v3, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->j:Lcom/xiaopeng/xui/view/XView;

    invoke-static {p2, v1, v2, v0, v3}, Lcom/xiaopeng/musicradio/vui/b;->a(ILjava/lang/String;Landroid/view/View;ILandroid/view/View;)V

    .line 230
    iget-object p2, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->a:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p2

    iget-object p1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->a:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->setExecuteVirtualTag(Landroid/view/View;)V

    :cond_11
    :goto_7
    return-void
.end method

.method private a(Lcom/xiaopeng/xui/widget/XImageView;)V
    .locals 2

    .line 248
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->s()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 250
    sget v0, Lbez$c;->bg_btn_love_selector_netease:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_0

    .line 252
    :cond_0
    sget v0, Lbez$c;->bg_btn_love_selector:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public a(II)V
    .locals 1

    .line 310
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/view/k;->h:I

    .line 311
    iput p2, p0, Lcom/xiaopeng/musicradio/music/player/view/k;->i:I

    .line 312
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/k;->getItemCount()I

    move-result p1

    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/player/view/k;->j:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaopeng/musicradio/music/player/view/k;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/music/player/view/k$c;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/k;->g:Lcom/xiaopeng/musicradio/music/player/view/k$c;

    return-void
.end method

.method protected a(Lcom/xiaopeng/musicradio/music/player/view/k$d;Lcom/xiaopeng/musicradio/music/player/view/k$d;II)Z
    .locals 0

    .line 68
    iget-object p1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$d;->a:Ljava/lang/String;

    iget-object p2, p2, Lcom/xiaopeng/musicradio/music/player/view/k$d;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;II)Z
    .locals 0

    .line 44
    check-cast p1, Lcom/xiaopeng/musicradio/music/player/view/k$d;

    check-cast p2, Lcom/xiaopeng/musicradio/music/player/view/k$d;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/music/player/view/k;->a(Lcom/xiaopeng/musicradio/music/player/view/k$d;Lcom/xiaopeng/musicradio/music/player/view/k$d;II)Z

    move-result p1

    return p1
.end method

.method protected b(Lcom/xiaopeng/musicradio/music/player/view/k$d;Lcom/xiaopeng/musicradio/music/player/view/k$d;II)Z
    .locals 0

    .line 73
    iget p3, p1, Lcom/xiaopeng/musicradio/music/player/view/k$d;->b:I

    iget p4, p2, Lcom/xiaopeng/musicradio/music/player/view/k$d;->b:I

    if-ne p3, p4, :cond_0

    iget-boolean p3, p1, Lcom/xiaopeng/musicradio/music/player/view/k$d;->d:Z

    iget-boolean p4, p2, Lcom/xiaopeng/musicradio/music/player/view/k$d;->d:Z

    if-ne p3, p4, :cond_0

    iget-object p1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$d;->c:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongPlayTime()I

    move-result p1

    iget-object p2, p2, Lcom/xiaopeng/musicradio/music/player/view/k$d;->c:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongPlayTime()I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;II)Z
    .locals 0

    .line 44
    check-cast p1, Lcom/xiaopeng/musicradio/music/player/view/k$d;

    check-cast p2, Lcom/xiaopeng/musicradio/music/player/view/k$d;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/music/player/view/k;->b(Lcom/xiaopeng/musicradio/music/player/view/k$d;Lcom/xiaopeng/musicradio/music/player/view/k$d;II)Z

    move-result p1

    return p1
.end method

.method public f()Z
    .locals 1

    .line 240
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/k;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/k;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/view/k$d;

    if-eqz v0, :cond_0

    .line 242
    iget-boolean v0, v0, Lcom/xiaopeng/musicradio/music/player/view/k$d;->f:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 258
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/player/view/k;->c(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/player/view/k$d;

    if-eqz p1, :cond_0

    .line 259
    iget-boolean p1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$d;->f:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public j()V
    .locals 3

    .line 316
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/k;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/k;->k:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/xiaopeng/musicradio/music/player/view/k;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/music/player/view/k$d;",
            ">;"
        }
    .end annotation

    .line 348
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/k;->i()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 121
    instance-of v0, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;

    if-eqz v0, :cond_0

    .line 122
    check-cast p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/music/player/view/k;->a(Lcom/xiaopeng/musicradio/music/player/view/k$b;I)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 95
    instance-of v0, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;

    if-eqz v0, :cond_4

    .line 96
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/music/player/view/k;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/k;->j:Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 100
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/k;->k:Ljava/lang/String;

    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz v0, :cond_2

    .line 102
    iget v0, p0, Lcom/xiaopeng/musicradio/music/player/view/k;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 105
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/view/k$b;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/player/view/k$b;->k:Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/player/view/k;->h:I

    iget v2, p0, Lcom/xiaopeng/musicradio/music/player/view/k;->i:I

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->a(II)V

    :cond_2
    if-eqz p3, :cond_4

    .line 108
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/music/player/view/k;->c(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/music/player/view/k$d;

    if-eqz p2, :cond_3

    .line 109
    iget-object p3, p2, Lcom/xiaopeng/musicradio/music/player/view/k$d;->c:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongPlayTime()I

    move-result p3

    if-lez p3, :cond_3

    .line 110
    check-cast p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->p:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object p2, p2, Lcom/xiaopeng/musicradio/music/player/view/k$d;->c:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongPlayTime()I

    move-result p2

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/r;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 112
    :cond_3
    check-cast p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;->p:Lcom/xiaopeng/xui/widget/XTextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 80
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lbez$f;->item_foot_view:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 81
    new-instance p2, Lcom/xiaopeng/musicradio/music/player/view/k$a;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/musicradio/music/player/view/k$a;-><init>(Lcom/xiaopeng/musicradio/music/player/view/k;Landroid/view/View;)V

    return-object p2

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/k;->c()Landroid/view/View;

    move-result-object p2

    .line 84
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    .line 86
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lbez$b;->music_playlist_height:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 88
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    new-instance p1, Lcom/xiaopeng/musicradio/music/player/view/k$b;

    invoke-direct {p1, p2}, Lcom/xiaopeng/musicradio/music/player/view/k$b;-><init>(Landroid/view/View;)V

    return-object p1
.end method
