.class Lcom/xiaopeng/xuiservice/utils/BroadcastManager$1;
.super Ljava/util/ArrayList;
.source "BroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/utils/BroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$1;->add(Ljava/lang/Object;)Z

    .line 45
    const-string v0, "com.xiaopeng.xui.businessevent"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$1;->add(Ljava/lang/Object;)Z

    .line 46
    const-string v0, "com.xiaopeng.speech.action.wakeup"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$1;->add(Ljava/lang/Object;)Z

    .line 47
    const-string v0, "com.xiaopeng.broadcast.ACTION_SCREEN_STATUS_CHANGE"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$1;->add(Ljava/lang/Object;)Z

    .line 48
    const-string v0, "com.xiaopeng.intent.action.xkey"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$1;->add(Ljava/lang/Object;)Z

    .line 49
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$1;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method
