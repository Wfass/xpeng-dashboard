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
.method public run(Landroid/view/View;Lbye;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Lbye;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 22
    instance-of p2, p1, Lbxq;

    if-eqz p2, :cond_0

    .line 23
    move-object v0, p1

    check-cast v0, Lbxq;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lbxq;->setPerformVuiAction(Z)V

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    move-result v0

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClickEvent run :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/String;)V

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 29
    move-object p2, p1

    check-cast p2, Lbxq;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lbxq;->setPerformVuiAction(Z)V

    :cond_1
    return-object p1
.end method
