.class public Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao$Properties;
.super Ljava/lang/Object;
.source "ReadHistoryInfoDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final AlbumId:Lorg/greenrobot/greendao/Property;

.field public static final AlbumName:Lorg/greenrobot/greendao/Property;

.field public static final Artist:Lorg/greenrobot/greendao/Property;

.field public static final ArtistId:Lorg/greenrobot/greendao/Property;

.field public static final Authorized:Lorg/greenrobot/greendao/Property;

.field public static final CategoryName:Lorg/greenrobot/greendao/Property;

.field public static final ChannelId:Lorg/greenrobot/greendao/Property;

.field public static final Duration:Lorg/greenrobot/greendao/Property;

.field public static final Intro:Lorg/greenrobot/greendao/Property;

.field public static final LargeLogo:Lorg/greenrobot/greendao/Property;

.field public static final Logo:Lorg/greenrobot/greendao/Property;

.field public static final MediumLogo:Lorg/greenrobot/greendao/Property;

.field public static final OrderNum:Lorg/greenrobot/greendao/Property;

.field public static final PaymentType:Lorg/greenrobot/greendao/Property;

.field public static final PlayCount:Lorg/greenrobot/greendao/Property;

.field public static final Seek:Lorg/greenrobot/greendao/Property;

.field public static final ShortIntro:Lorg/greenrobot/greendao/Property;

.field public static final Sort:Lorg/greenrobot/greendao/Property;

.field public static final TrackAuthorized:Lorg/greenrobot/greendao/Property;

.field public static final TrackId:Lorg/greenrobot/greendao/Property;

.field public static final TrackPaymentType:Lorg/greenrobot/greendao/Property;

.field public static final TrackTitle:Lorg/greenrobot/greendao/Property;

.field public static final Ts:Lorg/greenrobot/greendao/Property;

.field public static final Uid:Lorg/greenrobot/greendao/Property;

.field public static final UpdateTime:Lorg/greenrobot/greendao/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 27
    new-instance v6, Lorg/greenrobot/greendao/Property;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    const-string v3, "albumId"

    const/4 v4, 0x1

    const-string v5, "_id"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v6, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao$Properties;->AlbumId:Lorg/greenrobot/greendao/Property;

    .line 28
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v8, 0x1

    const-string v10, "albumName"

    const/4 v11, 0x0

    const-string v12, "ALBUM_NAME"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao$Properties;->AlbumName:Lorg/greenrobot/greendao/Property;

    .line 29
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    const-string v4, "artistId"

    const/4 v5, 0x0

    const-string v6, "ARTIST_ID"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao$Properties;->ArtistId:Lorg/greenrobot/greendao/Property;

    .line 30
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v8, 0x3

    const-string v10, "artist"

    const-string v12, "ARTIST"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao$Properties;->Artist:Lorg/greenrobot/greendao/Property;

    .line 31
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/4 v2, 0x4

    const-string v4, "logo"

    const-string v6, "LOGO"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao$Properties;->Logo:Lorg/greenrobot/greendao/Property;

    .line 32
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v8, 0x5

    const-string v10, "largeLogo"

    const-string v12, "LARGE_LOGO"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao$Properties;->LargeLogo:Lorg/greenrobot/greendao/Property;

    .line 33
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/4 v2, 0x6

    const-string v4, "mediumLogo"

    const-string v6, "MEDIUM_LOGO"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao$Properties;->MediumLogo:Lorg/greenrobot/greendao/Property;

    .line 34
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x7

    const-string v10, "trackId"

    const-string v12, "TRACK_ID"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao$Properties;->TrackId:Lorg/greenrobot/greendao/Property;

    .line 35
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0x8

    const-string v4, "trackTitle"

    const-string v6, "TRACK_TITLE"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao$Properties;->TrackTitle:Lorg/greenrobot/greendao/Property;

    .line 36
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v8, 0x9

    const-string v10, "seek"

    const-string v12, "SEEK"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao$Properties;->Seek:Lorg/greenrobot/greendao/Property;

    .line 37
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v2, 0xa

    const-string v4, "duration"

    const-string v6, "DURATION"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao$Properties;->Duration:Lorg/greenrobot/greendao/Property;

    .line 38
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0xb

    const-string v10, "uid"

    const-string v12, "UID"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao$Properties;->Uid:Lorg/greenrobot/greendao/Property;

    .line 39
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v2, 0xc

    const-string v4, "updateTime"

    const-string v6, "UPDATE_TIME"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao$Properties;->UpdateTime:Lorg/greenrobot/greendao/Property;

    .line 40
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v8, 0xd

    const-string v10, "ts"

    const-string v12, "TS"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao$Properties;->Ts:Lorg/greenrobot/greendao/Property;

    .line 41
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0xe

    const-string v4, "sort"

    const-string v6, "SORT"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao$Properties;->Sort:Lorg/greenrobot/greendao/Property;

    .line 42
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v8, 0xf

    const-string v10, "orderNum"

    const-string v12, "ORDER_NUM"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao$Properties;->OrderNum:Lorg/greenrobot/greendao/Property;

    .line 43
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0x10

    const-string v4, "shortIntro"

    const-string v6, "SHORT_INTRO"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao$Properties;->ShortIntro:Lorg/greenrobot/greendao/Property;

    .line 44
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x11

    const-string v10, "intro"

    const-string v12, "INTRO"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao$Properties;->Intro:Lorg/greenrobot/greendao/Property;

    .line 45
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x12

    const-string v4, "playCount"

    const-string v6, "PLAY_COUNT"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao$Properties;->PlayCount:Lorg/greenrobot/greendao/Property;

    .line 46
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x13

    const-string v10, "categoryName"

    const-string v12, "CATEGORY_NAME"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao$Properties;->CategoryName:Lorg/greenrobot/greendao/Property;

    .line 47
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x14

    const-string v4, "paymentType"

    const-string v6, "PAYMENT_TYPE"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao$Properties;->PaymentType:Lorg/greenrobot/greendao/Property;

    .line 48
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v8, 0x15

    const-string v10, "authorized"

    const-string v12, "AUTHORIZED"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao$Properties;->Authorized:Lorg/greenrobot/greendao/Property;

    .line 49
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x16

    const-string v4, "trackPaymentType"

    const-string v6, "TRACK_PAYMENT_TYPE"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao$Properties;->TrackPaymentType:Lorg/greenrobot/greendao/Property;

    .line 50
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v8, 0x17

    const-string v10, "trackAuthorized"

    const-string v12, "TRACK_AUTHORIZED"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao$Properties;->TrackAuthorized:Lorg/greenrobot/greendao/Property;

    .line 51
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x18

    const-string v4, "channelId"

    const-string v6, "CHANNEL_ID"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao$Properties;->ChannelId:Lorg/greenrobot/greendao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
