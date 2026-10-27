.class public Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyViewHelper;
.super Ljava/lang/Object;
.source "KeyViewHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultPosition(ILandroid/graphics/Point;)V
    .locals 5
    .param p0, "keycode"    # I
    .param p1, "point"    # Landroid/graphics/Point;

    .line 13
    const/16 v0, 0x1f41

    if-ne p0, v0, :cond_0

    .line 14
    const v0, 0x7f0700c3

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v0

    const v1, 0x7f0700c4

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 15
    return-void

    .line 17
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->getDefaultKeyMapInfos()Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfos;

    move-result-object v0

    .line 18
    .local v0, "defaultMapsInfo":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfos;
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfos;->getKeyMap()Ljava/util/List;

    move-result-object v1

    .line 19
    .local v1, "keyMapInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;

    .line 20
    .local v3, "keyMapInfo":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;
    iget v4, v3, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;->keycode:I

    if-ne v4, p0, :cond_1

    .line 21
    iget v2, v3, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;->x:I

    iget v4, v3, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;->y:I

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Point;->set(II)V

    .line 22
    goto :goto_1

    .line 24
    .end local v3    # "keyMapInfo":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;
    :cond_1
    goto :goto_0

    .line 25
    :cond_2
    :goto_1
    return-void
.end method
