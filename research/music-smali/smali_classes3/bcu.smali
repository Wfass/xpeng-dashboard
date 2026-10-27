.class public Lbcu;
.super Layq;
.source "NeteaseMusicCollectManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbcu$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Layq;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbcu$1;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lbcu;-><init>()V

    return-void
.end method

.method public static v()Lbcu;
    .locals 1

    .line 38
    sget-object v0, Lbcu$a;->a:Lbcu;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 4

    .line 46
    invoke-static {}, Lbem;->a()Lbem;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbem;->a(Lbdq;)V

    .line 47
    invoke-static {}, Lbdy;->c()Lbdy;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/common/a;->D()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lazm;

    invoke-direct {v3}, Lazm;-><init>()V

    invoke-virtual {v0, v2, v3}, Lbdy;->a(Ljava/lang/String;Lbdl$a;)V

    .line 48
    invoke-static {}, Lbdy;->c()Lbdy;

    move-result-object v0

    invoke-static {v1}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/common/a;->E()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lazn;

    invoke-direct {v2}, Lazn;-><init>()V

    invoke-virtual {v0, v1, v2}, Lbdy;->a(Ljava/lang/String;Lbdl$a;)V

    .line 49
    invoke-static {}, Lbct;->k()Lbct;

    .line 50
    invoke-static {}, Lbcs;->i()Lbcs;

    return-void
.end method

.method protected c()Lben;
    .locals 1

    .line 67
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->d()Lbel;

    move-result-object v0

    return-object v0
.end method

.method protected d()Layt;
    .locals 1

    .line 71
    invoke-static {}, Lbct;->k()Lbct;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lbae;
    .locals 1

    .line 75
    invoke-static {}, Lbba;->a()Lbba;

    move-result-object v0

    return-object v0
.end method

.method protected f()Lazy;
    .locals 1

    .line 79
    invoke-static {}, Lbay;->a()Lbay;

    move-result-object v0

    return-object v0
.end method

.method protected g()Lbci;
    .locals 1

    .line 83
    invoke-static {}, Lbck;->a()Lbck;

    move-result-object v0

    return-object v0
.end method

.method protected h()Layo;
    .locals 1

    .line 91
    invoke-static {}, Lbcs;->i()Lbcs;

    move-result-object v0

    return-object v0
.end method

.method protected i()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 54
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->d()Lbel;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Lben;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected l()I
    .locals 1

    const v0, 0x20210

    return v0
.end method

.method protected m()Ljava/lang/String;
    .locals 1

    const-string v0, "netease_song_id"

    return-object v0
.end method

.method protected n()Ljava/lang/String;
    .locals 1

    const-string v0, "netease_user_song_id"

    return-object v0
.end method

.method public o()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected p()V
    .locals 1

    .line 59
    invoke-static {}, Lare;->d()Lare;

    move-result-object v0

    invoke-virtual {v0}, Lare;->f()V

    return-void
.end method

.method protected q()Lazs;
    .locals 1

    .line 63
    invoke-static {}, Lbaw;->a()Lbaw;

    move-result-object v0

    return-object v0
.end method

.method protected s()Ljava/lang/String;
    .locals 1

    const-string v0, "NeteaseMusicCollectManager"

    return-object v0
.end method

.method protected t()Ljava/lang/String;
    .locals 1

    const-string v0, "netease_love_music_total_"

    return-object v0
.end method

.method protected u()Ljava/lang/String;
    .locals 1

    const-string v0, "netease_love_music_total_page_"

    return-object v0
.end method
