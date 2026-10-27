.class Lcom/xiaopeng/unity/carcontrol/CameraAuthManager$Holder;
.super Ljava/lang/Object;
.source "CameraAuthManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;-><init>(Lcom/xiaopeng/unity/carcontrol/CameraAuthManager$1;)V

    sput-object v0, Lcom/xiaopeng/unity/carcontrol/CameraAuthManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;
    .locals 1

    .line 74
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/CameraAuthManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;

    return-object v0
.end method
