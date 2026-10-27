.class public Lcom/xiaopeng/musicradio/playercomponent/big/view/g;
.super Lcom/xiaopeng/xui/widget/XConstraintLayout;
.source "PlayerInfoLayout.java"


# instance fields
.field protected a:Landroid/widget/FrameLayout;

.field protected b:Lcom/xiaopeng/xui/widget/XConstraintLayout;

.field private c:Lcom/xiaopeng/musicradio/widget/MarqueeTextView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/xiaopeng/xui/widget/XTextView;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 210
    iput p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->f:I

    .line 46
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->f()V

    return-void
.end method

.method private a(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 175
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p3, 0x3f800000    # 1.0f

    .line 178
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 179
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 181
    invoke-static {}, Laqz;->a()Laqz;

    move-result-object p2

    invoke-virtual {p2}, Laqz;->c()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 182
    invoke-virtual {p1}, Landroid/widget/TextView;->requestLayout()V

    .line 183
    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method private b(Landroid/widget/FrameLayout;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 245
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-nez p1, :cond_0

    .line 247
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->getAlbumSize()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 250
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->getAlbumSize()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-object p1
.end method

.method private f()V
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->a()V

    .line 61
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->b()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 68
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/ae;->a()Lcom/xiaopeng/musicradio/utils/ae;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->getLayoutId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/utils/ae;->b(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->getLayoutId()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 72
    :cond_0
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 73
    invoke-virtual {p0, v2, v3}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    :goto_0
    invoke-static {}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->enable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PlayerInfoLayout Layout.inflate.cost: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerInfoLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 107
    :goto_0
    invoke-static {}, Laqz;->a()Laqz;

    move-result-object v0

    invoke-virtual {v0}, Laqz;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->c:Lcom/xiaopeng/musicradio/widget/MarqueeTextView;

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->setSelected(Z)V

    :cond_1
    return-void
.end method

.method public a(II)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->c:Lcom/xiaopeng/musicradio/widget/MarqueeTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->setTextColor(I)V

    .line 195
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->d:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public a(IZ)V
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->e:Lcom/xiaopeng/xui/widget/XTextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 119
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0x8

    if-nez p1, :cond_1

    .line 121
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v2, :cond_2

    .line 123
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const-string p1, "VIP"

    .line 124
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    new-instance p1, Lcom/xiaopeng/musicradio/playercomponent/big/view/g$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g$1;-><init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/g;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 134
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p2, :cond_3

    .line 136
    sget p1, Lble$f;->player_buy:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 138
    :cond_3
    sget p1, Lble$f;->player_pay:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 141
    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public a(Landroid/widget/FrameLayout;)V
    .locals 2

    .line 232
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->h:Landroid/widget/FrameLayout;

    .line 233
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->a:Landroid/widget/FrameLayout;

    if-ne v0, v1, :cond_0

    return-void

    .line 237
    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->a:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->b(Landroid/widget/FrameLayout;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->c:Lcom/xiaopeng/musicradio/widget/MarqueeTextView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->d:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->a(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected b()V
    .locals 2

    .line 81
    sget v0, Lble$d;->layout_info:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XConstraintLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->b:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    .line 82
    sget v0, Lble$d;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->c:Lcom/xiaopeng/musicradio/widget/MarqueeTextView;

    .line 83
    sget v0, Lble$d;->tv_sub_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->d:Landroid/widget/TextView;

    .line 84
    sget v0, Lble$d;->layout_cover_stub:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->a:Landroid/widget/FrameLayout;

    .line 85
    sget v0, Lble$d;->title_label:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->e:Lcom/xiaopeng/xui/widget/XTextView;

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->b:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 88
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->enableViewVuiMode(Z)V

    :cond_0
    const-string v0, "PlayerInfoLayout"

    const-string v1, "RevealTransition initView: 1"

    .line 91
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->e:Lcom/xiaopeng/xui/widget/XTextView;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->e:Lcom/xiaopeng/xui/widget/XTextView;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/by;->a(Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->c:Lcom/xiaopeng/musicradio/widget/MarqueeTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()V
    .locals 3

    .line 188
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lble$f;->music_no_play_tip:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lble$f;->music_bar_tip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->c:Lcom/xiaopeng/musicradio/widget/MarqueeTextView;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->setAlpha(F)V

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->d:Landroid/widget/TextView;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 96
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 97
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 99
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 100
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e()V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->c:Lcom/xiaopeng/musicradio/widget/MarqueeTextView;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->a()V

    :cond_0
    return-void
.end method

.method protected getAlbumSize()I
    .locals 2

    .line 255
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lble$b;->player_album_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getInfoContainer()Landroid/view/View;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->b:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .line 259
    sget v0, Lble$e;->layout_player_info:I

    return v0
.end method

.method public getTagStub()Landroid/view/ViewStub;
    .locals 1

    .line 163
    sget v0, Lble$d;->viewstud_viptag:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 215
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->onMeasure(II)V

    .line 217
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->e()Ljava/lang/String;

    move-result-object p1

    .line 218
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result p2

    .line 219
    iget v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->f:I

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 222
    :cond_0
    iput p2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->f:I

    .line 223
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->g:Ljava/lang/String;

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMeasure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PlayerInfoLayout"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->h:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    .line 226
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->b(Landroid/widget/FrameLayout;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method
