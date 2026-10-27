.class public Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao$Properties;
.super Ljava/lang/Object;
.source "NetRadioHistoryDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final AreaCode:Lorg/greenrobot/greendao/Property;

.field public static final CacheTime:Lorg/greenrobot/greendao/Property;

.field public static final Hz:Lorg/greenrobot/greendao/Property;

.field public static final Id:Lorg/greenrobot/greendao/Property;

.field public static final Name:Lorg/greenrobot/greendao/Property;

.field public static final PicUrl:Lorg/greenrobot/greendao/Property;

.field public static final PlayCount:Lorg/greenrobot/greendao/Property;

.field public static final PlayUrl:Lorg/greenrobot/greendao/Property;

.field public static final PlayingInfo:Lorg/greenrobot/greendao/Property;

.field public static final ProgramInfos:Lorg/greenrobot/greendao/Property;

.field public static final UpdateTime:Lorg/greenrobot/greendao/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 32
    new-instance v6, Lorg/greenrobot/greendao/Property;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    const-string v3, "id"

    const/4 v4, 0x1

    const-string v5, "_id"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v6, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    .line 33
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v8, 0x1

    const-string v10, "name"

    const/4 v11, 0x0

    const-string v12, "NAME"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao$Properties;->Name:Lorg/greenrobot/greendao/Property;

    .line 34
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/4 v2, 0x2

    const-string v4, "picUrl"

    const/4 v5, 0x0

    const-string v6, "PIC_URL"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao$Properties;->PicUrl:Lorg/greenrobot/greendao/Property;

    .line 35
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x3

    const-string v10, "updateTime"

    const-string v12, "UPDATE_TIME"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao$Properties;->UpdateTime:Lorg/greenrobot/greendao/Property;

    .line 36
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x4

    const-string v4, "hz"

    const-string v6, "HZ"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao$Properties;->Hz:Lorg/greenrobot/greendao/Property;

    .line 37
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v8, 0x5

    const-string v10, "areaCode"

    const-string v12, "AREA_CODE"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao$Properties;->AreaCode:Lorg/greenrobot/greendao/Property;

    .line 38
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x6

    const-string v4, "playCount"

    const-string v6, "PLAY_COUNT"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao$Properties;->PlayCount:Lorg/greenrobot/greendao/Property;

    .line 39
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v8, 0x7

    const-string v10, "playUrl"

    const-string v12, "PLAY_URL"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao$Properties;->PlayUrl:Lorg/greenrobot/greendao/Property;

    .line 40
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0x8

    const-string v4, "playingInfo"

    const-string v6, "PLAYING_INFO"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao$Properties;->PlayingInfo:Lorg/greenrobot/greendao/Property;

    .line 41
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x9

    const-string v10, "programInfos"

    const-string v12, "PROGRAM_INFOS"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao$Properties;->ProgramInfos:Lorg/greenrobot/greendao/Property;

    .line 42
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v2, 0xa

    const-string v4, "cacheTime"

    const-string v6, "CACHE_TIME"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao$Properties;->CacheTime:Lorg/greenrobot/greendao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
