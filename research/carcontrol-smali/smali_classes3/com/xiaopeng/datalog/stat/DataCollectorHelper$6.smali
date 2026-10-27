.class Lcom/xiaopeng/datalog/stat/DataCollectorHelper$6;
.super Ljava/lang/Object;
.source "DataCollectorHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->uploadCduWithFiles(Lcom/xiaopeng/datalog/StatEvent;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

.field final synthetic val$filePaths:Ljava/util/List;

.field final synthetic val$statEvent:Lcom/xiaopeng/datalog/StatEvent;

.field final synthetic val$uploadInfos:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;[Ljava/lang/String;Ljava/util/List;Lcom/xiaopeng/datalog/StatEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$statEvent",
            "val$filePaths",
            "val$uploadInfos"
        }
    .end annotation

    .line 353
    iput-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$6;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    iput-object p2, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$6;->val$uploadInfos:[Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$6;->val$filePaths:Ljava/util/List;

    iput-object p4, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$6;->val$statEvent:Lcom/xiaopeng/datalog/StatEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 356
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$6;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$6;->val$uploadInfos:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v3, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$6;->val$filePaths:Ljava/util/List;

    invoke-static {v0, v1, v3}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->access$600(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;Ljava/lang/String;Ljava/util/List;)V

    .line 357
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$6;->val$statEvent:Lcom/xiaopeng/datalog/StatEvent;

    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$6;->val$uploadInfos:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    const-string v3, "address"

    invoke-virtual {v0, v3, v1}, Lcom/xiaopeng/datalog/StatEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$6;->val$statEvent:Lcom/xiaopeng/datalog/StatEvent;

    invoke-virtual {v0}, Lcom/xiaopeng/datalog/StatEvent;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 361
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 362
    iget-object v3, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$6;->val$uploadInfos:[Ljava/lang/String;

    aget-object v2, v3, v2

    const-string v3, ".zip"

    const-string v4, "_en.zip"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    iget-object v2, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$6;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->uploadCdu(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$6;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->uploadFiles(Ljava/util/List;)V

    return-void
.end method
