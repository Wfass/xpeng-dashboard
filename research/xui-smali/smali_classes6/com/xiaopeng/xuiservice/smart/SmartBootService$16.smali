.class Lcom/xiaopeng/xuiservice/smart/SmartBootService$16;
.super Ljava/lang/Object;
.source "SmartBootService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartBootService;->notifySoundDuration(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

.field final synthetic val$duration:J

.field final synthetic val$soundId:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;IJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    .line 1075
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$16;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    iput p2, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$16;->val$soundId:I

    iput-wide p3, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$16;->val$duration:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1079
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$16;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    iget v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$16;->val$soundId:I

    iget-wide v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$16;->val$duration:J

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$1100(Lcom/xiaopeng/xuiservice/smart/SmartBootService;IJ)V

    .line 1080
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$702(Z)Z

    .line 1081
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$16;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$1000(Lcom/xiaopeng/xuiservice/smart/SmartBootService;Z)V

    .line 1082
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$16;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$3600(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1083
    return-void
.end method
