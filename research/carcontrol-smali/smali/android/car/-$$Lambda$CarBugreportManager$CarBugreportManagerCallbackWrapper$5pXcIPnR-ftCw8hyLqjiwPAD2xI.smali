.class public final synthetic Landroid/car/-$$Lambda$CarBugreportManager$CarBugreportManagerCallbackWrapper$5pXcIPnR-ftCw8hyLqjiwPAD2xI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/car/CarBugreportManager$CarBugreportManagerCallback;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Landroid/car/CarBugreportManager$CarBugreportManagerCallback;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/-$$Lambda$CarBugreportManager$CarBugreportManagerCallbackWrapper$5pXcIPnR-ftCw8hyLqjiwPAD2xI;->f$0:Landroid/car/CarBugreportManager$CarBugreportManagerCallback;

    iput p2, p0, Landroid/car/-$$Lambda$CarBugreportManager$CarBugreportManagerCallbackWrapper$5pXcIPnR-ftCw8hyLqjiwPAD2xI;->f$1:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/car/-$$Lambda$CarBugreportManager$CarBugreportManagerCallbackWrapper$5pXcIPnR-ftCw8hyLqjiwPAD2xI;->f$0:Landroid/car/CarBugreportManager$CarBugreportManagerCallback;

    iget v1, p0, Landroid/car/-$$Lambda$CarBugreportManager$CarBugreportManagerCallbackWrapper$5pXcIPnR-ftCw8hyLqjiwPAD2xI;->f$1:F

    invoke-static {v0, v1}, Landroid/car/CarBugreportManager$CarBugreportManagerCallbackWrapper;->lambda$onProgress$0(Landroid/car/CarBugreportManager$CarBugreportManagerCallback;F)V

    return-void
.end method
