.class public Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;
.super Lcom/xiaopeng/xui/widget/XRelativeLayout;
.source "MineTitleBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout$a;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/xiaopeng/xui/widget/XButton;

.field private e:Lcom/xiaopeng/xui/widget/XButton;

.field private f:I

.field private g:I

.field private h:I

.field private i:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 44
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->h:I

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->h:I

    return p1
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;)Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->a:Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->h:I

    return p0
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->e()V

    return-void
.end method

.method private e()V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->i:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout$a;

    if-eqz v0, :cond_0

    .line 210
    iget v1, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->h:I

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout$a;->a(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->d:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->d()V

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->d:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->d:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Laxt;->a(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public a(IIZ)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->d:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    .line 99
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->d:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, v0, v0}, Lcom/xiaopeng/xui/widget/XButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 100
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->f:I

    if-eqz p3, :cond_0

    .line 102
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->e:Lcom/xiaopeng/xui/widget/XButton;

    sget p2, Lcom/xiaopeng/musicradio/mine/a$e;->complete:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    .line 103
    sget p1, Lcom/xiaopeng/musicradio/mine/a$b;->ic_32_finish:I

    iput p1, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->g:I

    .line 104
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->e:Lcom/xiaopeng/xui/widget/XButton;

    iget p2, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->g:I

    invoke-virtual {p1, p2, v0, v0, v0}, Lcom/xiaopeng/xui/widget/XButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 105
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->e:Lcom/xiaopeng/xui/widget/XButton;

    new-instance p2, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout$2;

    invoke-direct {p2, p0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout$2;-><init>(Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;)V

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->d:Lcom/xiaopeng/xui/widget/XButton;

    new-instance p2, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout$3;

    invoke-direct {p2, p0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout$3;-><init>(Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;)V

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->d:Lcom/xiaopeng/xui/widget/XButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 191
    iget v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->h:I

    if-eq v0, p1, :cond_1

    .line 192
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->h:I

    .line 193
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->e()V

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->a()V

    goto :goto_0

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->d()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->d:Lcom/xiaopeng/xui/widget/XButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 155
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->d:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Laxt;->a(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 149
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->a(Z)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 161
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->b()V

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->e:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->e:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Laxt;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->e:Lcom/xiaopeng/xui/widget/XButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->e:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laxt;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public getMode()I
    .locals 1

    .line 205
    iget v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->h:I

    return v0
.end method

.method public getTitleBtn()Landroid/widget/TextView;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->d:Lcom/xiaopeng/xui/widget/XButton;

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 128
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 129
    invoke-static {p1}, Lcom/xiaopeng/xui/theme/XThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 130
    iget p1, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->f:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->d:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v1, p1, v0, v0, v0}, Lcom/xiaopeng/xui/widget/XButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 133
    :cond_0
    iget p1, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->g:I

    if-eqz p1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->e:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v1, p1, v0, v0, v0}, Lcom/xiaopeng/xui/widget/XButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 62
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onFinishInflate()V

    .line 63
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 64
    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->mine_title_bar_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 65
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->btn_back:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->b:Landroid/view/View;

    .line 66
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->c:Landroid/widget/TextView;

    .line 67
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->tv_title_btn:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->d:Lcom/xiaopeng/xui/widget/XButton;

    .line 68
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->tv_title_edit_btn:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->e:Lcom/xiaopeng/xui/widget/XButton;

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->b:Landroid/view/View;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout$1;-><init>(Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    sget-object v0, Lbxy;->UNKNOWN:Lbxy;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->setVuiElementType(Lbxy;)V

    return-void
.end method

.method public setActivity(Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->a:Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;

    return-void
.end method

.method public setMode(I)V
    .locals 1

    const/4 v0, 0x1

    .line 187
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->a(IZ)V

    return-void
.end method

.method public setOnModeChangedListener(Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout$a;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->i:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout$a;

    return-void
.end method

.method public setTitle(I)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleBtnDrawable(I)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->d:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Lcom/xiaopeng/xui/widget/XButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method

.method public setTitleBtnEnable(Z)V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->d:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->isEnabled()Z

    move-result v0

    .line 175
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->d:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    if-eq v0, p1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->d:Lcom/xiaopeng/xui/widget/XButton;

    invoke-static {v0, p1}, Laxt;->a(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method
