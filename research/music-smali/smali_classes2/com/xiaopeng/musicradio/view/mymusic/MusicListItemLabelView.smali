.class public Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseLinearLayout;
.source "MusicListItemLabelView.java"


# instance fields
.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;

.field private j:Ljava/lang/Integer;

.field private k:Ljava/lang/Integer;

.field private l:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseLinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 0

    return-void
.end method

.method private setLabelColor(Landroid/widget/TextView;)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected a()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 69
    new-instance v0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelPresenter;-><init>()V

    return-object v0
.end method

.method public a(II)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/xiaopeng/musicradio/utils/by;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/xiaopeng/musicradio/utils/by;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/xiaopeng/musicradio/utils/by;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 220
    iget-object p1, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/by;->a(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V
    .locals 9

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p2, v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/4 v4, 0x4

    if-ne p2, v4, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v2

    .line 121
    :goto_1
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isNeedVip()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 122
    iget-object v5, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->e()Z

    move-result v5

    if-nez v5, :cond_5

    .line 124
    sget v5, Lcom/xiaopeng/musicradio/common/k$b;->qq_vip_sq_lable_text_color:I

    .line 125
    sget v6, Lcom/xiaopeng/musicradio/common/k$d;->qq_vip_sq_lable_bg:I

    if-eqz v3, :cond_2

    .line 127
    sget v5, Lcom/xiaopeng/musicradio/common/k$b;->netease_vip_sq_lable_text_color:I

    .line 128
    sget v6, Lcom/xiaopeng/musicradio/common/k$d;->netease_vip_sq_lable_bg:I

    :cond_2
    if-eqz v4, :cond_3

    .line 131
    sget v5, Lcom/xiaopeng/musicradio/common/k$b;->kugou_vip_sq_lable_text_color:I

    .line 132
    sget v6, Lcom/xiaopeng/musicradio/common/k$d;->kugou_vip_sq_lable_bg:I

    .line 134
    :cond_3
    iget-object v7, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    iget-object v5, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    .line 139
    :cond_4
    iget-object v5, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    :goto_2
    const/4 v5, 0x5

    .line 141
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 143
    iget-object v5, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->e:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    sget v5, Lcom/xiaopeng/musicradio/common/k$b;->qq_vip_sq_lable_text_color:I

    .line 145
    sget v6, Lcom/xiaopeng/musicradio/common/k$b;->qq_vip_sq_lable_text_bg:I

    .line 146
    iget-object v7, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    iget-object v5, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_3

    .line 149
    :cond_6
    iget-object v5, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->e:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    :goto_3
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v5

    const/16 v6, 0x14

    if-eq v6, v5, :cond_8

    .line 152
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getOldMusicFrom()I

    move-result v5

    if-ne v6, v5, :cond_7

    goto :goto_4

    .line 163
    :cond_7
    iget-object v5, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->f:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 154
    :cond_8
    :goto_4
    iget-object v5, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->f:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->e()Z

    move-result v5

    if-nez v5, :cond_9

    .line 157
    sget v5, Lcom/xiaopeng/musicradio/common/k$b;->qq_vip_sq_lable_text_color:I

    .line 158
    sget v6, Lcom/xiaopeng/musicradio/common/k$b;->qq_vip_sq_lable_text_bg:I

    .line 159
    iget-object v7, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    iget-object v5, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 166
    :cond_9
    :goto_5
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->e()Z

    move-result v5

    if-nez v5, :cond_c

    .line 167
    sget v5, Lcom/xiaopeng/musicradio/common/k$b;->qq_vip_sq_lable_text_color:I

    .line 168
    sget v6, Lcom/xiaopeng/musicradio/common/k$d;->qq_vip_sq_lable_bg:I

    if-eqz v3, :cond_a

    .line 170
    sget v5, Lcom/xiaopeng/musicradio/common/k$b;->netease_vip_sq_lable_text_color:I

    .line 171
    sget v6, Lcom/xiaopeng/musicradio/common/k$d;->netease_vip_sq_lable_bg:I

    :cond_a
    if-eqz v4, :cond_b

    .line 174
    sget v5, Lcom/xiaopeng/musicradio/common/k$b;->kugou_vip_sq_lable_text_color:I

    .line 175
    sget v6, Lcom/xiaopeng/musicradio/common/k$d;->kugou_vip_sq_lable_bg:I

    .line 177
    :cond_b
    iget-object v3, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    iget-object v3, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 181
    :cond_c
    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isSupportSQ(I)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 182
    iget-object p2, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->d:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 184
    :cond_d
    iget-object p2, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->d:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    :goto_6
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->e()Z

    move-result p2

    if-nez p2, :cond_e

    .line 188
    sget p2, Lcom/xiaopeng/musicradio/common/k$b;->kugou_vip_sq_lable_text_color:I

    .line 189
    sget v3, Lcom/xiaopeng/musicradio/common/k$d;->kugou_vip_sq_lable_bg:I

    .line 190
    iget-object v4, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    iget-object v4, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 192
    iget-object v4, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    iget-object p2, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->h:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 196
    :cond_e
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isSupportHires()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 197
    iget-object p2, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->d:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    iget-object p2, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->g:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    iget-object p2, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->h:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    :cond_f
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isSupportMQ()Z

    move-result p2

    if-eqz p2, :cond_10

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/j;->h()I

    move-result p2

    if-ne p2, v0, :cond_10

    .line 202
    iget-object p2, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->d:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    iget-object p2, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->g:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    iget-object p2, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->h:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    :cond_10
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isSupportDB()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/j;->i()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 207
    iget-object p1, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    iget-object p1, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->i:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_11
    return-void
.end method

.method protected b()V
    .locals 1

    .line 74
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->iv_label_vip:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->c:Landroid/widget/TextView;

    .line 75
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->iv_label_sq:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->d:Landroid/widget/TextView;

    .line 76
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->iv_label_surprise:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->e:Landroid/widget/TextView;

    .line 77
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->iv_label_bt:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->f:Landroid/widget/TextView;

    .line 78
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->iv_label_hires:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->g:Landroid/widget/TextView;

    .line 79
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->iv_label_mq:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->h:Landroid/widget/TextView;

    .line 80
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->iv_label_dolby:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->i:Landroid/widget/ImageView;

    return-void
.end method

.method protected c()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->c:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->setLabelColor(Landroid/widget/TextView;)V

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->d:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->setLabelColor(Landroid/widget/TextView;)V

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->e:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->setLabelColor(Landroid/widget/TextView;)V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->f:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->setLabelColor(Landroid/widget/TextView;)V

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->g:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->setLabelColor(Landroid/widget/TextView;)V

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->h:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->setLabelColor(Landroid/widget/TextView;)V

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method protected e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContentViewId()I
    .locals 1

    .line 105
    sget v0, Lcom/xiaopeng/musicradio/common/k$f;->layout_music_list_item_label:I

    return v0
.end method

.method public setHeight(Ljava/lang/Integer;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->j:Ljava/lang/Integer;

    return-void
.end method

.method public setLabelMarginRight(Ljava/lang/Integer;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->l:Ljava/lang/Integer;

    return-void
.end method

.method public setMarginRight(Ljava/lang/Integer;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->k:Ljava/lang/Integer;

    return-void
.end method

.method public setMusicInfo(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 1

    .line 109
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    .line 110
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    return-void
.end method
