.class public Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "UsbMusicListLayout.java"


# instance fields
.field protected a:Lcom/xiaopeng/xui/widget/XTextView;

.field protected b:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field protected c:Lcom/xiaopeng/xui/view/XView;

.field protected d:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

.field protected e:Lcom/xiaopeng/xui/widget/XTextView;

.field protected f:Lcom/xiaopeng/xui/widget/XTextView;

.field protected g:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field protected h:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field protected i:Lcom/xiaopeng/xui/view/XView;

.field protected j:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

.field protected k:I

.field protected l:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

.field private m:I

.field private n:Z

.field private o:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->n:Z

    .line 52
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->p:Z

    .line 56
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->n:Z

    .line 52
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->p:Z

    .line 61
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->n:Z

    .line 52
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->p:Z

    .line 66
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->a()V

    return-void
.end method

.method private c()V
    .locals 5

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setSelected(Z)V

    .line 123
    iget v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->m:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->d:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->smoothToShow()V

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->g:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->c:Lcom/xiaopeng/xui/view/XView;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/view/XView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->d:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->smoothToHide()V

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->g:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->c:Lcom/xiaopeng/xui/view/XView;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/view/XView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->d:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->d:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->stopAnimation()V

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->g:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->c:Lcom/xiaopeng/xui/view/XView;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/view/XView;->setVisibility(I)V

    goto :goto_0

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->d:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->smoothToHide()V

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->g:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->c:Lcom/xiaopeng/xui/view/XView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/view/XView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setSelected(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/usb/a$c;->usb_music_list_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 71
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->tv_speech_num:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->l:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    .line 72
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->root_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->h:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 73
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->view_item_vui:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/view/XView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->i:Lcom/xiaopeng/xui/view/XView;

    .line 74
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->num:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    .line 75
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->logo:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->b:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 76
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->mask:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/view/XView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->c:Lcom/xiaopeng/xui/view/XView;

    .line 77
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->play_state:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->d:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    .line 78
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->song:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->e:Lcom/xiaopeng/xui/widget/XTextView;

    .line 79
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->singer:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->f:Lcom/xiaopeng/xui/widget/XTextView;

    .line 81
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->lottie_loading:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->g:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/4 v0, -0x1

    .line 85
    iput v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->m:I

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;IZLcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;I)V
    .locals 1

    .line 96
    iput-object p4, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->o:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    .line 97
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->j:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 98
    iput p2, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->k:I

    .line 99
    iget-object p3, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object p4

    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->b:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {p3, p4, p5, v0}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 101
    iget-object p3, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->e:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object p3, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->f:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSinger()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->l:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;->setText(I)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 112
    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->l:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->l:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 174
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onAttachedToWindow()V

    .line 175
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->c()V

    return-void
.end method

.method public setAccountType(I)V
    .locals 0

    return-void
.end method

.method public setIsLabelVisible(Z)V
    .locals 0

    .line 179
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->p:Z

    return-void
.end method

.method public setPlayClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->h:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->h:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->tag_play:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public setPlayState(I)V
    .locals 7

    .line 145
    iput p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->m:I

    .line 146
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->c()V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    .line 151
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ms_list_item_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->k:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 152
    iget-object v4, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->o:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    if-eqz v4, :cond_1

    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->o:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getVuiPosition()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
    :cond_1
    iget-object v4, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->h:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iget v5, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->k:I

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiPosition(I)V

    .line 156
    iget-object v4, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->h:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v4}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->h:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v4, v5, v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    .line 157
    iget-object v3, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->h:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->h:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/vui/VuiEngine;->setExecuteVirtualTag(Landroid/view/View;)V

    .line 158
    iget-object v3, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->h:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/xiaopeng/musicradio/usb/a$d;->vui_play_position:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->j:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    iget v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->k:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->k:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiLabel(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->h:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiLayoutLoadable(Z)V

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->h:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->h:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method
