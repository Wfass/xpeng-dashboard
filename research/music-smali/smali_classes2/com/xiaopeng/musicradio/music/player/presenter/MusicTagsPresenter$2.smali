.class Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter$2;
.super Ljava/lang/Object;
.source "MusicTagsPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter$2;->a:Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 123
    invoke-static {}, Laye;->a()Laye;

    move-result-object v0

    invoke-virtual {v0}, Laye;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter$2$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter$2$1;-><init>(Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter$2;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lbql;->b(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method
