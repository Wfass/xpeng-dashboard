.class public Lcom/xiaopeng/musicradio/mine/main/setting/a;
.super Ljava/lang/Object;
.source "ContinuePlaySettingDialog.java"


# instance fields
.field private a:Lcom/xiaopeng/musicradio/widget/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/mine/main/setting/a;->a(Landroid/content/Context;I)V

    return-void
.end method

.method private a(Landroid/content/Context;I)V
    .locals 3

    .line 32
    new-instance v0, Lcom/xiaopeng/musicradio/mine/main/setting/ContinuePlaySettingView;

    invoke-direct {v0, p1, p2}, Lcom/xiaopeng/musicradio/mine/main/setting/ContinuePlaySettingView;-><init>(Landroid/content/Context;I)V

    .line 34
    invoke-static {}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->Builder()Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    move-result-object p2

    .line 35
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    .line 37
    new-instance v1, Lcom/xiaopeng/musicradio/widget/g;

    invoke-direct {v1, p1, p2}, Lcom/xiaopeng/musicradio/widget/g;-><init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XDialogPure$Parameters;)V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/mine/main/setting/a;->a:Lcom/xiaopeng/musicradio/widget/g;

    .line 38
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/setting/a;->a:Lcom/xiaopeng/musicradio/widget/g;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/g;->setScreenId(I)V

    .line 39
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/setting/a;->a:Lcom/xiaopeng/musicradio/widget/g;

    sget-object p2, Lcom/xiaopeng/musicradio/vui/c;->bJ:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/g;->setVuiSceneId(Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/setting/a;->a:Lcom/xiaopeng/musicradio/widget/g;

    sget-object p2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/g;->setVuiEngine(Lbxu;)V

    .line 41
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/setting/a;->a:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/g;->setContentView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/setting/a;->a:Lcom/xiaopeng/musicradio/widget/g;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/g;->show()V

    .line 53
    invoke-static {}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->getInstance()Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;

    move-result-object v0

    const-string v1, "multi_client_play"

    const-string v2, "exposure"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->reportFeatureUse(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/setting/a;->a:Lcom/xiaopeng/musicradio/widget/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/g;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
