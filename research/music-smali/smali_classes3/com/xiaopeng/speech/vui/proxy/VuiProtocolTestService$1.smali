.class Lcom/xiaopeng/speech/vui/proxy/VuiProtocolTestService$1;
.super Lcom/xiaopeng/speech/vui/vuiengine/IVuiProtocolTest$Stub;
.source "VuiProtocolTestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/vui/proxy/VuiProtocolTestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/proxy/VuiProtocolTestService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/proxy/VuiProtocolTestService;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/proxy/VuiProtocolTestService$1;->this$0:Lcom/xiaopeng/speech/vui/proxy/VuiProtocolTestService;

    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/vuiengine/IVuiProtocolTest$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getVuiElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "VuiProtocolTestService"

    const-string v1, "getVuiElement"

    .line 33
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/proxy/VuiProtocolTestService$1;->this$0:Lcom/xiaopeng/speech/vui/proxy/VuiProtocolTestService;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->getElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public handleVuiEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "VuiProtocolTestService"

    const-string v1, "handleVuiEvent"

    .line 27
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/proxy/VuiProtocolTestService$1;->this$0:Lcom/xiaopeng/speech/vui/proxy/VuiProtocolTestService;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->dispatchVuiEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
