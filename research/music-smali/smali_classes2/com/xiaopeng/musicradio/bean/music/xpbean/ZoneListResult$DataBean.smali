.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;
.super Ljava/lang/Object;
.source "ZoneListResult.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private logo:Ljava/lang/String;

.field private moduleId:I

.field private name:Ljava/lang/String;

.field private quality:I

.field private showFlag:I

.field private smallLogo:Ljava/lang/String;

.field private songList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private zoneId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 110
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;

    iget v0, v0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;->zoneId:I

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;->zoneId:I

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 113
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getModuleId()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;->moduleId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getQuality()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;->quality:I

    return v0
.end method

.method public getShowFlag()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;->showFlag:I

    return v0
.end method

.method public getSmallLogo()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;->smallLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getSongList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;->songList:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getZoneId()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;->zoneId:I

    return v0
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;->logo:Ljava/lang/String;

    return-void
.end method

.method public setModuleId(I)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;->moduleId:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setQuality(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;->quality:I

    return-void
.end method

.method public setShowFlag(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;->showFlag:I

    return-void
.end method

.method public setSmallLogo(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;->smallLogo:Ljava/lang/String;

    return-void
.end method

.method public setSongList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            ">;)V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;->songList:Ljava/util/List;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setZoneId(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;->zoneId:I

    return-void
.end method
