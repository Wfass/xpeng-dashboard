.class public Lcom/xiaopeng/xuiservice/brightness/BrightnessService;
.super Lcom/xiaopeng/xuimanager/brightness/IBrightnessManager$Stub;
.source "BrightnessService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/XUIServiceBase;


# static fields
.field private static final KEY_PANEL_BRIGHTNESS:Ljava/lang/String; = "panel_brightness"

.field private static final TAG:Ljava/lang/String; = "BrightnessService"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/brightness/IBrightnessManager$Stub;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/brightness/BrightnessService;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 56
    return-void
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 60
    const-string v0, "BrightnessService"

    return-object v0
.end method

.method public init()V
    .locals 0

    .line 47
    return-void
.end method

.method public release()V
    .locals 0

    .line 51
    return-void
.end method

.method public setXpAllPanelBrightness(IILjava/lang/String;)V
    .locals 7
    .param p1, "brightness"    # I
    .param p2, "enable"    # I
    .param p3, "source"    # Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/xiaopeng/screen/ScreenManagerFactory;->get()Lcom/xiaopeng/screen/ScreenManagerFactory;

    move-result-object v0

    .line 33
    .local v0, "mScreenManagerFactory":Lcom/xiaopeng/screen/ScreenManagerFactory;
    invoke-virtual {v0}, Lcom/xiaopeng/screen/ScreenManagerFactory;->getScreenDevices()Ljava/util/List;

    move-result-object v1

    .line 34
    .local v1, "mScreenDevices":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/screen/ScreenDevice;>;"
    const/4 v2, 0x0

    .line 35
    .local v2, "panel":I
    if-eqz v1, :cond_0

    .line 36
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/screen/ScreenDevice;

    .line 37
    .local v4, "device":Lcom/xiaopeng/screen/ScreenDevice;
    const/4 v5, 0x1

    iget-object v6, v4, Lcom/xiaopeng/screen/ScreenDevice;->configuration:Lcom/xiaopeng/screen/ScreenItemConfiguration;

    iget v6, v6, Lcom/xiaopeng/screen/ScreenItemConfiguration;->screenId:I

    shl-int/2addr v5, v6

    or-int/2addr v2, v5

    .line 38
    .end local v4    # "device":Lcom/xiaopeng/screen/ScreenDevice;
    goto :goto_0

    .line 40
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, "panelBrightness":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/brightness/BrightnessService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "panel_brightness"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 42
    const-string v4, "BrightnessService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setXpAllPanelBrightness brightness = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " enable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " source = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " panelBrightness = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public setXpPanelBrightness(Ljava/lang/String;)V
    .locals 3
    .param p1, "panelBrightness"    # Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/brightness/BrightnessService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "panel_brightness"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 28
    const-string v0, "BrightnessService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setXpPanelBrightness panelBrightness = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method
