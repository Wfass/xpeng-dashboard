.class Lcom/xiaopeng/speech/vui/VuiEngineImpl$30;
.super Ljava/lang/Object;
.source "VuiEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiEngineImpl;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

.field final synthetic val$elementChangedListener:Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

.field final synthetic val$isDupActivity:Z

.field final synthetic val$listener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

.field final synthetic val$needBuild:Z

.field final synthetic val$rootView:Landroid/view/View;

.field final synthetic val$sceneId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/IVuiSceneListener;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Z)V
    .locals 0

    .line 2137
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$30;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$30;->val$sceneId:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$30;->val$isDupActivity:Z

    iput-object p4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$30;->val$listener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    iput-object p5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$30;->val$rootView:Landroid/view/View;

    iput-object p6, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$30;->val$elementChangedListener:Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    iput-boolean p7, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$30;->val$needBuild:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 2140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addVuiSceneListener :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$30;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VuiEngine"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2141
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$30;->val$sceneId:Ljava/lang/String;

    .line 2142
    iget-boolean v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$30;->val$isDupActivity:Z

    if-eqz v1, :cond_0

    .line 2143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$30;->val$listener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$30;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2145
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$30;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2146
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$30;->val$rootView:Landroid/view/View;

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$30;->val$listener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$30;->val$elementChangedListener:Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    iget-boolean v7, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$30;->val$needBuild:Z

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Z)V

    .line 2148
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v2

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$30;->val$rootView:Landroid/view/View;

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$30;->val$listener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$30;->val$elementChangedListener:Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    iget-boolean v7, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$30;->val$needBuild:Z

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Z)V

    return-void
.end method
