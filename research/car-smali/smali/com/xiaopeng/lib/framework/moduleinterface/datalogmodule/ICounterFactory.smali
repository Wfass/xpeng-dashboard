.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/ICounterFactory;
.super Ljava/lang/Object;
.source "ICounterFactory.java"


# virtual methods
.method public abstract createDailyCounter(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/ICounter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "name"
        }
    .end annotation
.end method

.method public abstract createHourlyCounter(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/ICounter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "name"
        }
    .end annotation
.end method
