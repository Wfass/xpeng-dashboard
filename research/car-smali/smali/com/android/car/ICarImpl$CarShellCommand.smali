.class Lcom/android/car/ICarImpl$CarShellCommand;
.super Ljava/lang/Object;
.source "ICarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/ICarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarShellCommand"
.end annotation


# static fields
.field private static final COMMAND_DAY_NIGHT_MODE:Ljava/lang/String; = "day-night-mode"

.field private static final COMMAND_DEBUG_CAR_FEATURE_INJECT:Ljava/lang/String; = "car-feature"

.field private static final COMMAND_DEBUG_CAR_GUARD_MODE_INJECT:Ljava/lang/String; = "car-guard-mode-inject"

.field private static final COMMAND_DEBUG_CAR_SCENE_CALIBRATION_INJECT:Ljava/lang/String; = "car-scene-calibration-inject"

.field private static final COMMAND_DEBUG_CAR_SCENE_INJECT:Ljava/lang/String; = "car-scene-inject"

.field private static final COMMAND_DEBUG_UPDATE_PERMISSION_COST:Ljava/lang/String; = "car-permission-cost"

.field private static final COMMAND_DEBUG_UPDATE_PERMISSION_DENIED:Ljava/lang/String; = "car-permission-denied"

.field private static final COMMAND_DEBUG_UPDATE_PERMISSION_REFRESH:Ljava/lang/String; = "car-permission-update"

.field private static final COMMAND_ENABLE_UXR:Ljava/lang/String; = "enable-uxr"

.field private static final COMMAND_GARAGE_MODE:Ljava/lang/String; = "garage-mode"

.field private static final COMMAND_GET_DO_ACTIVITIES:Ljava/lang/String; = "get-do-activities"

.field private static final COMMAND_HELP:Ljava/lang/String; = "-h"

.field private static final COMMAND_INJECT_VHAL_EVENT:Ljava/lang/String; = "inject-vhal-event"

.field private static final COMMAND_SHOW_VERBOSE_LOGS:Ljava/lang/String; = "show-verb-logs"

.field private static final PARAM_DAY_MODE:Ljava/lang/String; = "day"

.field private static final PARAM_NIGHT_MODE:Ljava/lang/String; = "night"

.field private static final PARAM_OFF_MODE:Ljava/lang/String; = "off"

.field private static final PARAM_ON_MODE:Ljava/lang/String; = "on"

.field private static final PARAM_QUERY_MODE:Ljava/lang/String; = "query"

.field private static final PARAM_SENSOR_MODE:Ljava/lang/String; = "sensor"

.field private static final PARAM_VEHICLE_PROPERTY_AREA_GLOBAL:Ljava/lang/String; = "0"


# instance fields
.field final synthetic this$0:Lcom/android/car/ICarImpl;


# direct methods
.method private constructor <init>(Lcom/android/car/ICarImpl;)V
    .locals 0

    .line 678
    iput-object p1, p0, Lcom/android/car/ICarImpl$CarShellCommand;->this$0:Lcom/android/car/ICarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/ICarImpl;Lcom/android/car/ICarImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/ICarImpl;
    .param p2, "x1"    # Lcom/android/car/ICarImpl$1;

    .line 678
    invoke-direct {p0, p1}, Lcom/android/car/ICarImpl$CarShellCommand;-><init>(Lcom/android/car/ICarImpl;)V

    return-void
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 704
    const-string v0, "Car service commands:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 705
    const-string v0, "\t-h"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 706
    const-string v0, "\t  Print this help text."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 709
    const-string v0, "\tinject-vhal-event property [zone] data(can be comma separated list)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 710
    const-string v0, "\t  Inject a vehicle property for testing"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 711
    const-string v0, "\tshow-verb-logs 0|1|2|3|4|5|6|7|8|9|10|11|12|13|14|15"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 712
    const-string v0, "\t  enable set log      = 0x01"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 713
    const-string v0, "\t  enable get log      = 0x02"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 714
    const-string v0, "\t  enable callback log = 0x04"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 715
    const-string v0, "\t  enable perf log     = 0x08"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 716
    const-string v0, "\t  Show verbose logs"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 723
    return-void
