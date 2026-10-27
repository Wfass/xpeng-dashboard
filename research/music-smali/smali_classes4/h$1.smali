.class Lh$1;
.super Ljava/lang/Object;
.source "DrawableContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh;->a(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh;


# direct methods
.method constructor <init>(Lh;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lh$1;->a:Lh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 470
    iget-object v0, p0, Lh$1;->a:Lh;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lh;->a(Z)V

    .line 471
    iget-object v0, p0, Lh$1;->a:Lh;

    invoke-virtual {v0}, Lh;->invalidateSelf()V

    return-void
.end method
