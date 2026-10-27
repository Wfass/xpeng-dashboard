.class Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit$Holder;
.super Ljava/lang/Object;
.source "BiLogTransmit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;-><init>(Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit$Holder;->INSTANCE:Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;
    .locals 1

    .line 17
    sget-object v0, Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit$Holder;->INSTANCE:Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;

    return-object v0
.end method
