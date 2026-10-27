.class public Lcom/xiaopeng/musicradio/account/qlogin/e;
.super Ljava/lang/Object;
.source "QLoginFlowDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/xiaopeng/musicradio/account/qlogin/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/account/qlogin/e$c;,
        Lcom/xiaopeng/musicradio/account/qlogin/e$b;,
        Lcom/xiaopeng/musicradio/account/qlogin/e$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/xiaopeng/musicradio/account/qlogin/h;

.field private c:Lcom/xiaopeng/musicradio/widget/g;

.field private d:Lcom/xiaopeng/musicradio/account/qlogin/f;

.field private e:Z

.field private final f:Ljava/lang/String;

.field private g:Lcom/xiaopeng/musicradio/account/qlogin/e$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaopeng/musicradio/account/qlogin/e$a;)V
    .locals 7

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "QLoginDialog"

    const-string v1, "LoginFlowDialog"

    .line 38
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->a:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->f:Ljava/lang/String;

    .line 41
    sget p1, Lcom/xiaopeng/musicradio/common/k$g;->vip_login_text_wx:I

    .line 42
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xd5c

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0xe20

    if-eq v0, v1, :cond_3

    const/16 v1, 0xee1

    if-eq v0, v1, :cond_2

    const v1, 0x32353d

    if-eq v0, v1, :cond_1

    const v1, 0x6dd8f70b

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "netease"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v5

    goto :goto_1

    :cond_1
    const-string v0, "kgwx"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v4

    goto :goto_1

    :cond_2
    const-string v0, "wx"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_1

    :cond_3
    const-string v0, "qq"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v6

    goto :goto_1

    :cond_4
    const-string v0, "kg"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_a

    if-eq v0, v6, :cond_9

    if-eq v0, v5, :cond_8

    if-eq v0, v4, :cond_7

    if-eq v0, v3, :cond_6

    goto :goto_2

    .line 60
    :cond_6
    sget p1, Lcom/xiaopeng/musicradio/common/k$g;->vip_login_text_kugou:I

    .line 61
    new-instance v0, Lcom/xiaopeng/musicradio/account/qlogin/c;

    invoke-direct {v0, p3, p2}, Lcom/xiaopeng/musicradio/account/qlogin/c;-><init>(Lcom/xiaopeng/musicradio/account/qlogin/e$a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->b:Lcom/xiaopeng/musicradio/account/qlogin/h;

    goto :goto_2

    .line 56
    :cond_7
    sget p1, Lcom/xiaopeng/musicradio/common/k$g;->vip_login_text_wx:I

    .line 57
    new-instance v0, Lcom/xiaopeng/musicradio/account/qlogin/c;

    invoke-direct {v0, p3, p2}, Lcom/xiaopeng/musicradio/account/qlogin/c;-><init>(Lcom/xiaopeng/musicradio/account/qlogin/e$a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->b:Lcom/xiaopeng/musicradio/account/qlogin/h;

    goto :goto_2

    .line 52
    :cond_8
    sget p1, Lcom/xiaopeng/musicradio/common/k$g;->vip_login_text_netease:I

    .line 53
    new-instance v0, Lcom/xiaopeng/musicradio/account/qlogin/d;

    invoke-direct {v0, p3, p2}, Lcom/xiaopeng/musicradio/account/qlogin/d;-><init>(Lcom/xiaopeng/musicradio/account/qlogin/e$a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->b:Lcom/xiaopeng/musicradio/account/qlogin/h;

    goto :goto_2

    .line 48
    :cond_9
    sget p1, Lcom/xiaopeng/musicradio/common/k$g;->vip_login_text_qq:I

    .line 49
    new-instance v0, Lcom/xiaopeng/musicradio/account/qlogin/h;

    invoke-direct {v0, p3, p2}, Lcom/xiaopeng/musicradio/account/qlogin/h;-><init>(Lcom/xiaopeng/musicradio/account/qlogin/e$a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->b:Lcom/xiaopeng/musicradio/account/qlogin/h;

    goto :goto_2

    .line 44
    :cond_a
    sget p1, Lcom/xiaopeng/musicradio/common/k$g;->vip_login_text_wx:I

    .line 45
    new-instance v0, Lcom/xiaopeng/musicradio/account/qlogin/h;

    invoke-direct {v0, p3, p2}, Lcom/xiaopeng/musicradio/account/qlogin/h;-><init>(Lcom/xiaopeng/musicradio/account/qlogin/e$a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->b:Lcom/xiaopeng/musicradio/account/qlogin/h;

    .line 64
    :goto_2
    new-instance p3, Lcom/xiaopeng/musicradio/account/qlogin/e$b;

    invoke-direct {p3, p0}, Lcom/xiaopeng/musicradio/account/qlogin/e$b;-><init>(Lcom/xiaopeng/musicradio/account/qlogin/e;)V

    iput-object p3, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->g:Lcom/xiaopeng/musicradio/account/qlogin/e$b;

    .line 81
    invoke-static {}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->Builder()Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    move-result-object p3

    .line 82
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    .line 84
    new-instance v0, Lcom/xiaopeng/musicradio/widget/g;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p3}, Lcom/xiaopeng/musicradio/widget/g;-><init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XDialogPure$Parameters;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->c:Lcom/xiaopeng/musicradio/widget/g;

    .line 85
    iget-object p3, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->c:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {p3, v2}, Lcom/xiaopeng/musicradio/widget/g;->a(Z)V

    .line 86
    iget-object p3, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->c:Lcom/xiaopeng/musicradio/widget/g;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/xiaopeng/musicradio/widget/g;->setScreenId(I)V

    .line 87
    new-instance p3, Lcom/xiaopeng/musicradio/account/qlogin/f;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->c:Lcom/xiaopeng/musicradio/widget/g;

    invoke-direct {p3, v0, v1}, Lcom/xiaopeng/musicradio/account/qlogin/f;-><init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XDialogPure;)V

    iput-object p3, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->d:Lcom/xiaopeng/musicradio/account/qlogin/f;

    .line 88
    iget-object p3, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->b:Lcom/xiaopeng/musicradio/account/qlogin/h;

    invoke-static {p3}, Lcom/xiaopeng/musicradio/account/qlogin/g;->a(Lcom/xiaopeng/musicradio/account/qlogin/h;)V

    .line 89
    iget-object p3, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->d:Lcom/xiaopeng/musicradio/account/qlogin/f;

    invoke-virtual {p3, p0}, Lcom/xiaopeng/musicradio/account/qlogin/f;->setQLoginFlowDialog(Lcom/xiaopeng/musicradio/account/qlogin/e;)V

    .line 90
    iget-object p3, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->d:Lcom/xiaopeng/musicradio/account/qlogin/f;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->b:Lcom/xiaopeng/musicradio/account/qlogin/h;

    invoke-virtual {p3, v0}, Lcom/xiaopeng/musicradio/account/qlogin/f;->setQrCodePresenter(Lcom/xiaopeng/musicradio/account/qlogin/h;)V

    .line 91
    iget-object p3, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->d:Lcom/xiaopeng/musicradio/account/qlogin/f;

    invoke-virtual {p3, p2}, Lcom/xiaopeng/musicradio/account/qlogin/f;->setQrCodeType(Ljava/lang/String;)V

    .line 92
    iget-object p2, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->d:Lcom/xiaopeng/musicradio/account/qlogin/f;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/account/qlogin/f;->setTitleRes(I)V

    .line 93
    iget-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->d:Lcom/xiaopeng/musicradio/account/qlogin/f;

    new-instance p2, Lcom/xiaopeng/musicradio/account/qlogin/e$1;

    invoke-direct {p2, p0}, Lcom/xiaopeng/musicradio/account/qlogin/e$1;-><init>(Lcom/xiaopeng/musicradio/account/qlogin/e;)V

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/account/qlogin/f;->setCancleListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/account/qlogin/e;->d()V

    .line 100
    iget-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->c:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/g;->show()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/account/qlogin/e;Lcom/xiaopeng/musicradio/account/qlogin/e$b;)Lcom/xiaopeng/musicradio/account/qlogin/e$b;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->g:Lcom/xiaopeng/musicradio/account/qlogin/e$b;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/account/qlogin/e;Lcom/xiaopeng/musicradio/account/qlogin/h;)Lcom/xiaopeng/musicradio/account/qlogin/h;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->b:Lcom/xiaopeng/musicradio/account/qlogin/h;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/account/qlogin/e;)Lcom/xiaopeng/musicradio/widget/g;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->c:Lcom/xiaopeng/musicradio/widget/g;

    return-object p0
