.class Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout$2;
.super Ljava/lang/Object;
.source "MsSingerCollectLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout$2;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 135
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout$2;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->access$200(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;)Lcom/xiaopeng/musicradio/widget/MusicScrollLayoutLoadingView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayoutLoadingView;->getState()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout$2;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;

    .line 136
    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->access$200(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;)Lcom/xiaopeng/musicradio/widget/MusicScrollLayoutLoadingView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayoutLoadingView;->getState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout$2;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->access$300(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->e()V

    :cond_1
    return-void
.end method
