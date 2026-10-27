.class public interface abstract Lcom/xiaopeng/lib/bughunter/anr/Collector;
.super Ljava/lang/Object;
.source "Collector.java"


# virtual methods
.method public abstract add([Ljava/lang/StackTraceElement;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stackTrace"
        }
    .end annotation
.end method

.method public abstract getStackTraceInfo()[[Ljava/lang/StackTraceElement;
.end method

.method public abstract getStackTraceRepeats()[I
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