.end method

.method private forceDayNightMode(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 871
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x35ffac46

    if-eq v0, v1, :cond_2

    const v1, 0x1839c

    if-eq v0, v1, :cond_1

    const v1, 0x63f6418

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "night"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "day"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 882
    const-string v0, "Unknown value. Valid argument: day|night|sensor"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 884
    return-void

    .line 879
    :pswitch_0
    const/4 v0, 0x0

    .line 880
    .local v0, "mode":I
    goto :goto_2

    .line 876
    .end local v0    # "mode":I
    :pswitch_1
    const/4 v0, 0x2

    .line 877
    .restart local v0    # "mode":I
    goto :goto_2

    .line 873
    .end local v0    # "mode":I
    :pswitch_2
    const/4 v0, 0x1

    .line 874
    .restart local v0    # "mode":I
    nop

    .line 884
    :goto_2
    nop

    .line 886
    iget-object v1, p0, Lcom/android/car/ICarImpl$CarShellCommand;->this$0:Lcom/android/car/ICarImpl;

    invoke-static {v1}, Lcom/android/car/ICarImpl;->access$400(Lcom/android/car/ICarImpl;)Lcom/android/car/CarNightService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/car/CarNightService;->forceDayNightMode(I)I

    move-result v1

    .line 887
    .local v1, "current":I
    const/4 v2, 0x0

    .line 888
    .local v2, "currentMode":Ljava/lang/String;
    packed-switch v1, :pswitch_data_1

    goto :goto_3

    .line 893
    :pswitch_3
    const-string v2, "night"

    .line 894
    goto :goto_3

    .line 896
    :pswitch_4
    const-string v2, "day"

    goto :goto_3

    .line 890
    :pswitch_5
    const-string v2, "sensor"

    .line 891
    nop

    .line 899
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DayNightMode changed to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 900
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private forceGarageMode(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 903
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xddf

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const v1, 0x1ad6f

    if-eq v0, v1, :cond_1

    const v1, 0x66f18c8

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "query"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    const-string v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 914
    const-string v0, "Unknown value. Valid argument: on|off|query"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 916
    return-void

    .line 912
    :pswitch_0
    goto :goto_2

    .line 908
    :pswitch_1
    iget-object v0, p0, Lcom/android/car/ICarImpl$CarShellCommand;->this$0:Lcom/android/car/ICarImpl;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->access$500(Lcom/android/car/ICarImpl;)Lcom/android/car/GarageModeService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/GarageModeService;->onSleepEntry()V

    .line 909
    goto :goto_2

    .line 905
    :pswitch_2
    iget-object v0, p0, Lcom/android/car/ICarImpl$CarShellCommand;->this$0:Lcom/android/car/ICarImpl;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->access$500(Lcom/android/car/ICarImpl;)Lcom/android/car/GarageModeService;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/car/GarageModeService;->onPrepareShutdown(Z)J

    .line 906
    nop

    .line 918
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Garage mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/ICarImpl$CarShellCommand;->this$0:Lcom/android/car/ICarImpl;

    invoke-static {v1}, Lcom/android/car/ICarImpl;->access$500(Lcom/android/car/ICarImpl;)Lcom/android/car/GarageModeService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/car/GarageModeService;->isInGarageMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 919
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private injectCarFeature(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "featureModel"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 954
    const-string v0, "carfeaturedebug"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    const-string v0, "persist.sys.xiaopeng.carfeaturedebug"

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    const-string v0, "ICarImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "car-feature debug enable?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    return-void

    .line 960
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 961
    .local v0, "sbf":Ljava/lang/StringBuffer;
    const-string v1, "persist.sys.xiaopeng."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 962
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ".debug"

    .line 963
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 964
    const-string v1, "ICarImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "injectCarFeature:\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 968
    .end local v0    # "sbf":Ljava/lang/StringBuffer;
    goto :goto_0

    .line 966
    :catch_0
    move-exception v0

    .line 967
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 969
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private injectVhalEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "zone"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "writer"    # Ljava/io/PrintWriter;

    .line 931
    if-eqz p2, :cond_0

    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    invoke-direct {p0, p1}, Lcom/android/car/ICarImpl$CarShellCommand;->isPropertyAreaTypeGlobal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 933
    const-string v0, "Property area type inconsistent with given zone"

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 934
    return-void

    .line 938
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/car/ICarImpl$CarShellCommand;->this$0:Lcom/android/car/ICarImpl;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->access$600(Lcom/android/car/ICarImpl;)Lcom/android/car/hal/VehicleHal;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/car/hal/VehicleHal;->injectVhalEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 942
    goto :goto_0

    .line 939
    :catch_0
    move-exception v0

    .line 940
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid property Id zone Id or value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 941
    invoke-direct {p0, p4}, Lcom/android/car/ICarImpl$CarShellCommand;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 943
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    return-void
.end method

.method private isPropertyAreaTypeGlobal(Ljava/lang/String;)Z
    .locals 3
    .param p1, "property"    # Ljava/lang/String;

    .line 947
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 948
    return v0

    .line 950
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/high16 v2, 0xf000000

    and-int/2addr v1, v2

    const/high16 v2, 0x1000000

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0
.end method


# virtual methods
.method public exec([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 13
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 726
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 727
    .local v1, "arg":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x7

    const/16 v4, 0x9

    const/16 v5, 0x8

    const/4 v6, 0x4

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x1

    const/4 v10, 0x3

    const/4 v11, 0x2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "show-verb-logs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v11

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "car-permission-cost"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v8

    goto :goto_1

    :sswitch_2
    const-string v2, "car-feature"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v5

    goto :goto_1

    :sswitch_3
    const-string v2, "inject-vhal-event"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v9

    goto :goto_1

    :sswitch_4
    const-string v2, "-h"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_1

    :sswitch_5
    const-string v2, "car-scene-inject"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v7

    goto :goto_1

    :sswitch_6
    const-string v2, "car-guard-mode-inject"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_1

    :sswitch_7
    const-string v2, "car-permission-update"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v10

    goto :goto_1

    :sswitch_8
    const-string v2, "car-scene-calibration-inject"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_1

    :sswitch_9
    const-string v2, "car-permission-denied"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 864
    const-string v0, "Unknown command."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 865
    invoke-direct {p0, p2}, Lcom/android/car/ICarImpl$CarShellCommand;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_3

    .line 855
    :pswitch_0
    array-length v0, p1

    if-ge v0, v11, :cond_1

    .line 856
    const-string v0, "Incorrect number of arguments need to set [type, action]."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 857
    invoke-direct {p0, p2}, Lcom/android/car/ICarImpl$CarShellCommand;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 858
    goto/16 :goto_3

    .line 860
    :cond_1
    iget-object v0, p0, Lcom/android/car/ICarImpl$CarShellCommand;->this$0:Lcom/android/car/ICarImpl;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->access$300(Lcom/android/car/ICarImpl;)Lcom/android/car/xpeng/guard/CarGuardModeService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/car/xpeng/guard/CarGuardModeService;->injectCarSceneAction([Ljava/lang/String;)V

    .line 862
    goto/16 :goto_3

    .line 840
    :pswitch_1
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_2

    .line 841
    const-string v0, "Permission denied, please use this tool in userdebug version!"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 842
    goto/16 :goto_3

    .line 844
    :cond_2
    array-length v0, p1

    if-ne v0, v11, :cond_3

    .line 845
    const-string v0, "Incorrect number of arguments, need to set feature name and value"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 846
    goto/16 :goto_3

    .line 848
    :cond_3
    array-length v0, p1

    if-ne v0, v10, :cond_9

    .line 849
    aget-object v0, p1, v9

    .line 850
    .local v0, "featureName":Ljava/lang/String;
    aget-object v2, p1, v11

    .line 851
    .local v2, "value":Ljava/lang/String;
    invoke-direct {p0, v0, v2}, Lcom/android/car/ICarImpl$CarShellCommand;->injectCarFeature(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    .end local v0    # "featureName":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    goto/16 :goto_3

    .line 827
    :pswitch_2
    array-length v2, p1

    const/16 v12, 0xd

    if-eq v2, v12, :cond_4

    .line 828
    const-string v0, "Incorrect number of arguments need to set [type, pos, action]."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 829
    invoke-direct {p0, p2}, Lcom/android/car/ICarImpl$CarShellCommand;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 830
    goto/16 :goto_3

    .line 832
    :cond_4
    new-array v2, v7, [F

    aget-object v12, p1, v9

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    int-to-float v12, v12

    aput v12, v2, v0

    aget-object v12, p1, v11

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    int-to-float v12, v12

    aput v12, v2, v9

    aget-object v12, p1, v10

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    int-to-float v12, v12

    aput v12, v2, v11

    aget-object v12, p1, v6

    .line 833
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    int-to-float v12, v12

    aput v12, v2, v10

    aget-object v12, p1, v8

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    int-to-float v12, v12

    aput v12, v2, v6

    aget-object v12, p1, v7

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    int-to-float v12, v12

    aput v12, v2, v8

    .line 834
    .local v2, "front":[F
    new-array v7, v7, [F

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    aput v3, v7, v0

    aget-object v0, p1, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    aput v0, v7, v9

    aget-object v0, p1, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    aput v0, v7, v11

    const/16 v0, 0xa

    aget-object v0, p1, v0

    .line 835
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    aput v0, v7, v10

    const/16 v0, 0xb

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    aput v0, v7, v6

    const/16 v0, 0xc

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    aput v0, v7, v8

    move-object v0, v7

    .line 836
    .local v0, "rear":[F
    iget-object v3, p0, Lcom/android/car/ICarImpl$CarShellCommand;->this$0:Lcom/android/car/ICarImpl;

    invoke-static {v3}, Lcom/android/car/ICarImpl;->access$200(Lcom/android/car/ICarImpl;)Lcom/android/car/intelligent/CarIntelligentEngineService;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/android/car/intelligent/CarIntelligentEngineService;->injectCarSceneCalibrationData([F[F)V

    .line 837
    goto/16 :goto_3

    .line 815
    .end local v0    # "rear":[F
    .end local v2    # "front":[F
    :pswitch_3
    array-length v0, p1

    if-ge v0, v10, :cond_5

    .line 816
    const-string v0, "Incorrect number of arguments need to set [type, action, pos]."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 817
    invoke-direct {p0, p2}, Lcom/android/car/ICarImpl$CarShellCommand;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 818
    goto/16 :goto_3

    .line 820
    :cond_5
    aget-object v0, p1, v9

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 821
    .local v0, "type":I
    aget-object v2, p1, v11

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 822
    .local v2, "action":I
    aget-object v3, p1, v10

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 823
    .local v3, "pos":I
    iget-object v4, p0, Lcom/android/car/ICarImpl$CarShellCommand;->this$0:Lcom/android/car/ICarImpl;

    invoke-static {v4}, Lcom/android/car/ICarImpl;->access$200(Lcom/android/car/ICarImpl;)Lcom/android/car/intelligent/CarIntelligentEngineService;

    move-result-object v4

    invoke-virtual {v4, v0, v2, v3}, Lcom/android/car/intelligent/CarIntelligentEngineService;->injectCarSceneAction(III)V

    .line 825
    .end local v0    # "type":I
    .end local v2    # "action":I
    .end local v3    # "pos":I
    goto/16 :goto_3

    .line 810
    :pswitch_4
    const-string v0, "*Dump car permisison service statistics*"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "car-permission-cost command: \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cost = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/ICarImpl$CarShellCommand;->this$0:Lcom/android/car/ICarImpl;

    invoke-static {v2}, Lcom/android/car/ICarImpl;->access$100(Lcom/android/car/ICarImpl;)Lcom/android/car/permission/CarPermissionManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/car/permission/CarPermissionManagerService;->dumpCostPropInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 813
    goto/16 :goto_3

    .line 804
    :pswitch_5
    const-string v0, "*Dump car permisison service statistics*"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "car-permission-denied command: \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "denied = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/ICarImpl$CarShellCommand;->this$0:Lcom/android/car/ICarImpl;

    invoke-static {v2}, Lcom/android/car/ICarImpl;->access$100(Lcom/android/car/ICarImpl;)Lcom/android/car/permission/CarPermissionManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/car/permission/CarPermissionManagerService;->dumpDeniedPropInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 807
    goto :goto_3

    .line 800
    :pswitch_6
    iget-object v0, p0, Lcom/android/car/ICarImpl$CarShellCommand;->this$0:Lcom/android/car/ICarImpl;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->access$100(Lcom/android/car/ICarImpl;)Lcom/android/car/permission/CarPermissionManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/permission/CarPermissionManagerService;->initCarPermissionData()V

    .line 801
    goto :goto_3

    .line 759
    :pswitch_7
    array-length v0, p1

    if-ge v0, v11, :cond_6

    .line 760
    const-string v0, "Incorrect number of arguments."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 761
    invoke-direct {p0, p2}, Lcom/android/car/ICarImpl$CarShellCommand;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 762
    goto :goto_3

    .line 764
    :cond_6
    aget-object v0, p1, v9

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/car/CarLog;->CAR_DEBUG_FLAG:I

    .line 765
    goto :goto_3

    .line 742
    :pswitch_8
    const-string v0, "0"

    .line 744
    .local v0, "zone":Ljava/lang/String;
    array-length v2, p1

    if-ge v2, v10, :cond_7

    .line 745
    const-string v2, "Incorrect number of arguments."

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 746
    invoke-direct {p0, p2}, Lcom/android/car/ICarImpl$CarShellCommand;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 747
    goto :goto_3

    .line 748
    :cond_7
    array-length v2, p1

    if-le v2, v10, :cond_8

    .line 750
    aget-object v0, p1, v11

    .line 751
    aget-object v2, p1, v10

    .local v2, "data":Ljava/lang/String;
    goto :goto_2

    .line 754
    .end local v2    # "data":Ljava/lang/String;
    :cond_8
    aget-object v2, p1, v11

    .line 756
    .restart local v2    # "data":Ljava/lang/String;
    :goto_2
    aget-object v3, p1, v9

    invoke-direct {p0, v3, v0, v2, p2}, Lcom/android/car/ICarImpl$CarShellCommand;->injectVhalEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 757
    goto :goto_3

    .line 729
    .end local v0    # "zone":Ljava/lang/String;
    .end local v2    # "data":Ljava/lang/String;
    :pswitch_9
    invoke-direct {p0, p2}, Lcom/android/car/ICarImpl$CarShellCommand;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 730
    nop

    .line 867
    :cond_9
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a4cc460 -> :sswitch_9
        -0x5f118e72 -> :sswitch_8
        -0x5cb40732 -> :sswitch_7
        -0x4900dfe6 -> :sswitch_6
        -0x154c7cb5 -> :sswitch_5
        0x5db -> :sswitch_4
        0xebc90e6 -> :sswitch_3
        0x32f5c9fd -> :sswitch_2
        0x3304ad12 -> :sswitch_1
        0x64eafacd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
