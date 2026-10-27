.class public Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;
.super Ljava/lang/Object;
.source "KugouMusicRadioItemDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final AllLogos:Lorg/greenrobot/greendao/Property;

.field public static final ArtistId:Lorg/greenrobot/greendao/Property;

.field public static final CacheId:Lorg/greenrobot/greendao/Property;

.field public static final CacheTime:Lorg/greenrobot/greendao/Property;

.field public static final CategoryId:Lorg/greenrobot/greendao/Property;

.field public static final ClickType:Lorg/greenrobot/greendao/Property;

.field public static final CoverUrl:Lorg/greenrobot/greendao/Property;

.field public static final FirstSongInfoBo:Lorg/greenrobot/greendao/Property;

.field public static final IconUrl:Lorg/greenrobot/greendao/Property;

.field public static final Id:Lorg/greenrobot/greendao/Property;

.field public static final ImgUrl:Lorg/greenrobot/greendao/Property;

.field public static final Logo:Lorg/greenrobot/greendao/Property;

.field public static final LogoUrl:Lorg/greenrobot/greendao/Property;

.field public static final Name:Lorg/greenrobot/greendao/Property;

.field public static final NeedVip:Lorg/greenrobot/greendao/Property;

.field public static final NightIconUrl:Lorg/greenrobot/greendao/Property;

.field public static final NowLogoUrl:Lorg/greenrobot/greendao/Property;

.field public static final NowTime:Lorg/greenrobot/greendao/Property;

.field public static final PlayState:Lorg/greenrobot/greendao/Property;

.field public static final PreLogoUrl:Lorg/greenrobot/greendao/Property;

.field public static final PreTime:Lorg/greenrobot/greendao/Property;

.field public static final RankId:Lorg/greenrobot/greendao/Property;

.field public static final RankName:Lorg/greenrobot/greendao/Property;

.field public static final RankType:Lorg/greenrobot/greendao/Property;

.field public static final SheetName:Lorg/greenrobot/greendao/Property;

.field public static final SheetType:Lorg/greenrobot/greendao/Property;

.field public static final Singer:Lorg/greenrobot/greendao/Property;

.field public static final SongInfos:Lorg/greenrobot/greendao/Property;

.field public static final SongName:Lorg/greenrobot/greendao/Property;

.field public static final SysUid:Lorg/greenrobot/greendao/Property;

.field public static final Tag:Lorg/greenrobot/greendao/Property;

.field public static final Title:Lorg/greenrobot/greendao/Property;

.field public static final Type:Lorg/greenrobot/greendao/Property;

.field public static final Uid:Lorg/greenrobot/greendao/Property;

