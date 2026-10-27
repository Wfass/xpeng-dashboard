.class Leo;
.super Ljava/lang/Object;
.source "CallbackWithHandler.java"


# instance fields
.field private final a:Let$c;

.field private final b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Let$c;Landroid/os/Handler;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Leo;->a:Let$c;

    .line 42
    iput-object p2, p0, Leo;->b:Landroid/os/Handler;

    return-void
.end method

.method private a(I)V
    .locals 3

    .line 67
    iget-object v0, p0, Leo;->a:Let$c;

    .line 68
    iget-object v1, p0, Leo;->b:Landroid/os/Handler;

    new-instance v2, Leo$2;

    invoke-direct {v2, p0, v0, p1}, Leo$2;-><init>(Leo;Let$c;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Landroid/graphics/Typeface;)V
    .locals 3

    .line 54
    iget-object v0, p0, Leo;->a:Let$c;

    .line 55
    iget-object v1, p0, Leo;->b:Landroid/os/Handler;

    new-instance v2, Leo$1;

    invoke-direct {v2, p0, v0, p1}, Leo$1;-><init>(Leo;Let$c;Landroid/graphics/Typeface;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method a(Les$a;)V
    .locals 1

    .line 80
    invoke-virtual {p1}, Les$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object p1, p1, Les$a;->a:Landroid/graphics/Typeface;

    invoke-direct {p0, p1}, Leo;->a(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 83
    :cond_0
    iget p1, p1, Les$a;->b:I

    invoke-direct {p0, p1}, Leo;->a(I)V

    :goto_0
    return-void
.end method
