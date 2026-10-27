.class public interface abstract Lcom/xiaopeng/aicabin/IAiCabinService;
.super Ljava/lang/Object;
.source "IAiCabinService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/aicabin/IAiCabinService$Stub;,
        Lcom/xiaopeng/aicabin/IAiCabinService$Default;
    }
.end annotation


# virtual methods
.method public abstract cancel(Ljava/lang/String;)V
.end method

.method public abstract registerEventListener(ILcom/xiaopeng/aicabin/event/IEventListener;Z)V
.end method

.method public abstract transact(Ljava/lang/String;Lcom/xiaopeng/aicabin/DataReq;Lcom/xiaopeng/aicabin/logic/ILogicListener;)Ljava/lang/String;
.end method

.method public abstract transactSync(Ljava/lang/String;Lcom/xiaopeng/aicabin/DataReq;)Lcom/xiaopeng/aicabin/DataResp;
.end method

.method public abstract unregisterEventListener(ILcom/xiaopeng/aicabin/event/IEventListener;)V
.end method
