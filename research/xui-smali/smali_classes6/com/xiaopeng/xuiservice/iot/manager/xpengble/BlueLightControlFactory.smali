.class public Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlFactory;
.super Ljava/lang/Object;
.source "BlueLightControlFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BlueLightControlFactory"

.field private static final isPlatformVersion:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLightControl(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/IBlueLightControl$ModeChangeListener;)Lcom/xiaopeng/xuiservice/iot/manager/xpengble/IBlueLightControl;
    .locals 2
    .param p0, "listener"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/IBlueLightControl$ModeChangeListener;

    .line 15
    const-string v0, "BlueLightControlFactory"

    const-string v1, "createLightControl isPlatformVersion: false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/IBlueLightControl$ModeChangeListener;)V

    return-object v0
.end method
