.class Lcom/xiaopeng/datalog/stat/StatMqttDelegate$1;
.super Ljava/lang/Object;
.source "StatMqttDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->uploadCdu(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/datalog/stat/StatMqttDelegate;

.field final synthetic val$event:Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;


# direct methods
.method constructor <init>(Lcom/xiaopeng/datalog/stat/StatMqttDelegate;Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/datalog/stat/StatMqttDelegate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$event"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate$1;->this$0:Lcom/xiaopeng/datalog/stat/StatMqttDelegate;

    iput-object p2, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate$1;->val$event:Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 51
    const-string v0, "StatMqttDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uploadCdu stat:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate$1;->val$event:Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate$1;->this$0:Lcom/xiaopeng/datalog/stat/StatMqttDelegate;

    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate$1;->val$event:Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;

    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->access$000(Lcom/xiaopeng/datalog/stat/StatMqttDelegate;Ljava/lang/String;)V

    .line 53
    return-void
.end method
