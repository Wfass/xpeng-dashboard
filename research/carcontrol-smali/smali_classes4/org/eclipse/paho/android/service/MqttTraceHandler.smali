.class public interface abstract Lorg/eclipse/paho/android/service/MqttTraceHandler;
.super Ljava/lang/Object;
.source "MqttTraceHandler.java"


# virtual methods
.method public abstract traceDebug(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation
.end method

.method public abstract traceError(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation
.end method

.method public abstract traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "e"
        }
    .end annotation
.end method
