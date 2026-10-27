.class public Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;
.super Ljava/lang/Object;
.source "MusicRadioItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2aL


# instance fields
.field private albumDesc:Ljava/lang/String;

.field private allLogos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private artistId:Ljava/lang/String;

.field private cacheId:Ljava/lang/Long;

.field private cacheTime:J

.field private categoryId:Ljava/lang/String;

.field private clickType:Ljava/lang/String;

.field private coverUrl:Ljava/lang/String;

.field private deleted:Z

.field private description:Ljava/lang/String;

.field private dissExtraId:Ljava/lang/String;

.field private firstSongInfoBo:Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

.field private transient group:Ljava/lang/String;

.field private transient groupIndex:I

.field private iconUrl:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private imgUrl:Ljava/lang/String;

.field private isFavourite:Z

.field private isShowLoading:Z

.field private logo:Ljava/lang/String;

.field private logoUrl:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private needVip:Z

.field private nightIconUrl:Ljava/lang/String;

.field private nowLogoUrl:Ljava/lang/String;

.field private nowTime:J

.field private originId:Ljava/lang/String;

.field private playState:I

.field private preLogoUrl:Ljava/lang/String;

.field private preTime:J

.field private rankId:Ljava/lang/String;

.field private rankName:Ljava/lang/String;

.field private rankType:I

.field private sheetName:Ljava/lang/String;

.field private sheetType:Ljava/lang/String;

.field private showTime:J

.field private singer:Ljava/lang/String;

.field private songInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/SongInfo;",
            ">;"
        }
    .end annotation
.end field

.field private songName:Ljava/lang/String;

.field private sysUid:J

