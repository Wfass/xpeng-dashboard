.class public Lcom/xiaopeng/musicradio/widget/g;
.super Lcom/xiaopeng/xui/app/XDialogPure;
.source "MusicXDialogPure.java"


# instance fields
.field private a:Z

.field private b:Lcom/xiaopeng/musicradio/widget/h;

.field private c:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XDialogPure$Parameters;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/app/XDialogPure;-><init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XDialogPure$Parameters;)V

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/g;->a:Z

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/g;->b()V

    return-void
.end method

.method private b()V
    .locals 1

    .line 30
    new-instance v0, Lcom/xiaopeng/musicradio/widget/h;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/widget/h;-><init>(Lcom/xiaopeng/musicradio/widget/g;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/g;->b:Lcom/xiaopeng/musicradio/widget/h;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/g;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/g;->a:Z

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/g;->dismiss()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/g;->a:Z

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/xiaopeng/xui/app/XDialogPure;->cancel()V

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/g;->b:Lcom/xiaopeng/musicradio/widget/h;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/h;->a()V

    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 35
    invoke-super {p0}, Lcom/xiaopeng/xui/app/XDialogPure;->dismiss()V

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/g;->b:Lcom/xiaopeng/musicradio/widget/h;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/h;->a()V

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/g;->c:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 38
    invoke-interface {v0, v1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/g;->c:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method
