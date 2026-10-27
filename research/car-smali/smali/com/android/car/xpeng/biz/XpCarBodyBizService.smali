.class public Lcom/android/car/xpeng/biz/XpCarBodyBizService;
.super Lcom/android/car/xpeng/biz/BizServiceBase;
.source "XpCarBodyBizService.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "XpCarBodyControlService"


# instance fields
.field private final mTrunkSwitch:Lcom/android/car/xpeng/biz/CarBizTaskBase;


# direct methods
.method public constructor <init>(Lcom/android/car/hal/PropertyHalService;Lcom/android/car/xpeng/biz/XpCarBizProxy;)V
    .locals 1
    .param p1, "hal"    # Lcom/android/car/hal/PropertyHalService;
    .param p2, "bizProxy"    # Lcom/android/car/xpeng/biz/XpCarBizProxy;

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/car/xpeng/biz/BizServiceBase;-><init>(Lcom/android/car/hal/PropertyHalService;Lcom/android/car/xpeng/biz/XpCarBizProxy;)V

    .line 39
    new-instance v0, Lcom/android/car/xpeng/biz/XpCarBodyBizService$1;

    invoke-direct {v0, p0}, Lcom/android/car/xpeng/biz/XpCarBodyBizService$1;-><init>(Lcom/android/car/xpeng/biz/XpCarBodyBizService;)V

    iput-object v0, p0, Lcom/android/car/xpeng/biz/XpCarBodyBizService;->mTrunkSwitch:Lcom/android/car/xpeng/biz/CarBizTaskBase;

    .line 26
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 37
    return-void
.end method

.method public getCarBizTasks()[Lcom/android/car/xpeng/biz/CarBizTaskBase;
    .locals 3

    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/car/xpeng/biz/CarBizTaskBase;

    iget-object v1, p0, Lcom/android/car/xpeng/biz/XpCarBodyBizService;->mTrunkSwitch:Lcom/android/car/xpeng/biz/CarBizTaskBase;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method
