.class public final Laa;
.super Ljava/lang/Object;
.source "AsyncLayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laa$c;,
        Laa$a;,
        Laa$b;,
        Laa$d;
    }
.end annotation


# instance fields
.field a:Landroid/view/LayoutInflater;

.field b:Landroid/os/Handler;

.field c:Laa$c;

.field private d:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Laa$1;

    invoke-direct {v0, p0}, Laa$1;-><init>(Laa;)V

    iput-object v0, p0, Laa;->d:Landroid/os/Handler$Callback;

    .line 76
    new-instance v0, Laa$a;

    invoke-direct {v0, p1}, Laa$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Laa;->a:Landroid/view/LayoutInflater;

    .line 77
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Laa;->d:Landroid/os/Handler$Callback;

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Laa;->b:Landroid/os/Handler;

    .line 78
    invoke-static {}, Laa$c;->a()Laa$c;

    move-result-object p1

    iput-object p1, p0, Laa;->c:Laa$c;

    return-void
.end method


# virtual methods
.method public a(ILandroid/view/ViewGroup;Laa$d;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 87
    iget-object v0, p0, Laa;->c:Laa$c;

    invoke-virtual {v0}, Laa$c;->c()Laa$b;

    move-result-object v0

    .line 88
    iput-object p0, v0, Laa$b;->a:Laa;

    .line 89
    iput p1, v0, Laa$b;->c:I

    .line 90
    iput-object p2, v0, Laa$b;->b:Landroid/view/ViewGroup;

    .line 91
    iput-object p3, v0, Laa$b;->e:Laa$d;

    .line 92
    iget-object p1, p0, Laa;->c:Laa$c;

    invoke-virtual {p1, v0}, Laa$c;->b(Laa$b;)V

    return-void

    .line 85
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "callback argument may not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
