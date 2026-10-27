.class Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2$1;
.super Ljava/lang/Object;
.source "DataCollectorHelper.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2;


# direct methods
.method constructor <init>(Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2$1;->this$1:Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2$1;->this$1:Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2;

    iget-object v0, v0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    invoke-static {v0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->access$200(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 111
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2$1;->this$1:Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2;

    iget-object v0, v0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    invoke-static {v0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->access$200(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2$1;->this$1:Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2;

    iget-object v0, v0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->access$202(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;)Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2$1;->this$1:Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2;

    iget-object v0, v0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    invoke-static {v0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->access$300(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)V

    .line 116
    return-void
.end method
