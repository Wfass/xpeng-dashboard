.class public Lbuv;
.super Ljava/lang/Object;
.source "UnitySpeechEngine.java"


# static fields
.field private static a:Lcom/xiaopeng/speech/vui/VuiEngineImpl; = null

.field private static b:Ljava/lang/String; = "UnitySpeechEngine"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 90
    sget-object v0, Lbuv;->a:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->dispatchVuiEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 102
    sget-object v0, Lbuv;->a:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 393
    sget-object v0, Lbuv;->a:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->onVuiQuery(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
