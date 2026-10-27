.class public interface abstract Lbzr;
.super Ljava/lang/Object;
.source "ContinuationInterceptor.kt"

# interfaces
.implements Lbzs$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbzr$a;
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# static fields
.field public static final a:Lbzr$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lbzr$a;->a:Lbzr$a;

    sput-object v0, Lbzr;->a:Lbzr$a;

    return-void
.end method


# virtual methods
.method public abstract a(Lbzq;)Lbzq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbzq<",
            "-TT;>;)",
            "Lbzq<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract b(Lbzq;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbzq<",
            "*>;)V"
        }
    .end annotation
.end method
