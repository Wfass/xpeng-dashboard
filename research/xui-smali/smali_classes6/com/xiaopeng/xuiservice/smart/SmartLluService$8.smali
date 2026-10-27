.class Lcom/xiaopeng/xuiservice/smart/SmartLluService$8;
.super Ljava/lang/Object;
.source "SmartLluService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartLluService;->preloadAndPlay(Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

.field final synthetic val$dance_name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartLluService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    .line 1316
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$8;->val$dance_name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 1320
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$1600(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$1610(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)I

    .line 1322
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$1600(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1323
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->stopLightDancing()I

    goto :goto_0

    .line 1325
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$8;->val$dance_name:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$1700(Lcom/xiaopeng/xuiservice/smart/SmartLluService;ILcom/xiaopeng/xuiservice/smart/LangLightEffect;Ljava/lang/String;)V

    .line 1327
    :goto_0
    return-void
.end method
