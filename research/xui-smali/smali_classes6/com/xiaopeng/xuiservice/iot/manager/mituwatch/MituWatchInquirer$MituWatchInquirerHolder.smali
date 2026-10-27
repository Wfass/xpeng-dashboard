.class Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituWatchInquirerHolder;
.super Ljava/lang/Object;
.source "MituWatchInquirer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MituWatchInquirerHolder"
.end annotation


# static fields
.field private static final instance:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 276
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituWatchInquirerHolder;->instance:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1300()Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;
    .locals 1

    .line 275
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituWatchInquirerHolder;->instance:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    return-object v0
.end method
