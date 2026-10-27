.class public Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;
.super Ljava/lang/Object;
.source "KaraokeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MusicInfo"
.end annotation


# instance fields
.field lyricist:Ljava/lang/String;

.field premiumStatus:Ljava/lang/String;

.field producer:Ljava/lang/String;

.field singer:Ljava/lang/String;

.field songDuration:Ljava/lang/String;

.field songwriter:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    .line 1076
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1068
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;->title:Ljava/lang/String;

    .line 1069
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;->singer:Ljava/lang/String;

    .line 1070
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;->producer:Ljava/lang/String;

    .line 1071
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;->lyricist:Ljava/lang/String;

    .line 1072
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;->songwriter:Ljava/lang/String;

    .line 1073
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;->songDuration:Ljava/lang/String;

    .line 1074
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;->premiumStatus:Ljava/lang/String;

    .line 1077
    return-void
.end method


# virtual methods
.method public getLyricist()Ljava/lang/String;
    .locals 1

    .line 1098
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;->lyricist:Ljava/lang/String;

    return-object v0
.end method

.method public getPremiumStatus()Ljava/lang/String;
    .locals 1

    .line 1134
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;->premiumStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getProducer()Ljava/lang/String;
    .locals 1

    .line 1107
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;->producer:Ljava/lang/String;

    return-object v0
.end method

.method public getSinger()Ljava/lang/String;
    .locals 1

    .line 1089
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;->singer:Ljava/lang/String;

    return-object v0
.end method

.method public getSongDuration()Ljava/lang/String;
    .locals 1

    .line 1125
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;->songDuration:Ljava/lang/String;

    return-object v0
.end method

.method public getSongwriter()Ljava/lang/String;
    .locals 1

    .line 1116
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;->songwriter:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1080
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setLyricist(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;
    .locals 0
    .param p1, "lyricist"    # Ljava/lang/String;

    .line 1102
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;->lyricist:Ljava/lang/String;

    .line 1103
    return-object p0
.end method

.method public setPremiumStatus(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;
    .locals 0
    .param p1, "premiumStatus"    # Ljava/lang/String;

    .line 1138
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;->premiumStatus:Ljava/lang/String;

    .line 1139
    return-object p0
.end method

.method public setProducer(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;
    .locals 0
    .param p1, "producer"    # Ljava/lang/String;

    .line 1111
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;->producer:Ljava/lang/String;

    .line 1112
    return-object p0
.end method

.method public setSinger(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;
    .locals 0
    .param p1, "singer"    # Ljava/lang/String;

    .line 1093
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;->singer:Ljava/lang/String;

    .line 1094
    return-object p0
.end method

.method public setSongDuration(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;
    .locals 0
    .param p1, "songDuration"    # Ljava/lang/String;

    .line 1129
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;->songDuration:Ljava/lang/String;

    .line 1130
    return-object p0
.end method

.method public setSongwriter(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;
    .locals 0
    .param p1, "songwriter"    # Ljava/lang/String;

    .line 1120
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;->songwriter:Ljava/lang/String;

    .line 1121
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 1084
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;->title:Ljava/lang/String;

    .line 1085
    return-object p0
.end method
