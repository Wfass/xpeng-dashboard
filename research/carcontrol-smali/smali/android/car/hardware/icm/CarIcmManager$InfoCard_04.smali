.class public Landroid/car/hardware/icm/CarIcmManager$InfoCard_04;
.super Ljava/lang/Object;
.source "CarIcmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/icm/CarIcmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InfoCard_04"
.end annotation


# instance fields
.field public cardList:[Landroid/car/hardware/icm/CarIcmManager$InfoCard_06;

.field public cardListCount:I

.field public cardListNum:I

.field public cardTotalNum:I

.field final synthetic this$0:Landroid/car/hardware/icm/CarIcmManager;


# direct methods
.method public constructor <init>(Landroid/car/hardware/icm/CarIcmManager;)V
    .locals 0

    .line 2732
    iput-object p1, p0, Landroid/car/hardware/icm/CarIcmManager$InfoCard_04;->this$0:Landroid/car/hardware/icm/CarIcmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
