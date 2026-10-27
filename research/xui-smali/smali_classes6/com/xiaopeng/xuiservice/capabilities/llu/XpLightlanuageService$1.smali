.class Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$1;
.super Ljava/lang/Object;
.source "XpLightlanuageService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->playRhythmEffect(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

.field final synthetic val$ratio:F


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    .line 1110
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    iput p2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$1;->val$ratio:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1113
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->access$1300(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;)Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;->get()Landroid/util/Pair;

    move-result-object v0

    .line 1115
    .local v0, "data":Landroid/util/Pair;
    const-string v1, "XpLightlanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rhythmEffect name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->access$1300(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;)Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;->access$1400(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ratio="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$1;->val$ratio:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", fdata="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", rdata="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->access$500(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;ZLandroid/util/Pair;Z)V

    .line 1120
    return-void
.end method
