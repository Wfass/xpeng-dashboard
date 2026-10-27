.class Lcom/xiaopeng/xuiservice/smart/SmartBootService$15;
.super Ljava/lang/Object;
.source "SmartBootService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartBootService;->setAndRecoveryFixedVolume(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    .line 1028
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$15;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    iput-boolean p2, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$15;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1031
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$15;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$3600(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)Landroid/media/AudioManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$15;->val$enable:Z

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->setSoftTypeVolumeMute(IZ)V

    .line 1032
    return-void
.end method
