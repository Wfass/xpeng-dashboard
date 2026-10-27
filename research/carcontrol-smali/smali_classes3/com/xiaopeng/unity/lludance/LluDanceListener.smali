.class public interface abstract Lcom/xiaopeng/unity/lludance/LluDanceListener;
.super Ljava/lang/Object;
.source "LluDanceListener.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/base/INapaListener;


# virtual methods
.method public abstract onAlarmTriggered(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation
.end method

.method public abstract onDanceBreak(Ljava/lang/Boolean;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "danceBreak"
        }
    .end annotation
.end method

.method public abstract onIgStateChange(Ljava/lang/Integer;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "igState"
        }
    .end annotation
.end method

.method public abstract onLluDanceDataChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lluDanceViewData"
        }
    .end annotation
.end method

.method public abstract onXuiManagerNotify(Ljava/lang/Boolean;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playState"
        }
    .end annotation
.end method
