.class public Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "CommonTitleLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout$a;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/xui/widget/XTextView;

.field private b:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private c:Lcom/xiaopeng/xui/widget/XButton;

.field private d:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout$a;

.field private e:Landroid/view/View$OnClickListener;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Z

.field private i:Landroid/view/animation/AlphaAnimation;

.field private j:Landroid/view/animation/AlphaAnimation;

.field private k:Lcom/xiaopeng/musicradio/widget/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    sget p1, Lcom/xiaopeng/musicradio/common/k$g;->delete:I

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->g:I

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->h:Z

    .line 50
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->k:Lcom/xiaopeng/musicradio/widget/k;

    .line 54
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->g()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    sget p1, Lcom/xiaopeng/musicradio/common/k$g;->delete:I

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->g:I

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->h:Z

    .line 50
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->k:Lcom/xiaopeng/musicradio/widget/k;

    .line 59
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->g()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    sget p1, Lcom/xiaopeng/musicradio/common/k$g;->delete:I

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->g:I

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->h:Z

    .line 50
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->k:Lcom/xiaopeng/musicradio/widget/k;

    .line 64
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->g()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;)Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout$a;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->d:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout$a;

    return-object p0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .line 151
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBackClick: call invisble view "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CommonTitleLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->e:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lbni;->a(Landroid/content/Context;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 161
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;Landroid/view/View;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;)Lcom/xiaopeng/xui/widget/XButton;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->c:Lcom/xiaopeng/xui/widget/XButton;

    return-object p0
.end method

.method private g()V
    .locals 5

    .line 68
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$f;->common_title_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 69
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->title_txt:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    .line 70
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->back:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->b:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "generalAct"

    const-string v2, "System.Return"

    .line 73
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->b:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->addProps(Lbxq;Ljava/util/Map;)V

    .line 76
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->title_btn_management:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->c:Lcom/xiaopeng/xui/widget/XButton;

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->b:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout$1;-><init>(Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->c:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout$2;-><init>(Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->i:Landroid/view/animation/AlphaAnimation;

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->i:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 97
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->j:Landroid/view/animation/AlphaAnimation;

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->j:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->k:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 101
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->f()V

    return-void
.end method

.method private h()V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->i:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->j:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 190
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->h:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .line 194
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->h:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->h:Z

    .line 195
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->c()V

    .line 196
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->h:Z

    return v0
.end method

.method public c()V
    .locals 2

    .line 202
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->h:Z

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->c:Lcom/xiaopeng/xui/widget/XButton;

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->g:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    goto :goto_0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->c:Lcom/xiaopeng/xui/widget/XButton;

    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->management:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 251
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->h()V

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->i:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XTextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    .line 260
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->h()V

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->j:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public f()V
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/common/k$c;->x_font_title_01_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setTextSize(IF)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 272
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 273
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->k:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 274
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->k:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 275
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->f()V

    :cond_0
    return-void
.end method

.method public setBackVisible(Z)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->b:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public setCloseListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->e:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setEditMode(Z)V
    .locals 0

    .line 223
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->h:Z

    .line 224
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->c()V

    return-void
.end method

.method public setEditRes(I)V
    .locals 0

    .line 244
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->g:I

    return-void
.end method

.method public setManageBtnVisible(Z)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->c:Lcom/xiaopeng/xui/widget/XButton;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    return-void
.end method

.method public setOnEditModeChange(Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout$a;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->d:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout$a;

    return-void
.end method

.method public setSceneId(Ljava/lang/String;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->f:Ljava/lang/String;

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleTextSize(F)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setTextSize(F)V

    return-void
.end method

.method public setTitleVisible(Z)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    return-void
.end method
