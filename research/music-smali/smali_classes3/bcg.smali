.class public Lbcg;
.super Layq;
.source "KugouMusicCollectManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbcg$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Layq;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbcg$1;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lbcg;-><init>()V

    return-void
.end method

.method public static v()Lbcg;
    .locals 1

    .line 38
    sget-object v0, Lbcg$a;->a:Lbcg;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Z
    .locals 1

    .line 88
    invoke-static {}, Lbau;->a()Lbau;

    move-result-object p1

    invoke-virtual {p1}, Lbau;->e()I

    move-result p1

    invoke-virtual {p0}, Lbcg;->e()Lbae;

    move-result-object v0

    invoke-virtual {v0}, Lbae;->i()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()V
    .locals 4

    .line 46
    invoke-static {}, Lbek;->a()Lbek;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbek;->a(Lbdq;)V

    .line 47
    invoke-static {}, Lbdy;->c()Lbdy;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/common/a;->D()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lazk;

    invoke-direct {v3}, Lazk;-><init>()V

    invoke-virtual {v0, v2, v3}, Lbdy;->a(Ljava/lang/String;Lbdl$a;)V

    .line 48
    invoke-static {}, Lbdy;->c()Lbdy;

    move-result-object v0

    invoke-static {v1}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/common/a;->E()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lazl;

    invoke-direct {v2}, Lazl;-><init>()V

    invoke-virtual {v0, v1, v2}, Lbdy;->a(Ljava/lang/String;Lbdl$a;)V

    .line 49
    invoke-static {}, Lbcf;->k()Lbcf;

    .line 50
    invoke-static {}, Lbcd;->i()Lbcd;

    return-void
.end method

.method protected c()Lben;
    .locals 1

    .line 67
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->e()Lbej;

    move-result-object v0

    return-object v0
.end method

.method protected d()Layt;
    .locals 1

    .line 71
    invoke-static {}, Lbcf;->k()Lbcf;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lbae;
    .locals 1

    .line 75
    invoke-static {}, Lbau;->a()Lbau;

    move-result-object v0

    return-object v0
.end method

.method protected f()Lazy;
    .locals 1

    .line 79
    invoke-static {}, Lbas;->a()Lbas;

    move-result-object v0

    return-object v0
.end method

.method protected g()Lbci;
    .locals 1

    .line 83
    invoke-static {}, Lbch;->a()Lbch;

    move-result-object v0

    return-object v0
.end method

.method protected h()Layo;
    .locals 1

    .line 96
    invoke-static {}, Lbcd;->i()Lbcd;

    move-result-object v0

    return-object v0
.end method

.method protected i()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 54
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->e()Lbej;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Lben;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected l()I
    .locals 1

    const v0, 0x20211

    return v0
.end method

.method protected m()Ljava/lang/String;
    .locals 1

    const-string v0, "kugou_song_id"

    return-object v0
.end method

.method protected n()Ljava/lang/String;
    .locals 1

    const-string v0, "kugou_user_song_id"

    return-object v0
.end method

.method public o()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected p()V
    .locals 1

    .line 59
    invoke-static {}, Lare;->d()Lare;

    move-result-object v0

    invoke-virtual {v0}, Lare;->g()V

    return-void
.end method

.method protected q()Lazs;
    .locals 1

    .line 63
    invoke-static {}, Lbaq;->a()Lbaq;

    move-result-object v0

    return-object v0
.end method

.method protected s()Ljava/lang/String;
    .locals 1

    const-string v0, "KugouMusicCollectManager"

    return-object v0
.end method

.method protected t()Ljava/lang/String;
    .locals 1

    const-string v0, "kugou_love_music_total_"

    return-object v0
.end method

.method protected u()Ljava/lang/String;
    .locals 1

    const-string v0, "kugou_love_music_total_page_"

    return-object v0
.end method
