.class public Lcom/android/car/uxr/a;
.super Ljava/lang/Object;
.source "UxrContentLimiterImpl.java"


# instance fields
.field private final a:Lair;

.field private final b:Lair$a;


# virtual methods
.method public a()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/android/car/uxr/a;->a:Lair;

    iget-object v1, p0, Lcom/android/car/uxr/a;->b:Lair$a;

    invoke-virtual {v0, v1}, Lair;->a(Lair$a;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/android/car/uxr/a;->a:Lair;

    iget-object v1, p0, Lcom/android/car/uxr/a;->b:Lair$a;

    invoke-virtual {v0, v1}, Lair;->b(Lair$a;)V

    return-void
.end method
