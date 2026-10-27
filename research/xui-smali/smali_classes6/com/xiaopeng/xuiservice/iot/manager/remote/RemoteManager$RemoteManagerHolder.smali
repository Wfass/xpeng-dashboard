.class Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$RemoteManagerHolder;
.super Ljava/lang/Object;
.source "RemoteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteManagerHolder"
.end annotation


# static fields
.field private static final instance:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 566
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$RemoteManagerHolder;->instance:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2000()Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;
    .locals 1

    .line 565
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$RemoteManagerHolder;->instance:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    return-object v0
.end method
