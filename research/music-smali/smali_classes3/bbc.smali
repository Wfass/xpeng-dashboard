.class public abstract Lbbc;
.super Ljava/lang/Object;
.source "AbsFindHandler.java"

# interfaces
.implements Lbbi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lbbi;"
    }
.end annotation


# instance fields
.field protected a:Laxz;

.field protected b:Lbbo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbbo<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Laxz;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lbbc;->a:Laxz;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 17
    iget-object v0, p0, Lbbc;->b:Lbbo;

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0}, Lbbo;->a()V

    :cond_0
    return-void
.end method
