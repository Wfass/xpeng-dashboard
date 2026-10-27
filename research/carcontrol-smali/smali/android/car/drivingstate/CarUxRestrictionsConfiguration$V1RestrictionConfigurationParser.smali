.class Landroid/car/drivingstate/CarUxRestrictionsConfiguration$V1RestrictionConfigurationParser;
.super Ljava/lang/Object;
.source "CarUxRestrictionsConfiguration.java"

# interfaces
.implements Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionConfigurationParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/drivingstate/CarUxRestrictionsConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "V1RestrictionConfigurationParser"
.end annotation


# static fields
.field private static final JSON_NAME_PASSENGER_IDLING_RESTRICTIONS:Ljava/lang/String; = "passenger_idling_restrictions"

.field private static final JSON_NAME_PASSENGER_MOVING_RESTRICTIONS:Ljava/lang/String; = "passenger_moving_restrictions"

.field private static final JSON_NAME_PASSENGER_PARKED_RESTRICTIONS:Ljava/lang/String; = "passenger_parked_restrictions"

.field private static final JSON_NAME_PASSENGER_UNKNOWN_RESTRICTIONS:Ljava/lang/String; = "passenger_unknown_restrictions"

.field private static final PASSENGER_MODE_NAME_FOR_MIGRATION:Ljava/lang/String; = "passenger"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$1;)V
    .locals 0

    .line 382
    invoke-direct {p0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$V1RestrictionConfigurationParser;-><init>()V

    return-void
.end method


# virtual methods
.method public readJson(Landroid/util/JsonReader;Ljava/lang/String;Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    move v0, v4

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "idling_restrictions"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    goto :goto_1

    :sswitch_1
    const-string v0, "passenger_parked_restrictions"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    goto :goto_1

    :sswitch_2
    const-string v0, "passenger_idling_restrictions"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_3
    const-string v0, "moving_restrictions"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, "passenger_moving_restrictions"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_5
    const-string/jumbo v0, "unknown_restrictions"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :sswitch_6
    const-string v0, "parked_restrictions"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1

    :sswitch_7
    const-string v0, "passenger_unknown_restrictions"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    move v0, v3

    :goto_1
    const-string v5, "passenger"

    const-string v6, "baseline"

    packed-switch v0, :pswitch_data_0

    .line 432
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown name parsing json config: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "CarUxRConfig"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_2

    .line 404
    :pswitch_0
    invoke-static {p1, v2, v6, p3}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->access$900(Landroid/util/JsonReader;ILjava/lang/String;Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)V

    goto :goto_2

    .line 416
    :pswitch_1
    invoke-static {p1, v3, v5, p3}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->access$900(Landroid/util/JsonReader;ILjava/lang/String;Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)V

    goto :goto_2

    .line 420
    :pswitch_2
    invoke-static {p1, v2, v5, p3}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->access$900(Landroid/util/JsonReader;ILjava/lang/String;Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)V

    goto :goto_2

    .line 408
    :pswitch_3
    invoke-static {p1, v1, v6, p3}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->access$900(Landroid/util/JsonReader;ILjava/lang/String;Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)V

    goto :goto_2

    .line 424
    :pswitch_4
    invoke-static {p1, v1, v5, p3}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->access$900(Landroid/util/JsonReader;ILjava/lang/String;Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)V

    goto :goto_2

    .line 412
    :pswitch_5
    invoke-static {p1, v4, v6, p3}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->access$900(Landroid/util/JsonReader;ILjava/lang/String;Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)V

    goto :goto_2

    .line 400
    :pswitch_6
    invoke-static {p1, v3, v6, p3}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->access$900(Landroid/util/JsonReader;ILjava/lang/String;Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)V

    goto :goto_2

    .line 428
    :pswitch_7
    invoke-static {p1, v4, v5, p3}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->access$900(Landroid/util/JsonReader;ILjava/lang/String;Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6d01897f -> :sswitch_7
        -0x6a307763 -> :sswitch_6
        -0x13241404 -> :sswitch_5
        0xe6e2753 -> :sswitch_4
        0x3a9e9678 -> :sswitch_3
        0x3edd3cf0 -> :sswitch_2
        0x699f1978 -> :sswitch_1
        0x6b0dac15 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
