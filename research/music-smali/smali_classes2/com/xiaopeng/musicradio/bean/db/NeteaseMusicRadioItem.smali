.class public Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;
.super Ljava/lang/Object;
.source "NeteaseMusicRadioItem.java"

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

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 46
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->uid:Ljava/lang/String;

    const/4 v1, -0x1

    .line 59
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->groupIndex:I

    .line 66
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->singer:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->songName:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->coverUrl:Ljava/lang/String;

    .line 91
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->playState:I

    const/4 v1, 0x0

    .line 93
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->version:I

    .line 97
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->isShowLoading:Z

    .line 99
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->deleted:Z

    .line 101
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->description:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->albumDesc:Ljava/lang/String;

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

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, ""

    .line 46
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->uid:Ljava/lang/String;

    const/4 v2, -0x1

    .line 59
    iput v2, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->groupIndex:I

    .line 66
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->singer:Ljava/lang/String;

    .line 67
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->songName:Ljava/lang/String;

    .line 68
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->coverUrl:Ljava/lang/String;

    .line 91
    iput v2, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->playState:I

    const/4 v2, 0x0

    .line 93
    iput v2, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->version:I

    .line 97
    iput-boolean v2, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->isShowLoading:Z

    .line 99
    iput-boolean v2, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->deleted:Z

    .line 101
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->description:Ljava/lang/String;

    .line 106
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->albumDesc:Ljava/lang/String;

    move-object v1, p1

    .line 120
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->cacheId:Ljava/lang/Long;

    move-wide v1, p2

    .line 121
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->sysUid:J

    move-object v1, p4

    .line 122
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->uid:Ljava/lang/String;

    move-wide v1, p5

    .line 123
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->cacheTime:J

    move-object v1, p7

    .line 124
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->id:Ljava/lang/String;

    move-object v1, p8

    .line 125
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->logoUrl:Ljava/lang/String;

    move-object v1, p9

    .line 126
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->iconUrl:Ljava/lang/String;

    move-object v1, p10

    .line 127
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->nightIconUrl:Ljava/lang/String;

    move-object v1, p11

    .line 128
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->tag:Ljava/lang/String;

    move-object v1, p12

    .line 129
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->categoryId:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 130
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->artistId:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 131
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->title:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 132
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->type:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 133
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->singer:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 134
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->songName:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 135
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->coverUrl:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 136
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->firstSongInfoBo:Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    move-object/from16 v1, p20

    .line 137
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->logo:Ljava/lang/String;

    move-object/from16 v1, p21

    .line 138
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->name:Ljava/lang/String;

    move-object/from16 v1, p22

    .line 139
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->rankId:Ljava/lang/String;

    move-object/from16 v1, p23

    .line 140
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->rankName:Ljava/lang/String;

    move-object/from16 v1, p24

    .line 141
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->imgUrl:Ljava/lang/String;

    move/from16 v1, p25

    .line 142
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->rankType:I

    move-object/from16 v1, p26

    .line 143
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->songInfos:Ljava/util/List;

    move/from16 v1, p27

    .line 144
    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->needVip:Z

    move-object/from16 v1, p28

    .line 145
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->clickType:Ljava/lang/String;

    move-object/from16 v1, p29

    .line 146
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->sheetType:Ljava/lang/String;

    move-object/from16 v1, p30

    .line 147
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->sheetName:Ljava/lang/String;

    move-wide/from16 v1, p31

    .line 148
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->preTime:J

    move-wide/from16 v1, p33

    .line 149
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->nowTime:J

    move-object/from16 v1, p35

    .line 150
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->preLogoUrl:Ljava/lang/String;

    move-object/from16 v1, p36

    .line 151
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->nowLogoUrl:Ljava/lang/String;

    move/from16 v1, p37

    .line 152
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->playState:I

    move/from16 v1, p38

    .line 153
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->version:I

    move-object/from16 v1, p39

    .line 154
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->allLogos:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public copyTo(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V
    .locals 2

    .line 557
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->getCacheId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setCacheId(Ljava/lang/Long;)V

    .line 558
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->getSysUid()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setSysUid(J)V

    .line 559
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setUid(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->getCacheTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setCacheTime(J)V

    .line 561
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setId(Ljava/lang/String;)V

    .line 562
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->getLogoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setIconUrl(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->getNightIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setNightIconUrl(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setTag(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->getCategoryId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setCategoryId(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->getArtistId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setArtistId(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setTitle(Ljava/lang/String;)V

    .line 569
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setType(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->getSinger()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setSinger(Ljava/lang/String;)V

    .line 571
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->getSongName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setSongName(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->getCoverUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setCoverUrl(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->getFirstSongInfoBo()Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setFirstSongInfoBo(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V

    .line 574
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->getLogo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogo(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->getPlayState()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setPlayState(I)V

    .line 576
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setName(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->getRankId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setRankId(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->getRankName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setRankName(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setImgUrl(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->getRankType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setRankType(I)V

    .line 581
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->getSongInfos()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setSongInfos(Ljava/util/List;)V

    .line 582
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->getNeedVip()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setNeedVip(Z)V

    .line 583
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->getClickType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setClickType(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->getSheetType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setSheetType(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->getSheetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setSheetName(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->getPreTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setPreTime(J)V

    .line 587
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->getNowTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setNowTime(J)V

    .line 588
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->getPreLogoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setPreLogoUrl(Ljava/lang/String;)V

    .line 589
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->getNowLogoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setNowLogoUrl(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->getPlayState()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setPlayState(I)V

    .line 591
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->getAllLogos()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setAllLogos(Ljava/util/List;)V

    .line 592
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->getVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setVersion(I)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 400
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;

    iget-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->id:Ljava/lang/String;

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->type:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 403
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAlbumDesc()Ljava/lang/String;
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->albumDesc:Ljava/lang/String;

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

    .line 549
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->allLogos:Ljava/util/List;

    return-object v0
.end method

.method public getArtistId()Ljava/lang/String;
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->artistId:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheId()Ljava/lang/Long;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->cacheId:Ljava/lang/Long;

    return-object v0
.end method

.method public getCacheTime()J
    .locals 2

    .line 485
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->cacheTime:J

    return-wide v0
.end method

.method public getCategoryId()Ljava/lang/String;
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->categoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getClickType()Ljava/lang/String;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->clickType:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverUrl()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstSongInfoBo()Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->firstSongInfoBo:Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    return-object v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->group:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupIndex()I
    .locals 1

    .line 195
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->groupIndex:I

    return v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getLogoUrl()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->logoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedVip()Z
    .locals 1

    .line 461
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->needVip:Z

    return v0
.end method

.method public getNightIconUrl()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->nightIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNowLogoUrl()Ljava/lang/String;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->nowLogoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNowTime()J
    .locals 2

    .line 367
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->nowTime:J

    return-wide v0
.end method

.method public getPlayState()I
    .locals 1

    .line 391
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->playState:I

    return v0
.end method

.method public getPreLogoUrl()Ljava/lang/String;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->preLogoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPreTime()J
    .locals 2

    .line 359
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->preTime:J

    return-wide v0
.end method

.method public getRankId()Ljava/lang/String;
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->rankId:Ljava/lang/String;

    return-object v0
.end method

.method public getRankName()Ljava/lang/String;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->rankName:Ljava/lang/String;

    return-object v0
.end method

.method public getRankType()I
    .locals 1

    .line 302
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->rankType:I

    return v0
.end method

.method public getSheetName()Ljava/lang/String;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->sheetName:Ljava/lang/String;

    return-object v0
.end method

.method public getSheetType()Ljava/lang/String;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->sheetType:Ljava/lang/String;

    return-object v0
.end method

.method public getShowTime()J
    .locals 2

    .line 501
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->showTime:J

    return-wide v0
.end method

.method public getSinger()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->singer:Ljava/lang/String;

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

    .line 310
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->songInfos:Ljava/util/List;

    return-object v0
.end method

.method public getSongName()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->songName:Ljava/lang/String;

    return-object v0
.end method

.method public getSysUid()J
    .locals 2

    .line 469
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->sysUid:J

    return-wide v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 596
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->version:I

    return v0
.end method

.method public isDeleted()Z
    .locals 1

    .line 453
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->deleted:Z

    return v0
.end method

.method public isFavourite()Z
    .locals 1

    .line 351
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->isFavourite:Z

    return v0
.end method

.method public isNeedVip()Z
    .locals 1

    .line 342
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->needVip:Z

    return v0
.end method

.method public isShowLoading()Z
    .locals 1

    .line 445
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->isShowLoading:Z

    return v0
.end method

.method public setAlbumDesc(Ljava/lang/String;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->albumDesc:Ljava/lang/String;

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

    .line 553
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->allLogos:Ljava/util/List;

    return-void
.end method

.method public setArtistId(Ljava/lang/String;)V
    .locals 0

    .line 537
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->artistId:Ljava/lang/String;

    return-void
.end method

.method public setCacheId(Ljava/lang/Long;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->cacheId:Ljava/lang/Long;

    return-void
.end method

.method public setCacheTime(J)V
    .locals 0

    .line 489
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->cacheTime:J

    return-void
.end method

.method public setCategoryId(Ljava/lang/String;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->categoryId:Ljava/lang/String;

    return-void
.end method

.method public setClickType(Ljava/lang/String;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->clickType:Ljava/lang/String;

    return-void
.end method

.method public setCoverUrl(Ljava/lang/String;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->coverUrl:Ljava/lang/String;

    return-void
.end method

.method public setDeleted(Z)V
    .locals 0

    .line 457
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->deleted:Z

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->description:Ljava/lang/String;

    return-void
.end method

.method public setFavourite(Z)V
    .locals 0

    .line 355
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->isFavourite:Z

    return-void
.end method

.method public setFirstSongInfoBo(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->firstSongInfoBo:Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    return-void
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->group:Ljava/lang/String;

    return-void
.end method

.method public setGroupIndex(I)V
    .locals 0

    .line 199
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->groupIndex:I

    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->iconUrl:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 521
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->id:Ljava/lang/String;

    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->imgUrl:Ljava/lang/String;

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->logo:Ljava/lang/String;

    return-void
.end method

.method public setLogoUrl(Ljava/lang/String;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->logoUrl:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->name:Ljava/lang/String;

    return-void
.end method

.method public setNeedVip(Z)V
    .locals 0

    .line 346
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->needVip:Z

    return-void
.end method

.method public setNightIconUrl(Ljava/lang/String;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->nightIconUrl:Ljava/lang/String;

    return-void
.end method

.method public setNowLogoUrl(Ljava/lang/String;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->nowLogoUrl:Ljava/lang/String;

    return-void
.end method

.method public setNowTime(J)V
    .locals 0

    .line 371
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->nowTime:J

    return-void
.end method

.method public setPlayState(I)V
    .locals 0

    .line 395
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->playState:I

    return-void
.end method

.method public setPreLogoUrl(Ljava/lang/String;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->preLogoUrl:Ljava/lang/String;

    return-void
.end method

.method public setPreTime(J)V
    .locals 0

    .line 363
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->preTime:J

    return-void
.end method

.method public setRankId(Ljava/lang/String;)V
    .locals 0

    .line 545
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->rankId:Ljava/lang/String;

    return-void
.end method

.method public setRankName(Ljava/lang/String;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->rankName:Ljava/lang/String;

    return-void
.end method

.method public setRankType(I)V
    .locals 0

    .line 306
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->rankType:I

    return-void
.end method

.method public setSheetName(Ljava/lang/String;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->sheetName:Ljava/lang/String;

    return-void
.end method

.method public setSheetType(Ljava/lang/String;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->sheetType:Ljava/lang/String;

    return-void
.end method

.method public setShowLoading(Z)V
    .locals 0

    .line 449
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->isShowLoading:Z

    return-void
.end method

.method public setShowTime(J)V
    .locals 0

    .line 505
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->showTime:J

    return-void
.end method

.method public setSinger(Ljava/lang/String;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->singer:Ljava/lang/String;

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

    .line 314
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->songInfos:Ljava/util/List;

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

    .line 465
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->songInfos:Ljava/util/List;

    return-void
.end method

.method public setSongName(Ljava/lang/String;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->songName:Ljava/lang/String;

    return-void
.end method

.method public setSysUid(J)V
    .locals 0

    .line 473
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->sysUid:J

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->tag:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->type:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->uid:Ljava/lang/String;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 600
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->version:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicRadioItem{logoUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->logoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", iconUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", nightIconUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->nightIconUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tag=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->tag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", categoryId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->categoryId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", group=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->group:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", groupIndex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->groupIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", artistId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->artistId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", singer=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->singer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", songName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->songName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", coverUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->coverUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", firstSongInfoBo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->firstSongInfoBo:Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", logo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->logo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", rankId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->rankId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", rankName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->rankName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", imgUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->imgUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", rankType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->rankType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", songInfos="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->songInfos:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", needVip="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->needVip:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", clickType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->clickType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sheetType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->sheetType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sheetName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->sheetName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isFavourite="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->isFavourite:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", preTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->preTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", nowTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->nowTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", preLogoUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->preLogoUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", nowLogoUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->nowLogoUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", playState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->playState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
