.class Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasSmartControl$SingleHolder;
.super Ljava/lang/Object;
.source "AvasSmartControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasSmartControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleHolder"
.end annotation


# static fields
.field private static sInstance:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasSmartControl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasSmartControl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasSmartControl;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasSmartControl$1;)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasSmartControl$SingleHolder;->sInstance:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasSmartControl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasSmartControl;
    .locals 1

    .line 19
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasSmartControl$SingleHolder;->sInstance:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasSmartControl;

    return-object v0
.end method
