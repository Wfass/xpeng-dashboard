.class public Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/ConfigurationChangeEvent;
.super Ljava/lang/Object;
.source "ConfigurationChangeEvent.java"


# instance fields
.field private mChangeList:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/IConfigurationData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChangeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/IConfigurationData;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/ConfigurationChangeEvent;->mChangeList:Ljava/util/List;

    return-object v0
.end method

.method public setChangeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/IConfigurationData;",
            ">;)V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/ConfigurationChangeEvent;->mChangeList:Ljava/util/List;

    .line 27
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigurationChangeEvent{list size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/ConfigurationChangeEvent;->mChangeList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/ConfigurationChangeEvent;->mChangeList:Ljava/util/List;

    .line 32
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    return-object v0
.end method
