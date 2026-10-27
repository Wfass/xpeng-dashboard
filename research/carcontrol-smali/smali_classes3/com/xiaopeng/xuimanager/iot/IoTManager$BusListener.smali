.class Lcom/xiaopeng/xuimanager/iot/IoTManager$BusListener;
.super Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener$Stub;
.source "IoTManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/iot/IoTManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BusListener"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaopeng/xuimanager/iot/IoTManager;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuimanager/iot/IoTManager;)V
    .locals 1

    .line 186
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager$BusListener;->this$0:Lcom/xiaopeng/xuimanager/iot/IoTManager;

    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener$Stub;-><init>()V

    .line 187
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaopeng/xuimanager/iot/IoTManager;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-class v0, Lcom/xiaopeng/xuimanager/iot/IoTManager$BusListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager$BusListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/iot/IoTManager;Lcom/xiaopeng/xuimanager/iot/IoTManager$1;)V
    .locals 0

    .line 186
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/iot/IoTManager$BusListener;-><init>(Lcom/xiaopeng/xuimanager/iot/IoTManager;)V

    return-void
.end method


# virtual methods
.method public onPipeBusEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager$BusListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPipeBusEvent,module="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",types="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",events[0]="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz p3, :cond_0

    const/4 v1, 0x0

    .line 191
    aget-object v1, p3, v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    .line 190
    invoke-static {v1, v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager$BusListener;->this$0:Lcom/xiaopeng/xuimanager/iot/IoTManager;

    invoke-static {p1, p2, p3}, Lcom/xiaopeng/xuimanager/iot/IoTManager;->access$700(Lcom/xiaopeng/xuimanager/iot/IoTManager;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public onPipeBusParcelEvent(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)V
    .locals 2

    .line 198
    iget-object p3, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager$BusListener;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not implemented,onPipeBusBytesEvent,module:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ",types"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
