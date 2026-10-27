.class Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager$MituWatchManagerHolder;
.super Ljava/lang/Object;
.source "MituWatchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MituWatchManagerHolder"
.end annotation


# static fields
.field private static final instance:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager$MituWatchManagerHolder;->instance:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;
    .locals 1

    .line 44
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager$MituWatchManagerHolder;->instance:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchManager;

    return-object v0
.end method
