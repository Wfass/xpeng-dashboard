.class Lcom/xiaopeng/xuiservice/utils/BroadcastManager$ListenerRecord;
.super Ljava/lang/Object;
.source "BroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/utils/BroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerRecord"
.end annotation


# instance fields
.field public mActionFilter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mBroadcastListener:Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;Ljava/util/List;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 73
    .local p2, "filter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$ListenerRecord;->mBroadcastListener:Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;

    .line 75
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$ListenerRecord;->mActionFilter:Ljava/util/List;

    .line 76
    return-void
.end method
