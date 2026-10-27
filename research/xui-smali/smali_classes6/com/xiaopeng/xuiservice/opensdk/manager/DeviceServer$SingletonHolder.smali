.class Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer$SingletonHolder;
.super Ljava/lang/Object;
.source "DeviceServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer;-><init>(Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer;
    .locals 1

    .line 36
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer;

    return-object v0
.end method
