.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICcsController;
.super Ljava/lang/Object;
.source "ICcsController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ILifeCycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICcsController$CcsFaultInfoEventMsg;
    }
.end annotation


# virtual methods
.method public abstract getCcsFaultInfo()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
