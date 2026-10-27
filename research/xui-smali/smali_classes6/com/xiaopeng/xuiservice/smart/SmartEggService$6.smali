.class Lcom/xiaopeng/xuiservice/smart/SmartEggService$6;
.super Ljava/lang/Object;
.source "SmartEggService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

    .line 273
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "paramMediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "paramInt1"    # I
    .param p3, "paramInt2"    # I

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->access$1200(Lcom/xiaopeng/xuiservice/smart/SmartEggService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->access$1200(Lcom/xiaopeng/xuiservice/smart/SmartEggService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->access$1100(Lcom/xiaopeng/xuiservice/smart/SmartEggService;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 279
    const/4 v0, 0x0

    return v0
.end method
