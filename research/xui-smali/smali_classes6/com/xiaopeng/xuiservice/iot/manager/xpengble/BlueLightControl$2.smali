.class Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl$2;
.super Landroid/database/ContentObserver;
.source "BlueLightControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 76
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl$2;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;

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

    .line 79
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 81
    if-eqz p2, :cond_2

    :try_start_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "parkingState"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->getInstance()Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "parkingState"

    const/4 v2, 0x0

    .line 82
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 84
    .local v0, "parkingState":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl$2;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 85
    return-void

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl$2;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->access$202(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;I)I

    .line 88
    const-string v1, "BlueLightControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChange mParkingState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl$2;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl$2;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;)Lcom/xiaopeng/xuiservice/iot/manager/xpengble/IBlueLightControl$ModeChangeListener;

    move-result-object v1

    if-nez v1, :cond_1

    .line 90
    const-string v1, "BlueLightControl"

    const-string v2, "mModeChangeListener is NULL"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl$2;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;)Lcom/xiaopeng/xuiservice/iot/manager/xpengble/IBlueLightControl$ModeChangeListener;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl$2;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->isLightNeedActive()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/IBlueLightControl$ModeChangeListener;->onModeChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "parkingState":I
    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BlueLightControl"

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

    .line 97
    :cond_2
    :goto_0
    nop

    .line 98
    :goto_1
    return-void
.end method
