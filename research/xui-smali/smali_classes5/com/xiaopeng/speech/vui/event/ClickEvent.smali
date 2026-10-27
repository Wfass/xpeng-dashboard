.class public Lcom/xiaopeng/speech/vui/event/ClickEvent;
.super Lcom/xiaopeng/speech/vui/event/BaseEvent;
.source "ClickEvent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/event/BaseEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiElement;)Landroid/view/View;
    .locals 3
    .param p2, "vuiElement"    # Lcom/xiaopeng/vui/commons/model/VuiElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ")TT;"
        }
    .end annotation

    .line 20
    .local p1, "view":Landroid/view/View;, "TT;"
    if-eqz p1, :cond_1

    .line 22
    instance-of v0, p1, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v0, :cond_0

    .line 23
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/vui/commons/IVuiElement;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xiaopeng/vui/commons/IVuiElement;->setPerformVuiAction(Z)V

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    move-result v0

    .line 26
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClickEvent run :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 27
    if-nez v0, :cond_1

    .line 28
    instance-of v1, p1, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, p1

    check-cast v1, Lcom/xiaopeng/vui/commons/IVuiElement;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/xiaopeng/vui/commons/IVuiElement;->setPerformVuiAction(Z)V

    .line 33
    .end local v0    # "result":Z
    :cond_1
    return-object p1
.end method
