.class public Lbkd;
.super Lcom/xiaopeng/musicradio/commonui/adapter/h;
.source "NrRadioAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbkd$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/adapter/h<",
        "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private g:Landroid/content/Context;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 55
    sget v0, Lbuc$f;->netradio_item_radio_list:I

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/h;-><init>(Landroid/content/Context;I)V

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lbkd;->h:I

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lbkd;->l:Z

    .line 56
    sget v0, Lbuc$g;->netradio_live:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbkd;->i:Ljava/lang/String;

    .line 57
    sget v0, Lbuc$g;->netradio_live_no_program:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbkd;->j:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lbkd;->g:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/commonui/adapter/h;-><init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;)V

    const/4 p2, -0x1

    .line 44
    iput p2, p0, Lbkd;->h:I

    const/4 p2, 0x0

    .line 50
    iput-boolean p2, p0, Lbkd;->l:Z

    .line 70
    sget p2, Lbuc$g;->netradio_live:I

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lbkd;->i:Ljava/lang/String;

    .line 71
    sget p2, Lbuc$g;->netradio_live_no_program:I

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lbkd;->j:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lbkd;->g:Landroid/content/Context;

    .line 73
    iput-object p5, p0, Lbkd;->m:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    return-void
.end method

.method private a(ILbkd$a;)V
    .locals 3

    .line 174
    invoke-static {p2}, Lbkd$a;->i(Lbkd$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object p2

    sget v0, Lbuc$c;->ic_nr_play:I

    sget v1, Lbuc$c;->ic_nr_pause:I

    const/4 v2, 0x1

    invoke-static {v2, p1, p2, v0, v1}, Lbxo;->a(ZILcom/xiaopeng/xui/widget/XImageView;II)V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/16 v0, 0x12

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbkd$a;
    .locals 0

    .line 78
    invoke-virtual {p0}, Lbkd;->c()Landroid/view/View;

    move-result-object p1

    .line 79
    new-instance p2, Lbkd$a;

    invoke-direct {p2, p0, p1}, Lbkd$a;-><init>(Lbkd;Landroid/view/View;)V

    return-object p2
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lbkd;->k:Ljava/lang/String;

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 212
    iput p1, p0, Lbkd;->h:I

    return-void
.end method

.method public g()I
    .locals 1

    .line 208
    iget v0, p0, Lbkd;->h:I

    return v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            ">;"
        }
    .end annotation

    .line 216
    invoke-virtual {p0}, Lbkd;->i()Ljava/util/List;

    move-result-object v0

    return-object v0
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

    .line 105
    check-cast p1, Lbkd$a;

    .line 106
    invoke-virtual {p0, p2}, Lbkd;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    if-eqz v0, :cond_a

    .line 108
    invoke-static {p1}, Lbkd$a;->e(Lbkd$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-static {p1}, Lbkd$a;->f(Lbkd$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v1

    iget-object v2, p0, Lbkd;->g:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayCount()I

    move-result v3

    int-to-double v3, v3

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/musicradio/utils/be;->a(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayingInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 111
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayingInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lbkd;->i:Ljava/lang/String;

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-static {p1}, Lbkd$a;->g(Lbkd$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v1

    iget-object v5, p0, Lbkd;->j:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 114
    :cond_0
    invoke-static {p1}, Lbkd$a;->g(Lbkd$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lbkd;->i:Ljava/lang/String;

    aput-object v6, v5, v4

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayingInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, "%s: %s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :cond_1
    :goto_0
    invoke-static {p1}, Lbkd$a;->b(Lbkd$a;)Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {p1}, Lbkd$a;->b(Lbkd$a;)Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    move-result-object v6

    invoke-static {p1}, Lbkd$a;->c(Lbkd$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v7

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPicUrl()Ljava/lang/String;

    move-result-object v8

    sget v9, Lbuc$c;->pic_covers_music_220:I

    sget v10, Lbuc$c;->bg_common_radio_item:I

    invoke-static/range {v5 .. v10}, Lbxo;->a(Landroid/content/Context;Lcom/xiaopeng/xui/widget/XImageView;Lcom/xiaopeng/xui/widget/XFrameLayout;Ljava/lang/String;II)V

    const/4 v1, 0x0

    .line 121
    invoke-static {}, Lbcz;->k()Lbcz;

    move-result-object v5

    invoke-virtual {v5}, Lbcz;->m()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 123
    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v1

    .line 125
    :cond_2
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v5

    invoke-virtual {v5}, Laqr;->b()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_3

    if-eqz v1, :cond_3

    .line 129
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result v5

    if-ne v1, v5, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v4

    :goto_1
    const/4 v5, 0x3

    if-eqz v1, :cond_6

    .line 134
    iput p2, p0, Lbkd;->h:I

    .line 135
    invoke-static {}, Lbcz;->k()Lbcz;

    move-result-object v1

    invoke-virtual {v1}, Lbcz;->getPlayState()I

    move-result v1

    if-eq v1, v3, :cond_5

    if-eq v1, v2, :cond_4

    if-eq v1, v5, :cond_5

    .line 146
    invoke-direct {p0, v4, p1}, Lbkd;->a(ILbkd$a;)V

    goto :goto_2

    .line 139
    :cond_4
    invoke-direct {p0, v1, p1}, Lbkd;->a(ILbkd$a;)V

    move v1, v3

    goto :goto_3

    .line 143
    :cond_5
    invoke-direct {p0, v1, p1}, Lbkd;->a(ILbkd$a;)V

    goto :goto_2

    .line 150
    :cond_6
    invoke-direct {p0, v4, p1}, Lbkd;->a(ILbkd$a;)V

    :goto_2
    move v1, v4

    .line 153
    :goto_3
    invoke-static {p1}, Lbkd$a;->d(Lbkd$a;)Landroid/view/View;

    move-result-object v6

    sget-object v7, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v7}, Lapo;->d(Landroid/content/Context;)Z

    move-result v7

    const/16 v8, 0x8

    if-eqz v7, :cond_7

    move v7, v4

    goto :goto_4

    :cond_7
    move v7, v8

    :goto_4
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 155
    invoke-static {p1}, Lbkd$a;->h(Lbkd$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v6

    invoke-static {p1}, Lbkd$a;->a(Lbkd$a;)Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lbuc$g;->vui_play_position:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    add-int/lit8 v0, p2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiLabel(Ljava/lang/String;)V

    .line 156
    invoke-static {p1}, Lbkd$a;->h(Lbkd$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiPosition(I)V

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lbkd$a;->h(Lbkd$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 158
    iget-object v5, p0, Lbkd;->m:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    if-eqz v5, :cond_8

    .line 159
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbkd;->m:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getVuiPosition()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 161
    :cond_8
    invoke-static {p1}, Lbkd$a;->h(Lbkd$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiElementId(Ljava/lang/String;)V

    .line 162
    iget-object v2, p0, Lbkd;->g:Landroid/content/Context;

    invoke-static {p1}, Lbkd$a;->h(Lbkd$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 164
    invoke-static {p1}, Lbkd$a;->a(Lbkd$a;)Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->setText(I)V

    .line 165
    invoke-static {p1}, Lbkd$a;->a(Lbkd$a;)Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_9
    move v4, v8

    :goto_5
    invoke-virtual {v0, v4}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->setVisibility(I)V

    .line 166
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;-><init>(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)V

    .line 167
    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;->a(I)V

    .line 168
    invoke-static {p1}, Lbkd$a;->h(Lbkd$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 9

    .line 89
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 90
    invoke-virtual {p0, p1, p2}, Lbkd;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_2

    .line 92
    :cond_0
    invoke-virtual {p0, p2}, Lbkd;->c(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 93
    check-cast p1, Lbkd$a;

    .line 94
    invoke-static {p1}, Lbkd$a;->a(Lbkd$a;)Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    move-result-object p3

    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {p3, v0}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->setVisibility(I)V

    .line 95
    invoke-virtual {p0, p2}, Lbkd;->c(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    .line 96
    invoke-static {p1}, Lbkd$a;->b(Lbkd$a;)Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    move-result-object p3

    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {p1}, Lbkd$a;->b(Lbkd$a;)Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    move-result-object v4

    invoke-static {p1}, Lbkd$a;->c(Lbkd$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v5

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPicUrl()Ljava/lang/String;

    move-result-object v6

    sget v7, Lbuc$c;->pic_covers_music_220:I

    sget v8, Lbuc$c;->bg_common_radio_item:I

    invoke-static/range {v3 .. v8}, Lbxo;->a(Landroid/content/Context;Lcom/xiaopeng/xui/widget/XImageView;Lcom/xiaopeng/xui/widget/XFrameLayout;Ljava/lang/String;II)V

    .line 98
    invoke-static {p1}, Lbkd$a;->d(Lbkd$a;)Landroid/view/View;

    move-result-object p1

    sget-object p2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p2}, Lapo;->d(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lbkd;->a(Landroid/view/ViewGroup;I)Lbkd$a;

    move-result-object p1

    return-object p1
.end method
