.class Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager$SingleHolder;
.super Ljava/lang/Object;
.source "ViewModelManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 82
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager$1;)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager$SingleHolder;->sInstance:Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;
    .locals 1

    .line 81
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager$SingleHolder;->sInstance:Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    return-object v0
.end method
