.class public Lcom/xiaopeng/musicradio/bean/db/XpCacheInfo;
.super Ljava/lang/Object;
.source "XpCacheInfo.java"


# static fields
.field public static final KEY_DSP_CUSTOM_MUSIC:Ljava/lang/String; = "dsp_custom_music"

.field public static final KEY_DSP_CUSTOM_PROGRAM:Ljava/lang/String; = "dsp_custom_program"

.field public static final KEY_FM_PLAY_LIST:Ljava/lang/String; = "fm_play_list"

.field public static final KEY_KUGOU_PLAY_LIST:Ljava/lang/String; = "kugou_play_list"

.field public static final KEY_KUGOU_PLAY_LIST_COUNT:Ljava/lang/String; = "kugou_play_list_count"

.field public static final KEY_MUSIC_DATA_PREFIX:Ljava/lang/String; = "music_data_"

.field public static final KEY_MUSIC_PLAY_LIST:Ljava/lang/String; = "music_play_list"

.field public static final KEY_MUSIC_PLAY_LIST_COUNT:Ljava/lang/String; = "music_play_list_count"

.field public static final KEY_MUSIC_SIMILAR_PLAY_LIST:Ljava/lang/String; = "music_similar_play_list"

.field public static final KEY_NETEASE_DATA_PREFIX:Ljava/lang/String; = "music_data_"

.field public static final KEY_NETEASE_PLAY_LIST:Ljava/lang/String; = "netease_play_list"

.field public static final KEY_NETEASE_PLAY_LIST_COUNT:Ljava/lang/String; = "netease_play_list_count"

.field public static final KEY_PROGRAM_PLAY_LIST:Ljava/lang/String; = "program_play_list"

.field public static final KEY_PROGRAM_PLAY_LIST_COUNT:Ljava/lang/String; = "program_play_list_count"

.field public static final KEY_USB_PLAY_LIST:Ljava/lang/String; = "usb_play_list"

.field public static final KEY_USB_PLAY_LIST_COUNT:Ljava/lang/String; = "usb_play_list_count"


# instance fields
.field public key:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/XpCacheInfo;->key:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/XpCacheInfo;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/XpCacheInfo;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/XpCacheInfo;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/XpCacheInfo;->key:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/XpCacheInfo;->value:Ljava/lang/String;

    return-void
.end method
