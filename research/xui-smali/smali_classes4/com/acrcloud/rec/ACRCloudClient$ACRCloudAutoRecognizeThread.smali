.class Lcom/acrcloud/rec/ACRCloudClient$ACRCloudAutoRecognizeThread;
.super Ljava/lang/Thread;
.source "ACRCloudClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acrcloud/rec/ACRCloudClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ACRCloudAutoRecognizeThread"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ACRCloudAutoRecognizeThread"


# instance fields
.field private volatile isStop:Z

.field final synthetic this$0:Lcom/acrcloud/rec/ACRCloudClient;


# direct methods
.method public constructor <init>(Lcom/acrcloud/rec/ACRCloudClient;)V
    .locals 1
    .param p1, "this$0"    # Lcom/acrcloud/rec/ACRCloudClient;

    .line 710
    iput-object p1, p0, Lcom/acrcloud/rec/ACRCloudClient$ACRCloudAutoRecognizeThread;->this$0:Lcom/acrcloud/rec/ACRCloudClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 703
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acrcloud/rec/ACRCloudClient$ACRCloudAutoRecognizeThread;->isStop:Z

    .line 711
    invoke-virtual {p0, v0}, Lcom/acrcloud/rec/ACRCloudClient$ACRCloudAutoRecognizeThread;->setDaemon(Z)V

    .line 712
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 706
    const-string v0, "ACRCloudAutoRecognizeThread"

    const-string v1, "auto recognize cancel"

    invoke-static {v0, v1}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acrcloud/rec/ACRCloudClient$ACRCloudAutoRecognizeThread;->isStop:Z

    .line 708
    return-void
.end method

.method public run()V
    .locals 3

    .line 716
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acrcloud/rec/ACRCloudClient$ACRCloudAutoRecognizeThread;->isStop:Z

    .line 718
    :goto_0
    iget-boolean v0, p0, Lcom/acrcloud/rec/ACRCloudClient$ACRCloudAutoRecognizeThread;->isStop:Z

    if-nez v0, :cond_0

    .line 720
    :try_start_0
    iget-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient$ACRCloudAutoRecognizeThread;->this$0:Lcom/acrcloud/rec/ACRCloudClient;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/acrcloud/rec/ACRCloudClient;->access$100(Lcom/acrcloud/rec/ACRCloudClient;ILjava/util/Map;)Z

    .line 721
    const-string v0, "ACRCloudAutoRecognizeThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waiting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/acrcloud/rec/ACRCloudClient$ACRCloudAutoRecognizeThread;->this$0:Lcom/acrcloud/rec/ACRCloudClient;

    invoke-static {v2}, Lcom/acrcloud/rec/ACRCloudClient;->access$200(Lcom/acrcloud/rec/ACRCloudClient;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient$ACRCloudAutoRecognizeThread;->this$0:Lcom/acrcloud/rec/ACRCloudClient;

    invoke-static {v0}, Lcom/acrcloud/rec/ACRCloudClient;->access$200(Lcom/acrcloud/rec/ACRCloudClient;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 723
    :catch_0
    move-exception v0

    .line 724
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 725
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 727
    :cond_0
    return-void
.end method
