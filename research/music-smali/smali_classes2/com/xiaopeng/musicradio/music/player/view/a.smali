.class public Lcom/xiaopeng/musicradio/music/player/view/a;
.super Ljava/lang/Object;
.source "BtMusicSmallPlayer.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/playercomponent/small/view/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 20
    invoke-static {}, Lbic;->a()Lbic;

    move-result-object v0

    invoke-virtual {v0}, Lbic;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 21
    invoke-static {}, Lbic;->a()Lbic;

    move-result-object v0

    invoke-virtual {v0}, Lbic;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Layd;->a()Layd;

    move-result-object v0

    invoke-virtual {v0}, Layd;->b()Lcom/xiaopeng/musicradio/music/api/bean/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 26
    new-instance v1, Landroid/util/Pair;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/api/bean/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/api/bean/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method public a(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 15
    new-instance v0, Lcom/xiaopeng/musicradio/music/player/view/BtMusicSmallPlayerSubViewCreator;

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/music/player/view/BtMusicSmallPlayerSubViewCreator;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
