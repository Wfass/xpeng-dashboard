.class public final synthetic Landroid/car/hardware/property/-$$Lambda$CarPropertyManager$CarPropertyListeners$Z_lph3BbS3B3JJ_8xzRRButRXw8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroid/car/hardware/property/CarPropertyEvent;


# direct methods
.method public synthetic constructor <init>(Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;JLandroid/car/hardware/property/CarPropertyEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/hardware/property/-$$Lambda$CarPropertyManager$CarPropertyListeners$Z_lph3BbS3B3JJ_8xzRRButRXw8;->f$0:Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;

    iput-wide p2, p0, Landroid/car/hardware/property/-$$Lambda$CarPropertyManager$CarPropertyListeners$Z_lph3BbS3B3JJ_8xzRRButRXw8;->f$1:J

    iput-object p4, p0, Landroid/car/hardware/property/-$$Lambda$CarPropertyManager$CarPropertyListeners$Z_lph3BbS3B3JJ_8xzRRButRXw8;->f$2:Landroid/car/hardware/property/CarPropertyEvent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Landroid/car/hardware/property/-$$Lambda$CarPropertyManager$CarPropertyListeners$Z_lph3BbS3B3JJ_8xzRRButRXw8;->f$0:Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;

    iget-wide v1, p0, Landroid/car/hardware/property/-$$Lambda$CarPropertyManager$CarPropertyListeners$Z_lph3BbS3B3JJ_8xzRRButRXw8;->f$1:J

    iget-object v3, p0, Landroid/car/hardware/property/-$$Lambda$CarPropertyManager$CarPropertyListeners$Z_lph3BbS3B3JJ_8xzRRButRXw8;->f$2:Landroid/car/hardware/property/CarPropertyEvent;

    check-cast p1, Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;->lambda$onPropertySet$0$CarPropertyManager$CarPropertyListeners(JLandroid/car/hardware/property/CarPropertyEvent;Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V

    return-void
.end method
