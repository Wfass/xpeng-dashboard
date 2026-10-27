.class public Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "PlayAllButton.java"


# instance fields
.field private a:I

.field private b:Lcom/xiaopeng/xui/widget/XImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/search/a$e;->widget_play_all_btn:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 42
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->play_btn:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;->b:Lcom/xiaopeng/xui/widget/XImageButton;

    .line 43
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    .line 51
    iget v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;->b:Lcom/xiaopeng/xui/widget/XImageButton;

    sget v1, Lcom/xiaopeng/musicradio/search/a$f;->play_all_btn_pause:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiLabel(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;->b:Lcom/xiaopeng/xui/widget/XImageButton;

    sget v1, Lcom/xiaopeng/musicradio/search/a$c;->ic_music_pause_s_48:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;->b:Lcom/xiaopeng/xui/widget/XImageButton;

    sget v1, Lcom/xiaopeng/musicradio/search/a$f;->play_all_btn_resume:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiLabel(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;->b:Lcom/xiaopeng/xui/widget/XImageButton;

    sget v1, Lcom/xiaopeng/musicradio/search/a$c;->ic_music_play_s_48:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;->b:Lcom/xiaopeng/xui/widget/XImageButton;

    sget v1, Lcom/xiaopeng/musicradio/search/a$f;->play_all_btn_default:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiLabel(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;->b:Lcom/xiaopeng/xui/widget/XImageButton;

    sget v1, Lcom/xiaopeng/musicradio/search/a$c;->ic_music_play_s_48:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setImageResource(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getBtnText()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;->b:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XImageButton;->getVuiLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;->b:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPlayState(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;->a:I

    .line 65
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/widget/view/PlayAllButton;->b()V

    return-void
.end method
