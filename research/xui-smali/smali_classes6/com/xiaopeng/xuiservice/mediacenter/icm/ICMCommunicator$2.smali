.class Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator$2;
.super Ljava/lang/Object;
.source "ICMCommunicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;->sendLyricsMessage(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;

.field final synthetic val$info:Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator$2;->val$info:Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;->access$000(Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;)Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator$2;->val$info:Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMHandler;->sendLyricsMessage(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V

    .line 42
    return-void
.end method
