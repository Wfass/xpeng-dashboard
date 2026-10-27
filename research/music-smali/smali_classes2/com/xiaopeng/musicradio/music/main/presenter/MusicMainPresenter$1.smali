.class Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter$1;
.super Ljava/lang/Object;
.source "MusicMainPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter;->onSwitchTab(Lcom/xiaopeng/musicradio/event/common/b$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/event/common/b$b;

.field final synthetic b:Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter;Lcom/xiaopeng/musicradio/event/common/b$b;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter$1;->b:Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter$1;->a:Lcom/xiaopeng/musicradio/event/common/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 135
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/b$a;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter$1;->a:Lcom/xiaopeng/musicradio/event/common/b$b;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/event/common/b$b;->a()I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter$1;->a:Lcom/xiaopeng/musicradio/event/common/b$b;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/event/common/b$b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/event/common/b$a;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->e(Ljava/lang/Object;)V

    return-void
.end method
