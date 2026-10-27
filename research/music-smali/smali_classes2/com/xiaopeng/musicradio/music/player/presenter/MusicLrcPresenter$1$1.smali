.class Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter$1$1;
.super Ljava/lang/Object;
.source "MusicLrcPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter$1;Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter$1$1;->b:Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter$1;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter$1$1;->b:Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter$1;->b:Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter$1$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->a(Ljava/lang/String;)V

    return-void
.end method
