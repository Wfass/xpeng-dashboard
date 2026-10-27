.class Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager$3;
.super Ljava/util/ArrayList;
.source "ThirdAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->registerBroadCast()V
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


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;

    .line 686
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager$3;->this$0:Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 687
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager$3;->add(Ljava/lang/Object;)Z

    .line 688
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager$3;->add(Ljava/lang/Object;)Z

    .line 689
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager$3;->add(Ljava/lang/Object;)Z

    .line 690
    return-void
.end method
