.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/notification/INotification;
.super Ljava/lang/Object;
.source "INotification.java"


# virtual methods
.method public abstract close(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageId"
        }
    .end annotation
.end method

.method public abstract send(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageStr"
        }
    .end annotation
.end method

.method public abstract setOnNotificationCallback(Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/notification/INotificationCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method
