.class public Lbsq;
.super Lcom/xiaopeng/musicradio/widget/mvpbase/a;
.source "VipXmlyBuyingDlg.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/widget/mvpbase/a<",
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/musicradio/vip/buying/presenter/b;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private m:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 37
    sget v0, Lcom/xiaopeng/musicradio/common/k$h;->NewBaseDialog:I

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaopeng/musicradio/widget/mvpbase/a;-><init>(Landroid/content/Context;IZ)V

    .line 38
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->m()I

    move-result v0

    const-string v1, "SELECT_MENU_SCENE"

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->Q(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbsq;->d:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lbsq;->a:Landroid/content/Context;

    .line 40
    invoke-virtual {p0}, Lbsq;->c()V

    .line 41
    invoke-virtual {p0}, Lbsq;->d()V

    .line 42
    invoke-virtual {p0}, Lbsq;->e()V

    .line 43
    invoke-virtual {p0}, Lbsq;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0x7f6

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 46
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, -0x2

    .line 48
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 49
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v0, 0x11

    .line 50
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :cond_0
    return-void
.end method


# virtual methods
.method protected a()Lcom/xiaopeng/musicradio/vip/buying/presenter/b;
    .locals 1

    .line 67
    new-instance v0, Lcom/xiaopeng/musicradio/vip/buying/presenter/b;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/vip/buying/presenter/b;-><init>()V

    return-object v0
.end method

.method protected b()I
    .locals 1

    .line 72
    sget v0, Lcom/xiaopeng/musicradio/vip/a$b;->dialog_xmly_vip_buying:I

    return v0
.end method

.method protected c()V
    .locals 1

    .line 77
    sget v0, Lcom/xiaopeng/musicradio/vip/a$a;->btn_close:I

    invoke-virtual {p0, v0}, Lbsq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbsq;->b:Landroid/view/View;

    .line 78
    sget v0, Lcom/xiaopeng/musicradio/vip/a$a;->rl_info_layout:I

    invoke-virtual {p0, v0}, Lbsq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbsq;->m:Landroid/view/View;

    .line 79
    sget v0, Lcom/xiaopeng/musicradio/vip/a$a;->tv_vip_contact:I

    invoke-virtual {p0, v0}, Lbsq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbsq;->c:Landroid/widget/TextView;

    return-void
.end method

.method protected d()V
    .locals 2

    .line 84
    iget-object v0, p0, Lbsq;->c:Landroid/widget/TextView;

    const-string v1, "400 838 5616"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected e()V
    .locals 1

    .line 89
    iget-object v0, p0, Lbsq;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lbsq;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected synthetic f()Lcom/xiaopeng/musicradio/widget/lifecycle/a;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lbsq;->a()Lcom/xiaopeng/musicradio/vip/buying/presenter/b;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/xiaopeng/musicradio/vip/a$a;->tv_vip_contact:I

    if-ne p1, v0, :cond_0

    .line 58
    iget-object p1, p0, Lbsq;->e:Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    check-cast p1, Lcom/xiaopeng/musicradio/vip/buying/presenter/b;

    iget-object v0, p0, Lbsq;->a:Landroid/content/Context;

    const-string v1, "400 838 5616"

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/vip/buying/presenter/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    :cond_0
    invoke-virtual {p0}, Lbsq;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 61
    invoke-virtual {p0}, Lbsq;->dismiss()V

    :cond_1
    return-void
.end method
