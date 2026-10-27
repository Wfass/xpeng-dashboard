.class Lcom/xiaopeng/musicradio/service/MusicMineService$12;
.super Ljava/lang/Object;
.source "MusicMineService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/service/MusicMineService;->setCollectedMusic(Ljava/lang/Object;Z)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Z

.field final synthetic c:Landroidx/lifecycle/r;

.field final synthetic d:Lcom/xiaopeng/musicradio/service/MusicMineService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/service/MusicMineService;Ljava/lang/Object;ZLandroidx/lifecycle/r;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$12;->d:Lcom/xiaopeng/musicradio/service/MusicMineService;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$12;->a:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$12;->b:Z

    iput-object p4, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$12;->c:Landroidx/lifecycle/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$12;->a:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v1, :cond_1

    .line 309
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$12;->b:Z

    if-nez v0, :cond_0

    .line 310
    invoke-static {}, Layr;->a()Layr;

    move-result-object v0

    invoke-virtual {v0}, Layr;->b()Layq;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$12;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Layq;->a(Ljava/util/List;)V

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$12;->c:Landroidx/lifecycle/r;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 313
    :cond_1
    instance-of v0, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-eqz v0, :cond_3

    .line 314
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$12;->b:Z

    if-eqz v0, :cond_2

    .line 315
    invoke-static {}, Layr;->a()Layr;

    move-result-object v0

    invoke-virtual {v0}, Layr;->b()Layq;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$12;->a:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v0, v1}, Layq;->c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    goto :goto_0

    .line 317
    :cond_2
    invoke-static {}, Layr;->a()Layr;

    move-result-object v0

    invoke-virtual {v0}, Layr;->b()Layq;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$12;->a:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v0, v1}, Layq;->d(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 319
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$12;->c:Landroidx/lifecycle/r;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 321
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$12;->c:Landroidx/lifecycle/r;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
