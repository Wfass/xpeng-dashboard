.class Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil$SingleHolder;
.super Ljava/lang/Object;
.source "NotifyCreateUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleHolder"
.end annotation


# static fields
.field private static notifyCreateUtil:Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil$1;)V

    sput-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil$SingleHolder;->notifyCreateUtil:Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;
    .locals 1

    .line 49
    sget-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil$SingleHolder;->notifyCreateUtil:Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;

    return-object v0
.end method
