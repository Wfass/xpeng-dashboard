.class public final synthetic Landroid/car/-$$Lambda$CarAppFocusManager$IAppFocusOwnershipCallbackImpl$2pNFwLCwPLOF17gKmTUVgVPuFow;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/car/CarAppFocusManager$OnAppFocusOwnershipCallback;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/car/CarAppFocusManager$OnAppFocusOwnershipCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/-$$Lambda$CarAppFocusManager$IAppFocusOwnershipCallbackImpl$2pNFwLCwPLOF17gKmTUVgVPuFow;->f$0:Landroid/car/CarAppFocusManager$OnAppFocusOwnershipCallback;

    iput p2, p0, Landroid/car/-$$Lambda$CarAppFocusManager$IAppFocusOwnershipCallbackImpl$2pNFwLCwPLOF17gKmTUVgVPuFow;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/car/-$$Lambda$CarAppFocusManager$IAppFocusOwnershipCallbackImpl$2pNFwLCwPLOF17gKmTUVgVPuFow;->f$0:Landroid/car/CarAppFocusManager$OnAppFocusOwnershipCallback;

    iget v1, p0, Landroid/car/-$$Lambda$CarAppFocusManager$IAppFocusOwnershipCallbackImpl$2pNFwLCwPLOF17gKmTUVgVPuFow;->f$1:I

    invoke-static {v0, v1}, Landroid/car/CarAppFocusManager$IAppFocusOwnershipCallbackImpl;->lambda$onAppFocusOwnershipLost$0(Landroid/car/CarAppFocusManager$OnAppFocusOwnershipCallback;I)V

    return-void
.end method
