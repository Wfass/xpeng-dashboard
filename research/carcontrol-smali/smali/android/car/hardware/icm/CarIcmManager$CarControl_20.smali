.class public Landroid/car/hardware/icm/CarIcmManager$CarControl_20;
.super Ljava/lang/Object;
.source "CarIcmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/icm/CarIcmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CarControl_20"
.end annotation


# instance fields
.field public msgData:Landroid/car/hardware/icm/CarIcmManager$CarCtl_msgData;

.field public msgId:Ljava/lang/String;

.field public msgType:Ljava/lang/String;

.field final synthetic this$0:Landroid/car/hardware/icm/CarIcmManager;


# direct methods
.method public constructor <init>(Landroid/car/hardware/icm/CarIcmManager;)V
    .locals 0

    .line 2898
    iput-object p1, p0, Landroid/car/hardware/icm/CarIcmManager$CarControl_20;->this$0:Landroid/car/hardware/icm/CarIcmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
