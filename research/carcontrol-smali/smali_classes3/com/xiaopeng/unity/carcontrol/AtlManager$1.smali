.class Lcom/xiaopeng/unity/carcontrol/AtlManager$1;
.super Ljava/lang/Object;
.source "AtlManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/AtlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/unity/carcontrol/AtlManager;->initInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/unity/carcontrol/AtlManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/unity/carcontrol/AtlManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/AtlManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAtlBrightnessChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/AtlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onAtlBrightnessChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->access$600(Lcom/xiaopeng/unity/carcontrol/AtlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onAtlColorModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/AtlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onAtlColorModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->access$800(Lcom/xiaopeng/unity/carcontrol/AtlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onAtlEffectChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/AtlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onAtlEffectChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->access$100(Lcom/xiaopeng/unity/carcontrol/AtlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onAtlFrontWindshieldSwChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/AtlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onAtlFrontWindshieldSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->access$900(Lcom/xiaopeng/unity/carcontrol/AtlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onAtlRgbDoubleFirstColorChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/AtlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onAtlRgbDoubleFirstColorChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->access$400(Lcom/xiaopeng/unity/carcontrol/AtlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onAtlRgbDoubleSecondColorChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/AtlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onAtlRgbDoubleSecondColorChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->access$500(Lcom/xiaopeng/unity/carcontrol/AtlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onAtlSwChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/AtlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onAtlSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->access$700(Lcom/xiaopeng/unity/carcontrol/AtlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDoubleColorChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/AtlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onDoubleColorChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->access$300(Lcom/xiaopeng/unity/carcontrol/AtlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSingleColorChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/AtlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onSingleColorChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->access$200(Lcom/xiaopeng/unity/carcontrol/AtlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
