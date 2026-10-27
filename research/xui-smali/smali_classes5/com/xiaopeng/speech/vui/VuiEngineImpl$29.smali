.class Lcom/xiaopeng/speech/vui/VuiEngineImpl$29;
.super Ljava/lang/Object;
.source "VuiEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiEngineImpl;->unSubscribe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 2110
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$29;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2113
    const-string v0, "VuiEngine"

    const-string v1, "unSubscribe"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2114
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->unSubscribe()V

    .line 2115
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->unSubscribe()V

    .line 2116
    return-void
.end method
