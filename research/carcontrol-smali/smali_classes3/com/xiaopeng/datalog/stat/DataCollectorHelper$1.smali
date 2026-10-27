.class Lcom/xiaopeng/datalog/stat/DataCollectorHelper$1;
.super Ljava/lang/Object;
.source "DataCollectorHelper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/datalog/stat/DataCollectorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;


# direct methods
.method constructor <init>(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$1;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 78
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const-string v1, "DataCollectorHelper"

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "handleMessage MESSAGE_CHECK_CONNECTION"

    .line 90
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$1;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    invoke-static {p1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->access$200(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    move-result-object p1

    if-nez p1, :cond_3

    .line 92
    iget-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$1;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    invoke-static {p1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->access$300(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)V

    goto :goto_0

    :cond_1
    const-string p1, "handleMessage MESSAGE_DUMP_CDU"

    .line 85
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$1;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    invoke-static {p1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->access$100(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)V

    goto :goto_0

    :cond_2
    const-string p1, "handleMessage MESSAGE_DUMP_CAN"

    .line 80
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$1;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    invoke-static {p1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->access$000(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)V

    :cond_3
    :goto_0
    return v0
.end method
