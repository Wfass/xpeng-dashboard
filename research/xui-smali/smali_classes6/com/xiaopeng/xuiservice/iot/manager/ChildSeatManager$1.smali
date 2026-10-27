.class Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$1;
.super Ljava/util/HashMap;
.source "ChildSeatManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;

.field final synthetic val$prop:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;

    .line 595
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$1;->val$prop:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$1;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    iget-object p2, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$1;->val$prop:Ljava/lang/String;

    iget-object p3, p0, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$1;->val$value:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lcom/xiaopeng/xuiservice/iot/manager/ChildSeatManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
