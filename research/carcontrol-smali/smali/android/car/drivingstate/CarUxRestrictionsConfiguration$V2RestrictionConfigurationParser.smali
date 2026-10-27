.class Landroid/car/drivingstate/CarUxRestrictionsConfiguration$V2RestrictionConfigurationParser;
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
    name = "V2RestrictionConfigurationParser"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$1;)V
    .locals 0

    .line 374
    invoke-direct {p0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$V2RestrictionConfigurationParser;-><init>()V

    return-void
.end method


# virtual methods
.method public readJson(Landroid/util/JsonReader;Ljava/lang/String;Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    invoke-static {p1, p2, p3}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->access$800(Landroid/util/JsonReader;Ljava/lang/String;Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)V

    return-void
.end method
