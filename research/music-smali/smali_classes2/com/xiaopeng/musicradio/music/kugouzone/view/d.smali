.class public Lcom/xiaopeng/musicradio/music/kugouzone/view/d;
.super Lcom/xiaopeng/xui/widget/XRelativeLayout;
.source "KugouZoneCategoryItemView.java"


# instance fields
.field private a:Lcom/xiaopeng/xui/widget/XImageView;

.field private b:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private c:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/d;->a()V

    return-void
.end method

.method private getLayoutId()I
    .locals 1

    .line 40
    sget v0, Lbez$f;->item_kugou_zone_category:I

    return v0
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/d;->getLayoutId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    sget v0, Lbez$d;->category_mask:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/d;->a:Lcom/xiaopeng/xui/widget/XImageView;

    .line 46
    sget v0, Lbez$d;->item_layout_category:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/d;->b:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 47
    sget v0, Lbez$d;->tv_speech_num:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/d;->c:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/d;->b:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/d;->b:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiElementId(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/d;->b:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiPosition(I)V

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/d;->b:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/d;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbez$g;->vui_play_child_position:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Lcom/xiaopeng/musicradio/vui/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiLabel(Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/d;->b:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    sget-object p2, Lbxy;->BUTTON:Lbxy;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiElementType(Lbxy;)V

    .line 64
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/d;->c:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {p1, v3}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->setVisibility(I)V

    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 3

    .line 68
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/d;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lbez$c;->item_bg_default:I

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/d;->a:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-static {v0, p1, v1, v2}, Lcom/xiaopeng/musicradio/utils/ac;->c(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    return-void
.end method

.method public setOnPlayControlListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/d;->b:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPosition(I)V
    .locals 2

    .line 51
    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/d;->c:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/d;->c:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->setText(I)V

    goto :goto_0

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/d;->c:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
