.class public Lcom/xiaopeng/musicradio/playercomponent/big/view/h;
.super Lcom/xiaopeng/musicradio/playercomponent/big/view/g;
.source "ThreeOnePlayerInfoLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/playercomponent/big/view/h$a;
    }
.end annotation


# instance fields
.field private c:Landroid/widget/FrameLayout;

.field private d:Landroid/view/View;

.field private e:Landroid/view/ViewGroup;

.field private f:Landroid/view/View;

.field private g:[F

.field private h:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;Z)Landroid/transition/Transition;
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->a(Z)Landroid/transition/Transition;

    move-result-object p0

    return-object p0
.end method

.method private a(Z)Landroid/transition/Transition;
    .locals 4

    .line 146
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    .line 147
    new-instance v1, Landroid/transition/ChangeBounds;

    invoke-direct {v1}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 148
    new-instance v1, Landroid/transition/ChangeTransform;

    invoke-direct {v1}, Landroid/transition/ChangeTransform;-><init>()V

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 149
    new-instance v1, Landroid/transition/ChangeImageTransform;

    invoke-direct {v1}, Landroid/transition/ChangeImageTransform;-><init>()V

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 150
    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTarget(Landroid/view/View;)Landroid/transition/TransitionSet;

    .line 152
    new-instance v1, Landroid/transition/Slide;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Landroid/transition/Slide;-><init>(I)V

    .line 153
    iget-object v2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 155
    new-instance v2, Landroid/transition/Fade;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-direct {v2, p1}, Landroid/transition/Fade;-><init>(I)V

    .line 156
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->f:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 158
    new-instance p1, Landroid/transition/TransitionSet;

    invoke-direct {p1}, Landroid/transition/TransitionSet;-><init>()V

    .line 159
    invoke-virtual {p1, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 160
    invoke-virtual {p1, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 161
    invoke-virtual {p1, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    const-wide/16 v0, 0x12c

    .line 162
    invoke-virtual {p1, v0, v1}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    .line 163
    new-instance v0, Lbtn;

    const v1, 0x3ea8f5c3    # 0.33f

    const v2, 0x3f2e147b    # 0.68f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3, v2, v3}, Lbtn;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;)[F
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->g:[F

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;[F)[F
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->g:[F

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;[I)[I
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->h:[I

    return-object p1
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;)Landroid/view/ViewGroup;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->e:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;)[I
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->h:[I

    return-object p0
.end method

.method static synthetic d(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;)Landroid/widget/FrameLayout;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->c:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic e(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;)Landroid/view/View;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->f:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/playercomponent/big/view/h$a;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->c:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 69
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$1;-><init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;Lcom/xiaopeng/musicradio/playercomponent/big/view/h$a;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method protected b()V
    .locals 1

    .line 48
    invoke-super {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->b()V

    .line 49
    sget v0, Lble$d;->layout_three_one_content:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->c:Landroid/widget/FrameLayout;

    .line 50
    sget v0, Lble$d;->layout_tree_one_info:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->d:Landroid/view/View;

    .line 51
    sget v0, Lble$d;->layout_cover_anim_temp:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->e:Landroid/view/ViewGroup;

    .line 52
    sget v0, Lble$d;->layout_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->f:Landroid/view/View;

    return-void
.end method

.method public b(Landroid/widget/FrameLayout;)V
    .locals 3

    .line 231
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->e:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_0

    return-void

    .line 235
    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->e:Landroid/view/ViewGroup;

    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b(Lcom/xiaopeng/musicradio/playercomponent/big/view/h$a;)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->g:[F

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 170
    invoke-interface {p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$a;->a()V

    .line 171
    invoke-interface {p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$a;->b()V

    :cond_0
    return-void

    .line 175
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h$2;-><init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/h;Lcom/xiaopeng/musicradio/playercomponent/big/view/h$a;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method protected getAlbumSize()I
    .locals 2

    .line 258
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lble$b;->player_album_to_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .line 253
    sget v0, Lble$e;->layout_to_player_info:I

    return v0
.end method

.method public getLrcListLayout()Landroid/widget/FrameLayout;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->c:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public setAlbumClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setInfoViewVisible(Z)V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->d:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
