.class public final La;
.super Ljava/lang/Object;
.source "ContextAwareHelper.java"


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lb;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, La;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .line 62
    iget-object v0, p0, La;->b:Landroid/content/Context;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 97
    iput-object p1, p0, La;->b:Landroid/content/Context;

    .line 98
    iget-object v0, p0, La;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb;

    .line 99
    invoke-interface {v1, p1}, Lb;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lb;)V
    .locals 1

    .line 73
    iget-object v0, p0, La;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, La;->b:Landroid/content/Context;

    invoke-interface {p1, v0}, Lb;->a(Landroid/content/Context;)V

    .line 76
    :cond_0
    iget-object v0, p0, La;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, La;->b:Landroid/content/Context;

    return-void
.end method

.method public b(Lb;)V
    .locals 1

    .line 87
    iget-object v0, p0, La;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
