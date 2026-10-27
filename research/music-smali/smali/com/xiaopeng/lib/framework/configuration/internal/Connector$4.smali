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

    .line 139
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$4;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/lib/framework/configuration/ConfigurationDataImpl;",
            ">;)V"
        }
    .end annotation

    .line 142
    new-instance v0, Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/ConfigurationChangeEvent;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/ConfigurationChangeEvent;-><init>()V

    if-eqz p1, :cond_0

    .line 145
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 146
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 148
    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/ConfigurationChangeEvent;->setChangeList(Ljava/util/List;)V

    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged event:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Connector"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
