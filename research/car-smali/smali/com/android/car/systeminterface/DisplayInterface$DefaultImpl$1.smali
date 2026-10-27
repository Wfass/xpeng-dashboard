.class Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl$1;
.super Landroid/database/ContentObserver;
.source "DisplayInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;


# direct methods
.method constructor <init>(Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 60
    iput-object p1, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl$1;->this$0:Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .line 63
    iget-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl$1;->this$0:Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;

    invoke-static {v0}, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->access$000(Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;)I

    move-result v0

    .line 64
    .local v0, "brightness":I
    iget-object v1, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl$1;->this$0:Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;

    invoke-static {v1}, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->access$100(Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;)I

    move-result v1

    iget-object v2, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl$1;->this$0:Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;

    invoke-static {v2}, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->access$000(Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 67
    .local v1, "range":I
    :try_start_0
    iget-object v2, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl$1;->this$0:Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;

    invoke-static {v2}, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->access$200(Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 70
    goto :goto_0

    .line 68
    :catch_0
    move-exception v2

    .line 69
    .local v2, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "CAR.POWER"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not get SCREEN_BRIGHTNESS:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v2    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_0
    iget-object v2, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl$1;->this$0:Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;

    invoke-static {v2}, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->access$000(Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;)I

    move-result v2

    sub-int/2addr v0, v2

    .line 73
    mul-int/lit8 v0, v0, 0x64

    .line 74
    add-int/lit8 v2, v1, 0x1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 75
    div-int/2addr v0, v1

    .line 76
    iget-object v2, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl$1;->this$0:Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;

    invoke-static {v2}, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->access$300(Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;)Lcom/android/car/CarPowerManagementService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/car/CarPowerManagementService;->sendDisplayBrightness(I)V

    .line 77
    return-void
.end method
