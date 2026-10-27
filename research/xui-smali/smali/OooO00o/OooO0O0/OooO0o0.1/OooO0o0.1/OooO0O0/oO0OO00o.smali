.class public final LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/oO0OO00o;
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
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 2
    new-instance v0, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;-><init>()V

    .line 3
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0o;

    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0o;)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object v0

    .line 4
    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o(I)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object v0

    .line 5
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO0O0(I)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object v0

    .line 6
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0OO;->OooO0O0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0OO;

    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0OO;)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object v0

    .line 7
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0O0;

    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0O0;)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object v0

    .line 8
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o(II)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o()LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;

    move-result-object v0

    .line 11
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "lst_aef3ReverbStwide_tsl(SO) "

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "DataSetting"

    invoke-virtual {v1, v2, p1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    sget-object p1, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o00O;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o00O;

    .line 13
    invoke-virtual {p1}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o00O;->OooO00o()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO00o;

    move-result-object p1

    .line 14
    invoke-virtual {p1, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO00o;->OooO0O0(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;)V

    return-void
.end method
