.class public Lcom/xiaopeng/commonfunc/utils/CarHelper;
.super Ljava/lang/Object;
.source "CarHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CarHelper"

.field private static sCar:Landroid/car/Car;

.field private static final sServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/xiaopeng/commonfunc/utils/CarHelper$1;

    invoke-direct {v0}, Lcom/xiaopeng/commonfunc/utils/CarHelper$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/commonfunc/utils/CarHelper;->sServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deinit()V
    .locals 1

    .line 44
    sget-object v0, Lcom/xiaopeng/commonfunc/utils/CarHelper;->sCar:Landroid/car/Car;

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/xiaopeng/commonfunc/utils/CarHelper;->sCar:Landroid/car/Car;

    invoke-virtual {v0}, Landroid/car/Car;->disconnect()V

    .line 47
    :cond_0
    return-void
.end method

.method public static getCar()Landroid/car/Car;
    .locals 1

    .line 35
    sget-object v0, Lcom/xiaopeng/commonfunc/utils/CarHelper;->sCar:Landroid/car/Car;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 39
    sget-object v0, Lcom/xiaopeng/commonfunc/utils/CarHelper;->sServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {p0, v0}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/car/Car;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/utils/CarHelper;->sCar:Landroid/car/Car;

    .line 40
    sget-object v0, Lcom/xiaopeng/commonfunc/utils/CarHelper;->sCar:Landroid/car/Car;

    invoke-virtual {v0}, Landroid/car/Car;->connect()V

    .line 41
    return-void
.end method
