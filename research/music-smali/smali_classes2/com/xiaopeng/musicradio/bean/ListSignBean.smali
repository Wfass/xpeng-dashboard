.class public Lcom/xiaopeng/musicradio/bean/ListSignBean;
.super Ljava/lang/Object;
.source "ListSignBean.java"


# static fields
.field public static final COLLECTID_PREFIX:Ljava/lang/String; = "\"collectId\":\""

.field public static final COLLECTID_SUFFIX:Ljava/lang/String; = "\","

.field public static final DUBI_MUSIC_ID:Ljava/lang/String; = "-1004"

.field public static final DUBI_NETEASE_RECOMMEND:Ljava/lang/String; = "-1006"

.field public static final DUBI_NETEASE_SELECT:Ljava/lang/String; = "-1007"

.field public static final FIND_MUSIC_RADIO_SING_EXTRA:Ljava/lang/String; = "find_music_radio"

.field public static final LISTSIGN_ALBUM:Ljava/lang/String; = "listsign_album"

.field public static final LISTSIGN_ARTIST_RADIO:Ljava/lang/String; = "listsign_artist_radio"

.field public static final LISTSIGN_BILLBOARD:Ljava/lang/String; = "listsign_billboard"

.field public static final LISTSIGN_BLUE_MUSIC:Ljava/lang/String; = "listsign_blue_music"

.field public static final LISTSIGN_COLLECT:Ljava/lang/String; = "listsign_collect"

.field public static final LISTSIGN_COLLECT_MUSIC:Ljava/lang/String; = "listsign_collect_music"

.field public static final LISTSIGN_DOLBY_MUSIC:Ljava/lang/String; = "listsign_dolby_music"

.field public static final LISTSIGN_HISTORY_MUSIC:Ljava/lang/String; = "listsign_history_music"

.field public static final LISTSIGN_LOCAL_RM_MUSIC:Ljava/lang/String; = "listsign_local_rm_music"

.field public static final LISTSIGN_MASTER_MUSIC:Ljava/lang/String; = "listsign_master_music"

.field public static final LISTSIGN_NETEASE_ZONE_RECOMMEND:Ljava/lang/String; = "listsign_netease_zone_recommend"

.field public static final LISTSIGN_NETEASE_ZONE_SELECT:Ljava/lang/String; = "listsign_netease_zone_select"

.field public static final LISTSIGN_NET_REPLAY:Ljava/lang/String; = "listsign_net_replay"

.field public static final LISTSIGN_NEW_SONG:Ljava/lang/String; = "listsign_new_song"

.field public static final LISTSIGN_PHONE_MUSIC:Ljava/lang/String; = "listsign_phone_music"

.field public static final LISTSIGN_RANK_MUSIC:Ljava/lang/String; = "listsign_rank_music"

.field public static final LISTSIGN_RECOMMEN_MUSIC:Ljava/lang/String; = "listsign_recommend_music"

.field public static final LISTSIGN_SEARCH_SONG:Ljava/lang/String; = "listsign_search_song"

.field public static final LISTSIGN_SIMILAR:Ljava/lang/String; = "listsign_similar"

.field public static final LISTSIGN_SINGER_COLLECT_MUSIC:Ljava/lang/String; = "listsign_singer_single_music"

.field public static final LISTSIGN_SINGER_SINGLE_MUSIC:Ljava/lang/String; = "listsign_singer_single_music"

.field public static final LISTSIGN_STYLE:Ljava/lang/String; = "listsign_style"

.field public static final LISTSIGN_TAGS:Ljava/lang/String; = "listsign_tags"

.field public static final LISTSIGN_USB_MUSIC:Ljava/lang/String; = "listsign_usb_music"

.field public static final LISTSIGN_USER_ALBUM:Ljava/lang/String; = "listsign_user_album"

.field public static final LISTSIGN_ZONE_SONG:Ljava/lang/String; = "listsign_zone_song"

.field public static final LOCAL_MUSIC_EXTRA:Ljava/lang/String; = "local_music_extra"

.field public static final LOCAL_MUSIC_ID:Ljava/lang/String; = "2000"

