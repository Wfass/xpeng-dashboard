.class public Lbny;
.super Lcom/xiaopeng/musicradio/widget/mvpbase/a;
.source "SearchLoginDlg.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private m:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private n:Lcom/xiaopeng/xui/widget/XTextView;

.field private o:Lcom/xiaopeng/xui/widget/XTextView;

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 40
    sget v0, Lcom/xiaopeng/musicradio/common/k$h;->NewBaseDialog:I

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaopeng/musicradio/widget/mvpbase/a;-><init>(Landroid/content/Context;IZ)V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lbny;->p:Ljava/lang/String;

    .line 41
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->m()I

    move-result v0

    const-string v1, "SELECT_MENU_SCENE"

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->P(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbny;->d:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lbny;->a:Landroid/content/Context;

    .line 43
    invoke-virtual {p0}, Lbny;->c()V

    .line 44
    invoke-virtual {p0}, Lbny;->d()V

    .line 45
    invoke-virtual {p0}, Lbny;->e()V

    return-void
.end method

.method static synthetic a(Lbny;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lbny;->p:Ljava/lang/String;

    return-object p0
.end method

.method private a()V
    .locals 4

    .line 101
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->b()Lbeg;

    move-result-object v0

    check-cast v0, Lben;

    .line 102
    invoke-interface {v0}, Lben;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "qq"

    .line 103
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    .line 104
    iget-object v0, p0, Lbny;->o:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lbny;->n:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const-string v1, "wx"

    .line 106
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lbny;->o:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lbny;->n:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Lbny;->o:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lbny;->n:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lbny;->p:Ljava/lang/String;

    return-void
.end method

.method protected b()I
    .locals 1

    .line 62
    sget v0, Lcom/xiaopeng/musicradio/search/a$e;->dialog_search_login:I

    return v0
.end method

.method protected c()V
    .locals 1

    .line 67
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->btn_close:I

    invoke-virtual {p0, v0}, Lbny;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbny;->b:Landroid/view/View;

    .line 69
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->weixin_login:I

    invoke-virtual {p0, v0}, Lbny;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lbny;->c:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 70
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->qq_login:I

    invoke-virtual {p0, v0}, Lbny;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lbny;->m:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 71
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->weixin_last_login:I

    invoke-virtual {p0, v0}, Lbny;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lbny;->n:Lcom/xiaopeng/xui/widget/XTextView;

    .line 72
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->qq_last_login:I

    invoke-virtual {p0, v0}, Lbny;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lbny;->o:Lcom/xiaopeng/xui/widget/XTextView;

    return-void
.end method

.method protected d()V
    .locals 0

    .line 77
    invoke-direct {p0}, Lbny;->a()V

    return-void
.end method

.method protected e()V
    .locals 2

    .line 82
    iget-object v0, p0, Lbny;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lbny;->c:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    new-instance v1, Lbny$1;

    invoke-direct {v1, p0}, Lbny$1;-><init>(Lbny;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lbny;->m:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    new-instance v1, Lbny$2;

    invoke-direct {v1, p0}, Lbny$2;-><init>(Lbny;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected f()Lcom/xiaopeng/musicradio/widget/lifecycle/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 55
    invoke-virtual {p0}, Lbny;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p0}, Lbny;->dismiss()V

    :cond_0
    return-void
.end method
