.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;
.super Ljava/lang/Object;
.source "IDataLog.java"


# virtual methods
.method public abstract buildMoleEvent()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;
.end method

.method public abstract buildStat()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract counterFactory()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/ICounterFactory;
.end method

.method public abstract sendCanData(Ljava/lang/String;)V
.end method

.method public abstract sendFiles(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendRecentSystemLog()Ljava/lang/String;
.end method

.method public abstract sendStatData(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;)V
.end method

.method public abstract sendStatData(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract sendStatData(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendStatData(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sendStatOriginData(Ljava/lang/String;Ljava/lang/String;)V
.end method
