.class Lcom/xiaopeng/musicradio/service/MusicMineService$1;
.super Ljava/lang/Object;
.source "MusicMineService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/service/MusicMineService;->getCollectedMusicList(Ljava/lang/Object;ZI)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/datalist/f;

.field final synthetic c:Landroidx/lifecycle/r;

.field final synthetic d:Lcom/xiaopeng/musicradio/service/MusicMineService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/service/MusicMineService;ILcom/xiaopeng/musicradio/datalist/f;Landroidx/lifecycle/r;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$1;->d:Lcom/xiaopeng/musicradio/service/MusicMineService;

    iput p2, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$1;->a:I

    iput-object p3, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$1;->b:Lcom/xiaopeng/musicradio/datalist/f;

    iput-object p4, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$1;->c:Landroidx/lifecycle/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 109
    invoke-static {}, Layr;->a()Layr;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$1;->a:I

    invoke-virtual {v0, v1}, Layr;->a(I)Layq;

    move-result-object v0

    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v1

    invoke-virtual {v1}, Lbea;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Layq;->c(Ljava/lang/String;)I

    move-result v5

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$1;->b:Lcom/xiaopeng/musicradio/datalist/f;

    iget v0, v0, Lcom/xiaopeng/musicradio/datalist/f;->d:I

    const/4 v1, 0x1

    if-ge v0, v5, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v3, v0

    .line 111
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$1;->b:Lcom/xiaopeng/musicradio/datalist/f;

    iget v0, v0, Lcom/xiaopeng/musicradio/datalist/f;->d:I

    add-int/lit8 v4, v0, 0x1

    .line 112
    invoke-static {}, Lbaf;->a()Lbaf;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$1;->a:I

    invoke-virtual {v0, v2}, Lbaf;->a(I)Lbae;

    move-result-object v0

    const/16 v2, 0x32

    invoke-virtual {v0, v2, v1}, Lbae;->a(IZ)Ljava/util/List;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$1;->b:Lcom/xiaopeng/musicradio/datalist/f;

    iget v1, v1, Lcom/xiaopeng/musicradio/datalist/f;->f:I

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/ak;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v6

    .line 114
    iget-object v2, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$1;->b:Lcom/xiaopeng/musicradio/datalist/f;

    const-string v7, "getCollectedMusicList"

    invoke-static/range {v2 .. v7}, Lcom/xiaopeng/musicradio/datalist/g;->a(Lcom/xiaopeng/musicradio/datalist/f;ZIILjava/util/List;Ljava/lang/String;)Lcom/xiaopeng/musicradio/datalist/g;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$1;->c:Landroidx/lifecycle/r;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    return-void
.end method
