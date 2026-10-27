.class public Lbls;
.super Ljava/lang/Object;
.source "ProgramServiceBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private albumId:J

.field private albumLogo:Ljava/lang/String;

.field private albumName:Ljava/lang/String;

.field private artistId:J

.field private artistName:Ljava/lang/String;

.field private categoryName:Ljava/lang/String;

.field private duration:I

.field private fromSource:Ljava/lang/String;

.field private intro:Ljava/lang/String;

.field private isLove:Z

.field private largeLogo:Ljava/lang/String;

.field private listenUrl:Ljava/lang/String;

.field private mediumLogo:Ljava/lang/String;

.field private orderNum:I

.field private playCount:J

.field private position:I

.field private shortIntro:Ljava/lang/String;

.field private smallLogo:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private trackId:J

.field private type:Ljava/lang/String;

.field private updateTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 27
    iput-object v0, p0, Lbls;->type:Ljava/lang/String;

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lbls;->position:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lbls;->title:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 88
    iput p1, p0, Lbls;->position:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 80
    iput-wide p1, p0, Lbls;->playCount:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lbls;->type:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 208
    iput-boolean p1, p0, Lbls;->isLove:Z

    return-void
.end method

.method public b()J
    .locals 2

    .line 132
    iget-wide v0, p0, Lbls;->artistId:J

    return-wide v0
.end method

.method public b(I)V
    .locals 0

    .line 104
    iput p1, p0, Lbls;->duration:I

    return-void
.end method

.method public b(J)V
    .locals 0

    .line 96
    iput-wide p1, p0, Lbls;->trackId:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lbls;->fromSource:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lbls;->mediumLogo:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 200
    iput p1, p0, Lbls;->orderNum:I

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 136
    iput-wide p1, p0, Lbls;->artistId:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lbls;->categoryName:Ljava/lang/String;

    return-void
.end method

.method public d()J
    .locals 2

    .line 184
    iget-wide v0, p0, Lbls;->albumId:J

    return-wide v0
.end method

.method public d(J)V
    .locals 0

    .line 172
    iput-wide p1, p0, Lbls;->updateTime:J

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lbls;->albumLogo:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lbls;->albumName:Ljava/lang/String;

    return-object v0
.end method

.method public e(J)V
    .locals 0

    .line 180
    iput-wide p1, p0, Lbls;->albumId:J

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lbls;->shortIntro:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lbls;->intro:Ljava/lang/String;

    return-void
.end method

.method public f()Z
    .locals 1

    .line 204
    iget-boolean v0, p0, Lbls;->isLove:Z

    return v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lbls;->listenUrl:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lbls;->title:Ljava/lang/String;

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lbls;->smallLogo:Ljava/lang/String;

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lbls;->largeLogo:Ljava/lang/String;

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lbls;->mediumLogo:Ljava/lang/String;

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lbls;->albumName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProgramBean{"

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "trackId="

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lbls;->trackId:J

    .line 217
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbls;->duration:I

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", intro=\'"

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbls;->intro:Ljava/lang/String;

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", listenUrl=\'"

    .line 222
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbls;->listenUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    .line 223
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbls;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", artistId="

    .line 224
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lbls;->artistId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", smallLogo=\'"

    .line 225
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbls;->smallLogo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", largeLogo=\'"

    .line 226
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbls;->largeLogo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mediumLogo=\'"

    .line 227
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbls;->mediumLogo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", artistName=\'"

    .line 228
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbls;->artistName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", updateTime="

    .line 229
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lbls;->updateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", albumId="

    .line 230
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lbls;->albumId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", albumName=\'"

    .line 231
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbls;->albumName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", fromSource="

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbls;->fromSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
