.class Lcom/xiaopeng/xuiservice/xapp/karaoke/handler/ThunderKaraokeHandler$1;
.super Ljava/lang/Object;
.source "ThunderKaraokeHandler.java"

# interfaces
.implements Lcom/thunder/voiceinterface/OnVoiceBindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/karaoke/handler/ThunderKaraokeHandler;->searchSong(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/karaoke/handler/ThunderKaraokeHandler;

.field final synthetic val$artist:Ljava/lang/String;

.field final synthetic val$song:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/karaoke/handler/ThunderKaraokeHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/karaoke/handler/ThunderKaraokeHandler;

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/karaoke/handler/ThunderKaraokeHandler$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/karaoke/handler/ThunderKaraokeHandler;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/karaoke/handler/ThunderKaraokeHandler$1;->val$artist:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/xapp/karaoke/handler/ThunderKaraokeHandler$1;->val$song:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindCompleted()V
    .locals 3

    .line 25
    invoke-static {}, Lcom/thunder/voiceinterface/VoiceServiceManager;->getInstance()Lcom/thunder/voiceinterface/VoiceServiceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/karaoke/handler/ThunderKaraokeHandler$1;->val$artist:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/karaoke/handler/ThunderKaraokeHandler$1;->val$song:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/thunder/voiceinterface/VoiceServiceManager;->searchSong(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method
