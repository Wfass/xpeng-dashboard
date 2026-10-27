.class Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat$1;
.super Landroid/database/ContentObserver;
.source "BlueLightControlPlat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 43
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 45
    if-eqz p2, :cond_2

    :try_start_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "keyNgpNewAlfSw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->getInstance()Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyNgpNewAlfSw"

    const/4 v2, 0x0

    .line 46
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 48
    .local v0, "ngpState":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->access$000(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 49
    return-void

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->access$002(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;I)I

    .line 52
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;)Lcom/xiaopeng/xuiservice/iot/manager/xpengble/IBlueLightControl$ModeChangeListener;

    move-result-object v1

    if-nez v1, :cond_1

    .line 53
    const-string v1, "LightControlNew"

    const-string v2, "mModeChangeListener is NULL"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;)Lcom/xiaopeng/xuiservice/iot/manager/xpengble/IBlueLightControl$ModeChangeListener;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->isLightNeedActive()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/IBlueLightControl$ModeChangeListener;->onModeChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "ngpState":I
    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LightControlNew"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChange,e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 60
    :cond_2
    :goto_0
    nop

    .line 61
    :goto_1
    return-void
.end method
