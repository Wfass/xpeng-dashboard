.class public final synthetic Lcom/xiaopeng/carcontrol/util/-$$Lambda$HandlerUtils$-aJKsg8JTRr3dGUkb5jl4mmncgU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/Handler;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/util/-$$Lambda$HandlerUtils$-aJKsg8JTRr3dGUkb5jl4mmncgU;->f$0:Landroid/os/Handler;

    iput p2, p0, Lcom/xiaopeng/carcontrol/util/-$$Lambda$HandlerUtils$-aJKsg8JTRr3dGUkb5jl4mmncgU;->f$1:I

    iput-object p3, p0, Lcom/xiaopeng/carcontrol/util/-$$Lambda$HandlerUtils$-aJKsg8JTRr3dGUkb5jl4mmncgU;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/util/-$$Lambda$HandlerUtils$-aJKsg8JTRr3dGUkb5jl4mmncgU;->f$0:Landroid/os/Handler;

    iget v1, p0, Lcom/xiaopeng/carcontrol/util/-$$Lambda$HandlerUtils$-aJKsg8JTRr3dGUkb5jl4mmncgU;->f$1:I

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/util/-$$Lambda$HandlerUtils$-aJKsg8JTRr3dGUkb5jl4mmncgU;->f$2:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/HandlerUtils;->lambda$removeMessages$1(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method
