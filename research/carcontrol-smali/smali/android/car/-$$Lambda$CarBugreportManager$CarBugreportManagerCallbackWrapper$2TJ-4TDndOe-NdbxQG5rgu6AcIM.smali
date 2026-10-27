.class public final synthetic Landroid/car/-$$Lambda$CarBugreportManager$CarBugreportManagerCallbackWrapper$2TJ-4TDndOe-NdbxQG5rgu6AcIM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/car/CarBugreportManager$CarBugreportManagerCallback;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/car/CarBugreportManager$CarBugreportManagerCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/-$$Lambda$CarBugreportManager$CarBugreportManagerCallbackWrapper$2TJ-4TDndOe-NdbxQG5rgu6AcIM;->f$0:Landroid/car/CarBugreportManager$CarBugreportManagerCallback;

    iput p2, p0, Landroid/car/-$$Lambda$CarBugreportManager$CarBugreportManagerCallbackWrapper$2TJ-4TDndOe-NdbxQG5rgu6AcIM;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/car/-$$Lambda$CarBugreportManager$CarBugreportManagerCallbackWrapper$2TJ-4TDndOe-NdbxQG5rgu6AcIM;->f$0:Landroid/car/CarBugreportManager$CarBugreportManagerCallback;

    iget v1, p0, Landroid/car/-$$Lambda$CarBugreportManager$CarBugreportManagerCallbackWrapper$2TJ-4TDndOe-NdbxQG5rgu6AcIM;->f$1:I

    invoke-static {v0, v1}, Landroid/car/CarBugreportManager$CarBugreportManagerCallbackWrapper;->lambda$onError$1(Landroid/car/CarBugreportManager$CarBugreportManagerCallback;I)V

    return-void
.end method
