.class public Laql;
.super Ljava/lang/Object;
.source "XmlyLoginFlowDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Laqj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laql$c;,
        Laql$b;,
        Laql$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Laqk;

.field private c:Lcom/xiaopeng/musicradio/widget/g;

.field private d:Laqm;

.field private e:Z

.field private f:Laql$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Laql$a;)V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "XmlyLoginFlowDialog"

    .line 33
    invoke-static {v0, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Laql;->a:Landroid/content/Context;

    .line 35
    sget p1, Lcom/xiaopeng/musicradio/common/k$g;->vip_login_text_xmly:I

    .line 36
    new-instance v0, Laql$b;

    invoke-direct {v0, p0}, Laql$b;-><init>(Laql;)V

    iput-object v0, p0, Laql;->f:Laql$b;

    .line 53
    invoke-static {}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->Builder()Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    move-result-object v0

    .line 54
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    .line 56
    new-instance v1, Lcom/xiaopeng/musicradio/widget/g;

    iget-object v2, p0, Laql;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/xiaopeng/musicradio/widget/g;-><init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XDialogPure$Parameters;)V

    iput-object v1, p0, Laql;->c:Lcom/xiaopeng/musicradio/widget/g;

    .line 57
    iget-object v0, p0, Laql;->c:Lcom/xiaopeng/musicradio/widget/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/g;->a(Z)V

    .line 58
    iget-object v0, p0, Laql;->c:Lcom/xiaopeng/musicradio/widget/g;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/g;->setScreenId(I)V

    .line 59
    new-instance v0, Laqm;

    iget-object v1, p0, Laql;->a:Landroid/content/Context;

    iget-object v2, p0, Laql;->c:Lcom/xiaopeng/musicradio/widget/g;

    invoke-direct {v0, v1, v2}, Laqm;-><init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XDialogPure;)V

    iput-object v0, p0, Laql;->d:Laqm;

    .line 60
    new-instance v0, Laqk;

    invoke-direct {v0, p2}, Laqk;-><init>(Laql$a;)V

    iput-object v0, p0, Laql;->b:Laqk;

    .line 61
    iget-object p2, p0, Laql;->b:Laqk;

    invoke-static {p2}, Laqn;->a(Laqk;)V

    .line 62
    iget-object p2, p0, Laql;->d:Laqm;

    invoke-virtual {p2, p0}, Laqm;->setQLoginFlowDialog(Laql;)V

    .line 63
    iget-object p2, p0, Laql;->d:Laqm;

    iget-object v0, p0, Laql;->b:Laqk;

    invoke-virtual {p2, v0}, Laqm;->setQrCodePresenter(Laqk;)V

    .line 64
    iget-object p2, p0, Laql;->d:Laqm;

    invoke-virtual {p2, p1}, Laqm;->setTitleRes(I)V

    .line 65
    iget-object p1, p0, Laql;->d:Laqm;

    new-instance p2, Laql$1;

    invoke-direct {p2, p0}, Laql$1;-><init>(Laql;)V

    invoke-virtual {p1, p2}, Laqm;->setCancleListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-direct {p0}, Laql;->g()V

    .line 72
    iget-object p1, p0, Laql;->c:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/g;->show()V

    return-void
.end method

.method static synthetic a(Laql;Laqk;)Laqk;
    .locals 0

    .line 22
    iput-object p1, p0, Laql;->b:Laqk;

    return-object p1
.end method

.method static synthetic a(Laql;Laql$b;)Laql$b;
    .locals 0

    .line 22
    iput-object p1, p0, Laql;->f:Laql$b;

    return-object p1
.end method

.method static synthetic a(Laql;)Lcom/xiaopeng/musicradio/widget/g;
    .locals 0

    .line 22
    iget-object p0, p0, Laql;->c:Lcom/xiaopeng/musicradio/widget/g;

    return-object p0
.end method

