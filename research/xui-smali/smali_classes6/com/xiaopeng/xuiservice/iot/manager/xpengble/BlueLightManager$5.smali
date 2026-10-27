.class Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$5;
.super Ljava/util/HashMap;
.source "BlueLightManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->disableBleBroadcast()V
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
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;)V
    .locals 2
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;

    .line 315
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$5;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 316
    const-string v0, "closeBleBroadcast"

    const-string v1, "100"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    return-void
.end method
