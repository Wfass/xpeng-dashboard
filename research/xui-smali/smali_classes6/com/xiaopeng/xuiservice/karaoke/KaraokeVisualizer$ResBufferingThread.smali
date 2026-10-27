.class public Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer$ResBufferingThread;
.super Ljava/lang/Thread;
.source "KaraokeVisualizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResBufferingThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;

    .line 98
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer$ResBufferingThread;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer$ResBufferingThread;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->access$000(Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    mul-int/lit8 v0, v0, 0x4

    invoke-static {}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->access$100()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x3e8

    .line 102
    .local v0, "size":I
    const-string v1, "KaraokeVisualizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResBufferingThread  size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mSampleRate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer$ResBufferingThread;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->access$000(Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " raptureRate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->access$100()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " capturesize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->access$200()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-array v1, v0, [B

    .line 104
    .local v1, "data":[B
    invoke-static {}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->access$200()I

    move-result v2

    new-array v2, v2, [B

    .line 105
    .local v2, "fft":[B
    const/4 v3, 0x0

    .line 107
    .local v3, "used":I
    const/4 v4, 0x1

    .line 109
    .local v4, "canRead":Z
    :cond_0
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer$ResBufferingThread;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;

    iget-boolean v5, v5, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->bufRunning:Z

    if-eqz v5, :cond_4

    .line 111
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer$ResBufferingThread;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->access$300(Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;)Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v5, :cond_1

    .line 113
    const-wide/16 v5, 0x64

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 114
    goto :goto_0

    .line 115
    :catch_0
    move-exception v5

    .line 118
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v5

    .line 119
    .local v5, "currentTime":J
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer$ResBufferingThread;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;

    invoke-static {v7}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->access$300(Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;)Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->getUsed()I

    move-result v7

    move v3, v7

    .line 120
    const-wide/16 v7, 0xa

    if-ge v3, v0, :cond_2

    .line 122
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 123
    goto :goto_0

    .line 125
    :cond_2
    iget-object v9, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer$ResBufferingThread;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;

    invoke-static {v9}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->access$300(Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;)Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v1, v10, v0}, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->read([BII)I

    move-result v9

    .line 126
    .local v9, "ret":I
    const/4 v10, -0x1

    if-ne v9, v10, :cond_3

    .line 127
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 128
    goto :goto_0

    .line 130
    :cond_3
    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/karaoke/utils/KaraokeAlgorithm;->doFFt([B[B)V

    .line 131
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer$ResBufferingThread;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;

    invoke-static {v7}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->access$400(Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;)Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 132
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer$ResBufferingThread;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;

    invoke-static {v7}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->access$400(Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;)Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v7

    iget-object v8, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer$ResBufferingThread;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;

    invoke-static {v8}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->access$000(Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;)I

    move-result v8

    invoke-virtual {v7, v2, v8}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->karaokeFftCapture([BI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 145
    .end local v5    # "currentTime":J
    .end local v9    # "ret":I
    :cond_4
    goto :goto_1

    .line 143
    :catch_1
    move-exception v5

    .line 144
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "KaraokeVisualizer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ResBufferingThread ERROR:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