.field public static final Version:Lorg/greenrobot/greendao/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 33
    new-instance v6, Lorg/greenrobot/greendao/Property;

    const-class v2, Ljava/lang/Long;

    const/4 v1, 0x0

    const-string v3, "cacheId"

    const/4 v4, 0x1

    const-string v5, "_id"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v6, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;->CacheId:Lorg/greenrobot/greendao/Property;

    .line 34
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    const-string v10, "sysUid"

    const/4 v11, 0x0

    const-string v12, "SYS_UID"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;->SysUid:Lorg/greenrobot/greendao/Property;

    .line 35
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/4 v2, 0x2

    const-string v4, "uid"

    const/4 v5, 0x0

    const-string v6, "UID"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;->Uid:Lorg/greenrobot/greendao/Property;

    .line 36
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x3

    const-string v10, "cacheTime"

    const-string v12, "CACHE_TIME"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;->CacheTime:Lorg/greenrobot/greendao/Property;

    .line 37
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/4 v2, 0x4

    const-string v4, "id"

    const-string v6, "ID"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    .line 38
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v8, 0x5

    const-string v10, "logoUrl"

    const-string v12, "LOGO_URL"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;->LogoUrl:Lorg/greenrobot/greendao/Property;

    .line 39
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/4 v2, 0x6

    const-string v4, "iconUrl"

    const-string v6, "ICON_URL"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;->IconUrl:Lorg/greenrobot/greendao/Property;

    .line 40
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v8, 0x7

    const-string v10, "nightIconUrl"

    const-string v12, "NIGHT_ICON_URL"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;->NightIconUrl:Lorg/greenrobot/greendao/Property;

    .line 41
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0x8

    const-string v4, "tag"

    const-string v6, "TAG"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;->Tag:Lorg/greenrobot/greendao/Property;

    .line 42
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x9

    const-string v10, "categoryId"

    const-string v12, "CATEGORY_ID"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;->CategoryId:Lorg/greenrobot/greendao/Property;

    .line 43
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0xa

    const-string v4, "artistId"

    const-string v6, "ARTIST_ID"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;->ArtistId:Lorg/greenrobot/greendao/Property;

    .line 44
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0xb

    const-string v10, "title"

    const-string v12, "TITLE"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;->Title:Lorg/greenrobot/greendao/Property;

    .line 45
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0xc

    const-string v4, "type"

    const-string v6, "TYPE"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;->Type:Lorg/greenrobot/greendao/Property;

    .line 46
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0xd

    const-string v10, "singer"

    const-string v12, "SINGER"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;->Singer:Lorg/greenrobot/greendao/Property;

    .line 47
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0xe

    const-string v4, "songName"

    const-string v6, "SONG_NAME"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;->SongName:Lorg/greenrobot/greendao/Property;

    .line 48
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0xf

    const-string v10, "coverUrl"

    const-string v12, "COVER_URL"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;->CoverUrl:Lorg/greenrobot/greendao/Property;

    .line 49
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0x10

    const-string v4, "firstSongInfoBo"

    const-string v6, "FIRST_SONG_INFO_BO"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;->FirstSongInfoBo:Lorg/greenrobot/greendao/Property;

    .line 50
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x11

    const-string v10, "logo"

    const-string v12, "LOGO"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;->Logo:Lorg/greenrobot/greendao/Property;

    .line 51
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0x12

    const-string v4, "name"

    const-string v6, "NAME"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;->Name:Lorg/greenrobot/greendao/Property;

    .line 52
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x13

    const-string v10, "rankId"

    const-string v12, "RANK_ID"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;->RankId:Lorg/greenrobot/greendao/Property;

    .line 53
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0x14

    const-string v4, "rankName"

    const-string v6, "RANK_NAME"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;->RankName:Lorg/greenrobot/greendao/Property;

    .line 54
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x15

    const-string v10, "imgUrl"

    const-string v12, "IMG_URL"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;->ImgUrl:Lorg/greenrobot/greendao/Property;

    .line 55
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x16

    const-string v4, "rankType"

    const-string v6, "RANK_TYPE"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;->RankType:Lorg/greenrobot/greendao/Property;

    .line 56
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x17

    const-string v10, "songInfos"

    const-string v12, "SONG_INFOS"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;->SongInfos:Lorg/greenrobot/greendao/Property;

    .line 57
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x18

    const-string v4, "needVip"

    const-string v6, "NEED_VIP"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;->NeedVip:Lorg/greenrobot/greendao/Property;

    .line 58
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x19

    const-string v10, "clickType"

    const-string v12, "CLICK_TYPE"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;->ClickType:Lorg/greenrobot/greendao/Property;

    .line 59
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0x1a

    const-string v4, "sheetType"

    const-string v6, "SHEET_TYPE"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;->SheetType:Lorg/greenrobot/greendao/Property;

    .line 60
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x1b

    const-string v10, "sheetName"

    const-string v12, "SHEET_NAME"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;->SheetName:Lorg/greenrobot/greendao/Property;

    .line 61
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x1c

    const-string v4, "preTime"

    const-string v6, "PRE_TIME"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;->PreTime:Lorg/greenrobot/greendao/Property;

    .line 62
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v8, 0x1d

    const-string v10, "nowTime"

    const-string v12, "NOW_TIME"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;->NowTime:Lorg/greenrobot/greendao/Property;

    .line 63
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0x1e

    const-string v4, "preLogoUrl"

    const-string v6, "PRE_LOGO_URL"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;->PreLogoUrl:Lorg/greenrobot/greendao/Property;

    .line 64
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x1f

    const-string v10, "nowLogoUrl"

    const-string v12, "NOW_LOGO_URL"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;->NowLogoUrl:Lorg/greenrobot/greendao/Property;

    .line 65
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x20

    const-string v4, "playState"

    const-string v6, "PLAY_STATE"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;->PlayState:Lorg/greenrobot/greendao/Property;

    .line 66
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v8, 0x21

    const-string v10, "version"

    const-string v12, "VERSION"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;->Version:Lorg/greenrobot/greendao/Property;

    .line 67
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0x22

    const-string v4, "allLogos"

    const-string v6, "ALL_LOGOS"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;->AllLogos:Lorg/greenrobot/greendao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
