.class Lcom/xiaopeng/xuimanager/systemui/carcheck/CarCheckManager$Holder;
.super Ljava/lang/Object;
.source "CarCheckManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/systemui/carcheck/CarCheckManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/xuimanager/systemui/carcheck/CarCheckManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Lcom/xiaopeng/xuimanager/systemui/carcheck/CarCheckManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/systemui/carcheck/CarCheckManager;-><init>(Lcom/xiaopeng/xuimanager/systemui/carcheck/CarCheckManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuimanager/systemui/carcheck/CarCheckManager$Holder;->sInstance:Lcom/xiaopeng/xuimanager/systemui/carcheck/CarCheckManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuimanager/systemui/carcheck/CarCheckManager;
    .locals 1

    .line 54
    sget-object v0, Lcom/xiaopeng/xuimanager/systemui/carcheck/CarCheckManager$Holder;->sInstance:Lcom/xiaopeng/xuimanager/systemui/carcheck/CarCheckManager;

    return-object v0
.end method
