.class public Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;
.super Ljava/lang/Object;
.source "ICMCommunicator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ICMCommunicator"


# instance fields
.field private mICMHandler:Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;->isLegacyIcmMediaSyncEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;->mICMHandler:Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMHandler;

    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/icm/NewIcmHandler;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/mediacenter/icm/NewIcmHandler;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;->mICMHandler:Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMHandler;

    .line 19
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;)Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMHandler;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;

    .line 9
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;->mICMHandler:Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMHandler;

    return-object v0
.end method

.method private isLegacyIcmMediaSyncEnable()Z
    .locals 1

    .line 22
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->getIcmType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public sendLyricsMessage(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    .line 38
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator$2;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 44
    return-void
.end method

.method public sendMediaInfoToIcm(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;I[JZ)V
    .locals 8
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    .param p2, "status"    # I
    .param p3, "positions"    # [J
    .param p4, "withImage"    # Z

    .line 26
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->isXpMusic()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/xiaopeng/xuiservice/mediacenter/Config;->SendXpMusicInfoToIcm:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v7, Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator$1;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;I[JZ)V

    invoke-virtual {v0, v7}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 35
    return-void

    .line 27
    :cond_1
    :goto_0
    return-void
.end method
