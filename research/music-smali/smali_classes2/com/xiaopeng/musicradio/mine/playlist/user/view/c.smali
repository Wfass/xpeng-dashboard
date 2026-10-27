.class public Lcom/xiaopeng/musicradio/mine/playlist/user/view/c;
.super Ljava/lang/Object;
.source "MusicImportDialog.java"


# instance fields
.field private a:Lcom/xiaopeng/musicradio/widget/g;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/user/view/c;->b:Landroid/content/Context;

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/playlist/user/view/c;->c()V

    return-void
.end method

.method private c()V
    .locals 3

    .line 29
    invoke-static {}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->Builder()Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    move-result-object v0

    .line 30
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    .line 32
    new-instance v1, Lcom/xiaopeng/musicradio/widget/g;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/playlist/user/view/c;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/xiaopeng/musicradio/widget/g;-><init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XDialogPure$Parameters;)V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/mine/playlist/user/view/c;->a:Lcom/xiaopeng/musicradio/widget/g;

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/user/view/c;->a:Lcom/xiaopeng/musicradio/widget/g;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/g;->setScreenId(I)V

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/user/view/c;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/user/view/c;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/playlist/user/view/c;->a:Lcom/xiaopeng/musicradio/widget/g;

    sget-object v2, Lcom/xiaopeng/musicradio/vui/c;->bF:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/g;->setVuiSceneId(Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/playlist/user/view/c;->a:Lcom/xiaopeng/musicradio/widget/g;

    sget-object v2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/g;->setVuiEngine(Lbxu;)V

    .line 37
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/playlist/user/view/c;->a:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/g;->setContentView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .line 41
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->music_import_dialog_layout:I

    return v0
.end method

.method public b()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/user/view/c;->a:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/g;->show()V

    return-void
.end method
