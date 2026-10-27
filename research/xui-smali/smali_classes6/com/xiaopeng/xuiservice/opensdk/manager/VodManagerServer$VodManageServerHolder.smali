.class Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$VodManageServerHolder;
.super Ljava/lang/Object;
.source "VodManagerServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VodManageServerHolder"
.end annotation


# static fields
.field private static final instance:Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 76
    new-instance v0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;-><init>(Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$VodManageServerHolder;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;
    .locals 1

    .line 75
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$VodManageServerHolder;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

    return-object v0
.end method
