.class Lcom/xiaopeng/musicradio/service/MusicMineService$4;
.super Laxz;
.source "MusicMineService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/service/MusicMineService;->a(Ljava/util/List;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;IILjava/lang/String;ILbff;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbff;

.field final synthetic c:Lcom/xiaopeng/musicradio/service/MusicMineService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/service/MusicMineService;Ljava/lang/String;IILjava/util/List;ILbff;)V
    .locals 6

    .line 581
    iput-object p1, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$4;->c:Lcom/xiaopeng/musicradio/service/MusicMineService;

    iput-object p7, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$4;->a:Lbff;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Laxz;-><init>(Ljava/lang/String;IILjava/util/List;I)V

    return-void
.end method


# virtual methods
.method public a(ZILjava/lang/String;)V
    .locals 1

    .line 589
    invoke-super {p0, p1, p2, p3}, Laxz;->a(ZILjava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$4;->a:Lbff;

    invoke-interface {v0, p1, p2, p3}, Lbff;->a(ZILjava/lang/String;)V

    return-void
.end method

.method public r()Z
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$4;->a:Lbff;

    invoke-interface {v0}, Lbff;->a()Z

    move-result v0

    return v0
.end method
