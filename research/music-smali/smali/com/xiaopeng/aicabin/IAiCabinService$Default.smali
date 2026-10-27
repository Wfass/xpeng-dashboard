.class public Lcom/xiaopeng/aicabin/IAiCabinService$Default;
.super Ljava/lang/Object;
.source "IAiCabinService.java"

# interfaces
.implements Lcom/xiaopeng/aicabin/IAiCabinService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aicabin/IAiCabinService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public cancel(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public registerEventListener(ILcom/xiaopeng/aicabin/event/IEventListener;Z)V
    .locals 0

    return-void
.end method

.method public transact(Ljava/lang/String;Lcom/xiaopeng/aicabin/DataReq;Lcom/xiaopeng/aicabin/logic/ILogicListener;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public transactSync(Ljava/lang/String;Lcom/xiaopeng/aicabin/DataReq;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public unregisterEventListener(ILcom/xiaopeng/aicabin/event/IEventListener;)V
    .locals 0

    return-void
.end method
