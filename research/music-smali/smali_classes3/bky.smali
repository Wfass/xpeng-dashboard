.class public Lbky;
.super Ljava/lang/Object;
.source "CachePolicy.java"

# interfaces
.implements Lbkx$a;


# instance fields
.field a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lbky;->a:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 1

    .line 24
    iget-object v0, p0, Lbky;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method public b()V
    .locals 1

    .line 30
    invoke-virtual {p0}, Lbky;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lbkz;->a(Landroid/os/Bundle;)V

    return-void
.end method
