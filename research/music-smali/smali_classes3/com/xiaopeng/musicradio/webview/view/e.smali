.class public Lcom/xiaopeng/musicradio/webview/view/e;
.super Ljava/lang/Object;
.source "VipSaleLayoutDialog.java"


# instance fields
.field private a:Lcom/xiaopeng/musicradio/widget/g;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/e;->c:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/xiaopeng/musicradio/webview/view/e;->b:Ljava/lang/String;

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/e;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    .line 30
    invoke-static {}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->Builder()Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    move-result-object v0

    .line 31
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    .line 33
    new-instance v1, Lcom/xiaopeng/musicradio/widget/g;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/webview/view/e;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/xiaopeng/musicradio/widget/g;-><init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XDialogPure$Parameters;)V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/webview/view/e;->a:Lcom/xiaopeng/musicradio/widget/g;

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/e;->a:Lcom/xiaopeng/musicradio/widget/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/g;->a(Z)V

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/e;->a:Lcom/xiaopeng/musicradio/widget/g;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/g;->setScreenId(I)V

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/e;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/webview/a$d;->vip_sale_dialog_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/xiaopeng/musicradio/webview/view/e;->a:Lcom/xiaopeng/musicradio/widget/g;

    sget-object v2, Lcom/xiaopeng/musicradio/vui/c;->bF:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/g;->setVuiSceneId(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/xiaopeng/musicradio/webview/view/e;->a:Lcom/xiaopeng/musicradio/widget/g;

    sget-object v2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/g;->setVuiEngine(Lbxu;)V

    .line 39
    iget-object v1, p0, Lcom/xiaopeng/musicradio/webview/view/e;->a:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/g;->setContentView(Landroid/view/View;)V

    .line 40
    sget v1, Lcom/xiaopeng/musicradio/webview/a$c;->vip_buy_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;

    .line 41
    iget-object v1, p0, Lcom/xiaopeng/musicradio/webview/view/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;->loadImage(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/e;->a:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/g;->show()V

    return-void
.end method
