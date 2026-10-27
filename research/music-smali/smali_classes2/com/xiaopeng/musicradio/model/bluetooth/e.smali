.class public Lcom/xiaopeng/musicradio/model/bluetooth/e;
.super Ljava/lang/Object;
.source "MetaData.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 7
    iput-wide v1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/e;->c:J

    .line 8
    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/e;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/e;->e:Z

    .line 11
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/e;->f:Z

    .line 12
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/e;->g:Z

    return-void
.end method


# virtual methods
.method public a(J)Lcom/xiaopeng/musicradio/model/bluetooth/e;
    .locals 0

    .line 47
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/e;->c:J

    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/e;->g:Z

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/model/bluetooth/e;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a:Ljava/lang/String;

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/e;->e:Z

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/xiaopeng/musicradio/model/bluetooth/e;)V
    .locals 2

    .line 68
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->f()V

    .line 69
    iget-object v0, p1, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a:Ljava/lang/String;

    .line 70
    iget-object v0, p1, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b:Ljava/lang/String;

    .line 71
    iget-wide v0, p1, Lcom/xiaopeng/musicradio/model/bluetooth/e;->c:J

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/e;->c:J

    .line 72
    iget-object p1, p1, Lcom/xiaopeng/musicradio/model/bluetooth/e;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/e;->d:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/xiaopeng/musicradio/model/bluetooth/e;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b:Ljava/lang/String;

    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/e;->f:Z

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/e;->d:Ljava/lang/String;

    return-void
.end method

.method public d()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/e;->c:J

    return-wide v0
.end method

.method public e()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/e;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/e;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/e;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()V
    .locals 3

    const-string v0, ""

    .line 57
    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 59
    iput-wide v1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/e;->c:J

    .line 60
    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/e;->d:Ljava/lang/String;

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/e;->e:Z

    .line 63
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/e;->f:Z

    .line 64
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/e;->g:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MetaData{mTitle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mArtist=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/e;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mAlbum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
