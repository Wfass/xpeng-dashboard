.class public Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;
.super Lcom/xiaopeng/xui/widget/XRelativeLayout;
.source "MineManagerTitleLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout$a;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/xiaopeng/xui/widget/XButton;

.field private d:Lcom/xiaopeng/xui/widget/XButton;

.field private e:I

.field private f:Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout$a;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->e:I

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->e:I

    return p0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->e:I

    return p1
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->e()V

    return-void
.end method

.method private e()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->f:Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout$a;

    if-eqz v0, :cond_0

    .line 181
    iget v1, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->e:I

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout$a;->a(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->c:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->d()V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->c:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->c:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Laxt;->a(Landroid/view/View;Z)V

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->g:Ljava/lang/String;

    invoke-static {v0, p0}, Laxt;->a(Ljava/lang/String;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public a(IIZ)V
    .locals 0

    .line 78
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->c:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    .line 79
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->c:Lcom/xiaopeng/xui/widget/XButton;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XButton;->setVuiLabel(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 82
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->d:Lcom/xiaopeng/xui/widget/XButton;

    sget p2, Lcom/xiaopeng/musicradio/mine/a$e;->complete:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    .line 83
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->d:Lcom/xiaopeng/xui/widget/XButton;

    sget p2, Lcom/xiaopeng/musicradio/mine/a$e;->complete:I

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XButton;->setVuiLabel(Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->d:Lcom/xiaopeng/xui/widget/XButton;

    new-instance p2, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout$1;

    invoke-direct {p2, p0}, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout$1;-><init>(Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;)V

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->c:Lcom/xiaopeng/xui/widget/XButton;

    new-instance p2, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout$2;

    invoke-direct {p2, p0}, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout$2;-><init>(Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;)V

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->c:Lcom/xiaopeng/xui/widget/XButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 162
    iget v0, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->e:I

    if-eq v0, p1, :cond_1

    .line 163
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->e:I

    .line 164
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->e()V

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->a()V

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->d()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->c:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->c:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Laxt;->a(Landroid/view/View;Z)V

    .line 127
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->g:Ljava/lang/String;

    invoke-static {p1, p0}, Laxt;->a(Ljava/lang/String;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 120
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->a(Z)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 132
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->b()V

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->d:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->d:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Laxt;->a(Landroid/view/View;Z)V

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->g:Ljava/lang/String;

    invoke-static {v0, p0}, Laxt;->a(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->d:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->d:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laxt;->a(Landroid/view/View;Z)V

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->g:Ljava/lang/String;

    invoke-static {v0, p0}, Laxt;->a(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public getMode()I
    .locals 1

    .line 176
    iget v0, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->e:I

    return v0
.end method

.method public getTitleBtn()Landroid/widget/TextView;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->c:Lcom/xiaopeng/xui/widget/XButton;

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 107
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 56
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onFinishInflate()V

    .line 57
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 58
    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->mine_manager_title_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 59
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->b:Landroid/widget/TextView;

    .line 60
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->tv_title_btn:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->c:Lcom/xiaopeng/xui/widget/XButton;

    .line 61
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->tv_title_edit_btn:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->d:Lcom/xiaopeng/xui/widget/XButton;

    .line 62
    sget-object v0, Lbxy;->UNKNOWN:Lbxy;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->setVuiElementType(Lbxy;)V

    return-void
.end method

.method public setActivity(Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->a:Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;

    return-void
.end method

.method public setMode(I)V
    .locals 1

    const/4 v0, 0x1

    .line 158
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->a(IZ)V

    return-void
.end method

.method public setOnModeChangedListener(Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout$a;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->f:Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout$a;

    return-void
.end method

.method public setSceneId(Ljava/lang/String;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->g:Ljava/lang/String;

    return-void
.end method

.method public setTitle(I)V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleBtnDrawable(I)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->c:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Lcom/xiaopeng/xui/widget/XButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method

.method public setTitleBtnEnable(Z)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->c:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->isEnabled()Z

    move-result v0

    .line 146
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->c:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    if-eq v0, p1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->c:Lcom/xiaopeng/xui/widget/XButton;

    invoke-static {v0, p1}, Laxt;->a(Landroid/view/View;Z)V

    .line 149
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->g:Ljava/lang/String;

    invoke-static {p1, p0}, Laxt;->a(Ljava/lang/String;Landroid/view/View;)V

    :cond_0
    return-void
.end method
