.class public Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfos;
.super Ljava/lang/Object;
.source "KeyMapInfos.java"


# instance fields
.field private configName:Ljava/lang/String;

.field private keyMap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;",
            ">;"
        }
    .end annotation
.end field

.field private touchRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public getConfigName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfos;->configName:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyMap()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfos;->keyMap:Ljava/util/List;

    return-object v0
.end method

.method public getTouchRect()Landroid/graphics/Rect;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfos;->touchRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public setConfigName(Ljava/lang/String;)V
    .locals 0
    .param p1, "configName"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfos;->configName:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setKeyMap(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p1, "keyMap":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;>;"
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfos;->keyMap:Ljava/util/List;

    .line 37
    return-void
.end method

.method public setTouchRect(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "touchRect"    # Landroid/graphics/Rect;

    .line 28
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfos;->touchRect:Landroid/graphics/Rect;

    .line 29
    return-void
.end method
