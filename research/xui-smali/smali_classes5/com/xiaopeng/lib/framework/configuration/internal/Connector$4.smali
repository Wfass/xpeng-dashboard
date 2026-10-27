.class Lcom/xiaopeng/lib/framework/configuration/internal/Connector$4;
.super Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceCallback$Stub;
.source "Connector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/configuration/internal/Connector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    .line 134
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$4;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/lib/framework/configuration/ConfigurationDataImpl;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/lib/framework/configuration/ConfigurationDataImpl;>;"
    new-instance v0, Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/ConfigurationChangeEvent;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/ConfigurationChangeEvent;-><init>()V

    .line 138
    .local v0, "event":Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/ConfigurationChangeEvent;
    const/4 v1, 0x0

    .line 139
    .local v1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/IConfigurationData;>;"
    if-eqz p1, :cond_0

    .line 140
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v2

    .line 141
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 143
    :cond_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/ConfigurationChangeEvent;->setChangeList(Ljava/util/List;)V

    .line 144
    const-string v2, "Connector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConfigurationChanged event:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 146
    return-void
.end method
