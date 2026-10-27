.class public Landroid/car/hardware/icm/CarIcmManager$Icm_WeatherInfo_21;
.super Ljava/lang/Object;
.source "CarIcmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/icm/CarIcmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Icm_WeatherInfo_21"
.end annotation


# instance fields
.field public city:Ljava/lang/String;

.field public date:Ljava/lang/String;

.field public highTemp:F

.field public lowTemp:F

.field public msgId:Ljava/lang/String;

.field public temperature:F

.field final synthetic this$0:Landroid/car/hardware/icm/CarIcmManager;

.field public timeStamp:I

.field public weatherType:I


# direct methods
.method public constructor <init>(Landroid/car/hardware/icm/CarIcmManager;)V
    .locals 0

    .line 3209
    iput-object p1, p0, Landroid/car/hardware/icm/CarIcmManager$Icm_WeatherInfo_21;->this$0:Landroid/car/hardware/icm/CarIcmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
