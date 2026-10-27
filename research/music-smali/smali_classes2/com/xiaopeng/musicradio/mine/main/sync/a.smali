.class public Lcom/xiaopeng/musicradio/mine/main/sync/a;
.super Ljava/lang/Object;
.source "MusicSyncDialog.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/xiaopeng/musicradio/widget/g;

.field private c:Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/a;->a:Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/a;->c()V

    return-void
.end method

.method private c()V
    .locals 3

    .line 34
    invoke-static {}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->Builder()Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    move-result-object v0

    .line 35
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    .line 37
    new-instance v1, Lcom/xiaopeng/musicradio/widget/g;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/main/sync/a;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/xiaopeng/musicradio/widget/g;-><init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XDialogPure$Parameters;)V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/a;->b:Lcom/xiaopeng/musicradio/widget/g;

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/a;->b:Lcom/xiaopeng/musicradio/widget/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/g;->a(Z)V

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/a;->b:Lcom/xiaopeng/musicradio/widget/g;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/g;->setScreenId(I)V

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->music_sync_dialog_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/a;->b:Lcom/xiaopeng/musicradio/widget/g;

    sget-object v2, Lcom/xiaopeng/musicradio/vui/c;->bF:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/g;->setVuiSceneId(Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/a;->b:Lcom/xiaopeng/musicradio/widget/g;

    sget-object v2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/g;->setVuiEngine(Lbxu;)V

    .line 43
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/a;->b:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/g;->setContentView(Landroid/view/View;)V

    .line 44
    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->music_sync_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/a;->c:Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/a;->c:Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/a;->b:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->setDialog(Lcom/xiaopeng/xui/app/XDialogPure;)V

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/a;->c:Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->setData()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/mine/ResultState;",
            ">;)V"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/a;->c:Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/a;->b:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->setDialog(Lcom/xiaopeng/xui/app/XDialogPure;)V

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/a;->c:Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->setResults(Ljava/util/List;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/a;->b:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/g;->show()V

    return-void
.end method
