.class Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld$1;
.super Ljava/lang/Object;
.source "AmbientManagerOld.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 220
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld$1;->this$0:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorEvent(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "i1"
        }
    .end annotation

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onErrorEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AmbientManagerOld"

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onLightBrightSetEvent(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectType",
            "bright"
        }
    .end annotation

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLightBrightSetEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ",bright:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AmbientManagerOld"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 264
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld$1;->this$0:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEventListener;

    const-string v1, "all"

    .line 265
    invoke-interface {v0, v1, p2}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEventListener;->onChangeBright(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLightDoubleColorEnableEvent(Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectType",
            "enable"
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLightDoubleColorEnableEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ",enable:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AmbientManagerOld"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 240
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld$1;->this$0:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEventListener;

    if-eqz p2, :cond_0

    .line 241
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;->Double:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;->Mono:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;

    :goto_1
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;->toAtlCommand()Ljava/lang/String;

    move-result-object v1

    const-string v2, "all"

    invoke-interface {v0, v2, v1}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEventListener;->onChangeColorType(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onLightDoubleColorSetEvent(Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "effectType",
            "first_color",
            "second_color"
        }
    .end annotation

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLightDoubleColorSetEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ",first_color:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ",second_color:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AmbientManagerOld"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 256
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld$1;->this$0:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEventListener;

    .line 257
    new-instance v2, Landroid/util/Pair;

    new-instance v3, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;-><init>(ZLjava/lang/String;)V

    new-instance v4, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;-><init>(ZLjava/lang/String;)V

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "all"

    invoke-interface {v0, v3, v2}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEventListener;->onChangeDoubleColor(Ljava/lang/String;Landroid/util/Pair;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLightEffectTypeSetEvent(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectType"
        }
    .end annotation

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLightEffectTypeSetEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AmbientManagerOld"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld$1;->this$0:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEventListener;

    const-string v2, "all"

    .line 233
    invoke-interface {v1, v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEventListener;->onChangeMode(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLightMonoColorSetEvent(Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectType",
            "color"
        }
    .end annotation

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLightMonoColorSetEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ",color:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AmbientManagerOld"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 248
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld$1;->this$0:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEventListener;

    .line 249
    new-instance v2, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;-><init>(ZLjava/lang/String;)V

    const-string v3, "all"

    invoke-interface {v0, v3, v2}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEventListener;->onChangeMonoColor(Ljava/lang/String;Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLightSwitchSetEvent(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectType",
            "enable"
        }
    .end annotation

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLightSwitchSetEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ",enable:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AmbientManagerOld"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 224
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld$1;->this$0:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEventListener;

    .line 225
    invoke-interface {v0, p2}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEventListener;->onChangeAmbientLightEnable(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
