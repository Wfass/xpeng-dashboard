.class public final Lbzw$b;
.super Lcaa;
.source "IntrinsicsJvm.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbzw;->a(Lcbd;Ljava/lang/Object;Lbzq;)Lbzq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field final synthetic a:Lcbd;

.field final synthetic b:Ljava/lang/Object;

.field private label:I


# direct methods
.method public constructor <init>(Lbzq;Lbzs;Lcbd;Ljava/lang/Object;)V
    .locals 0

    iput-object p3, p0, Lbzw$b;->a:Lcbd;

    iput-object p4, p0, Lbzw$b;->b:Ljava/lang/Object;

    const-string p3, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>"

    .line 186
    invoke-static {p1, p3}, Lccf;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcaa;-><init>(Lbzq;Lbzs;)V

    return-void
.end method


# virtual methods
.method protected invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 190
    iget v0, p0, Lbzw$b;->label:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    .line 197
    iput v1, p0, Lbzw$b;->label:I

    .line 198
    invoke-static {p1}, Lkotlin/m;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This coroutine had already completed"

    .line 200
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 192
    :cond_1
    iput v2, p0, Lbzw$b;->label:I

    .line 193
    invoke-static {p1}, Lkotlin/m;->a(Ljava/lang/Object;)V

    .line 194
    move-object p1, p0

    check-cast p1, Lbzq;

    .line 205
    iget-object v0, p0, Lbzw$b;->a:Lcbd;

    const-string v2, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1>, kotlin.Any?>"

    invoke-static {v0, v2}, Lccf;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lbzw$b;->a:Lcbd;

    invoke-static {v0, v1}, Lccl;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcbd;

    iget-object v1, p0, Lbzw$b;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcbd;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method
