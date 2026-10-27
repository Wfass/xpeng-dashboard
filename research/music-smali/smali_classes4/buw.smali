.class public Lbuw;
.super Ljava/lang/Object;
.source "XpSpeechEngine.java"


# static fields
.field private static a:Lcom/xiaopeng/speech/vui/VuiEngineImpl; = null

.field private static b:Ljava/lang/String; = "XpSpeechEngine"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    .line 344
    sget-object v0, Lbuw;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterScene:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    sget-object v0, Lbuw;->a:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 346
    invoke-virtual {v0, p0, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->enterScene(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Lbye;)V
    .locals 1

    .line 296
    sget-object v0, Lbuw;->a:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    sget-object p1, Lbuw;->a:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {p1, p0, v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setUpdateElements(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/xiaopeng/speech/vui/listener/IXpVuiSceneListener;)V
    .locals 6

    .line 235
    sget-object v0, Lbuw;->a:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    .line 236
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lbxv;Lbxs;Z)V

    .line 238
    :cond_0
    sget-object v0, Lbuw;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerVuiSceneListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",listener:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    new-instance p0, Lcom/xiaopeng/speech/vui/observer/XpVuiElementChangedObserver;

    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/observer/XpVuiElementChangedObserver;-><init>()V

    .line 240
    invoke-interface {p1, p0}, Lcom/xiaopeng/speech/vui/listener/IXpVuiSceneListener;->onInitCompleted(Lcom/xiaopeng/speech/vui/observer/XpVuiElementChangedObserver;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 85
    sget-object v0, Lbuw;->a:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->dispatchVuiEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 445
    invoke-static {}, Lbvv;->a()Lbvv;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lbvv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lbye;",
            ">;)V"
        }
    .end annotation

    .line 274
    sget-object v0, Lbuw;->a:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setBuildElements(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 97
    sget-object v0, Lbuw;->a:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 3

    .line 394
    sget-object v0, Lbuw;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitScene:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    sget-object v0, Lbuw;->a:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 396
    invoke-virtual {v0, p0, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->exitScene(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Lcom/xiaopeng/speech/vui/listener/IXpVuiSceneListener;)V
    .locals 3

    .line 249
    sget-object v0, Lbuw;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterVuiSceneListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    sget-object v0, Lbuw;->a:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 251
    invoke-virtual {v0, p0, p1, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->removeVuiSceneListener(Ljava/lang/String;Lbxv;Z)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lbye;",
            ">;)V"
        }
    .end annotation

    .line 309
    sget-object v0, Lbuw;->a:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setUpdateElements(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Lbye;
    .locals 1

    .line 321
    sget-object v0, Lbuw;->a:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getVuiElement(Ljava/lang/String;Ljava/lang/String;)Lbye;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 441
    invoke-static {}, Lbvv;->a()Lbvv;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lbvv;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
