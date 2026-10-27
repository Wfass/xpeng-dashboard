.class Lcom/xiaopeng/datalog/stat/DataCollectorHelper$6;
.super Ljava/lang/Object;
.source "DataCollectorHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->uploadRecentSystemLog()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

.field final synthetic val$remoteUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;Ljava/lang/String;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$6;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    iput-object p2, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$6;->val$remoteUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 565
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$6;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    invoke-virtual {v0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$6;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$6;->val$remoteUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->internalUploadRecentSystemLog(Ljava/lang/String;)V

    goto :goto_0

    .line 569
    :cond_0
    new-instance v0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$6$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$6$1;-><init>(Lcom/xiaopeng/datalog/stat/DataCollectorHelper$6;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;J)V

    .line 577
    :goto_0
    return-void
.end method
