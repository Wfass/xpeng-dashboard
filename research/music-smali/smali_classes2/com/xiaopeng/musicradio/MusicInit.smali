.class public Lcom/xiaopeng/musicradio/MusicInit;
.super Lbex;
.source "MusicInit.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Lbex;-><init>()V

    return-void
.end method


# virtual methods
.method public igOff()V
    .locals 0

    return-void
.end method

.method public igOn()V
    .locals 0

    return-void
.end method

.method public initDelay()V
    .locals 3

    .line 104
    invoke-static {}, Layq;->a()Layq;

    move-result-object v0

    invoke-virtual {v0}, Layq;->b()V

    .line 105
    invoke-static {}, Lbcg;->v()Lbcg;

    move-result-object v0

    invoke-virtual {v0}, Lbcg;->b()V

    .line 106
    invoke-static {}, Lbcu;->v()Lbcu;

    move-result-object v0

    invoke-virtual {v0}, Lbcu;->b()V

    .line 107
    invoke-static {}, Lbhg;->a()Lbhg;

    .line 109
    invoke-static {}, Lbap;->a()Lbap;

    .line 110
    invoke-static {}, Lbad;->a()Lbad;

    move-result-object v0

    invoke-virtual {v0}, Lbad;->d()V

    .line 111
    invoke-static {}, Lbau;->a()Lbau;

    move-result-object v0

    invoke-virtual {v0}, Lbau;->d()V

    .line 112
    invoke-static {}, Lbba;->a()Lbba;

    move-result-object v0

    invoke-virtual {v0}, Lbba;->d()V

    .line 113
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->l()V

    .line 114
    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/g;->a()Lcom/xiaopeng/musicradio/model/dui/g;

    .line 115
    invoke-static {}, Lbfa;->a()Lbfa;

    .line 116
    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/g;->a()Lcom/xiaopeng/musicradio/model/dui/g;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/model/dui/e;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/model/dui/e;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/musicradio/model/dui/g;->a(ILcom/xiaopeng/musicradio/model/dui/g$a;)V

    .line 117
    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/h;->a()Lcom/xiaopeng/musicradio/model/dui/h;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/model/dui/f;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/model/dui/f;-><init>()V

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/musicradio/model/dui/h;->a(ILcom/xiaopeng/musicradio/model/dui/h$a;)V

    .line 119
    invoke-static {}, Lazz;->a()Lazz;

    move-result-object v0

    invoke-virtual {v0}, Lazz;->b()Lazy;

    move-result-object v0

    const-string v1, "initDelay"

    invoke-virtual {v0, v1}, Lazy;->a(Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lbac;->a()Lbac;

    move-result-object v0

    invoke-virtual {v0}, Lbac;->b()Lbab;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbab;->d(Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lazu;->a()Lazu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lazu;->b(Ljava/lang/String;)V

    .line 122
    invoke-static {}, Layo;->a()Layo;

    move-result-object v0

    invoke-virtual {v0}, Layo;->g()V

    return-void
.end method

.method public initNow()V
    .locals 5

    .line 72
    invoke-static {}, Lblj;->a()Lblj;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/music/player/view/l;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/music/player/view/l;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lblj;->a(ILcom/xiaopeng/musicradio/playercomponent/small/view/c;)V

    .line 73
    invoke-static {}, Lblj;->a()Lblj;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/music/player/view/a;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/music/player/view/a;-><init>()V

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Lblj;->a(ILcom/xiaopeng/musicradio/playercomponent/small/view/c;)V

    .line 74
    invoke-static {}, Lazp;->a()Lazp;

    move-result-object v0

    new-instance v1, Lbir;

    invoke-direct {v1}, Lbir;-><init>()V

    invoke-virtual {v0, v2, v1}, Lazp;->a(ILazo;)V

    .line 75
    invoke-static {}, Lazp;->a()Lazp;

    move-result-object v0

    new-instance v1, Lbiq;

    invoke-direct {v1}, Lbiq;-><init>()V

    invoke-virtual {v0, v3, v1}, Lazp;->a(ILazo;)V

    .line 76
    invoke-static {}, Lblh;->a()Lblh;

    move-result-object v0

    sget-object v1, Lblh;->a:Ljava/lang/String;

    const-class v4, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;

    invoke-virtual {v0, v1, v4}, Lblh;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 78
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lbqp;->a(ILbqn;)V

    .line 79
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-static {}, Lbic;->a()Lbic;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lbqp;->a(ILbqn;)V

    .line 81
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Laqr;->a(ILaqt;)V

    .line 82
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Laqr;->a(ILaqt;)V

    .line 83
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/an;->a()Lcom/xiaopeng/musicradio/utils/an;

    .line 85
    invoke-static {}, Layc;->a()Layc;

    .line 86
    invoke-static {}, Laqq;->a()Laqq;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/model/music/d;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/model/music/d;-><init>()V

    invoke-virtual {v0, v1}, Laqq;->a(Laqq$b;)V

    .line 87
    invoke-static {}, Laqq;->a()Laqq;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/model/music/c;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/model/music/c;-><init>()V

    invoke-virtual {v0, v1}, Laqq;->a(Laqq$a;)V

    .line 88
    invoke-static {}, Lblg;->a()Lblg;

    move-result-object v0

    const-string v1, "/music/fragment/player"

    invoke-virtual {v0, v2, v1}, Lblg;->a(ILjava/lang/String;)V

    .line 89
    invoke-static {}, Lblg;->a()Lblg;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Lblg;->a(ILjava/lang/String;)V

    .line 90
    invoke-static {}, Lblg;->a()Lblg;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lblg;->a(ILjava/lang/String;)V

    .line 92
    invoke-static {}, Lbdh;->a()Lbdh;

    move-result-object v0

    invoke-virtual {v0}, Lbdh;->b()Lbdj;

    move-result-object v0

    new-instance v1, Lbjd;

    invoke-direct {v1}, Lbjd;-><init>()V

    invoke-virtual {v0, v1}, Lbdj;->a(Lbdi;)V

    .line 93
    invoke-static {}, Lbdh;->a()Lbdh;

    move-result-object v0

    invoke-virtual {v0}, Lbdh;->b()Lbdj;

    move-result-object v0

    new-instance v1, Lbjc;

    invoke-direct {v1}, Lbjc;-><init>()V

    invoke-virtual {v0, v1}, Lbdj;->a(Lbdi;)V

    .line 94
    invoke-static {}, Lbdh;->a()Lbdh;

    move-result-object v0

    invoke-virtual {v0}, Lbdh;->b()Lbdj;

    move-result-object v0

    new-instance v1, Lbja;

    invoke-direct {v1}, Lbja;-><init>()V

    invoke-virtual {v0, v1}, Lbdj;->a(Lbdi;)V

    .line 96
    invoke-static {}, Lbdh;->a()Lbdh;

    move-result-object v0

    invoke-virtual {v0}, Lbdh;->c()Lbdg;

    move-result-object v0

    new-instance v1, Lbiz;

    invoke-direct {v1}, Lbiz;-><init>()V

    invoke-virtual {v0, v1}, Lbdg;->a(Lbdf;)V

    .line 97
    invoke-static {}, Lbdh;->a()Lbdh;

    move-result-object v0

    invoke-virtual {v0}, Lbdh;->c()Lbdg;

    move-result-object v0

    new-instance v1, Lbiy;

    invoke-direct {v1}, Lbiy;-><init>()V

    invoke-virtual {v0, v1}, Lbdg;->a(Lbdf;)V

    .line 98
    invoke-static {}, Lbdh;->a()Lbdh;

    move-result-object v0

    invoke-virtual {v0}, Lbdh;->c()Lbdg;

    move-result-object v0

    new-instance v1, Lbiw;

    invoke-direct {v1}, Lbiw;-><init>()V

    invoke-virtual {v0, v1}, Lbdg;->a(Lbdf;)V

    return-void
.end method

.method public initPlayer()V
    .locals 3

    .line 67
    invoke-static {}, Lcom/xiaopeng/musicradio/player/g;->a()Lcom/xiaopeng/musicradio/player/g;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/musicradio/model/player/MusicPlayerWrapper;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/musicradio/player/g;->a(ILjava/lang/Class;)V

    return-void
.end method

.method public onKugouBinded()V
    .locals 3

    .line 163
    invoke-static {}, Lazz;->a()Lazz;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lazz;->a(I)Lazy;

    move-result-object v0

    const-string v2, "onMusicBinded"

    invoke-virtual {v0, v2}, Lazy;->a(Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lbac;->a()Lbac;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbac;->a(I)Lbab;

    move-result-object v0

    invoke-virtual {v0, v2}, Lbab;->d(Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lazw;->a()Lazw;

    move-result-object v0

    invoke-virtual {v0, v1}, Lazw;->a(I)Lazv;

    move-result-object v0

    invoke-virtual {v0, v2}, Lazv;->b(Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lbbu;->a()Lbbu;

    move-result-object v0

    invoke-virtual {v0}, Lbbu;->b()V

    .line 167
    invoke-static {}, Lazq;->a()Lazq;

    move-result-object v0

    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v2

    invoke-virtual {v2, v1}, Lbea;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lazq;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onMusicBinded()V
    .locals 3

    .line 145
    invoke-static {}, Lazz;->a()Lazz;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lazz;->a(I)Lazy;

    move-result-object v0

    const-string v2, "onMusicBinded"

    invoke-virtual {v0, v2}, Lazy;->a(Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lbac;->a()Lbac;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbac;->a(I)Lbab;

    move-result-object v0

    invoke-virtual {v0, v2}, Lbab;->d(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lazw;->a()Lazw;

    move-result-object v0

    invoke-virtual {v0, v1}, Lazw;->a(I)Lazv;

    move-result-object v0

    invoke-virtual {v0, v2}, Lazv;->b(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lbbu;->a()Lbbu;

    move-result-object v0

    invoke-virtual {v0}, Lbbu;->b()V

    .line 149
    invoke-static {}, Lbag;->a()Lbag;

    move-result-object v0

    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v2

    invoke-virtual {v2, v1}, Lbea;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbag;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onNeteaseBinded()V
    .locals 3

    .line 154
    invoke-static {}, Lazz;->a()Lazz;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lazz;->a(I)Lazy;

    move-result-object v0

    const-string v2, "onMusicBinded"

    invoke-virtual {v0, v2}, Lazy;->a(Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lbac;->a()Lbac;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbac;->a(I)Lbab;

    move-result-object v0

    invoke-virtual {v0, v2}, Lbab;->d(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lazw;->a()Lazw;

    move-result-object v0

    invoke-virtual {v0, v1}, Lazw;->a(I)Lazv;

    move-result-object v0

    invoke-virtual {v0, v2}, Lazv;->b(Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lbbu;->a()Lbbu;

    move-result-object v0

    invoke-virtual {v0}, Lbbu;->b()V

    .line 158
    invoke-static {}, Lbam;->a()Lbam;

    move-result-object v0

    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v2

    invoke-virtual {v2, v1}, Lbea;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbam;->a(Ljava/lang/String;)V

    return-void
.end method

.method public registerService()V
    .locals 3

    .line 128
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfe;

    const-string v2, "com.xiaopeng.musicradio.service.MusicService"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/service/c;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfc;

    const-string v2, "com.xiaopeng.musicradio.service.MusicMineService"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/service/c;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfd;

    const-string v2, "com.xiaopeng.musicradio.service.MusicQqService"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/service/c;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method
