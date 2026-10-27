.class Lcom/xiaopeng/datalog/stat/DataCollectorHelper$7$1;
.super Ljava/lang/Object;
.source "DataCollectorHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/datalog/stat/DataCollectorHelper$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/datalog/stat/DataCollectorHelper$7;


# direct methods
.method constructor <init>(Lcom/xiaopeng/datalog/stat/DataCollectorHelper$7;)V
    .locals 0

    .line 583
    iput-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$7$1;->this$1:Lcom/xiaopeng/datalog/stat/DataCollectorHelper$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 586
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$7$1;->this$1:Lcom/xiaopeng/datalog/stat/DataCollectorHelper$7;

    iget-object v0, v0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$7;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$7$1;->this$1:Lcom/xiaopeng/datalog/stat/DataCollectorHelper$7;

    iget-object v1, v1, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$7;->val$remoteUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->internalUploadRecentSystemLog(Ljava/lang/String;)V

    return-void
.end method
