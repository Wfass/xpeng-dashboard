.class public interface abstract Lcom/xiaopeng/unity/carcontrol/base/INapaManager;
.super Ljava/lang/Object;
.source "INapaManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L::Lcom/xiaopeng/unity/carcontrol/base/INapaListener;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract enterScene(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation
.end method

.method public abstract exitScene(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation
.end method

.method public abstract init()V
.end method

.method public set_listener(Lcom/xiaopeng/unity/carcontrol/base/INapaListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation

    return-void
.end method
