.class public Lcom/xiaopeng/musicradio/music/api/bean/a;
.super Ljava/lang/Object;
.source "BtMusicServiceBean.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/api/bean/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/api/bean/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/api/bean/a;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/api/bean/a;->d:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/api/bean/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/api/bean/a;->b:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/api/bean/a;->e:Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/api/bean/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/api/bean/a;->c:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/api/bean/a;->f:Ljava/lang/String;

    return-void
.end method

.method public d()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/api/bean/a;->d:Z

    return v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/api/bean/a;->g:Ljava/lang/String;

    return-void
.end method

.method public e()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/api/bean/a;->e:Z

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/api/bean/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/api/bean/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    .line 70
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/api/bean/a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/api/bean/a;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/api/bean/a;->c:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/api/bean/a;->g:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "{song:%s, singer:%s,logo:%s, uuid:%s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
