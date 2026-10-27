.class public Lbhl;
.super Landroid/widget/PopupWindow;
.source "SongQualityGuidePopWindow.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x2

    .line 33
    invoke-virtual {p0, v0}, Lbhl;->setHeight(I)V

    .line 34
    invoke-virtual {p0, v0}, Lbhl;->setWidth(I)V

    const/4 v0, 0x1

    .line 35
    invoke-virtual {p0, v0}, Lbhl;->setOutsideTouchable(Z)V

    .line 36
    invoke-virtual {p0, v0}, Lbhl;->setFocusable(Z)V

    .line 37
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lbhl;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lbez$f;->layout_song_quality_guide_pop:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 39
    invoke-virtual {p0, v0}, Lbhl;->setContentView(Landroid/view/View;)V

    .line 40
    sget v1, Lbez$d;->tv_tips:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbhl;->a:Landroid/widget/TextView;

    .line 41
    iget-object v0, p0, Lbhl;->a:Landroid/widget/TextView;

    sget v1, Lbez$c;->img_tost_layer:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 42
    iget-object v0, p0, Lbhl;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lbez$a;->album_name:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object p1

    const-string v0, "VIEW_PLAY_QUALITY"

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/common/n;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b()V
    .locals 1

    .line 76
    iget-object v0, p0, Lbhl;->b:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lbhl;->b:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 60
    new-instance v6, Lbhl$1;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lbhl$1;-><init>(Lbhl;JJ)V

    iput-object v6, p0, Lbhl;->b:Landroid/os/CountDownTimer;

    .line 72
    iget-object v0, p0, Lbhl;->b:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lbhl;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 54
    invoke-direct {p0}, Lbhl;->b()V

    .line 55
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object v0

    const-string v1, "VIEW_PLAY_QUALITY"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/common/n;->b(Ljava/lang/String;)V

    .line 56
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 49
    invoke-virtual {p0}, Lbhl;->a()V

    return-void
.end method
