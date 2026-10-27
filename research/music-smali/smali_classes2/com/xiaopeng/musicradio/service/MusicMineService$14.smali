.class Lcom/xiaopeng/musicradio/service/MusicMineService$14;
.super Ljava/lang/Object;
.source "MusicMineService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/service/MusicMineService;->removeHistoryMusic(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Landroidx/lifecycle/r;

.field final synthetic c:Lcom/xiaopeng/musicradio/service/MusicMineService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/service/MusicMineService;Ljava/lang/Object;Landroidx/lifecycle/r;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$14;->c:Lcom/xiaopeng/musicradio/service/MusicMineService;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$14;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$14;->b:Landroidx/lifecycle/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 361
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$14;->a:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 362
    check-cast v0, Ljava/util/List;

    .line 363
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 364
    invoke-static {}, Lbbu;->a()Lbbu;

    move-result-object v2

    invoke-virtual {v2, v0}, Lbbu;->a(Ljava/util/List;)V

    goto :goto_0

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$14;->b:Landroidx/lifecycle/r;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$14;->b:Landroidx/lifecycle/r;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
