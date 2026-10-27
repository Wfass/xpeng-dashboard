.class public Lbjm;
.super Lcom/xiaopeng/musicradio/widget/mvpbase/a;
.source "SongQualityChooseDialog.java"


# instance fields
.field public a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

.field public b:Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;

.field protected c:Lcom/xiaopeng/musicradio/widget/k;

.field private m:Landroid/widget/RelativeLayout;

.field private n:Lcom/xiaopeng/xui/widget/XImageButton;

.field private o:Lcom/xiaopeng/musicradio/widget/MaxHeightScrollView;

.field private p:Lcom/xiaopeng/musicradio/widget/LayoutChangedView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 40
    sget v0, Lbez$h;->NewBaseDialog:I

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaopeng/musicradio/widget/mvpbase/a;-><init>(Landroid/content/Context;IZ)V

    .line 37
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lbjm;->c:Lcom/xiaopeng/musicradio/widget/k;

    .line 41
    invoke-virtual {p0}, Lbjm;->a()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .line 45
    sget-object v0, Lcom/xiaopeng/musicradio/vui/c;->bE:Ljava/lang/String;

    iput-object v0, p0, Lbjm;->d:Ljava/lang/String;

    const/4 v0, 0x1

    .line 46
    invoke-virtual {p0, v0}, Lbjm;->setCanceledOnTouchOutside(Z)V

    .line 47
    invoke-virtual {p0}, Lbjm;->c()V

    .line 48
    invoke-virtual {p0}, Lbjm;->e()V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 1

    .line 130
    iput-object p1, p0, Lbjm;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 131
    iget-object p1, p0, Lbjm;->b:Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;

    iget-object v0, p0, Lbjm;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->setMusicInfo(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    return-void
.end method

.method protected b()I
    .locals 1

    .line 77
    sget v0, Lbez$f;->layout_song_quality_choose_dialog:I

    return v0
.end method

.method protected c()V
    .locals 2

    .line 82
    iget-object v0, p0, Lbjm;->i:Landroid/view/View;

    sget v1, Lbez$d;->configuration_changed_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    iput-object v0, p0, Lbjm;->p:Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    .line 83
    iget-object v0, p0, Lbjm;->i:Landroid/view/View;

    sget v1, Lbez$d;->layout_single_song_quality:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;

    iput-object v0, p0, Lbjm;->b:Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;

    .line 84
    iget-object v0, p0, Lbjm;->i:Landroid/view/View;

    sget v1, Lbez$d;->root_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lbjm;->m:Landroid/widget/RelativeLayout;

    .line 85
    iget-object v0, p0, Lbjm;->i:Landroid/view/View;

    sget v1, Lbez$d;->close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageButton;

    iput-object v0, p0, Lbjm;->n:Lcom/xiaopeng/xui/widget/XImageButton;

    .line 86
    iget-object v0, p0, Lbjm;->i:Landroid/view/View;

    sget v1, Lbez$d;->scroll_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MaxHeightScrollView;

    iput-object v0, p0, Lbjm;->o:Lcom/xiaopeng/musicradio/widget/MaxHeightScrollView;

    .line 87
    iget-object v0, p0, Lbjm;->p:Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;->a()V

    .line 88
    iget-object v0, p0, Lbjm;->p:Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    new-instance v1, Lbjm$1;

    invoke-direct {v1, p0}, Lbjm$1;-><init>(Lbjm;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;->setOnLayoutChangedListener(Lcom/xiaopeng/musicradio/widget/LayoutChangedView$a;)V

    .line 103
    invoke-virtual {p0}, Lbjm;->j()V

    .line 104
    invoke-virtual {p0}, Lbjm;->h()V

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method protected e()V
    .locals 2

    .line 114
    iget-object v0, p0, Lbjm;->n:Lcom/xiaopeng/xui/widget/XImageButton;

    new-instance v1, Lbjm$2;

    invoke-direct {v1, p0}, Lbjm$2;-><init>(Lbjm;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lbjm;->b:Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;

    new-instance v1, Lbjm$3;

    invoke-direct {v1, p0}, Lbjm$3;-><init>(Lbjm;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->setQualityChooseListener(Lcom/xiaopeng/musicradio/music/tone/view/a;)V

    return-void
.end method

.method protected f()Lcom/xiaopeng/musicradio/widget/lifecycle/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected g()V
    .locals 2

    .line 53
    invoke-virtual {p0}, Lbjm;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lbjm;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method

.method protected h()V
    .locals 3

    .line 135
    iget-object v0, p0, Lbjm;->o:Lcom/xiaopeng/musicradio/widget/MaxHeightScrollView;

    invoke-virtual {p0}, Lbjm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbez$b;->music_quality_scroll_max_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/MaxHeightScrollView;->setMaxHeight(I)V

    .line 136
    iget-object v0, p0, Lbjm;->o:Lcom/xiaopeng/musicradio/widget/MaxHeightScrollView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/MaxHeightScrollView;->requestLayout()V

    return-void
.end method

.method protected i()Z
    .locals 1

    .line 140
    iget-object v0, p0, Lbjm;->c:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->b()Z

    move-result v0

    return v0
.end method

.method protected j()V
    .locals 1

    .line 144
    iget-object v0, p0, Lbjm;->c:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    return-void
.end method

.method public show()V
    .locals 3

    .line 60
    invoke-virtual {p0}, Lbjm;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    .line 63
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 64
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 67
    :cond_0
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->show()V

    return-void
.end method
