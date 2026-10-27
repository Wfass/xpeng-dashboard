.class Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper$SingleHolder;
.super Ljava/lang/Object;
.source "CarClientWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 175
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;-><init>()V

    sput-object v0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper$SingleHolder;->sInstance:Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;
    .locals 1

    .line 174
    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper$SingleHolder;->sInstance:Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    return-object v0
.end method
