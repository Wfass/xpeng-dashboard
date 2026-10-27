.class public Lcom/android/car/CarNightService;
.super Ljava/lang/Object;
.source "CarNightService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/CarNightService$DayNightSensorMode;
    }
.end annotation


# static fields
.field public static final DBG:Z = false

.field public static final FORCED_DAY_MODE:I = 0x1

.field public static final FORCED_NIGHT_MODE:I = 0x2

.field public static final FORCED_SENSOR_MODE:I


# instance fields
.field private mCarPropertyService:Lcom/android/car/CarPropertyService;

.field private final mContext:Landroid/content/Context;

.field private mForcedMode:I

.field private final mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

.field private mNightSetting:I

.field private final mUiModeManager:Landroid/app/UiModeManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/car/CarPropertyService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "propertyService"    # Lcom/android/car/CarPropertyService;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/car/CarNightService;->mNightSetting:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/CarNightService;->mForcedMode:I

    .line 52
    new-instance v0, Lcom/android/car/CarNightService$1;

    invoke-direct {v0, p0}, Lcom/android/car/CarNightService$1;-><init>(Lcom/android/car/CarNightService;)V

    iput-object v0, p0, Lcom/android/car/CarNightService;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 119
    iput-object p1, p0, Lcom/android/car/CarNightService;->mContext:Landroid/content/Context;

    .line 120
    iput-object p2, p0, Lcom/android/car/CarNightService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    .line 121
    iget-object v0, p0, Lcom/android/car/CarNightService;->mContext:Landroid/content/Context;

    const-string v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    iput-object v0, p0, Lcom/android/car/CarNightService;->mUiModeManager:Landroid/app/UiModeManager;

    .line 122
    iget-object v0, p0, Lcom/android/car/CarNightService;->mUiModeManager:Landroid/app/UiModeManager;

    if-nez v0, :cond_0

    .line 123
    const-string v0, "CAR.SENSOR"

    const-string v1, "Failed to get UI_MODE_SERVICE"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 142
    :try_start_0
    const-string v0, "*DAY NIGHT POLICY*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget v1, p0, Lcom/android/car/CarNightService;->mNightSetting:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "night"

    goto :goto_0

    :cond_0
    const-string v1, "day"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Forced Mode? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/CarNightService;->mForcedMode:I

    if-nez v1, :cond_1

    const-string v1, "false"

    goto :goto_1

    .line 146
    :cond_1
    iget v1, p0, Lcom/android/car/CarNightService;->mForcedMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const-string v1, "day"

    goto :goto_1

    :cond_2
    const-string v1, "night"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    .line 141
    .end local p1    # "writer":Ljava/io/PrintWriter;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/CarNightService;
    throw p1
.end method

.method public declared-synchronized forceDayNightMode(I)I
    .locals 4
    .param p1, "mode"    # I

    monitor-enter p0

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarNightService;->mUiModeManager:Landroid/app/UiModeManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 94
    monitor-exit p0

    return v1

    .line 97
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 111
    :try_start_1
    const-string v0, "CAR.SENSOR"

    goto :goto_1

    .line 107
    :pswitch_0
    const/4 v0, 0x2

    .line 108
    .local v0, "resultMode":I
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/car/CarNightService;->mForcedMode:I

    .line 109
    goto :goto_0

    .line 103
    .end local v0    # "resultMode":I
    :pswitch_1
    const/4 v0, 0x1

    .line 104
    .restart local v0    # "resultMode":I
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/car/CarNightService;->mForcedMode:I

    .line 105
    goto :goto_0

    .line 99
    .end local v0    # "resultMode":I
    :pswitch_2
    iget v0, p0, Lcom/android/car/CarNightService;->mNightSetting:I

    .line 100
    .restart local v0    # "resultMode":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/car/CarNightService;->mForcedMode:I

    .line 101
    nop

    .line 112
    :goto_0
    nop

    .line 114
    iget-object v1, p0, Lcom/android/car/CarNightService;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v1, v0}, Landroid/app/UiModeManager;->setNightMode(I)V

    .line 115
    iget-object v1, p0, Lcom/android/car/CarNightService;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v1}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    .line 111
    .end local v0    # "resultMode":I
    :goto_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown forced day/night mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    monitor-exit p0

    return v1

    .line 92
    .end local p1    # "mode":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/CarNightService;
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized handlePropertyEvent(Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/car/hardware/property/CarPropertyEvent;

    monitor-enter p0

    .line 67
    if-nez p1, :cond_0

    .line 68
    monitor-exit p0

    return-void

    .line 70
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getEventType()I

    move-result v0

    if-nez v0, :cond_2

    .line 72
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 73
    .local v0, "value":Landroid/car/hardware/CarPropertyValue;
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v1

    const v2, 0x11200407

    if-ne v1, v2, :cond_2

    .line 74
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 75
    .local v1, "nightMode":Z
    if-eqz v1, :cond_1

    .line 76
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/car/CarNightService;->mNightSetting:I

    goto :goto_0

    .line 79
    :cond_1
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/car/CarNightService;->mNightSetting:I

    .line 82
    :goto_0
    iget-object v2, p0, Lcom/android/car/CarNightService;->mUiModeManager:Landroid/app/UiModeManager;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/car/CarNightService;->mForcedMode:I

    if-nez v2, :cond_2

    .line 83
    iget-object v2, p0, Lcom/android/car/CarNightService;->mUiModeManager:Landroid/app/UiModeManager;

    iget v3, p0, Lcom/android/car/CarNightService;->mNightSetting:I

    invoke-virtual {v2, v3}, Landroid/app/UiModeManager;->setNightMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .end local v0    # "value":Landroid/car/hardware/CarPropertyValue;
    .end local v1    # "nightMode":Z
    :cond_2
    monitor-exit p0

    return-void

    .line 66
    .end local p1    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/CarNightService;
    throw p1
.end method

.method public declared-synchronized init()V
    .locals 4

    monitor-enter p0

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarNightService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x11200407

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/car/CarNightService;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/car/CarPropertyService;->registerListener(IFLandroid/car/hardware/property/ICarPropertyEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/CarNightService;
    throw v0
.end method

.method public declared-synchronized release()V
    .locals 0

    monitor-enter p0

    .line 138
    monitor-exit p0

    return-void
.end method
