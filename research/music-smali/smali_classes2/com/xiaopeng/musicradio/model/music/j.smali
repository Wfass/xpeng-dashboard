.class public Lcom/xiaopeng/musicradio/model/music/j;
.super Ljava/lang/Object;
.source "MusicVolumeController.java"


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "populteVolume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/model/music/j;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isDolby = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/model/music/j;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicVolumeController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/model/music/j;->a:Z

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/model/music/j;->a(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/model/music/j;->a:Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/model/music/j;->b:Z

    return-void
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "audio/eac3"

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "audio/eac3-joc"

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
