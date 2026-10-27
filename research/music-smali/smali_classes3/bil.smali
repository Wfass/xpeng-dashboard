.class public Lbil;
.super Ljava/lang/Object;
.source "MusicPlayHandler.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/model/music/g;


# instance fields
.field private a:Laqt;

.field private b:Lbin;

.field private c:Lbio;

.field private d:Lbip;

.field private e:Lbik;


# direct methods
.method public constructor <init>(Laqt;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MusicPlayHandler"

    const-string v1, "MusicPlayHandler: ======="

    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iput-object p1, p0, Lbil;->a:Laqt;

    return-void
.end method

.method private d()I
    .locals 1

    .line 30
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result v0

    return v0
.end method

.method private e()Lcom/xiaopeng/musicradio/model/music/g;
    .locals 1

    .line 34
    invoke-direct {p0}, Lbil;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lbil;->b(I)Lcom/xiaopeng/musicradio/model/music/g;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 88
    invoke-direct {p0}, Lbil;->e()Lcom/xiaopeng/musicradio/model/music/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/model/music/g;->a()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 1

    .line 103
    invoke-direct {p0}, Lbil;->e()Lcom/xiaopeng/musicradio/model/music/g;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/model/music/g;->a(I)V

    return-void
.end method

.method public a(ILcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Lbil;->e()Lcom/xiaopeng/musicradio/model/music/g;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/musicradio/model/music/g;->a(ILcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;ZZLcom/xiaopeng/musicradio/model/music/f;)V
    .locals 6

    .line 68
    invoke-direct {p0}, Lbil;->e()Lcom/xiaopeng/musicradio/model/music/g;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/xiaopeng/musicradio/model/music/g;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;ZZLcom/xiaopeng/musicradio/model/music/f;)V

    return-void
.end method

.method public a(ILjava/lang/String;)Z
    .locals 1

    .line 83
    invoke-direct {p0}, Lbil;->e()Lcom/xiaopeng/musicradio/model/music/g;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/musicradio/model/music/g;->a(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z
    .locals 1

    .line 63
    invoke-direct {p0}, Lbil;->e()Lcom/xiaopeng/musicradio/model/music/g;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/model/music/g;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Lbil;->e()Lcom/xiaopeng/musicradio/model/music/g;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/model/music/g;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lcom/xiaopeng/musicradio/model/music/g;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 39
    iget-object p1, p0, Lbil;->b:Lbin;

    if-nez p1, :cond_0

    .line 40
    new-instance p1, Lbin;

    iget-object v0, p0, Lbil;->a:Laqt;

    invoke-direct {p1, v0}, Lbin;-><init>(Laqt;)V

    iput-object p1, p0, Lbil;->b:Lbin;

    .line 42
    :cond_0
    iget-object p1, p0, Lbil;->b:Lbin;

    return-object p1

    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 44
    iget-object p1, p0, Lbil;->d:Lbip;

    if-nez p1, :cond_2

    .line 45
    new-instance p1, Lbip;

    iget-object v0, p0, Lbil;->a:Laqt;

    invoke-direct {p1, v0}, Lbip;-><init>(Laqt;)V

    iput-object p1, p0, Lbil;->d:Lbip;

    .line 47
    :cond_2
    iget-object p1, p0, Lbil;->d:Lbip;

    return-object p1

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 49
    iget-object p1, p0, Lbil;->e:Lbik;

    if-nez p1, :cond_4

    .line 50
    new-instance p1, Lbik;

    iget-object v0, p0, Lbil;->a:Laqt;

    invoke-direct {p1, v0}, Lbik;-><init>(Laqt;)V

    iput-object p1, p0, Lbil;->e:Lbik;

    .line 52
    :cond_4
    iget-object p1, p0, Lbil;->e:Lbik;

    return-object p1

    .line 54
    :cond_5
    iget-object p1, p0, Lbil;->c:Lbio;

    if-nez p1, :cond_6

    .line 55
    new-instance p1, Lbio;

    iget-object v0, p0, Lbil;->a:Laqt;

    invoke-direct {p1, v0}, Lbio;-><init>(Laqt;)V

    iput-object p1, p0, Lbil;->c:Lbio;

    .line 57
    :cond_6
    iget-object p1, p0, Lbil;->c:Lbio;

    return-object p1
.end method

.method public b()V
    .locals 1

    .line 108
    invoke-direct {p0}, Lbil;->e()Lcom/xiaopeng/musicradio/model/music/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/model/music/g;->b()V

    return-void
.end method

.method public c()I
    .locals 1

    .line 113
    invoke-direct {p0}, Lbil;->e()Lcom/xiaopeng/musicradio/model/music/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/model/music/g;->c()I

    move-result v0

    return v0
.end method

.method public c(I)V
    .locals 0

    return-void
.end method

.method public c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
