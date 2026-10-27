.class Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$CarManagerServerHolder;
.super Ljava/lang/Object;
.source "CarManagerServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CarManagerServerHolder"
.end annotation


# static fields
.field private static instance:Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;-><init>(Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$CarManagerServerHolder;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;
    .locals 1

    .line 54
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$CarManagerServerHolder;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;

    return-object v0
.end method
