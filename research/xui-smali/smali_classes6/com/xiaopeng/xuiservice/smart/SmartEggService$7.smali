.class Lcom/xiaopeng/xuiservice/smart/SmartEggService$7;
.super Ljava/lang/Object;
.source "SmartEggService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartEggService;->playSurpriseSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartEggService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartEggService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    .line 282
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService$7;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 285
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService$7;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->access$1200(Lcom/xiaopeng/xuiservice/smart/SmartEggService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 286
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService$7;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->access$1200(Lcom/xiaopeng/xuiservice/smart/SmartEggService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 287
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService$7;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->access$1100(Lcom/xiaopeng/xuiservice/smart/SmartEggService;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService$7;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->access$1300(Lcom/xiaopeng/xuiservice/smart/SmartEggService;)Lcom/xiaopeng/xuimanager/smart/SmartManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->setFftLLUEnable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService$7;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->handleException(Ljava/lang/Exception;)V

    .line 293
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
