.class Lcom/xiaopeng/unity/carcontrol/SeatMassageManager$2;
.super Ljava/util/HashMap;
.source "SeatMassageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->setMassagerIntensity(II)V
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
.field final synthetic this$0:Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;

.field final synthetic val$index:I

.field final synthetic val$intensity:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$intensity",
            "val$index"
        }
    .end annotation

    .line 212
    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager$2;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;

    iput p2, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager$2;->val$index:I

    iput p3, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager$2;->val$intensity:I

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 213
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "index"

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "intensity"

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
