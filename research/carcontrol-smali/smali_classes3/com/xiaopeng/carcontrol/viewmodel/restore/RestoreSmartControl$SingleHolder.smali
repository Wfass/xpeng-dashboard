.class Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl$SingleHolder;
.super Ljava/lang/Object;
.source "RestoreSmartControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleHolder"
.end annotation


# static fields
.field private static sInstance:Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl$1;)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl$SingleHolder;->sInstance:Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;
    .locals 1

    .line 39
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl$SingleHolder;->sInstance:Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;

    return-object v0
.end method
