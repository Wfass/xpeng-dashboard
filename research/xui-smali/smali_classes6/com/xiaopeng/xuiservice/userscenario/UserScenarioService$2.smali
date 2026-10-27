.class Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$2;
.super Ljava/util/ArrayList;
.source "UserScenarioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;
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

    .line 190
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    const-string v0, "com.xiaopeng.xuiservice"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$2;->add(Ljava/lang/Object;)Z

    .line 192
    return-void
.end method
