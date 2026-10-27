.class Lcom/xiaopeng/xuiservice/smart/SmartBootService$3;
.super Ljava/lang/Object;
.source "SmartBootService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$AudioStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartBootService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    .line 290
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewAudioStart(IILjava/lang/String;)V
    .locals 4
    .param p1, "audioSession"    # I
    .param p2, "usage"    # I
    .param p3, "pkgName"    # Ljava/lang/String;

    .line 293
    const-string v0, "SmartBootService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewAudioStart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$500()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$600()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 295
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$700()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$800(Lcom/xiaopeng/xuiservice/smart/SmartBootService;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$900()Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 297
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$900()Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->stop()V

    .line 298
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$702(Z)Z

    .line 299
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$1000(Lcom/xiaopeng/xuiservice/smart/SmartBootService;Z)V

    .line 300
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$1100(Lcom/xiaopeng/xuiservice/smart/SmartBootService;IJ)V

    .line 303
    :cond_1
    return-void
.end method
