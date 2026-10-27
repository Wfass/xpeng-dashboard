.class Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer$ResourceManagerServerHolder;
.super Ljava/lang/Object;
.source "ResourceManagerServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourceManagerServerHolder"
.end annotation


# static fields
.field private static instance:Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;-><init>(Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer$ResourceManagerServerHolder;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;
    .locals 1

    .line 50
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer$ResourceManagerServerHolder;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;

    return-object v0
.end method
