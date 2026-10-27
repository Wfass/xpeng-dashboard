.class public interface abstract Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController;
.super Ljava/lang/Object;
.source "IBaseCarController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DRIVER_ZONE_ID:I = 0x1

.field public static final PASSENGER_ZONE_ID:I = 0x2


# virtual methods
.method public varargs abstract registerBusiness([Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keys"
        }
    .end annotation
.end method

.method public abstract registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public varargs abstract unregisterBusiness([Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keys"
        }
    .end annotation
.end method

.method public abstract unregisterCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
