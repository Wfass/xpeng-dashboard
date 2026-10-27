.class public Lcom/xiaopeng/aicabin/IFindService$Default;
.super Ljava/lang/Object;
.source "IFindService.java"

# interfaces
.implements Lcom/xiaopeng/aicabin/IFindService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aicabin/IFindService;
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

.method public getPublishService(Lcom/xiaopeng/aicabin/DataReq;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public publish(Lcom/xiaopeng/aicabin/DataReq;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
