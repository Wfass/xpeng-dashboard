.class Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl$SingleHolder;
.super Ljava/lang/Object;
.source "VcuSmartControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleHolder"
.end annotation


# static fields
.field private static sInstance:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;-><init>()V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl$SingleHolder;->sInstance:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;
    .locals 1

    .line 41
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl$SingleHolder;->sInstance:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;

    return-object v0
.end method
