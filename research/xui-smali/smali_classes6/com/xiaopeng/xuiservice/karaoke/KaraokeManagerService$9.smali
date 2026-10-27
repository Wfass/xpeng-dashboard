.class Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$9;
.super Ljava/lang/Object;
.source "KaraokeManagerService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$AudioStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;
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

    .line 1303
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$9;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onNewAudioStart$0(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$9;Ljava/lang/String;II)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "usage"    # I
    .param p3, "audioSession"    # I

    .line 1308
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$9;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$2100(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$9;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$2200(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/16 v0, 0xe

    const/4 v1, 0x1

    if-eq p2, v0, :cond_0

    if-ne p2, v1, :cond_3

    .line 1310
    :cond_0
    const-string v0, "KaraokeManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNewAudioStart audioSession "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " usage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pkgName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$9;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$9;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    invoke-static {v2, p1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$2300(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$9;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    .line 1312
    invoke-static {v3}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$2200(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$9;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$2100(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 1311
    move v4, v1

    goto :goto_1

    .line 1312
    :cond_2
    nop

    .line 1311
    :goto_1
    invoke-static {v0, v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$2400(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;IZZZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1316
    :cond_3
    goto :goto_2

    .line 1314
    :catch_0
    move-exception v0

    .line 1315
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1317
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method


# virtual methods
.method public onAudioStop(ILjava/lang/String;)V
    .locals 6
    .param p1, "usage"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 1323
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$9;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$2100(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 1324
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$9;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$2200(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/16 v0, 0xe

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_3

    .line 1325
    :cond_0
    const-string v0, "KaraokeManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAudioStop  usage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pkgName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$9;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$9;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$9;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$2100(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)Ljava/util/Stack;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$2300(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$9;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    .line 1327
    invoke-static {v3}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$2200(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$9;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$2100(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 1326
    :cond_2
    move v1, v4

    :goto_1
    invoke-static {v0, v4, v2, v3, v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$2400(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;IZZZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1331
    :cond_3
    goto :goto_2

    .line 1329
    :catch_0
    move-exception v0

    .line 1330
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1332
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public onNewAudioStart(IILjava/lang/String;)V
    .locals 2
    .param p1, "audioSession"    # I
    .param p2, "usage"    # I
    .param p3, "pkgName"    # Ljava/lang/String;

    .line 1306
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/karaoke/-$$Lambda$KaraokeManagerService$9$n0CUNyVvOUGM-GEPMoSShUWojRU;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/xiaopeng/xuiservice/karaoke/-$$Lambda$KaraokeManagerService$9$n0CUNyVvOUGM-GEPMoSShUWojRU;-><init>(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$9;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 1318
    return-void
.end method
