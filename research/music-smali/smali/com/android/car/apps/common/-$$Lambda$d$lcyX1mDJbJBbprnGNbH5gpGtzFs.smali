.class public final synthetic Lcom/android/car/apps/common/-$$Lambda$d$lcyX1mDJbJBbprnGNbH5gpGtzFs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private final synthetic f$0:Lcom/android/car/apps/common/d;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/apps/common/d;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/apps/common/-$$Lambda$d$lcyX1mDJbJBbprnGNbH5gpGtzFs;->f$0:Lcom/android/car/apps/common/d;

    iput p2, p0, Lcom/android/car/apps/common/-$$Lambda$d$lcyX1mDJbJBbprnGNbH5gpGtzFs;->f$1:I

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/car/apps/common/-$$Lambda$d$lcyX1mDJbJBbprnGNbH5gpGtzFs;->f$0:Lcom/android/car/apps/common/d;

    iget v1, p0, Lcom/android/car/apps/common/-$$Lambda$d$lcyX1mDJbJBbprnGNbH5gpGtzFs;->f$1:I

    invoke-static {v0, v1}, Lcom/android/car/apps/common/d;->lambda$lcyX1mDJbJBbprnGNbH5gpGtzFs(Lcom/android/car/apps/common/d;I)V

    return-void
.end method
