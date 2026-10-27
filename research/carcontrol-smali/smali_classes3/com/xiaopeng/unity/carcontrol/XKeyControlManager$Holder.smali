.class Lcom/xiaopeng/unity/carcontrol/XKeyControlManager$Holder;
.super Ljava/lang/Object;
.source "XKeyControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 148
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;-><init>(Lcom/xiaopeng/unity/carcontrol/XKeyControlManager$1;)V

    sput-object v0, Lcom/xiaopeng/unity/carcontrol/XKeyControlManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;
    .locals 1

    .line 147
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/XKeyControlManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;

    return-object v0
.end method
