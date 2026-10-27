.class public Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;
.super Lcom/xiaopeng/xui/widget/XRelativeLayout;
.source "SingerItemLayout.java"


# instance fields
.field private a:Lcom/xiaopeng/xui/widget/XImageView;

.field private b:Lcom/xiaopeng/xui/widget/XImageView;

.field private c:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private d:Lcom/xiaopeng/xui/widget/XTextView;

.field private e:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private f:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

.field private g:Lcom/xiaopeng/xui/widget/XImageView;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 43
    sget p1, Lcom/xiaopeng/musicradio/common/k$d;->pic_covers_music_220:I

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->j:I

    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->m:Z

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    sget p1, Lcom/xiaopeng/musicradio/common/k$d;->pic_covers_music_220:I

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->j:I

    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->m:Z

    .line 57
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    sget p1, Lcom/xiaopeng/musicradio/common/k$d;->pic_covers_music_220:I

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->j:I

    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->m:Z

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->a()V

    return-void
.end method

.method private d()V
    .locals 2

    .line 163
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->h:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->b:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lcom/xiaopeng/musicradio/common/k$d;->ic_btn_playall:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->b:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lcom/xiaopeng/musicradio/common/k$d;->ic_btn_stop:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .line 66
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$f;->singer_item_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 67
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->addView(Landroid/view/View;)V

    .line 68
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->item_logo:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->a:Lcom/xiaopeng/xui/widget/XImageView;

    .line 69
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->play_icon:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->b:Lcom/xiaopeng/xui/widget/XImageView;

    .line 70
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->play_item_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->c:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 71
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->click_item_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->e:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 72
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->radio_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->d:Lcom/xiaopeng/xui/widget/XTextView;

    .line 73
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->tv_speech_num:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->f:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    .line 74
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->rank_img:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->g:Lcom/xiaopeng/xui/widget/XImageView;

    .line 75
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->play_icon_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->l:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->h:I

    .line 77
    sget v0, Lcom/xiaopeng/musicradio/common/k$d;->album_play_icon_selector:I

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->e:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/af;->a(ILandroid/view/View;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 128
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->d:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 81
    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->a(Ljava/lang/String;Ljava/lang/String;IIILcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IIILcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V
    .locals 4

    .line 85
    iput-object p2, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->i:Ljava/lang/String;

    .line 86
    iput p4, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->j:I

    .line 87
    iput p3, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->k:I

    .line 88
    iget-object p4, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->d:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p4, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-boolean p4, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->m:Z

    if-eqz p4, :cond_0

    .line 90
    iget-object p4, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->a:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p4}, Lcom/xiaopeng/xui/widget/XImageView;->getContext()Landroid/content/Context;

    move-result-object p4

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->j:I

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->a:Lcom/xiaopeng/xui/widget/XImageView;

    const/16 v2, 0x168

    invoke-static {p4, p2, v0, v1, v2}, Lbxo;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;I)V

    :cond_0
    const/4 p2, 0x1

    .line 92
    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->m:Z

    .line 93
    iget p4, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->k:I

    invoke-virtual {p0, p4}, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->setPosition(I)V

    .line 96
    invoke-virtual {p0, p3}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiPosition(I)V

    const-string p4, "_"

    if-eqz p6, :cond_1

    .line 97
    invoke-virtual {p6}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getVuiPosition()I

    move-result v0

    if-ltz v0, :cond_1

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getVuiPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiElementId(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiElementId(Ljava/lang/String;)V

    .line 102
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->vui_play_position:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x2

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiLabel(Ljava/lang/String;)V

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->e:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p6, :cond_2

    .line 105
    invoke-virtual {p6}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getVuiPosition()I

    move-result v0

    if-ltz v0, :cond_2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getVuiPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->e:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, p3}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiPosition(I)V

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->e:Lcom/xiaopeng/xui/widget/XFrameLayout;

    sget-object v1, Lbxy;->BUTTON:Lbxy;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiElementType(Lbxy;)V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->e:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiElementId(Ljava/lang/String;)V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->c:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->c:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v1, p3}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiPosition(I)V

    if-eqz p6, :cond_3

    .line 114
    invoke-virtual {p6}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getVuiPosition()I

    move-result p3

    if-ltz p3, :cond_3

    .line 115
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getVuiPosition()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    :cond_3
    iget-object p3, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->c:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p3, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiElementId(Ljava/lang/String;)V

    if-ne p5, v3, :cond_4

    goto :goto_1

    :cond_4
    move p2, v2

    .line 122
    :goto_1
    invoke-virtual {p0, p5}, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->setPlayState(I)V

    .line 123
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object p4, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->c:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-static {p3, p4, p2}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 124
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/vui/c;->a(Lcom/xiaopeng/xui/vui/VuiView;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 232
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->k:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->setPosition(I)V

    return-void
.end method

.method public c()V
    .locals 5

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->a:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->i:Ljava/lang/String;

    iget v2, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->j:I

    iget-object v3, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->a:Lcom/xiaopeng/xui/widget/XImageView;

    const/16 v4, 0x168

    invoke-static {v0, v1, v2, v3, v4}, Lbxo;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;I)V

    return-void
.end method

.method public getPlayControlView()Landroid/view/View;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->c:Lcom/xiaopeng/xui/widget/XFrameLayout;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->d:Lcom/xiaopeng/xui/widget/XTextView;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 184
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onAttachedToWindow()V

    .line 185
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->d()V

    .line 186
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->b()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 245
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "SingerItemLayout"

    const-string v0, "onConfigurationChanged: "

    .line 246
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->c()V

    return-void
.end method

.method public setNeedRefreshLogo(Z)V
    .locals 0

    .line 240
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->m:Z

    return-void
.end method

.method public setOpenDetailClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->e:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPlayClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->c:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->c:Lcom/xiaopeng/xui/widget/XFrameLayout;

    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->tag_play:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public setPlayState(I)V
    .locals 1

    .line 175
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->h:I

    if-ne v0, p1, :cond_0

    return-void

    .line 178
    :cond_0
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->h:I

    .line 179
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->d()V

    return-void
.end method

.method public setPosition(I)V
    .locals 2

    .line 136
    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->f:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 138
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->stub_speech_num:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 142
    :cond_0
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->tv_speech_num:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->f:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->f:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->f:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->setText(I)V

    goto :goto_0

    .line 147
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->f:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    if-eqz p1, :cond_3

    const/16 v0, 0x8

    .line 148
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;->d:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