.end method

.method private a(Landroid/graphics/Bitmap;Z)V
    .locals 2

    const-string v0, "QLoginDialog"

    const-string v1, "showQrLoginDialog"

    .line 168
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->c:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/g;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lbxo;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->d:Lcom/xiaopeng/musicradio/account/qlogin/f;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/xiaopeng/musicradio/account/qlogin/f;->a(Ljava/lang/String;Z)V

    .line 185
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/account/qlogin/e;->e()V

    .line 186
    iget-object p2, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->d:Lcom/xiaopeng/musicradio/account/qlogin/f;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/account/qlogin/f;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/account/qlogin/e;Landroid/graphics/Bitmap;Z)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/account/qlogin/e;->a(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/account/qlogin/e;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/account/qlogin/e;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/account/qlogin/e;)Lcom/xiaopeng/musicradio/account/qlogin/h;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->b:Lcom/xiaopeng/musicradio/account/qlogin/h;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaopeng/musicradio/account/qlogin/e;)Lcom/xiaopeng/musicradio/account/qlogin/e$b;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->g:Lcom/xiaopeng/musicradio/account/qlogin/e$b;

    return-object p0
.end method

.method private d()V
    .locals 2

    const-string v0, "QLoginDialog"

    const-string v1, "initListener"

    .line 112
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->c:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/g;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/account/qlogin/e$c;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/account/qlogin/e$c;-><init>(Lcom/xiaopeng/musicradio/account/qlogin/e;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private e()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->b:Lcom/xiaopeng/musicradio/account/qlogin/h;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/account/qlogin/h;->a(Lcom/xiaopeng/musicradio/account/qlogin/b;)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->c:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/g;->show()V

    const/4 v0, 0x1

    .line 121
    invoke-static {v0}, Lcom/xiaopeng/musicradio/account/qlogin/g;->a(Z)V

    return-void
.end method

.method static synthetic e(Lcom/xiaopeng/musicradio/account/qlogin/e;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->e:Z

    return p0
.end method

.method private f()V
    .locals 2

    const-string v0, "QLoginDialog"

    const-string v1, "showQrLoginFailDialog"

    .line 191
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->c:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/g;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lbxo;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 198
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/account/qlogin/e;->e()V

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->d:Lcom/xiaopeng/musicradio/account/qlogin/f;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/account/qlogin/f;->c()V

    return-void
.end method

.method private g()V
    .locals 2

    const-string v0, "QLoginDialog"

    const-string v1, "showQrLoginOvertimeDialog"

    .line 204
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->c:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/g;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lbxo;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 211
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/account/qlogin/e;->e()V

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->d:Lcom/xiaopeng/musicradio/account/qlogin/f;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/account/qlogin/f;->d()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "QLoginDialog"

    const-string v1, "onLoginConfirmSuccess"

    .line 247
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->c:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/g;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->c:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/g;->dismiss()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoginConfirmFailed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QLoginDialog"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x23

    .line 256
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/account/qlogin/e;->b(I)V

    return-void
.end method

.method public varargs a(I[Ljava/lang/String;)V
    .locals 2

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHttpResponseEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QLoginDialog"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_1

    .line 238
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/account/qlogin/e;->f()V

    goto :goto_1

    .line 234
    :cond_1
    array-length p1, p2

    if-lez p1, :cond_2

    const/4 p1, 0x0

    aget-object p1, p2, p1

    goto :goto_0

    :cond_2
    const-string p1, ""

    .line 235
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/account/qlogin/e;->a(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 140
    new-instance v0, Lcom/xiaopeng/musicradio/account/qlogin/e$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/account/qlogin/e$2;-><init>(Lcom/xiaopeng/musicradio/account/qlogin/e;Ljava/lang/String;)V

    invoke-static {v0}, Lbql;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "QLoginDialog"

    const-string v1, "onCloseDialog"

    .line 288
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->c:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/g;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->c:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/g;->dismiss()V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFragmentEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QLoginDialog"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/account/qlogin/e;->f()V

    goto :goto_0

    .line 267
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/account/qlogin/e;->c()V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "QLoginDialog"

    const-string v1, "showRequestQrDialog"

    .line 130
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lbxo;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/account/qlogin/e;->e()V

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->d:Lcom/xiaopeng/musicradio/account/qlogin/f;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/account/qlogin/f;->b()V

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQRCodeEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QLoginDialog"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/account/qlogin/e;->g()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/account/qlogin/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QLoginDialog"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->iv_qr_retry:I

    if-ne p1, v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/account/qlogin/e;->c()V

    :cond_0
    return-void
.end method
