.class Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$1;
.super Ljava/lang/Object;
.source "MusicConLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$1;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 202
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$1;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 203
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$1;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mHasData:Z

    .line 204
    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->access$000(Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;)Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->loadData()V

    .line 205
    new-instance p1, Lasj$ad;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$1;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->getAccountType()I

    move-result v0

    invoke-direct {p1, v0}, Lasj$ad;-><init>(I)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
