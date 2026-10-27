.class public abstract Lcom/xiaopeng/musicradio/web/d;
.super Ljava/lang/Object;
.source "WebViewBaseDialog.java"


# instance fields
.field protected a:Lcom/xiaopeng/musicradio/widget/g;

.field protected b:Ljava/lang/String;

.field protected c:Landroid/content/Context;

.field protected d:I

.field protected e:I

.field protected f:Lcom/xiaopeng/musicradio/web/WebViewLayout;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 25
    iput v0, p0, Lcom/xiaopeng/musicradio/web/d;->e:I

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/musicradio/web/d;->c:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/xiaopeng/musicradio/web/d;->b:Ljava/lang/String;

    .line 32
    iput p3, p0, Lcom/xiaopeng/musicradio/web/d;->d:I

    .line 33
    iput p4, p0, Lcom/xiaopeng/musicradio/web/d;->e:I

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/web/d;->f()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/web/d;)Landroid/view/View;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/xiaopeng/musicradio/web/d;->g:Landroid/view/View;

    return-object p0
.end method

.method private f()V
    .locals 6

    .line 38
    invoke-static {}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->Builder()Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    move-result-object v0

    .line 39
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/web/d;->a()[I

    move-result-object v1

    .line 40
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, 0x0

    aget v4, v1, v3

    const/4 v5, 0x1

    aget v1, v1, v5

    invoke-direct {v2, v4, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    .line 42
    new-instance v1, Lcom/xiaopeng/musicradio/widget/g;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/web/d;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/xiaopeng/musicradio/widget/g;-><init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XDialogPure$Parameters;)V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/web/d;->a:Lcom/xiaopeng/musicradio/widget/g;

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/d;->a:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/g;->a(Z)V

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/d;->a:Lcom/xiaopeng/musicradio/widget/g;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/g;->setScreenId(I)V

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/d;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$f;->webview_dialog_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/web/d;->g:Landroid/view/View;

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/d;->a:Lcom/xiaopeng/musicradio/widget/g;

    sget-object v1, Lcom/xiaopeng/musicradio/vui/c;->bF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/g;->setVuiSceneId(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/d;->a:Lcom/xiaopeng/musicradio/widget/g;

    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/g;->setVuiEngine(Lbxu;)V

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/d;->a:Lcom/xiaopeng/musicradio/widget/g;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/web/d;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/g;->setContentView(Landroid/view/View;)V

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/d;->g:Landroid/view/View;

    sget v1, Lcom/xiaopeng/musicradio/common/k$e;->webview_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/web/WebViewLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/web/d;->f:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/d;->f:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    iget v1, p0, Lcom/xiaopeng/musicradio/web/d;->e:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->setTextZoom(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 2

    if-nez p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/xiaopeng/musicradio/web/d;->a:Lcom/xiaopeng/musicradio/widget/g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/g;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/d;->a:Lcom/xiaopeng/musicradio/widget/g;

    new-instance v1, Lcom/xiaopeng/musicradio/web/d$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/musicradio/web/d$1;-><init>(Lcom/xiaopeng/musicradio/web/d;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/g;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/d;->f:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    invoke-virtual {v0, p1, p1}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->setData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract a()[I
.end method

.method public c()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/d;->f:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->loadUrl()V

    return-void
.end method

.method public d()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/d;->a:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/g;->dismiss()V

    return-void
.end method

.method public e()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/d;->a:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/g;->show()V

    return-void
.end method

.method protected u_()Lcom/xiaopeng/musicradio/web/WebViewLayout;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/d;->f:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    return-object v0
.end method
