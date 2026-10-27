.class Lcom/xiaopeng/xuiservice/smart/SmartRecordService$2;
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

.field final synthetic val$trackData:[B


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartRecordService;[B)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartRecordService;

    .line 199
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartRecordService;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService$2;->val$trackData:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 202
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->access$600()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 204
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->access$700()Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_trackGetLatency()I

    move-result v0

    const/16 v1, 0x4b00

    if-ge v0, v1, :cond_0

    .line 205
    const-string v0, "SmartRecordService"

    const-string/jumbo v1, "xma write trackData..."

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->access$700()Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService$2;->val$trackData:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService$2;->val$trackData:[B

    array-length v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_write([BII)I

    .line 209
    :cond_0
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 212
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 214
    :cond_1
    return-void
.end method
