.class public final LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/oO0OOO00;
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
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 615
    sget v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->OooO0O0:I

    or-int/lit8 v0, v0, 0x2

    .line 616
    sput v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->OooO0O0:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 617
    :cond_0
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o00O;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o00O;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-static {v0, v2, v2, v1}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o00O;->OooO00o(LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o00O;IIZ)V

    .line 619
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "lst_aef2ReverbType_tsl(SO) "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "DataSetting"

    invoke-virtual {v0, v1, p1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
