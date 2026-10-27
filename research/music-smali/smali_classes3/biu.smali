.class public Lbiu;
.super Lcom/xiaopeng/musicradio/commonui/adapter/h;
.source "MsRankAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbiu$a;
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
.field private g:I

.field private h:I

.field private i:Ljava/lang/StringBuffer;

.field private j:Z

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 56
    sget v0, Lbez$f;->music_item_rank:I

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/h;-><init>(Landroid/content/Context;I)V

    const/4 p1, -0x1

    .line 46
    iput p1, p0, Lbiu;->g:I

    const/4 p1, 0x1

    .line 48
    iput p1, p0, Lbiu;->h:I

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lbiu;->j:Z

    .line 53
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object p1

    invoke-virtual {p1}, Lbdt;->m()I

    move-result p1

    iput p1, p0, Lbiu;->k:I

    .line 57
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object p1

    invoke-virtual {p1}, Lbdt;->m()I

    move-result p1

    const-string v0, "SELECT_MENU_SCENE"

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lbiu;->k:I

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, " - "

    .line 276
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 278
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 279
    aget-object p1, v0, v2

    return-object p1

    .line 282
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/musicradio/vui/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(ILbiu$a;)V
    .locals 2

    .line 212
    invoke-static {p2}, Lbiu$a;->e(Lbiu$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Lbxo;->a(ZILcom/xiaopeng/xui/widget/XImageView;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 216
    :goto_0
    iget-boolean p1, p0, Lbiu;->j:Z

    if-eq p1, v1, :cond_1

    .line 217
    invoke-static {p2}, Lbiu$a;->g(Lbiu$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p2}, Lbiu$a;->g(Lbiu$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 218
    invoke-static {p2}, Lbiu$a;->g(Lbiu$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    iget v0, p0, Lbiu;->k:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->i(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lbiu$a;->g(Lbiu$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 219
    iput-boolean v1, p0, Lbiu;->j:Z

    :cond_1
    return-void
.end method

.method private a(ILbiu$a;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;Z)V
    .locals 6

    .line 180
    iget-object v0, p0, Lbiu;->i:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lbiu;->i:Ljava/lang/StringBuffer;

    .line 184
    :cond_0
    iget-object v0, p0, Lbiu;->i:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 185
    iget-object v0, p0, Lbiu;->i:Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getRankName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getSongInfos()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x2

    const-string/jumbo v3, "|"

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 187
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v2, :cond_1

    .line 188
    iget-object v0, p0, Lbiu;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getSongInfos()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/musicradio/bean/db/SongInfo;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/db/SongInfo;->getSongName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lbiu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getSongInfos()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xiaopeng/musicradio/bean/db/SongInfo;

    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/db/SongInfo;->getSongName()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lbiu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 191
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 192
    iget-object v0, p0, Lbiu;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getSongInfos()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xiaopeng/musicradio/bean/db/SongInfo;

    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/db/SongInfo;->getSongName()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lbiu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    :cond_2
    :goto_0
    invoke-static {p2}, Lbiu$a;->l(Lbiu$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object p3

    invoke-static {p2}, Lbiu$a;->a(Lbiu$a;)Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lbez$g;->vui_play_position:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lbiu;->i:Ljava/lang/StringBuffer;

    .line 196
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    iget v1, p0, Lbiu;->h:I

    add-int/2addr v1, p1

    .line 197
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    iget v1, p0, Lbiu;->h:I

    add-int/2addr v1, p1

    .line 198
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    .line 195
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiLabel(Ljava/lang/String;)V

    .line 199
    invoke-static {p2}, Lbiu$a;->l(Lbiu$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiPosition(I)V

    .line 200
    invoke-static {p2}, Lbiu$a;->l(Lbiu$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lbiu$a;->l(Lbiu$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiElementId(Ljava/lang/String;)V

    .line 201
    invoke-static {p2}, Lbiu$a;->m(Lbiu$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiPosition(I)V

    .line 202
    invoke-static {p2}, Lbiu$a;->m(Lbiu$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object p3

    sget-object v0, Lbxy;->BUTTON:Lbxy;

    invoke-virtual {p3, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiElementType(Lbxy;)V

    .line 203
    invoke-static {p2}, Lbiu$a;->m(Lbiu$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lbiu$a;->m(Lbiu$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiElementId(Ljava/lang/String;)V

    .line 204
    invoke-static {p2}, Lbiu$a;->g(Lbiu$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiPosition(I)V

    .line 205
    invoke-static {p2}, Lbiu$a;->g(Lbiu$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lbiu$a;->g(Lbiu$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiElementId(Ljava/lang/String;)V

    .line 206
    invoke-static {p2}, Lbiu$a;->g(Lbiu$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object p3

    invoke-virtual {p3}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p2}, Lbiu$a;->g(Lbiu$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v0

    invoke-static {p3, v0, p4}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 207
    invoke-static {p2}, Lbiu$a;->l(Lbiu$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lbiu$a;->m(Lbiu$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getId()I

    move-result p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/xiaopeng/musicradio/vui/c;->a(Lcom/xiaopeng/xui/vui/VuiView;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;ILbiu$a;)V
    .locals 6

    .line 146
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v1

    invoke-virtual {v1}, Lbqp;->b()I

    move-result v1

    .line 149
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v2

    invoke-virtual {v2}, Lbid;->g()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 150
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "listsign_rank_music"

    .line 151
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\"collectId\":\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    if-eqz v0, :cond_3

    .line 157
    iput p2, p0, Lbiu;->g:I

    .line 158
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->q()I

    move-result v0

    .line 159
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setPlayState(I)V

    if-eq v0, v3, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 168
    invoke-direct {p0, v4, p3}, Lbiu;->a(ILbiu$a;)V

    goto :goto_1

    :cond_1
    move v4, v3

    .line 165
    :cond_2
    invoke-direct {p0, v0, p3}, Lbiu;->a(ILbiu$a;)V

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    .line 172
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setPlayState(I)V

    .line 173
    invoke-direct {p0, v4, p3}, Lbiu;->a(ILbiu$a;)V

    .line 176
    :goto_1
    invoke-direct {p0, p2, p3, p1, v4}, Lbiu;->a(ILbiu$a;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;Z)V

    return-void
.end method

.method private a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;Lbiu$a;)V
    .locals 5

    .line 117
    invoke-static {}, Lbit;->a()Lbit;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbit;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getSongInfos()Ljava/util/List;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_3

    .line 122
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt p1, v1, :cond_1

    .line 123
    invoke-static {p2}, Lbiu$a;->h(Lbiu$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/SongInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/SongInfo;->getSongName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lbiu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-static {p2}, Lbiu$a;->i(Lbiu$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/SongInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/SongInfo;->getSongName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lbiu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-static {p2}, Lbiu$a;->j(Lbiu$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/SongInfo;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/SongInfo;->getSongName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lbiu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 126
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_2

    .line 127
    invoke-static {p2}, Lbiu$a;->h(Lbiu$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/SongInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/SongInfo;->getSongName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lbiu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-static {p2}, Lbiu$a;->i(Lbiu$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/SongInfo;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/SongInfo;->getSongName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lbiu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 129
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v3, :cond_3

    .line 130
    invoke-static {p2}, Lbiu$a;->h(Lbiu$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/SongInfo;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/SongInfo;->getSongName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lbiu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private b(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;Lbiu$a;)V
    .locals 3

    .line 136
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v1

    invoke-virtual {v1}, Lbdu;->d()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 138
    invoke-static {}, Lbit;->a()Lbit;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbit;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    invoke-static {}, Lbit;->a()Lbit;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbit;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    :cond_0
    invoke-static {p2}, Lbiu$a;->k(Lbiu$a;)Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lbez$c;->pic_covers_music_220:I

    invoke-static {p2}, Lbiu$a;->k(Lbiu$a;)Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/16 v0, 0x12

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbiu$a;
    .locals 0

    .line 68
    invoke-virtual {p0}, Lbiu;->c()Landroid/view/View;

    move-result-object p1

    .line 69
    new-instance p2, Lbiu$a;

    invoke-direct {p2, p0, p1}, Lbiu$a;-><init>(Lbiu;Landroid/view/View;)V

    return-object p2
.end method

.method public g()I
    .locals 1

    .line 263
    iget v0, p0, Lbiu;->g:I

    return v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;"
        }
    .end annotation

    .line 271
    invoke-virtual {p0}, Lbiu;->i()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 98
    check-cast p1, Lbiu$a;

    .line 99
    invoke-virtual {p0, p2}, Lbiu;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    if-eqz v0, :cond_1

    .line 101
    invoke-static {p1}, Lbiu$a;->b(Lbiu$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getRankName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-static {p1}, Lbiu$a;->c(Lbiu$a;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;->a(I)V

    .line 103
    invoke-static {p1}, Lbiu$a;->c(Lbiu$a;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;->b(I)V

    .line 104
    invoke-static {p1}, Lbiu$a;->d(Lbiu$a;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;->a(I)V

    .line 105
    invoke-static {p1}, Lbiu$a;->d(Lbiu$a;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;->b(I)V

    .line 107
    invoke-direct {p0, v0, p1}, Lbiu;->a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;Lbiu$a;)V

    .line 108
    invoke-direct {p0, v0, p1}, Lbiu;->b(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;Lbiu$a;)V

    .line 109
    invoke-direct {p0, v0, p2, p1}, Lbiu;->a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;ILbiu$a;)V

    .line 110
    invoke-static {p1}, Lbiu$a;->a(Lbiu$a;)Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    move-result-object v0

    iget v1, p0, Lbiu;->h:I

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->setText(I)V

    .line 111
    invoke-static {p1}, Lbiu$a;->a(Lbiu$a;)Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    move-result-object p2

    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {p2, v2}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->setVisibility(I)V

    .line 112
    invoke-static {p1}, Lbiu$a;->e(Lbiu$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object p2

    invoke-static {p1}, Lbiu$a;->f(Lbiu$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v0

    invoke-static {p1}, Lbiu$a;->g(Lbiu$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object p1

    iget-boolean v1, p0, Lbiu;->j:Z

    invoke-static {p2, v0, p1, v1}, Lbxo;->a(Lcom/xiaopeng/xui/widget/XImageView;Lcom/xiaopeng/xui/widget/XFrameLayout;Lcom/xiaopeng/xui/widget/XFrameLayout;Z)V

    :cond_1
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 3

    .line 74
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0, p1, p2}, Lbiu;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_1

    .line 77
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p0, p2}, Lbiu;->c(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "payload_playstate"

    .line 78
    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    move-object v0, p1

    check-cast v0, Lbiu$a;

    .line 80
    invoke-virtual {p0, p2}, Lbiu;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-direct {p0, v1, p2, v0}, Lbiu;->a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;ILbiu$a;)V

    :cond_1
    const-string v0, "payload"

    .line 82
    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    move-object v0, p1

    check-cast v0, Lbiu$a;

    .line 84
    invoke-static {v0}, Lbiu$a;->a(Lbiu$a;)Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    move-result-object v1

    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->setVisibility(I)V

    .line 85
    invoke-virtual {p0, p2}, Lbiu;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    .line 86
    invoke-direct {p0, v1, v0}, Lbiu;->b(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;Lbiu$a;)V

    :cond_3
    const-string v0, "payload_song_name"

    .line 88
    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 89
    check-cast p1, Lbiu$a;

    .line 90
    invoke-virtual {p0, p2}, Lbiu;->c(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-direct {p0, p2, p1}, Lbiu;->a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;Lbiu$a;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 44
    invoke-virtual {p0, p1, p2}, Lbiu;->a(Landroid/view/ViewGroup;I)Lbiu$a;

    move-result-object p1

    return-object p1
.end method
