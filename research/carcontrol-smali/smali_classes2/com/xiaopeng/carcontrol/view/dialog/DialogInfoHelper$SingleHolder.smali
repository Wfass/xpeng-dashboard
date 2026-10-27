.class Lcom/xiaopeng/carcontrol/view/dialog/DialogInfoHelper$SingleHolder;
.super Ljava/lang/Object;
.source "DialogInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/view/dialog/DialogInfoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/carcontrol/view/dialog/DialogInfoHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    new-instance v0, Lcom/xiaopeng/carcontrol/view/dialog/DialogInfoHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/DialogInfoHelper;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/DialogInfoHelper$1;)V

    sput-object v0, Lcom/xiaopeng/carcontrol/view/dialog/DialogInfoHelper$SingleHolder;->sInstance:Lcom/xiaopeng/carcontrol/view/dialog/DialogInfoHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/carcontrol/view/dialog/DialogInfoHelper;
    .locals 1

    .line 76
    sget-object v0, Lcom/xiaopeng/carcontrol/view/dialog/DialogInfoHelper$SingleHolder;->sInstance:Lcom/xiaopeng/carcontrol/view/dialog/DialogInfoHelper;

    return-object v0
.end method
