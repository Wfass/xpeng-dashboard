.class final Landroidx/recyclerview/selection/DefaultSelectionTracker$RangeCallbacks;
.super Landroidx/recyclerview/selection/Range$Callbacks;
.source "DefaultSelectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/selection/DefaultSelectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RangeCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/selection/DefaultSelectionTracker;


# direct methods
.method private constructor <init>(Landroidx/recyclerview/selection/DefaultSelectionTracker;)V
    .locals 0

    .line 520
    iput-object p1, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker$RangeCallbacks;->this$0:Landroidx/recyclerview/selection/DefaultSelectionTracker;

    invoke-direct {p0}, Landroidx/recyclerview/selection/Range$Callbacks;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/recyclerview/selection/DefaultSelectionTracker;Landroidx/recyclerview/selection/DefaultSelectionTracker$1;)V
    .locals 0

    .line 520
    invoke-direct {p0, p1}, Landroidx/recyclerview/selection/DefaultSelectionTracker$RangeCallbacks;-><init>(Landroidx/recyclerview/selection/DefaultSelectionTracker;)V

    return-void
.end method


# virtual methods
.method updateForRange(IIZI)V
    .locals 0

    .line 523
    packed-switch p4, :pswitch_data_0

    .line 531
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid range type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 528
    :pswitch_0
    iget-object p4, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker$RangeCallbacks;->this$0:Landroidx/recyclerview/selection/DefaultSelectionTracker;

    invoke-static {p4, p1, p2, p3}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->access$200(Landroidx/recyclerview/selection/DefaultSelectionTracker;IIZ)V

    .line 529
    goto :goto_0

    .line 525
    :pswitch_1
    iget-object p4, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker$RangeCallbacks;->this$0:Landroidx/recyclerview/selection/DefaultSelectionTracker;

    invoke-static {p4, p1, p2, p3}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->access$100(Landroidx/recyclerview/selection/DefaultSelectionTracker;IIZ)V

    .line 526
    nop

    .line 533
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
