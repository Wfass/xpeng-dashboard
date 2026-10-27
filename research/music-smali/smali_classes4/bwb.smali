.class public Lbwb;
.super Ljava/lang/Object;
.source "SpeechModel.java"


# instance fields
.field protected a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lbwb;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Lbuj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lbut;",
            ">;",
            "Lbuj;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-static {p1, p2}, Lbwc;->a(Ljava/lang/Class;Lbuj;)V

    return-void
.end method
