.class Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampSmartControl$Holder;
.super Ljava/lang/Object;
.source "LampSmartControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampSmartControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static sInstance:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampSmartControl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampSmartControl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampSmartControl;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampSmartControl$1;)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampSmartControl$Holder;->sInstance:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampSmartControl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampSmartControl;
    .locals 1

    .line 14
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampSmartControl$Holder;->sInstance:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampSmartControl;

    return-object v0
.end method
