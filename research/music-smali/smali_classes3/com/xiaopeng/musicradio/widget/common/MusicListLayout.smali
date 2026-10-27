.class public Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "MusicListLayout.java"


# instance fields
.field protected a:Lcom/xiaopeng/xui/widget/XTextView;

.field protected b:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field protected c:Lcom/xiaopeng/xui/view/XView;

.field protected d:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

.field protected e:Lcom/xiaopeng/xui/widget/XTextView;

.field protected f:Lcom/xiaopeng/xui/widget/XTextView;

.field protected g:Lcom/xiaopeng/xui/widget/XTextView;

.field protected h:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field protected i:Lcom/xiaopeng/xui/widget/XCheckBox;

.field protected j:Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;

.field protected k:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field protected l:Lcom/xiaopeng/xui/view/XView;

.field protected m:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

.field protected n:I

.field protected o:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

.field private p:I

.field private q:I

.field private r:Z

.field private s:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->r:Z

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->r:Z

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->r:Z

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->a()V

    return-void
.end method

.method private c()V
    .locals 5

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setSelected(Z)V

    .line 137
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->p:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->d:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->smoothToShow()V

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->h:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->c:Lcom/xiaopeng/xui/view/XView;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/view/XView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->d:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->smoothToHide()V

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->h:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->c:Lcom/xiaopeng/xui/view/XView;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/view/XView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->d:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->d:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->stopAnimation()V

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->h:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->c:Lcom/xiaopeng/xui/view/XView;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/view/XView;->setVisibility(I)V

    goto :goto_0

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->d:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->smoothToHide()V

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->h:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->c:Lcom/xiaopeng/xui/view/XView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/view/XView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setSelected(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 68
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$f;->music_list_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 69
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->tv_speech_num:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->o:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    .line 70
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->root_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->k:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 71
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->view_item_vui:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/view/XView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->l:Lcom/xiaopeng/xui/view/XView;

    .line 72
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->num:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    .line 73
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->logo:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->b:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 74
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->mask:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/view/XView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->c:Lcom/xiaopeng/xui/view/XView;

    .line 75
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->play_state:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->d:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    .line 76
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->song:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->e:Lcom/xiaopeng/xui/widget/XTextView;

    .line 77
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->singer:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->f:Lcom/xiaopeng/xui/widget/XTextView;

    .line 78
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->time:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->g:Lcom/xiaopeng/xui/widget/XTextView;

    .line 79
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->lottie_loading:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->h:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 80
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->cb_select:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XCheckBox;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->i:Lcom/xiaopeng/xui/widget/XCheckBox;

    .line 81
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->music_label:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->j:Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;

    .line 82
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->q:I

    const/4 v0, -0x1

    .line 83
    iput v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->p:I

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;IZLcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;IZLcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V
    .locals 6

    .line 108
    sget v5, Lcom/xiaopeng/musicradio/common/k$d;->pic_covers_music_220:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;IZLcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;I)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;IZLcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;I)V
    .locals 2

    .line 112
    iput-object p4, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->s:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    .line 113
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->m:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 114
    iput p2, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->n:I

    .line 115
    iget-object p4, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->b:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {p4, v0, p5, v1}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 117
    iget-object p4, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->e:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object p4, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->f:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSinger()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object p4, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->g:Lcom/xiaopeng/xui/widget/XTextView;

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/16 p3, 0x8

    :goto_0
    invoke-virtual {p4, p3}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 120
    iget-object p3, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->g:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongPlayTime()I

    move-result p4

    invoke-static {p4}, Lcom/xiaopeng/musicradio/utils/r;->a(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object p3, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->j:Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;

    iget p4, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->q:I

    invoke-virtual {p3, p1, p4}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    .line 122
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->o:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;->setText(I)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 126
    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->o:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->o:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 188
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onAttachedToWindow()V

    .line 189
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->c()V

    return-void
.end method

.method public setAccountType(I)V
    .locals 0

    .line 178
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->q:I

    return-void
.end method

.method public setPlayClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->k:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->k:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->tag_play:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public setPlayState(I)V
    .locals 7

    .line 159
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->p:I

    .line 160
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->c()V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    .line 165
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ms_list_item_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->n:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 166
    iget-object v4, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->s:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    if-eqz v4, :cond_1

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->s:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getVuiPosition()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 169
    :cond_1
    iget-object v4, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->k:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iget v5, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->n:I

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiPosition(I)V

    .line 170
    iget-object v4, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->k:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v4}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->k:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v4, v5, v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    .line 171
    iget-object v3, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->k:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->k:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/vui/VuiEngine;->setExecuteVirtualTag(Landroid/view/View;)V

    .line 172
    iget-object v3, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->k:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/xiaopeng/musicradio/common/k$g;->vui_play_position:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->m:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->n:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->n:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiLabel(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->k:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiLayoutLoadable(Z)V

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->k:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->k:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method
