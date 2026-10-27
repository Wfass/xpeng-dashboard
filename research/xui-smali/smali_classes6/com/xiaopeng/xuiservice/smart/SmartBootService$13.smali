.class Lcom/xiaopeng/xuiservice/smart/SmartBootService$13;
.super Ljava/lang/Object;
.source "SmartBootService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartBootService;->doSurroundWelcomeSoundEffect(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

.field final synthetic val$needNotifyComplete:Z


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    .line 972
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    iput-boolean p2, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$13;->val$needNotifyComplete:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 976
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$702(Z)Z

    .line 977
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$302(Z)Z

    .line 978
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$1000(Lcom/xiaopeng/xuiservice/smart/SmartBootService;Z)V

    .line 979
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$900()Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 980
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$900()Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->onCompletion()V

    .line 981
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$3600(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 982
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$13;->val$needNotifyComplete:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$1100(Lcom/xiaopeng/xuiservice/smart/SmartBootService;IJ)V

    .line 983
    :cond_1
    return-void
.end method
