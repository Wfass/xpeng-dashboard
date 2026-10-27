.class public Lcom/xiaopeng/musicradio/bean/dui/MusicSearchInfo;
.super Ljava/lang/Object;
.source "MusicSearchInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/xiaopeng/musicradio/bean/dui/MusicSearchInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private creatTime:J

.field private logo:Ljava/lang/String;

.field private musicFromTitle:Ljava/lang/String;

.field private musicInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xiaopeng/musicradio/bean/dui/MusicSearchInfo;)I
    .locals 5

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 70
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/dui/MusicSearchInfo;->getCreatTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/xiaopeng/musicradio/bean/dui/MusicSearchInfo;->creatTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-lez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 13
    check-cast p1, Lcom/xiaopeng/musicradio/bean/dui/MusicSearchInfo;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dui/MusicSearchInfo;->compareTo(Lcom/xiaopeng/musicradio/bean/dui/MusicSearchInfo;)I

    move-result p1

    return p1
.end method

.method public getCreatTime()J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/dui/MusicSearchInfo;->creatTime:J

    return-wide v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/dui/MusicSearchInfo;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicFromTitle()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/dui/MusicSearchInfo;->musicFromTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/dui/MusicSearchInfo;->musicInfos:Ljava/util/List;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/dui/MusicSearchInfo;->type:I

    return v0
.end method

.method public setCreatTime(J)V
    .locals 0

    .line 46
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/dui/MusicSearchInfo;->creatTime:J

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/dui/MusicSearchInfo;->logo:Ljava/lang/String;

    return-void
.end method

.method public setMusicFromTitle(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/dui/MusicSearchInfo;->musicFromTitle:Ljava/lang/String;

    return-void
.end method

.method public setMusicInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/dui/MusicSearchInfo;->musicInfos:Ljava/util/List;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/dui/MusicSearchInfo;->type:I

    return-void
.end method
