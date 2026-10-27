.class Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$2;
.super Ljava/lang/Object;
.source "MusicPlayerCommonLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$2;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 132
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$2;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->access$700(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;->c()V

    return-void
.end method
