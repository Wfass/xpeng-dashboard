.class Lcom/xiaopeng/musicradio/service/MusicMineService$13;
.super Ljava/lang/Object;
.source "MusicMineService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/service/MusicMineService;->setCollectedAlbum(Ljava/lang/Object;Z)Ljava/lang/Object;
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

    .line 332
    iput-object p1, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$13;->d:Lcom/xiaopeng/musicradio/service/MusicMineService;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$13;->a:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$13;->b:Z

    iput-object p4, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$13;->c:Landroidx/lifecycle/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 335
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$13;->a:Ljava/lang/Object;

    instance-of v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    if-eqz v1, :cond_2

    .line 336
    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$13;->b:Z

    if-eqz v1, :cond_0

    .line 337
    invoke-static {}, Layr;->a()Layr;

    move-result-object v0

    invoke-virtual {v0}, Layr;->b()Layq;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$13;->a:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$13;->c:Landroidx/lifecycle/r;

    invoke-virtual {v0, v1, v2}, Layq;->b(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;Landroidx/lifecycle/r;)V

    goto :goto_0

    .line 339
    :cond_0
    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    .line 340
    invoke-static {}, Lazz;->a()Lazz;

    move-result-object v1

    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v2

    invoke-virtual {v2}, Lbdu;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Lazz;->a(I)Lazy;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lazy;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 341
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 342
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setDissExtraId(Ljava/lang/String;)V

    .line 344
    :cond_1
    invoke-static {}, Layr;->a()Layr;

    move-result-object v1

    invoke-virtual {v1}, Layr;->b()Layq;

    move-result-object v1

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$13;->c:Landroidx/lifecycle/r;

    invoke-virtual {v1, v0, v2}, Layq;->a(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;Landroidx/lifecycle/r;)V

    goto :goto_0

    .line 347
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$13;->c:Landroidx/lifecycle/r;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
