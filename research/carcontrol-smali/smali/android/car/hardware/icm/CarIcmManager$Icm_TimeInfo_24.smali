.class public Landroid/car/hardware/icm/CarIcmManager$Icm_TimeInfo_24;
.super Ljava/lang/Object;
.source "CarIcmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/icm/CarIcmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Icm_TimeInfo_24"
.end annotation


# instance fields
.field public AmOrPm:I

.field public Date:Ljava/lang/String;

.field public Time:Ljava/lang/String;

.field public TimeFormat:I

.field public WeekDay:Ljava/lang/String;

.field final synthetic this$0:Landroid/car/hardware/icm/CarIcmManager;


# direct methods
.method public constructor <init>(Landroid/car/hardware/icm/CarIcmManager;)V
    .locals 0

    .line 3575
    iput-object p1, p0, Landroid/car/hardware/icm/CarIcmManager$Icm_TimeInfo_24;->this$0:Landroid/car/hardware/icm/CarIcmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
