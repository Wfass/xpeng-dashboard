.class public Lbto;
.super Lcom/xiaopeng/musicradio/widget/mvpbase/a;
.source "XpAccountLoginDlg.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbto$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lapx;

.field private c:Lbto$a;

.field private m:Landroid/content/Context;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/view/View;


# virtual methods
.method protected b()I
    .locals 1

    .line 52
    sget v0, Lcom/xiaopeng/musicradio/common/k$f;->dialog_xp_account_login:I

    return v0
.end method

.method protected c()V
    .locals 2

    .line 57
    iget-object v0, p0, Lbto;->i:Landroid/view/View;

    sget v1, Lcom/xiaopeng/musicradio/common/k$e;->root_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbto;->s:Landroid/view/View;

    .line 58
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->iv_avatar:I

    invoke-virtual {p0, v0}, Lbto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbto;->n:Landroid/widget/ImageView;

    .line 59
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->tv_nick_name:I

    invoke-virtual {p0, v0}, Lbto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbto;->o:Landroid/widget/TextView;

    .line 60
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->tv_phone:I

    invoke-virtual {p0, v0}, Lbto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbto;->p:Landroid/widget/TextView;

    .line 61
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->btn_ok:I

    invoke-virtual {p0, v0}, Lbto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbto;->q:Landroid/widget/TextView;

    .line 62
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->btn_login_other:I

    invoke-virtual {p0, v0}, Lbto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbto;->r:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lbto;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lbto;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->btn_close:I

    invoke-virtual {p0, v0}, Lbto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected d()V
    .locals 6

    .line 85
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lbto;->b:Lapx;

    invoke-virtual {v1}, Lapx;->c()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/common/k$d;->img_header_default:I

    iget-object v3, p0, Lbto;->n:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 86
    iget-object v0, p0, Lbto;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lbto;->b:Lapx;

    invoke-virtual {v1}, Lapx;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lbto;->b:Lapx;

    invoke-virtual {v0}, Lapx;->d()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v0, p0, Lbto;->p:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v1, p0, Lbto;->p:Landroid/widget/TextView;

    iget-object v2, p0, Lbto;->m:Landroid/content/Context;

    sget v3, Lcom/xiaopeng/musicradio/common/k$g;->text_xp_id_template:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lbto;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected e()V
    .locals 0

    return-void
.end method

.method protected f()Lcom/xiaopeng/musicradio/widget/lifecycle/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 108
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$e;->btn_close:I

    if-ne v0, v1, :cond_0

    .line 71
    invoke-virtual {p0}, Lbto;->dismiss()V

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->btn_ok:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 73
    iput-boolean v1, p0, Lbto;->a:Z

    .line 74
    iget-object p1, p0, Lbto;->c:Lbto$a;

    invoke-interface {p1}, Lbto$a;->a()V

    .line 75
    invoke-virtual {p0}, Lbto;->dismiss()V

    goto :goto_0

    .line 77
    :cond_1
    iput-boolean v1, p0, Lbto;->a:Z

    .line 78
    iget-object p1, p0, Lbto;->c:Lbto$a;

    invoke-interface {p1}, Lbto$a;->b()V

    .line 79
    invoke-virtual {p0}, Lbto;->dismiss()V

    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 113
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onPowerChange(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;->a()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lbto;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 127
    invoke-virtual {p0}, Lbto;->dismiss()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 0

    .line 103
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->show()V

    return-void
.end method
