.class Lcom/xiaopeng/unity/carcontrol/MainControlManager$2;
.super Ljava/util/HashMap;
.source "MainControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/unity/carcontrol/MainControlManager;->setChargePort(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/unity/carcontrol/MainControlManager;

.field final synthetic val$isLeft:Z

.field final synthetic val$open:Z


# direct methods
.method constructor <init>(Lcom/xiaopeng/unity/carcontrol/MainControlManager;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$open",
            "val$isLeft"
        }
    .end annotation

    .line 551
    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager$2;->this$0:Lcom/xiaopeng/unity/carcontrol/MainControlManager;

    iput-boolean p2, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager$2;->val$isLeft:Z

    iput-boolean p3, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager$2;->val$open:Z

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 552
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "isLeft"

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/unity/carcontrol/MainControlManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "open"

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/unity/carcontrol/MainControlManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
