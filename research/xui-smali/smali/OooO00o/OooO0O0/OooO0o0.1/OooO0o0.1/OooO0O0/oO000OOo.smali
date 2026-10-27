.class public final LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/oO000OOo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO0OO;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO0OO<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 2
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO00o;

    const/4 v2, 0x0

    const/16 v3, 0x64

    const/4 v4, 0x0

    const/16 v5, 0x1f4

    invoke-virtual/range {v0 .. v5}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO00o;->OooO00o(IIIII)I

    move-result p1

    .line 8
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o00O;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o00O;

    .line 9
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o00O;->OooO0Oo:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO0O0;

    const-string v1, "echo_time"

    .line 10
    invoke-virtual {v0, v1, p1}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO0O0;->OooO00o(Ljava/lang/String;I)V

    return-void
.end method
