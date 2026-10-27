.class public final synthetic Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiRecyclerViewImpl$JdGTJtXZUdN45TiWfZNVAnIEB40;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# instance fields
.field private final synthetic f$0:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiRecyclerViewImpl$JdGTJtXZUdN45TiWfZNVAnIEB40;->f$0:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiRecyclerViewImpl$JdGTJtXZUdN45TiWfZNVAnIEB40;->f$0:Landroid/view/ViewGroup;

    invoke-static {v0, p1, p2}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->lambda$initRotaryScroll$0(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
