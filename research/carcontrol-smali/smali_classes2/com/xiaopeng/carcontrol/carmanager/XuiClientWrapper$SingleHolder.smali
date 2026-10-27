.class Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper$SingleHolder;
.super Ljava/lang/Object;
.source "XuiClientWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 222
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;-><init>()V

    sput-object v0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper$SingleHolder;->sInstance:Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;
    .locals 1

    .line 221
    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper$SingleHolder;->sInstance:Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;

    return-object v0
.end method