.method static synthetic a(Laql;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Laql;->e:Z

    return p1
.end method

.method static synthetic b(Laql;)Laqk;
    .locals 0

    .line 22
    iget-object p0, p0, Laql;->b:Laqk;

    return-object p0
.end method

.method static synthetic c(Laql;)Laql$b;
    .locals 0

    .line 22
    iget-object p0, p0, Laql;->f:Laql$b;

    return-object p0
.end method

.method static synthetic d(Laql;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Laql;->e:Z

    return p0
.end method

.method private g()V
    .locals 2

    const-string v0, "XmlyLoginFlowDialog"

    const-string v1, "initListener"

    .line 84
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Laql;->c:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/g;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Laql$c;

    invoke-direct {v1, p0}, Laql$c;-><init>(Laql;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "XmlyLoginFlowDialog"

    const-string v1, "onLoginConfirmSuccess"

    .line 201
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Laql;->c:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/g;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Laql;->c:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/g;->dismiss()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoginConfirmFailed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XmlyLoginFlowDialog"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x23

    .line 210
    invoke-virtual {p0, p1}, Laql;->b(I)V

    return-void
.end method

.method public varargs a(I[Ljava/lang/String;)V
    .locals 2

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHttpResponseEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XmlyLoginFlowDialog"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_1

    .line 192
    :cond_0
    invoke-virtual {p0}, Laql;->e()V

    goto :goto_1

    .line 188
    :cond_1
    array-length p1, p2

    if-lez p1, :cond_2

    const/4 p1, 0x0

    aget-object p1, p2, p1

    goto :goto_0

    :cond_2
    const-string p1, ""

    .line 189
    :goto_0
    invoke-virtual {p0, p1}, Laql;->a(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "XmlyLoginFlowDialog"

    const-string v1, "showQrLoginDialog"

    .line 131
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Laql;->c:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/g;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Laql;->a:Landroid/content/Context;

    invoke-static {v0}, Lbxo;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 139
    :cond_1
    invoke-virtual {p0}, Laql;->c()V

    .line 140
    iget-object v0, p0, Laql;->d:Laqm;

    invoke-virtual {v0, p1}, Laqm;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 115
    new-instance v0, Laql$2;

    invoke-direct {v0, p0, p1}, Laql$2;-><init>(Laql;Ljava/lang/String;)V

    invoke-static {v0}, Lbql;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "XmlyLoginFlowDialog"

    const-string v1, "onCloseDialog"

    .line 242
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Laql;->c:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/g;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Laql;->c:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/g;->dismiss()V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFragmentEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XmlyLoginFlowDialog"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {p0}, Laql;->e()V

    goto :goto_0

    .line 221
    :cond_1
    invoke-virtual {p0}, Laql;->d()V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 89
    iget-object v0, p0, Laql;->b:Laqk;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0, p0}, Laqk;->a(Laqj;)V

    .line 92
    :cond_0
    iget-object v0, p0, Laql;->c:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/g;->show()V

    const/4 v0, 0x1

    .line 93
    invoke-static {v0}, Laqn;->a(Z)V

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQRCodeEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XmlyLoginFlowDialog"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {p0}, Laql;->f()V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "XmlyLoginFlowDialog"

    const-string v1, "showRequestQrDialog"

    .line 102
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Laql;->c:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/g;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Laql;->a:Landroid/content/Context;

    invoke-static {v0}, Lbxo;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 109
    :cond_1
    invoke-virtual {p0}, Laql;->c()V

    .line 110
    iget-object v0, p0, Laql;->d:Laqm;

    invoke-virtual {v0}, Laqm;->b()V

    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "XmlyLoginFlowDialog"

    const-string v1, "showQrLoginFailDialog"

    .line 145
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Laql;->c:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/g;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Laql;->a:Landroid/content/Context;

    invoke-static {v0}, Lbxo;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 152
    :cond_1
    invoke-virtual {p0}, Laql;->c()V

    .line 153
    iget-object v0, p0, Laql;->d:Laqm;

    invoke-virtual {v0}, Laqm;->c()V

    return-void
.end method

.method public f()V
    .locals 2

    const-string v0, "XmlyLoginFlowDialog"

    const-string v1, "showQrLoginOvertimeDialog"

    .line 158
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Laql;->c:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/g;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Laql;->a:Landroid/content/Context;

    invoke-static {v0}, Lbxo;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 165
    :cond_1
    invoke-virtual {p0}, Laql;->c()V

    .line 166
    iget-object v0, p0, Laql;->d:Laqm;

    invoke-virtual {v0}, Laqm;->d()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Laql;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XmlyLoginFlowDialog"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->iv_qr_retry:I

    if-ne p1, v0, :cond_0

    .line 79
    invoke-virtual {p0}, Laql;->d()V

    :cond_0
    return-void
.end method
