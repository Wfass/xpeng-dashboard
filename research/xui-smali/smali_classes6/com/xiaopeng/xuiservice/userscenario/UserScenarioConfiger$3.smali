.class Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$3;
.super Ljava/lang/Object;
.source "UserScenarioConfiger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 1264
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$3;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1267
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->setScreenBarVisibility(II)V

    .line 1268
    return-void
.end method
