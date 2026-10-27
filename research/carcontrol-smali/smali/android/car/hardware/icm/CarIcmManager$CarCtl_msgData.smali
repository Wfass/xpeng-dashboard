.class public Landroid/car/hardware/icm/CarIcmManager$CarCtl_msgData;
.super Ljava/lang/Object;
.source "CarIcmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/icm/CarIcmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CarCtl_msgData"
.end annotation


# instance fields
.field public msgCmd:Ljava/lang/String;

.field public param:F

.field final synthetic this$0:Landroid/car/hardware/icm/CarIcmManager;


# direct methods
.method public constructor <init>(Landroid/car/hardware/icm/CarIcmManager;)V
    .locals 0

    .line 2893
    iput-object p1, p0, Landroid/car/hardware/icm/CarIcmManager$CarCtl_msgData;->this$0:Landroid/car/hardware/icm/CarIcmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
