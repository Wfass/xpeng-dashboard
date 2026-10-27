.class Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$2;
.super Ljava/lang/Object;
.source "KaraokeManagerService.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    .line 185
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$2;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestAmbientLight(Z)V
    .locals 8
    .param p1, "apply"    # Z

    .line 188
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestAmbientLight apply="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$2;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->XMS_isAtlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-static {}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$100()Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    move-result-object v0

    const-string v1, "all"

    new-instance v2, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;

    const-string v3, "karaoke_rhythm"

    invoke-direct {v2, v3}, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x3

    const/4 v4, 0x0

    new-array v4, v4, [I

    const/4 v5, -0x1

    const/16 v6, 0xc

    const/16 v7, 0xbb8

    .line 193
    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;->setSequence(I[IIII)Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;

    move-result-object v2

    const/4 v3, -0x1

    .line 194
    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;->setCount(I)Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;

    move-result-object v2

    .line 195
    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;->setRhythm()Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;

    move-result-object v2

    .line 196
    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;->build()Lcom/xiaopeng/xuimanager/ambient/AmbientEffect;

    move-result-object v2

    .line 191
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->playAmbientLightEffect(Ljava/lang/String;Lcom/xiaopeng/xuimanager/ambient/AmbientEffect;)I

    move-result v0

    .line 198
    .local v0, "ret":I
    const-string v1, "KaraokeManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playAmbientLightEffect ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "ret":I
    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KaraokeManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRequestAmbientLight exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 202
    :cond_0
    :goto_0
    nop

    .line 203
    :goto_1
    return-void
.end method
