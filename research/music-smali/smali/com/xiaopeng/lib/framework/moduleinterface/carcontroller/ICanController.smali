.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICanController;
.super Ljava/lang/Object;
.source "ICanController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ILifeCycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICanController$CanDiagnoseEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICanController$CanRawDataEventMsg;
    }
.end annotation


# virtual methods
.method public abstract getCanRawData()[B
.end method

.method public abstract sendCanDataSync()V
.end method

.method public abstract setAdasMeta([B)V
.end method

.method public abstract setAdasPosition([B)V
.end method

.method public abstract setAdasProfLong([B)V
.end method

.method public abstract setAdasProfShort([B)V
.end method

.method public abstract setAdasSegment([B)V
.end method

.method public abstract setAdasStub([B)V
.end method
