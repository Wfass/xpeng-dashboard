.class public interface abstract Lcom/xiaopeng/aicabin/IFindService;
.super Ljava/lang/Object;
.source "IFindService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/aicabin/IFindService$Stub;,
        Lcom/xiaopeng/aicabin/IFindService$Default;
    }
.end annotation


# virtual methods
.method public abstract getPublishService(Lcom/xiaopeng/aicabin/DataReq;)Lcom/xiaopeng/aicabin/DataResp;
.end method

.method public abstract publish(Lcom/xiaopeng/aicabin/DataReq;)Lcom/xiaopeng/aicabin/DataResp;
.end method
