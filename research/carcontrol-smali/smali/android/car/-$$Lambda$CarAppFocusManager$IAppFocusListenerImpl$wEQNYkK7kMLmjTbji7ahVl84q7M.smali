.class public final synthetic Landroid/car/-$$Lambda$CarAppFocusManager$IAppFocusListenerImpl$wEQNYkK7kMLmjTbji7ahVl84q7M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/car/CarAppFocusManager$OnAppFocusChangedListener;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Landroid/car/CarAppFocusManager$OnAppFocusChangedListener;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/-$$Lambda$CarAppFocusManager$IAppFocusListenerImpl$wEQNYkK7kMLmjTbji7ahVl84q7M;->f$0:Landroid/car/CarAppFocusManager$OnAppFocusChangedListener;

    iput p2, p0, Landroid/car/-$$Lambda$CarAppFocusManager$IAppFocusListenerImpl$wEQNYkK7kMLmjTbji7ahVl84q7M;->f$1:I

    iput-boolean p3, p0, Landroid/car/-$$Lambda$CarAppFocusManager$IAppFocusListenerImpl$wEQNYkK7kMLmjTbji7ahVl84q7M;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroid/car/-$$Lambda$CarAppFocusManager$IAppFocusListenerImpl$wEQNYkK7kMLmjTbji7ahVl84q7M;->f$0:Landroid/car/CarAppFocusManager$OnAppFocusChangedListener;

    iget v1, p0, Landroid/car/-$$Lambda$CarAppFocusManager$IAppFocusListenerImpl$wEQNYkK7kMLmjTbji7ahVl84q7M;->f$1:I

    iget-boolean v2, p0, Landroid/car/-$$Lambda$CarAppFocusManager$IAppFocusListenerImpl$wEQNYkK7kMLmjTbji7ahVl84q7M;->f$2:Z

    invoke-static {v0, v1, v2}, Landroid/car/CarAppFocusManager$IAppFocusListenerImpl;->lambda$onAppFocusChanged$0(Landroid/car/CarAppFocusManager$OnAppFocusChangedListener;IZ)V

    return-void
.end method
