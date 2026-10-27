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

    .line 74
    iput-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$1;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 77
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 89
    :pswitch_0
    const-string p1, "DataCollectorHelper"

    const-string v0, "handleMessage MESSAGE_CHECK_CONNECTION"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$1;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    invoke-static {p1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->access$200(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    move-result-object p1

    if-nez p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$1;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    invoke-static {p1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->access$300(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)V

    goto :goto_0

    .line 84
    :pswitch_1
    const-string p1, "DataCollectorHelper"

    const-string v0, "handleMessage MESSAGE_DUMP_CDU"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$1;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    invoke-static {p1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->access$100(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)V

    .line 86
    goto :goto_0

    .line 79
    :pswitch_2
    const-string p1, "DataCollectorHelper"

    const-string v0, "handleMessage MESSAGE_DUMP_CAN"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$1;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    invoke-static {p1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->access$000(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)V

    .line 81
    nop

    .line 98
    :cond_0
    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