.field public static final LOCAL_MUSIC_TITLE:Ljava/lang/String;

.field public static final LOCAL_PREFIX:Ljava/lang/String; = "local_prefix_"

.field public static final LOCAL_USB_PREFIX:Ljava/lang/String; = "local_usb_prefix_"

.field public static final MASTER_MUSIC_ID:Ljava/lang/String; = "-1005"

.field public static final MUSIC_DOLBY_NETEASE_ZONE_EXTRA:Ljava/lang/String; = "dolby_netease_zone"

.field public static final MUSIC_EXTRA_AISUGEST:Ljava/lang/String; = "music_extra_aisugest"

.field public static final MUSIC_HIRES_ZONE_EXTRA:Ljava/lang/String; = "dolby_hires_zone"

.field public static final MUSIC_MQ_ZONE_EXTRA:Ljava/lang/String; = "dolby_mq_zone"

.field public static final MUSIC_PHONE_SING_EXTRA:Ljava/lang/String; = "new_phone_collect"

.field public static final MUSIC_RADIO_SING_EXTRA:Ljava/lang/String; = "new_music_radio"

.field public static final MUSIC_SINGER_EXTRA:Ljava/lang/String; = "singer_music"

.field public static final PERSONAL_MUSIC_ID:Ljava/lang/String; = "-1003"

.field public static final RECOMMEND_DAILY_ID:Ljava/lang/String; = "-1000"

.field public static final RECOMMEND_VIP_ID:Ljava/lang/String; = "-1002"

.field public static final USB_ALBUM_PREFIX:Ljava/lang/String; = "usb_album_prefix_"

.field public static final USB_DIR_PREFIX:Ljava/lang/String; = "usb_dir_prefix_"

.field public static final USB_DIR_SUFFIX:Ljava/lang/String; = "/"

.field public static final USB_MUSIC_EXTRA:Ljava/lang/String; = "usb_music_extra"

.field public static final USB_MUSIC_ID:Ljava/lang/String; = "3000"

.field public static final USB_MUSIC_TITLE:Ljava/lang/String;

.field public static final USB_SINGER_PREFIX:Ljava/lang/String; = "usb_singer_prefix_"

.field public static final USB_SONG_PREFIX:Ljava/lang/String; = "usb_song_prefix_"


# instance fields
.field public collectId:Ljava/lang/String;

.field public extra:Ljava/lang/String;

.field public mIsUserCollect:I

.field public nType:I

.field public prefix:Ljava/lang/String;

.field public tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    sget v0, Lcom/xiaopeng/musicradio/common/k$g;->local_music_title:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/musicradio/bean/ListSignBean;->LOCAL_MUSIC_TITLE:Ljava/lang/String;

    .line 81
    sget v0, Lcom/xiaopeng/musicradio/common/k$g;->usb_music_title:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/musicradio/bean/ListSignBean;->USB_MUSIC_TITLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 93
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/ListSignBean;->prefix:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/ListSignBean;->extra:Ljava/lang/String;

    .line 102
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/ListSignBean;->tag:Ljava/lang/String;

    .line 105
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/ListSignBean;->collectId:Ljava/lang/String;

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;
    .locals 1

    .line 161
    const-class v0, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-static {p0, v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    return-object p0
.end method


# virtual methods
.method public getCollectId()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/ListSignBean;->collectId:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/ListSignBean;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getIsUserCollect()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/ListSignBean;->mIsUserCollect:I

    return v0
.end method

.method public getNType()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/ListSignBean;->nType:I

    return v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/ListSignBean;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/ListSignBean;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public setCollectId(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/ListSignBean;->collectId:Ljava/lang/String;

    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/ListSignBean;->extra:Ljava/lang/String;

    return-void
.end method

.method public setIsUserCollect(I)V
    .locals 0

    .line 153
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/ListSignBean;->mIsUserCollect:I

    return-void
.end method

.method public setNType(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/ListSignBean;->nType:I

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/ListSignBean;->prefix:Ljava/lang/String;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/ListSignBean;->tag:Ljava/lang/String;

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .line 157
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
