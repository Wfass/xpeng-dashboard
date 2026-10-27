.class public Lcom/xiaopeng/musicradio/webview/view/c;
.super Ljava/lang/Object;
.source "VipBuyLayoutDialog.java"


# instance fields
.field private a:Lcom/xiaopeng/musicradio/widget/g;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/c;->d:Landroid/content/Context;

    .line 26
    iput p2, p0, Lcom/xiaopeng/musicradio/webview/view/c;->b:I

    .line 27
    iput-object p3, p0, Lcom/xiaopeng/musicradio/webview/view/c;->c:Ljava/lang/String;

    .line 28
    iput p4, p0, Lcom/xiaopeng/musicradio/webview/view/c;->e:I

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/webview/view/c;->b()V

    return-void
.end method

.method private b()V
    .locals 4

    .line 33
    invoke-static {}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->Builder()Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    move-result-object v0

    .line 34
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    .line 36
    new-instance v1, Lcom/xiaopeng/musicradio/widget/g;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/webview/view/c;->d:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/xiaopeng/musicradio/widget/g;-><init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XDialogPure$Parameters;)V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/webview/view/c;->a:Lcom/xiaopeng/musicradio/widget/g;

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/c;->a:Lcom/xiaopeng/musicradio/widget/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/g;->a(Z)V

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/c;->a:Lcom/xiaopeng/musicradio/widget/g;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/g;->setScreenId(I)V

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/c;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/webview/a$d;->vip_buy_dialog_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/xiaopeng/musicradio/webview/view/c;->a:Lcom/xiaopeng/musicradio/widget/g;

    sget-object v2, Lcom/xiaopeng/musicradio/vui/c;->bF:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/g;->setVuiSceneId(Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/xiaopeng/musicradio/webview/view/c;->a:Lcom/xiaopeng/musicradio/widget/g;

    sget-object v2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/g;->setVuiEngine(Lbxu;)V

    .line 42
    iget-object v1, p0, Lcom/xiaopeng/musicradio/webview/view/c;->a:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/g;->setContentView(Landroid/view/View;)V

    .line 43
    sget v1, Lcom/xiaopeng/musicradio/webview/a$c;->vip_buy_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;

    .line 44
    iget v1, p0, Lcom/xiaopeng/musicradio/webview/view/c;->b:I

    iget-object v2, p0, Lcom/xiaopeng/musicradio/webview/view/c;->c:Ljava/lang/String;

    iget v3, p0, Lcom/xiaopeng/musicradio/webview/view/c;->e:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->setData(ILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/c;->a:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/g;->show()V

    return-void
.end method
