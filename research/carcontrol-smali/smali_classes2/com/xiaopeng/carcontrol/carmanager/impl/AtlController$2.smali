.class Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController$2;
.super Ljava/lang/Object;
.source "AtlController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeAmbientLightEnable(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChangeAmbientLightEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AtlController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->access$100(Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;Z)V

    return-void
.end method

.method public onChangeBright(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "partition",
            "bright"
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleManualBrightUpdate/onChangeBright:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AtlController"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->access$200(Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;I)V

    return-void
.end method

.method public onChangeColorType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "partition",
            "type"
        }
    .end annotation

    const-string v0, "AtlController"

    const/4 v1, 0x0

    .line 84
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChangeColorType:partition:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 85
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;

    iget-object v2, v2, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mXuiAtlManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;

    invoke-virtual {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->getAmbientLightMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 86
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;->Mono:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;

    invoke-virtual {v2, p2}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;

    invoke-virtual {p2, p1, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->handleDoubleColorEnableChanged(Ljava/lang/String;Z)V

    goto :goto_0

    .line 88
    :cond_0
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;->Double:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;

    invoke-virtual {v2, p2}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;->match(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 89
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;

    const/4 v2, 0x1

    invoke-virtual {p2, p1, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->handleDoubleColorEnableChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 92
    invoke-static {v0, p2, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onChangeDoubleColor(Ljava/lang/String;Landroid/util/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "partition",
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;",
            "Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;",
            ">;)V"
        }
    .end annotation

    const-string v0, "AtlController"

    const/4 v1, 0x0

    .line 114
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChangeDoubleColor:partition:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",color:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 115
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;

    iget-object v2, v2, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mXuiAtlManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;

    invoke-virtual {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->getAmbientLightMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 116
    iget-object v2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;

    iget-boolean v2, v2, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;->hasRgb:Z

    if-nez v2, :cond_1

    iget-object v2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;

    iget-boolean v2, v2, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;->hasRgb:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;

    iget-object v3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;

    iget v3, v3, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;->predef:I

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;

    iget p2, p2, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;->predef:I

    invoke-virtual {v2, p1, v3, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->handleDoubleColorChanged(Ljava/lang/String;II)V

    goto :goto_1

    .line 117
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;

    iget-object v2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;->toHexString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->handleRgbDoubleFirstColorChanged(I)V

    .line 118
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;->toHexString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->handleRgbDoubleSecondColorChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 123
    invoke-static {v0, p2, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_1
    return-void
.end method

.method public onChangeMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "partition",
            "mode"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChangeMode: partition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ",mode:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AtlController"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 78
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->handleEffectTypeChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onChangeMonoColor(Ljava/lang/String;Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "partition",
            "color"
        }
    .end annotation

    const-string v0, "AtlController"

    const/4 v1, 0x0

    .line 99
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChangeMonoColor:partition:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",color:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 100
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;

    iget-object v2, v2, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mXuiAtlManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;

    invoke-virtual {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->getAmbientLightMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;->toHexString()Ljava/lang/String;

    move-result-object p2

    const/16 v2, 0x10

    invoke-static {p2, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p2

    const/4 v2, 0x1

    if-lt p2, v2, :cond_0

    const/16 v2, 0x14

    if-gt p2, v2, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 105
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;

    invoke-virtual {v2, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->handleMonoColorChanged(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 107
    invoke-static {v0, p2, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_0
    return-void
.end method

.method public onErrorPlay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "partition",
            "effect"
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onErrorPlay:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AtlController"

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onErrorSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "partition",
            "mode"
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onErrorSet:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AtlController"

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onErrorStop(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "partition",
            "effect"
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onErrorStop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AtlController"

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onErrorSub(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "partition",
            "mode"
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onErrorSub:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AtlController"

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
