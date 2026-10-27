.class public Lcom/xiaopeng/commonfunc/utils/c;
.super Ljava/lang/Object;
.source "CarHelper.java"


# static fields
.field private static final oY:Landroid/content/ServiceConnection;

.field private static oZ:Landroid/car/Car;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/xiaopeng/commonfunc/utils/c$1;

    invoke-direct {v0}, Lcom/xiaopeng/commonfunc/utils/c$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/commonfunc/utils/c;->oY:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static dN()V
    .locals 1

    .line 44
    sget-object v0, Lcom/xiaopeng/commonfunc/utils/c;->oZ:Landroid/car/Car;

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/xiaopeng/commonfunc/utils/c;->oZ:Landroid/car/Car;

    invoke-virtual {v0}, Landroid/car/Car;->disconnect()V

    .line 47
    :cond_0
    return-void
.end method

.method public static eo()Landroid/car/Car;
    .locals 1

    .line 35
    sget-object v0, Lcom/xiaopeng/commonfunc/utils/c;->oZ:Landroid/car/Car;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 39
    sget-object v0, Lcom/xiaopeng/commonfunc/utils/c;->oY:Landroid/content/ServiceConnection;

    invoke-static {p0, v0}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/car/Car;

    move-result-object p0

    sput-object p0, Lcom/xiaopeng/commonfunc/utils/c;->oZ:Landroid/car/Car;

    .line 40
    sget-object p0, Lcom/xiaopeng/commonfunc/utils/c;->oZ:Landroid/car/Car;

    invoke-virtual {p0}, Landroid/car/Car;->connect()V

    .line 41
    return-void
.end method
