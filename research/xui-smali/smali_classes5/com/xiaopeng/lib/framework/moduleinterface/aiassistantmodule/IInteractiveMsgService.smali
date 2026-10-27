.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/IInteractiveMsgService;
.super Ljava/lang/Object;
.source "IInteractiveMsgService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/IInteractiveMsgService$SpeakEndEvent;,
        Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/IInteractiveMsgService$InteractiveMsgEvent;
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract interactiveMsgBuilder()Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/IInteractiveMsgBuilder;
.end method

.method public abstract sendMessage(Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/IInteractiveMsg;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation
.end method

.method public abstract shutup(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation
.end method

.method public abstract speak(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "id"
        }
    .end annotation
.end method
