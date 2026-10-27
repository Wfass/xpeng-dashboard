.class public abstract Lcom/xiaopeng/musicradio/web/a;
.super Ljava/lang/Object;
.source "ProtocolBaseDialog.java"


# instance fields
.field protected a:Lcom/xiaopeng/musicradio/widget/g;

.field protected b:Ljava/lang/String;

.field protected c:Landroid/content/Context;

.field protected d:I

.field protected e:I

.field protected f:Lcom/xiaopeng/musicradio/web/ProtocolLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 23
    iput v0, p0, Lcom/xiaopeng/musicradio/web/a;->e:I

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/musicradio/web/a;->c:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/xiaopeng/musicradio/web/a;->b:Ljava/lang/String;

    .line 29
    iput p3, p0, Lcom/xiaopeng/musicradio/web/a;->d:I

    .line 30
    iput p4, p0, Lcom/xiaopeng/musicradio/web/a;->e:I

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/web/a;->e()V

    return-void
.end method

.method private e()V
    .locals 6

    .line 35
    invoke-static {}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->Builder()Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    move-result-object v0

    .line 36
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/web/a;->a()[I

    move-result-object v1

    .line 37
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, 0x0

    aget v4, v1, v3

    const/4 v5, 0x1

    aget v1, v1, v5

    invoke-direct {v2, v4, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    .line 39
    new-instance v1, Lcom/xiaopeng/musicradio/widget/g;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/web/a;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/xiaopeng/musicradio/widget/g;-><init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XDialogPure$Parameters;)V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/web/a;->a:Lcom/xiaopeng/musicradio/widget/g;

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/a;->a:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/g;->a(Z)V

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/a;->a:Lcom/xiaopeng/musicradio/widget/g;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/g;->setScreenId(I)V

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/a;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$f;->protocol_dialog_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/xiaopeng/musicradio/web/a;->a:Lcom/xiaopeng/musicradio/widget/g;

    sget-object v2, Lcom/xiaopeng/musicradio/vui/c;->bF:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/g;->setVuiSceneId(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/xiaopeng/musicradio/web/a;->a:Lcom/xiaopeng/musicradio/widget/g;

    sget-object v2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/g;->setVuiEngine(Lbxu;)V

    .line 46
    iget-object v1, p0, Lcom/xiaopeng/musicradio/web/a;->a:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/g;->setContentView(Landroid/view/View;)V

    .line 48
    sget v1, Lcom/xiaopeng/musicradio/common/k$e;->webview_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/web/ProtocolLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/web/a;->f:Lcom/xiaopeng/musicradio/web/ProtocolLayout;

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/a;->f:Lcom/xiaopeng/musicradio/web/ProtocolLayout;

    iget v1, p0, Lcom/xiaopeng/musicradio/web/a;->e:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->setTextZoom(I)V

    return-void
.end method


# virtual methods
.method protected abstract a()[I
.end method

.method protected b()Lcom/xiaopeng/musicradio/web/ProtocolLayout;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/a;->f:Lcom/xiaopeng/musicradio/web/ProtocolLayout;

    return-object v0
.end method

.method public c()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/a;->a:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/g;->dismiss()V

    return-void
.end method

.method public d()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/a;->a:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/g;->show()V

    return-void
.end method
