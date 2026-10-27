.class public Landroid/car/hardware/icm/CarIcmManager$InfoCard_A1;
.super Ljava/lang/Object;
.source "CarIcmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/icm/CarIcmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InfoCard_A1"
.end annotation


# instance fields
.field public cardContent:Ljava/lang/Object;

.field public cardId:Ljava/lang/String;

.field public cardType:Ljava/lang/String;

.field public hasPic:Z

.field public mainContent:Ljava/lang/String;

.field public picture:Ljava/lang/String;

.field public sContent1:Ljava/lang/String;

.field public sContent2:Ljava/lang/String;

.field public subContent:Ljava/lang/String;

.field final synthetic this$0:Landroid/car/hardware/icm/CarIcmManager;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/car/hardware/icm/CarIcmManager;)V
    .locals 0

    .line 2691
    iput-object p1, p0, Landroid/car/hardware/icm/CarIcmManager$InfoCard_A1;->this$0:Landroid/car/hardware/icm/CarIcmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
