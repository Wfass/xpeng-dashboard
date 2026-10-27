.class public Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;
.super Lcom/xiaopeng/xui/widget/XConstraintLayout;
.source "ZoneMixItemLayout.java"


# instance fields
.field private a:Lcom/xiaopeng/xui/widget/XImageView;

.field private b:Lcom/xiaopeng/xui/widget/XTextView;

.field private c:Lcom/nex3z/flowlayout/FlowLayout;

.field private d:Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;

.field private e:Lcom/xiaopeng/xui/widget/XImageButton;

.field private f:Lcom/xiaopeng/xui/widget/XConstraintLayout;

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->g:I

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->g:I

    .line 42
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->g:I

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->a()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;)Lcom/nex3z/flowlayout/FlowLayout;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->c:Lcom/nex3z/flowlayout/FlowLayout;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 51
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lbez$f;->item_kugou_zone_container:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 52
    sget v0, Lbez$d;->kugou_zone_binder_root:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XConstraintLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->f:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    .line 53
    sget v0, Lbez$d;->title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->b:Lcom/xiaopeng/xui/widget/XTextView;

    .line 54
    sget v0, Lbez$d;->container_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nex3z/flowlayout/FlowLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->c:Lcom/nex3z/flowlayout/FlowLayout;

    .line 55
    sget v0, Lbez$d;->play_all:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->d:Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;

    .line 56
    sget v0, Lbez$d;->img_click_tip:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->a:Lcom/xiaopeng/xui/widget/XImageView;

    .line 57
    sget v0, Lbez$d;->feel_lucky:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->e:Lcom/xiaopeng/xui/widget/XImageButton;

    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->c:Lcom/nex3z/flowlayout/FlowLayout;

    invoke-virtual {v0, p1}, Lcom/nex3z/flowlayout/FlowLayout;->setMaxRows(I)V

    .line 62
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->c:Lcom/nex3z/flowlayout/FlowLayout;

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Lcom/nex3z/flowlayout/FlowLayout;->setRowSpacing(F)V

    .line 63
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->c:Lcom/nex3z/flowlayout/FlowLayout;

    invoke-virtual {p1, p2}, Lcom/nex3z/flowlayout/FlowLayout;->setChildSpacing(I)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->b:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->b:Lcom/xiaopeng/xui/widget/XTextView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiLabelUnSupportText([Landroid/view/View;)V

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->f:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/vui/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->setVuiLabel(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->b:Lcom/xiaopeng/xui/widget/XTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->b:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XTextView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->f:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->f:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->f:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->b:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2, v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getVuiElementTag(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/vui/c;->a(Lcom/xiaopeng/xui/vui/VuiView;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/List;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->c:Lcom/nex3z/flowlayout/FlowLayout;

    invoke-virtual {v0}, Lcom/nex3z/flowlayout/FlowLayout;->removeAllViews()V

    .line 68
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 69
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, p3, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 70
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->c:Lcom/nex3z/flowlayout/FlowLayout;

    invoke-virtual {v2, v0, v1}, Lcom/nex3z/flowlayout/FlowLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 72
    :cond_0
    new-instance p1, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;)V

    const-wide/16 p2, 0x32

    invoke-static {p1, p2, p3}, Lbql;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->c:Lcom/nex3z/flowlayout/FlowLayout;

    return-object v0
.end method

.method public getPlayAllText()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->d:Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;->getBtnText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleTv()Lcom/xiaopeng/xui/widget/XTextView;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->b:Lcom/xiaopeng/xui/widget/XTextView;

    return-object v0
.end method

.method public setClickVisibility(Z)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->a:Lcom/xiaopeng/xui/widget/XImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->b:Lcom/xiaopeng/xui/widget/XTextView;

    if-eqz p1, :cond_1

    sget-object p1, Lbya;->NORMAL:Lbya;

    goto :goto_1

    :cond_1
    sget-object p1, Lbya;->DISABLED:Lbya;

    :goto_1
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiMode(Lbya;)V

    return-void
.end method

.method public setColumn(I)V
    .locals 0

    .line 141
    iput p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->h:I

    return-void
.end method

.method public setFeelLuckyBtnVisibility(I)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->e:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    return-void
.end method

.method public setFeelLuckyListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->e:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->e:Lcom/xiaopeng/xui/widget/XImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    .line 89
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->e:Lcom/xiaopeng/xui/widget/XImageButton;

    sget-object v0, Lbya;->NORMAL:Lbya;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiMode(Lbya;)V

    return-void
.end method

.method public setPlayAllBtnState(I)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->d:Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;->setPlayState(I)V

    return-void
.end method

.method public setPlayAllListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->d:Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->d:Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;->setVisibility(I)V

    .line 83
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->d:Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;

    sget-object v0, Lbya;->NORMAL:Lbya;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;->setVuiMode(Lbya;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->b:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->b:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->b:Lcom/xiaopeng/xui/widget/XTextView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiLabelUnSupportText([Landroid/view/View;)V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->f:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/vui/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->setVuiLabel(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->b:Lcom/xiaopeng/xui/widget/XTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->b:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XTextView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->f:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->f:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->f:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->b:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getVuiElementTag(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/vui/c;->a(Lcom/xiaopeng/xui/vui/VuiView;Ljava/lang/String;)V

    return-void
.end method
