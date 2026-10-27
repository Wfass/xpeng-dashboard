.class Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter$1$2;
.super Ljava/lang/Object;
.source "SingleLrcPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter$1;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter$1$2;->a:Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter$1$2;->a:Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter$1;->b:Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;->a(Lcom/xiaopeng/musicradio/music/player/presenter/SingleLrcPresenter;Ljava/lang/String;)V

    return-void
.end method
