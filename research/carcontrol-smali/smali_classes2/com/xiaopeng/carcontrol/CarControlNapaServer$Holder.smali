.class Lcom/xiaopeng/carcontrol/CarControlNapaServer$Holder;
.super Ljava/lang/Object;
.source "CarControlNapaServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/CarControlNapaServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/carcontrol/CarControlNapaServer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 101
    new-instance v0, Lcom/xiaopeng/carcontrol/CarControlNapaServer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/CarControlNapaServer;-><init>(Lcom/xiaopeng/carcontrol/CarControlNapaServer$1;)V

    sput-object v0, Lcom/xiaopeng/carcontrol/CarControlNapaServer$Holder;->INSTANCE:Lcom/xiaopeng/carcontrol/CarControlNapaServer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/carcontrol/CarControlNapaServer;
    .locals 1

    .line 100
    sget-object v0, Lcom/xiaopeng/carcontrol/CarControlNapaServer$Holder;->INSTANCE:Lcom/xiaopeng/carcontrol/CarControlNapaServer;

    return-object v0
.end method
