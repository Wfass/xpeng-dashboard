.class Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter$2;
.super Ljava/lang/Object;
.source "MusicPlayerPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->onPlayerNav(Lbli$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter$2;->a:Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 459
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter$2;->a:Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a(Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;Lbjm;)Lbjm;

    return-void
.end method
