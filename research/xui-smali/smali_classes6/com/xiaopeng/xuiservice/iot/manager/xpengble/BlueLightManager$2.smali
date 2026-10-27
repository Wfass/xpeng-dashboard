.class Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$2;
.super Ljava/util/HashMap;
.source "BlueLightManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->controlBlueLight()V
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

    .line 272
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$2;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 273
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$2;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->access$000(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "openBlueLight"

    goto :goto_0

    :cond_0
    const-string v0, "closeBlueLight"

    .line 274
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$2;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->access$000(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "001"

    goto :goto_1

    :cond_1
    const-string v1, "002"

    .line 273
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    return-void
.end method
