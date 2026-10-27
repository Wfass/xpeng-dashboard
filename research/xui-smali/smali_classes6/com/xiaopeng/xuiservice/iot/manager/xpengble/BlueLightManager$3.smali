.class Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$3;
.super Ljava/util/HashMap;
.source "BlueLightManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->controlBlueLightDayMode()V
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

    .line 296
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$3;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 297
    const-string v0, "blueLightDayMode"

    const-string v1, "010"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    return-void
.end method
