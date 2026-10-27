.class Lcom/xiaopeng/unity/carcontrol/WindowControlManager$2;
.super Ljava/util/HashMap;
.source "WindowControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->setWindowPos(IF)V
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
.field final synthetic this$0:Lcom/xiaopeng/unity/carcontrol/WindowControlManager;

.field final synthetic val$pos:F

.field final synthetic val$window:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/unity/carcontrol/WindowControlManager;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$pos",
            "val$window"
        }
    .end annotation

    .line 317
    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager$2;->this$0:Lcom/xiaopeng/unity/carcontrol/WindowControlManager;

    iput p2, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager$2;->val$window:I

    iput p3, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager$2;->val$pos:F

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 318
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "window"

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "pos"

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
