.class Lcom/xiaopeng/xuiservice/smart/SmartRecordService$3;
.super Ljava/lang/Object;
.source "SmartRecordService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->startRecord()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartRecordService;

.field final synthetic val$recData:[B


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartRecordService;[B)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartRecordService;

    .line 217
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartRecordService;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService$3;->val$recData:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 220
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->access$600()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 222
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->access$700()Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_recGetAvail()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService$3;->val$recData:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 223
    const-string v0, "SmartRecordService"

    const-string/jumbo v1, "xma read recData..."

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->access$700()Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService$3;->val$recData:[B

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_readRec([B)I

    .line 227
    :cond_0
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 230
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 232
    :cond_1
    return-void
.end method