.field private tag:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private uid:Ljava/lang/String;

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 44
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->uid:Ljava/lang/String;

    const/4 v1, -0x1

    .line 57
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->groupIndex:I

    .line 63
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->type:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->singer:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->songName:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->coverUrl:Ljava/lang/String;

    .line 89
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->playState:I

    const/4 v1, 0x0

    .line 91
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->version:I

    .line 95
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->isShowLoading:Z

    .line 97
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->deleted:Z

    .line 99
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->description:Ljava/lang/String;

    .line 104
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->albumDesc:Ljava/lang/String;

    .line 107
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->dissExtraId:Ljava/lang/String;

    .line 110
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->originId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;IILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "J",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/SongInfo;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, ""

    .line 44
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->uid:Ljava/lang/String;

    const/4 v2, -0x1

    .line 57
    iput v2, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->groupIndex:I

    .line 63
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->type:Ljava/lang/String;

    .line 64
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->singer:Ljava/lang/String;

    .line 65
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->songName:Ljava/lang/String;

    .line 66
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->coverUrl:Ljava/lang/String;

    .line 89
    iput v2, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->playState:I

    const/4 v2, 0x0

    .line 91
    iput v2, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->version:I

    .line 95
    iput-boolean v2, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->isShowLoading:Z

    .line 97
    iput-boolean v2, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->deleted:Z

    .line 99
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->description:Ljava/lang/String;

    .line 104
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->albumDesc:Ljava/lang/String;

    .line 107
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->dissExtraId:Ljava/lang/String;

    .line 110
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->originId:Ljava/lang/String;

    move-object v1, p1

    .line 123
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->cacheId:Ljava/lang/Long;

    move-wide v1, p2

    .line 124
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->sysUid:J

    move-object v1, p4

    .line 125
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->uid:Ljava/lang/String;

    move-wide v1, p5

    .line 126
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->cacheTime:J

    move-object v1, p7

    .line 127
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->id:Ljava/lang/String;

    move-object v1, p8

    .line 128
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->logoUrl:Ljava/lang/String;

    move-object v1, p9

    .line 129
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->iconUrl:Ljava/lang/String;

    move-object v1, p10

    .line 130
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->nightIconUrl:Ljava/lang/String;

    move-object v1, p11

    .line 131
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->tag:Ljava/lang/String;

    move-object v1, p12

    .line 132
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->categoryId:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 133
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->artistId:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 134
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->title:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 135
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->type:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 136
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->singer:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 137
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->songName:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 138
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->coverUrl:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 139
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->firstSongInfoBo:Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    move-object/from16 v1, p20

    .line 140
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->logo:Ljava/lang/String;

    move-object/from16 v1, p21

    .line 141
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->name:Ljava/lang/String;

    move-object/from16 v1, p22

    .line 142
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->rankId:Ljava/lang/String;

    move-object/from16 v1, p23

    .line 143
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->rankName:Ljava/lang/String;

    move-object/from16 v1, p24

    .line 144
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->imgUrl:Ljava/lang/String;

    move/from16 v1, p25

    .line 145
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->rankType:I

    move-object/from16 v1, p26

    .line 146
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->songInfos:Ljava/util/List;

    move/from16 v1, p27

    .line 147
    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->needVip:Z

    move-object/from16 v1, p28

    .line 148
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->clickType:Ljava/lang/String;

    move-object/from16 v1, p29

    .line 149
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->sheetType:Ljava/lang/String;

    move-object/from16 v1, p30

    .line 150
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->sheetName:Ljava/lang/String;

    move-wide/from16 v1, p31

    .line 151
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->preTime:J

    move-wide/from16 v1, p33

    .line 152
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->nowTime:J

    move-object/from16 v1, p35

    .line 153
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->preLogoUrl:Ljava/lang/String;

    move-object/from16 v1, p36

    .line 154
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->nowLogoUrl:Ljava/lang/String;

    move/from16 v1, p37

    .line 155
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->playState:I

    move/from16 v1, p38

    .line 156
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->version:I

    move-object/from16 v1, p39

    .line 157
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->allLogos:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public copyTo(Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;)V
    .locals 2

    .line 583
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getCacheId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setCacheId(Ljava/lang/Long;)V

    .line 584
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getSysUid()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setSysUid(J)V

    .line 585
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setUid(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getCacheTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setCacheTime(J)V

    .line 587
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setId(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    .line 589
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setIconUrl(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getNightIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setNightIconUrl(Ljava/lang/String;)V

    .line 591
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setTag(Ljava/lang/String;)V

    .line 592
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getCategoryId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setCategoryId(Ljava/lang/String;)V

    .line 593
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getArtistId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setArtistId(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setTitle(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setType(Ljava/lang/String;)V

    .line 596
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getSinger()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setSinger(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getSongName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setSongName(Ljava/lang/String;)V

    .line 598
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getCoverUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setCoverUrl(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getFirstSongInfoBo()Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setFirstSongInfoBo(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V

    .line 600
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setLogo(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getPlayState()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setPlayState(I)V

    .line 602
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setName(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getRankId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setRankId(Ljava/lang/String;)V

    .line 604
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getRankName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setRankName(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setImgUrl(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getRankType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setRankType(I)V

    .line 607
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getSongInfos()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setSongInfos(Ljava/util/List;)V

    .line 608
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getNeedVip()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setNeedVip(Z)V

    .line 609
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getClickType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setClickType(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getSheetType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setSheetType(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getSheetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setSheetName(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getPreTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setPreTime(J)V

    .line 613
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getNowTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setNowTime(J)V

    .line 614
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getPreLogoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setPreLogoUrl(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getNowLogoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setNowLogoUrl(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getPlayState()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setPlayState(I)V

    .line 617
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getAllLogos()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setAllLogos(Ljava/util/List;)V

    .line 618
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setVersion(I)V

    return-void
.end method

.method public copyTo(Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;)V
    .locals 2

    .line 544
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getCacheId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->setCacheId(Ljava/lang/Long;)V

    .line 545
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getSysUid()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->setSysUid(J)V

    .line 546
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->setUid(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getCacheTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->setCacheTime(J)V

    .line 548
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->setId(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->setIconUrl(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getNightIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->setNightIconUrl(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->setTag(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getCategoryId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->setCategoryId(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getArtistId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->setArtistId(Ljava/lang/String;)V

    .line 555
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->setTitle(Ljava/lang/String;)V

    .line 556
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->setType(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getSinger()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->setSinger(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getSongName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->setSongName(Ljava/lang/String;)V

    .line 559
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getCoverUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->setCoverUrl(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getFirstSongInfoBo()Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->setFirstSongInfoBo(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V

    .line 561
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->setLogo(Ljava/lang/String;)V

    .line 562
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getPlayState()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->setPlayState(I)V

    .line 563
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->setName(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getRankId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->setRankId(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getRankName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->setRankName(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->setImgUrl(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getRankType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->setRankType(I)V

    .line 568
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getSongInfos()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->setSongInfos(Ljava/util/List;)V

    .line 569
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getNeedVip()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->setNeedVip(Z)V

    .line 570
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getClickType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->setClickType(Ljava/lang/String;)V

    .line 571
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getSheetType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->setSheetType(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getSheetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->setSheetName(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getPreTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->setPreTime(J)V

    .line 574
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getNowTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->setNowTime(J)V

    .line 575
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getPreLogoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->setPreLogoUrl(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getNowLogoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->setNowLogoUrl(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getPlayState()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->setPlayState(I)V

    .line 578
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getAllLogos()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->setAllLogos(Ljava/util/List;)V

    .line 579
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->setVersion(I)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 438
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    iget-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->id:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->id:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 441
    :cond_1
    iget-object v0, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->rankId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->rankId:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 444
    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAlbumDesc()Ljava/lang/String;
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->albumDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getAllLogos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->allLogos:Ljava/util/List;

    return-object v0
.end method

.method public getArtistId()Ljava/lang/String;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->artistId:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheId()Ljava/lang/Long;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->cacheId:Ljava/lang/Long;

    return-object v0
.end method

.method public getCacheTime()J
    .locals 2

    .line 496
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->cacheTime:J

    return-wide v0
.end method

.method public getCategoryId()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->categoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getClickType()Ljava/lang/String;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->clickType:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverUrl()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDissExtraId()Ljava/lang/String;
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->dissExtraId:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstSongInfoBo()Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->firstSongInfoBo:Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    return-object v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->group:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupIndex()I
    .locals 1

    .line 198
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->groupIndex:I

    return v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getLogoUrl()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->logoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedVip()Z
    .locals 1

    .line 472
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->needVip:Z

    return v0
.end method

.method public getNightIconUrl()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->nightIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNowLogoUrl()Ljava/lang/String;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->nowLogoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNowTime()J
    .locals 2

    .line 378
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->nowTime:J

    return-wide v0
.end method

.method public getOriginId()Ljava/lang/String;
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->originId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayState()I
    .locals 1

    .line 402
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->playState:I

    return v0
.end method

.method public getPreLogoUrl()Ljava/lang/String;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->preLogoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPreTime()J
    .locals 2

    .line 370
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->preTime:J

    return-wide v0
.end method

.method public getRankId()Ljava/lang/String;
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->rankId:Ljava/lang/String;

    return-object v0
.end method

.method public getRankName()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->rankName:Ljava/lang/String;

    return-object v0
.end method

.method public getRankType()I
    .locals 1

    .line 313
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->rankType:I

    return v0
.end method

.method public getSheetName()Ljava/lang/String;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->sheetName:Ljava/lang/String;

    return-object v0
.end method

.method public getSheetType()Ljava/lang/String;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->sheetType:Ljava/lang/String;

    return-object v0
.end method

.method public getShowTime()J
    .locals 2

    .line 512
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->showTime:J

    return-wide v0
.end method

.method public getSinger()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->singer:Ljava/lang/String;

    return-object v0
.end method

.method public getSongInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/SongInfo;",
            ">;"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->songInfos:Ljava/util/List;

    return-object v0
.end method

.method public getSongName()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->songName:Ljava/lang/String;

    return-object v0
.end method

.method public getSysUid()J
    .locals 2

    .line 480
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->sysUid:J

    return-wide v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 622
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->version:I

    return v0
.end method

.method public isDeleted()Z
    .locals 1

    .line 464
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->deleted:Z

    return v0
.end method

.method public isFavourite()Z
    .locals 1

    .line 362
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->isFavourite:Z

    return v0
.end method

.method public isNeedVip()Z
    .locals 1

    .line 353
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->needVip:Z

    return v0
.end method

.method public isShowLoading()Z
    .locals 1

    .line 456
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->isShowLoading:Z

    return v0
.end method

.method public setAlbumDesc(Ljava/lang/String;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->albumDesc:Ljava/lang/String;

    return-void
.end method

.method public setAllLogos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 532
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->allLogos:Ljava/util/List;

    return-void
.end method

.method public setArtistId(Ljava/lang/String;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->artistId:Ljava/lang/String;

    return-void
.end method

.method public setCacheId(Ljava/lang/Long;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->cacheId:Ljava/lang/Long;

    return-void
.end method

.method public setCacheTime(J)V
    .locals 0

    .line 500
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->cacheTime:J

    return-void
.end method

.method public setCategoryId(Ljava/lang/String;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->categoryId:Ljava/lang/String;

    return-void
.end method

.method public setClickType(Ljava/lang/String;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->clickType:Ljava/lang/String;

    return-void
.end method

.method public setCoverUrl(Ljava/lang/String;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->coverUrl:Ljava/lang/String;

    return-void
.end method

.method public setDeleted(Z)V
    .locals 0

    .line 468
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->deleted:Z

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->description:Ljava/lang/String;

    return-void
.end method

.method public setDissExtraId(Ljava/lang/String;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->dissExtraId:Ljava/lang/String;

    return-void
.end method

.method public setFavourite(Z)V
    .locals 0

    .line 366
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->isFavourite:Z

    return-void
.end method

.method public setFirstSongInfoBo(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->firstSongInfoBo:Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    return-void
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->group:Ljava/lang/String;

    return-void
.end method

.method public setGroupIndex(I)V
    .locals 0

    .line 202
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->groupIndex:I

    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->iconUrl:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->id:Ljava/lang/String;

    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->imgUrl:Ljava/lang/String;

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->logo:Ljava/lang/String;

    return-void
.end method

.method public setLogoUrl(Ljava/lang/String;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->logoUrl:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->name:Ljava/lang/String;

    return-void
.end method

.method public setNeedVip(Z)V
    .locals 0

    .line 357
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->needVip:Z

    return-void
.end method

.method public setNightIconUrl(Ljava/lang/String;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->nightIconUrl:Ljava/lang/String;

    return-void
.end method

.method public setNowLogoUrl(Ljava/lang/String;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->nowLogoUrl:Ljava/lang/String;

    return-void
.end method

.method public setNowTime(J)V
    .locals 0

    .line 382
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->nowTime:J

    return-void
.end method

.method public setOriginId(Ljava/lang/String;)V
    .locals 0

    .line 634
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->originId:Ljava/lang/String;

    return-void
.end method

.method public setPlayState(I)V
    .locals 0

    .line 406
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->playState:I

    return-void
.end method

.method public setPreLogoUrl(Ljava/lang/String;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->preLogoUrl:Ljava/lang/String;

    return-void
.end method

.method public setPreTime(J)V
    .locals 0

    .line 374
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->preTime:J

    return-void
.end method

.method public setRankId(Ljava/lang/String;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->rankId:Ljava/lang/String;

    return-void
.end method

.method public setRankName(Ljava/lang/String;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->rankName:Ljava/lang/String;

    return-void
.end method

.method public setRankType(I)V
    .locals 0

    .line 317
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->rankType:I

    return-void
.end method

.method public setSheetName(Ljava/lang/String;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->sheetName:Ljava/lang/String;

    return-void
.end method

.method public setSheetType(Ljava/lang/String;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->sheetType:Ljava/lang/String;

    return-void
.end method

.method public setShowLoading(Z)V
    .locals 0

    .line 460
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->isShowLoading:Z

    return-void
.end method

.method public setShowTime(J)V
    .locals 0

    .line 516
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->showTime:J

    return-void
.end method

.method public setSinger(Ljava/lang/String;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->singer:Ljava/lang/String;

    return-void
.end method

.method public setSongInfos(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/db/SongInfo;",
            ">;)V"
        }
    .end annotation

    .line 325
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->songInfos:Ljava/util/List;

    return-void
.end method

.method public setSongInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/SongInfo;",
            ">;)V"
        }
    .end annotation

    .line 476
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->songInfos:Ljava/util/List;

    return-void
.end method

.method public setSongName(Ljava/lang/String;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->songName:Ljava/lang/String;

    return-void
.end method

.method public setSysUid(J)V
    .locals 0

    .line 484
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->sysUid:J

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->tag:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->type:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->uid:Ljava/lang/String;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 626
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->version:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicRadioItem{, title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
